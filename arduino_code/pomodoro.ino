#include <Automaton.h> // https://github.com/tinkerspy/Automaton/wiki
#include <Wire.h>  //
#include <Adafruit_GFX.h> // https://github.com/adafruit/Adafruit-GFX-Library
#include "Adafruit_LEDBackpack.h" // https://learn.adafruit.com/adafruit-led-backpack/downloads

// These are the two gpio ports that the matrix is connected to for i2c
const byte PICO_I2C_SDA = 20;
const byte PICO_I2C_SCL = 21;

// 7 seg object, and a setup bool to track if it's been setup
Adafruit_7segment matrix = Adafruit_7segment();
bool matrix_setup = false;

// gpio pin of each button
const int startButtonPin = 13;
const int stopButtonPin = 12;
const int nextButtonPin = 10;
const int resetButtonPin = 11;


// creating the automaton state machine objects
Atm_timer countdown;
Atm_button startButton, stopButton, nextButton, resetButton;

// real times
int pomodoro = 25 * 60;
int short_break = 5 * 60;
int long_break = 30 * 60;

// this holds the pattern between work periods and breaks
int timer_array[] = { pomodoro, short_break, pomodoro, short_break, pomodoro, short_break, pomodoro, long_break };
int array_count = sizeof timer_array / sizeof timer_array[0];
int timer_loc = 0;


void setup() {
  Serial.begin(9600);

  countdown.begin(1000)
    .onTimer(timer_tick_callback)
    .onFinish(timer_finish_callback);

  startButton
    .begin(startButtonPin)
    .onPress(start_button_press);

  stopButton
    .begin(stopButtonPin)
    .onPress(stop_button_press);

  resetButton
    .begin(resetButtonPin)
    .onPress(reset_button_press);

  nextButton
    .begin(nextButtonPin)
    .onPress(next_button_press);


  while (matrix_setup == false) {
    Serial.println("setting up matrix");
    Wire.setSDA(PICO_I2C_SDA);
    Wire.setSCL(PICO_I2C_SCL);
    matrix_setup = matrix.begin(0x70, &Wire);
    delay(50);
  }

  // start the state machine in idle, so we display some numbers
  idle();
}

void loop() {
  automaton.run();
}

// state functions/callbacks
// while the timer is running, gets called once a second
// (configured by the value passed to begin for the countdown object)
void timer_tick_callback(int idx, int v, int up) {
  display_number(v);
}

// when timer completes the vale of cycles from repeat(value), this function is called
void timer_finish_callback(int idx, int v, int up) {
  display_number(0);
  delay(1000);  // should I make a new timer here and call idle only on it's finish? Leaving here for now -- no real need to not block
  idle();
}

void start_button_press(int idx, int v, int up) {
  countdown.start();
}

void stop_button_press(int idx, int v, int up) {
  countdown.stop();
}

void next_button_press(int idx, int v, int up) {
  if (countdown.state() == countdown.IDLE) {
    idle();
  }
}

// to reset, while stopped, go back one timer, and then go to IDLE
// this essentially sets everything up as if we're starting the current timer over
void reset_button_press(int idx, int v, int up) {
  if (countdown.state() == countdown.IDLE) {
    timer_loc--;
    idle();
  }
}

// states

// idle state, is the first state, and also the state we return to when timer completes
// the other states are mostly implicit from an event occuring, like a button press
void idle() {
  int timer_value = timer_array[timer_loc % array_count];
  display_number(timer_value);
  countdown.repeat(timer_value);
  timer_loc++;
}


// helper functions
int seconds_to_minutes_and_seconds(int counter) {
  int seconds = counter % 60;
  int minutes = counter / 60;

  return seconds + 100 * minutes;
}


void display_number(int num) {
  matrix.print(seconds_to_minutes_and_seconds(num));
  matrix.drawColon(true);
  matrix.writeDisplay();
}
