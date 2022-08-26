EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR01
U 1 1 62F95673
P 1800 1800
F 0 "#PWR01" H 1800 1650 50  0001 C CNN
F 1 "+3.3V" H 1815 1973 50  0000 C CNN
F 2 "" H 1800 1800 50  0001 C CNN
F 3 "" H 1800 1800 50  0001 C CNN
	1    1800 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 62F963B5
P 2100 1800
F 0 "#PWR02" H 2100 1550 50  0001 C CNN
F 1 "GND" H 2105 1627 50  0000 C CNN
F 2 "" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 62FB4073
P 3525 2150
F 0 "R2" H 3584 2196 50  0000 L CNN
F 1 "1000" H 3584 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3525 2150 50  0001 C CNN
F 3 "~" H 3525 2150 50  0001 C CNN
	1    3525 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 62FB5AE2
P 4925 2125
F 0 "R4" H 4984 2171 50  0000 L CNN
F 1 "1000" H 4984 2080 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4925 2125 50  0001 C CNN
F 3 "~" H 4925 2125 50  0001 C CNN
	1    4925 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 1800 4925 2025
Wire Wire Line
	3525 1800 3525 2050
Wire Wire Line
	3525 1800 4250 1800
Connection ~ 4250 1800
Wire Wire Line
	4250 1800 4925 1800
Connection ~ 3525 1800
Wire Wire Line
	2850 1800 3525 1800
Connection ~ 2850 1800
Wire Wire Line
	2100 1800 2850 1800
Wire Wire Line
	2850 1800 2850 2075
$Comp
L Device:R_Small R1
U 1 1 62FB3173
P 2850 2175
F 0 "R1" H 2909 2221 50  0000 L CNN
F 1 "1000" H 2909 2130 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2850 2175 50  0001 C CNN
F 3 "~" H 2850 2175 50  0001 C CNN
	1    2850 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1925 2000
Connection ~ 2750 2000
Connection ~ 3425 2000
Wire Wire Line
	2750 2000 3425 2000
$Comp
L Switch:SW_MEC_5E SW2
U 1 1 62F97BFE
P 3425 2750
F 0 "SW2" H 3425 3135 50  0000 C CNN
F 1 "SW_MEC_5E" H 3425 3044 50  0000 C CNN
F 2 "b3f-4050:SW_B3F-4050" H 3425 3050 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3425 3050 50  0001 C CNN
	1    3425 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2525 2750 2000
Wire Wire Line
	3425 2550 3425 2000
Wire Wire Line
	3525 2250 3525 2550
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 62F9716A
P 2750 2725
F 0 "SW1" H 2750 3110 50  0000 C CNN
F 1 "SW_MEC_5E" H 2750 3019 50  0000 C CNN
F 2 "b3f-4050:SW_B3F-4050" H 2750 3025 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 2750 3025 50  0001 C CNN
	1    2750 2725
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2275 2850 2525
Wire Wire Line
	4825 2000 4825 2575
Wire Wire Line
	4925 2225 4925 2575
$Comp
L Switch:SW_MEC_5E SW4
U 1 1 62F99F4F
P 4825 2775
F 0 "SW4" H 4825 3160 50  0000 C CNN
F 1 "SW_MEC_5E" H 4825 3069 50  0000 C CNN
F 2 "b3f-4050:SW_B3F-4050" H 4825 3075 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 4825 3075 50  0001 C CNN
	1    4825 2775
	0    1    1    0   
$EndComp
Wire Wire Line
	3425 2000 4150 2000
Connection ~ 4150 2000
Wire Wire Line
	4150 2575 4150 2000
$Comp
L Switch:SW_MEC_5E SW3
U 1 1 62F98F8E
P 4150 2775
F 0 "SW3" H 4150 3160 50  0000 C CNN
F 1 "SW_MEC_5E" H 4150 3069 50  0000 C CNN
F 2 "b3f-4050:SW_B3F-4050" H 4150 3075 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 4150 3075 50  0001 C CNN
	1    4150 2775
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2000 4825 2000
Wire Wire Line
	4250 1800 4250 2025
$Comp
L Device:R_Small R3
U 1 1 62FB5137
P 4250 2125
F 0 "R3" H 4309 2171 50  0000 L CNN
F 1 "1000" H 4309 2080 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4250 2125 50  0001 C CNN
F 3 "~" H 4250 2125 50  0001 C CNN
	1    4250 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2225 4250 2575
Wire Wire Line
	1800 1800 1800 2000
NoConn ~ 2750 2925
NoConn ~ 3425 2950
NoConn ~ 4150 2975
NoConn ~ 4825 2975
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 63026493
P 1925 2550
F 0 "J1" H 2033 2731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2033 2640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1925 2550 50  0001 C CNN
F 3 "~" H 1925 2550 50  0001 C CNN
	1    1925 2550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 6302804E
P 2400 3550
F 0 "J2" H 2318 3125 50  0000 C CNN
F 1 "Conn_01x04" H 2318 3216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2400 3550 50  0001 C CNN
F 3 "~" H 2400 3550 50  0001 C CNN
	1    2400 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1925 2350 1925 2000
Connection ~ 1925 2000
Wire Wire Line
	1925 2000 2750 2000
Wire Wire Line
	2025 2350 2025 1800
Wire Wire Line
	2025 1800 2100 1800
Connection ~ 2100 1800
Wire Wire Line
	2600 3350 2850 3350
Wire Wire Line
	2850 3350 2850 2925
Wire Wire Line
	3525 2950 3525 3450
Wire Wire Line
	3525 3450 2600 3450
Wire Wire Line
	4250 2975 4250 3550
Wire Wire Line
	4250 3550 2600 3550
Wire Wire Line
	4925 2975 4925 3650
Wire Wire Line
	4925 3650 2600 3650
$EndSCHEMATC
