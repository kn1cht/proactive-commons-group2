EESchema Schematic File Version 4
LIBS:baloon-markII-cache
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
L power:GND #PWR0101
U 1 1 5E387812
P 3900 900
F 0 "#PWR0101" H 3900 650 50  0001 C CNN
F 1 "GND" V 3905 772 50  0000 R CNN
F 2 "" H 3900 900 50  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
	1    3900 900 
	0    1    1    0   
$EndComp
$Comp
L baloon-markII-rescue:CONN_01X02 P3
U 1 1 5E384D31
P 3950 700
F 0 "P3" H 3950 850 50  0000 C CNN
F 1 "CONN_01X02" V 4050 700 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 3950 700 50  0001 C CNN
F 3 "" H 3950 700 50  0000 C CNN
	1    3950 700 
	0    -1   -1   0   
$EndComp
NoConn ~ 2250 1750
Connection ~ 1950 1900
Wire Wire Line
	1950 1900 1950 1750
Wire Wire Line
	1950 1900 2400 1900
Connection ~ 2100 1600
Wire Wire Line
	2400 1900 2400 2000
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5E379011
P 2600 1400
F 0 "#FLG04" H 2600 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 1580 50  0000 C CNN
F 2 "" H 2600 1400 50  0000 C CNN
F 3 "" H 2600 1400 50  0000 C CNN
	1    2600 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E378DB5
P 1650 2450
F 0 "R1" V 1730 2450 50  0000 C CNN
F 1 "600" V 1650 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1580 2450 50  0001 C CNN
F 3 "" H 1650 2450 50  0000 C CNN
	1    1650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2400 1950 1900
$Comp
L power:GND #PWR02
U 1 1 5E378D51
P 1950 2800
F 0 "#PWR02" H 1950 2550 50  0001 C CNN
F 1 "GND" H 1950 2650 50  0000 C CNN
F 2 "" H 1950 2800 50  0000 C CNN
F 3 "" H 1950 2800 50  0000 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1700 3250 1700
Wire Wire Line
	3100 1600 3250 1600
Wire Wire Line
	3100 1150 3100 1600
Wire Wire Line
	2100 1150 3100 1150
Wire Wire Line
	2100 1600 2100 1150
NoConn ~ 2700 1400
$Comp
L baloon-markII-rescue:POT RV1
U 1 1 5E378A00
P 2100 1750
F 0 "RV1" H 2100 1670 50  0000 C CNN
F 1 "100" H 2100 1750 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 2100 1750 50  0001 C CNN
F 3 "" H 2100 1750 50  0000 C CNN
	1    2100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1600 2100 1600
Connection ~ 2400 1900
Wire Wire Line
	2400 2000 2600 2000
Wire Wire Line
	2400 1800 2400 1900
Wire Wire Line
	2900 2150 2900 2350
Wire Wire Line
	2800 2150 2900 2150
Wire Wire Line
	2800 2000 2800 2150
Wire Wire Line
	2700 2150 2700 2000
Wire Wire Line
	2600 2150 2700 2150
Wire Wire Line
	2600 2350 2600 2150
$Comp
L Device:C C1
U 1 1 5E378939
P 2750 2350
F 0 "C1" H 2775 2450 50  0000 L CNN
F 1 "0.1u" H 2775 2250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 2788 2200 50  0001 C CNN
F 3 "" H 2750 2350 50  0000 C CNN
	1    2750 2350
	0    1    1    0   
$EndComp
$Comp
L baloon-markII-rescue:LM386 U1
U 1 1 5E3788F7
P 2700 1700
F 0 "U1" H 2750 2000 50  0000 L CNN
F 1 "LM386" H 2750 1900 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2800 1800 50  0001 C CNN
F 3 "" H 2900 1900 50  0000 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
NoConn ~ 4850 1800
Connection ~ 4550 1950
Wire Wire Line
	4550 1950 4550 1800
Wire Wire Line
	4550 1950 5000 1950
Connection ~ 4700 1650
Wire Wire Line
	5000 1950 5000 2050
$Comp
L Device:R R3
U 1 1 5E3971C9
P 4250 2500
F 0 "R3" V 4330 2500 50  0000 C CNN
F 1 "600" V 4250 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4180 2500 50  0001 C CNN
F 3 "" H 4250 2500 50  0000 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2450 4550 1950
$Comp
L power:GND #PWR0104
U 1 1 5E3971D4
P 4550 2850
F 0 "#PWR0104" H 4550 2600 50  0001 C CNN
F 1 "GND" H 4550 2700 50  0000 C CNN
F 2 "" H 4550 2850 50  0000 C CNN
F 3 "" H 4550 2850 50  0000 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L baloon-markII-rescue:2SC1815 Q3
U 1 1 5E3971DE
P 4450 2650
F 0 "Q3" H 4650 2725 50  0000 L CNN
F 1 "2SC1815" H 4650 2650 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4650 2575 50  0000 L CIN
F 3 "" H 4450 2650 50  0000 L CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1750 5850 1750
Wire Wire Line
	5700 1650 5850 1650
Wire Wire Line
	5700 1150 5700 1650
Wire Wire Line
	4700 1150 5700 1150
Wire Wire Line
	4700 1650 4700 1150
NoConn ~ 5300 1450
$Comp
L baloon-markII-rescue:POT RV3
U 1 1 5E3971F8
P 4700 1800
F 0 "RV3" H 4700 1720 50  0000 C CNN
F 1 "100" H 4700 1800 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4700 1800 50  0001 C CNN
F 3 "" H 4700 1800 50  0000 C CNN
	1    4700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1650 4700 1650
Connection ~ 5000 1950
Wire Wire Line
	5000 2050 5200 2050
Wire Wire Line
	5000 1850 5000 1950
Wire Wire Line
	5500 2200 5500 2400
Wire Wire Line
	5400 2200 5500 2200
Wire Wire Line
	5400 2050 5400 2200
Wire Wire Line
	5300 2200 5300 2050
Wire Wire Line
	5200 2200 5300 2200
Wire Wire Line
	5200 2400 5200 2200
$Comp
L Device:C C3
U 1 1 5E39720C
P 5350 2400
F 0 "C3" H 5375 2500 50  0000 L CNN
F 1 "0.1u" H 5375 2300 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 5388 2250 50  0001 C CNN
F 3 "" H 5350 2400 50  0000 C CNN
	1    5350 2400
	0    1    1    0   
$EndComp
$Comp
L baloon-markII-rescue:LM386 U3
U 1 1 5E397216
P 5300 1750
F 0 "U3" H 5350 2050 50  0000 L CNN
F 1 "LM386" H 5350 1950 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5400 1850 50  0001 C CNN
F 3 "" H 5500 1950 50  0000 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1300 5200 1450
NoConn ~ 4850 4200
Connection ~ 4550 4350
Wire Wire Line
	4550 4350 4550 4200
Wire Wire Line
	4550 4350 5000 4350
Connection ~ 4700 4050
Wire Wire Line
	5000 4350 5000 4450
$Comp
L Device:R R4
U 1 1 5E3C56BA
P 4250 4900
F 0 "R4" V 4330 4900 50  0000 C CNN
F 1 "600" V 4250 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4180 4900 50  0001 C CNN
F 3 "" H 4250 4900 50  0000 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4850 4550 4350
$Comp
L power:GND #PWR04
U 1 1 5E3C56C5
P 4550 5250
F 0 "#PWR04" H 4550 5000 50  0001 C CNN
F 1 "GND" H 4550 5100 50  0000 C CNN
F 2 "" H 4550 5250 50  0000 C CNN
F 3 "" H 4550 5250 50  0000 C CNN
	1    4550 5250
	1    0    0    -1  
$EndComp
$Comp
L baloon-markII-rescue:2SC1815 Q4
U 1 1 5E3C56CF
P 4450 5050
F 0 "Q4" H 4650 5125 50  0000 L CNN
F 1 "2SC1815" H 4650 5050 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4650 4975 50  0000 L CIN
F 3 "" H 4450 5050 50  0000 L CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4150 5850 4150
Wire Wire Line
	5700 4050 5850 4050
Wire Wire Line
	5700 3800 5700 4050
Wire Wire Line
	4700 3800 5700 3800
Wire Wire Line
	4700 4050 4700 3800
NoConn ~ 5300 3850
$Comp
L baloon-markII-rescue:POT RV4
U 1 1 5E3C56E9
P 4700 4200
F 0 "RV4" H 4700 4120 50  0000 C CNN
F 1 "100" H 4700 4200 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 4700 4200 50  0001 C CNN
F 3 "" H 4700 4200 50  0000 C CNN
	1    4700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4050 4700 4050
Connection ~ 5000 4350
Wire Wire Line
	5000 4450 5200 4450
Wire Wire Line
	5000 4250 5000 4350
Wire Wire Line
	5500 4600 5500 4800
Wire Wire Line
	5400 4600 5500 4600
Wire Wire Line
	5400 4450 5400 4600
Wire Wire Line
	5300 4600 5300 4450
Wire Wire Line
	5200 4600 5300 4600
Wire Wire Line
	5200 4800 5200 4600
$Comp
L Device:C C4
U 1 1 5E3C56FD
P 5350 4800
F 0 "C4" H 5375 4900 50  0000 L CNN
F 1 "0.1u" H 5375 4700 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 5388 4650 50  0001 C CNN
F 3 "" H 5350 4800 50  0000 C CNN
	1    5350 4800
	0    1    1    0   
$EndComp
$Comp
L baloon-markII-rescue:LM386 U4
U 1 1 5E3C5707
P 5300 4150
F 0 "U4" H 5350 4450 50  0000 L CNN
F 1 "LM386" H 5350 4350 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5400 4250 50  0001 C CNN
F 3 "" H 5500 4350 50  0000 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3700 5200 3850
Wire Wire Line
	5200 3700 4000 3700
Wire Wire Line
	4000 3700 4000 1300
Connection ~ 4000 1300
Wire Wire Line
	4000 1300 5200 1300
NoConn ~ 2300 4250
Connection ~ 2000 4400
Wire Wire Line
	2000 4400 2000 4250
Wire Wire Line
	2000 4400 2450 4400
Connection ~ 2150 4100
Wire Wire Line
	2450 4400 2450 4500
$Comp
L Device:R R2
U 1 1 5E3CEBDA
P 1700 4950
F 0 "R2" V 1780 4950 50  0000 C CNN
F 1 "600" V 1700 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1630 4950 50  0001 C CNN
F 3 "" H 1700 4950 50  0000 C CNN
	1    1700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4900 2000 4400
$Comp
L power:GND #PWR01
U 1 1 5E3CEBE5
P 2000 5300
F 0 "#PWR01" H 2000 5050 50  0001 C CNN
F 1 "GND" H 2000 5150 50  0000 C CNN
F 2 "" H 2000 5300 50  0000 C CNN
F 3 "" H 2000 5300 50  0000 C CNN
	1    2000 5300
	1    0    0    -1  
$EndComp
$Comp
L baloon-markII-rescue:2SC1815 Q2
U 1 1 5E3CEBEF
P 1900 5100
F 0 "Q2" H 2100 5175 50  0000 L CNN
F 1 "2SC1815" H 2100 5100 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 2100 5025 50  0000 L CIN
F 3 "" H 1900 5100 50  0000 L CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4200 3300 4200
Wire Wire Line
	3150 4100 3300 4100
Wire Wire Line
	3150 3800 3150 4100
Wire Wire Line
	2150 3800 3150 3800
Wire Wire Line
	2150 4100 2150 3800
NoConn ~ 2750 3900
$Comp
L baloon-markII-rescue:POT RV2
U 1 1 5E3CEC09
P 2150 4250
F 0 "RV2" H 2150 4170 50  0000 C CNN
F 1 "100" H 2150 4250 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-H5_Horizontal" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0000 C CNN
	1    2150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4100 2150 4100
Connection ~ 2450 4400
Wire Wire Line
	2450 4500 2650 4500
Wire Wire Line
	2450 4300 2450 4400
Wire Wire Line
	2950 4650 2950 4850
Wire Wire Line
	2850 4650 2950 4650
Wire Wire Line
	2850 4500 2850 4650
Wire Wire Line
	2750 4650 2750 4500
Wire Wire Line
	2650 4650 2750 4650
Wire Wire Line
	2650 4850 2650 4650
$Comp
L Device:C C2
U 1 1 5E3CEC1D
P 2800 4850
F 0 "C2" H 2825 4950 50  0000 L CNN
F 1 "0.1u" H 2825 4750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 2838 4700 50  0001 C CNN
F 3 "" H 2800 4850 50  0000 C CNN
	1    2800 4850
	0    1    1    0   
$EndComp
$Comp
L baloon-markII-rescue:LM386 U2
U 1 1 5E3CEC27
P 2750 4200
F 0 "U2" H 2800 4500 50  0000 L CNN
F 1 "LM386" H 2800 4400 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2850 4300 50  0001 C CNN
F 3 "" H 2950 4400 50  0000 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3700 2650 3900
Wire Wire Line
	2650 3700 4000 3700
Connection ~ 4000 3700
Wire Wire Line
	4250 2300 4250 2350
Wire Wire Line
	1650 2300 1650 1900
Wire Wire Line
	1650 1900 1600 1900
$Comp
L Mechanical:MountingHole H1
U 1 1 5E3D881E
P 4500 6100
F 0 "H1" H 4600 6146 50  0000 L CNN
F 1 "MountingHole" H 4600 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6100 50  0001 C CNN
F 3 "~" H 4500 6100 50  0001 C CNN
	1    4500 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E3D8F7E
P 5350 6100
F 0 "H3" H 5450 6146 50  0000 L CNN
F 1 "MountingHole" H 5450 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5350 6100 50  0001 C CNN
F 3 "~" H 5350 6100 50  0001 C CNN
	1    5350 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E3DC106
P 4500 6400
F 0 "H2" H 4600 6446 50  0000 L CNN
F 1 "MountingHole" H 4600 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4500 6400 50  0001 C CNN
F 3 "~" H 4500 6400 50  0001 C CNN
	1    4500 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E3DC110
P 5350 6400
F 0 "H4" H 5450 6446 50  0000 L CNN
F 1 "MountingHole" H 5450 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5350 6400 50  0001 C CNN
F 3 "~" H 5350 6400 50  0001 C CNN
	1    5350 6400
	1    0    0    -1  
$EndComp
Text GLabel 5850 4150 2    50   Output ~ 0
BALOON_4-
Text GLabel 5850 4050 2    50   Output ~ 0
BALOON_4+
Text GLabel 3250 1700 2    50   Output ~ 0
BALOON_1-
Text GLabel 3250 1600 2    50   Output ~ 0
BALOON_1+
Text GLabel 5850 1750 2    50   Output ~ 0
BALOON_3-
Text GLabel 5850 1650 2    50   Output ~ 0
BALOON_3+
$Comp
L baloon-markII-rescue:2SC1815 Q1
U 1 1 5E378D04
P 1850 2600
F 0 "Q1" H 2050 2675 50  0000 L CNN
F 1 "2SC1815" H 2050 2600 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 2050 2525 50  0000 L CIN
F 3 "" H 1850 2600 50  0000 L CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2300 4250 2300
Wire Wire Line
	1700 4700 1700 4800
$Comp
L baloon-markII-rescue:ESP32-DEVKITC-32D-ESP32-DEVKITC-32D U5
U 1 1 5E414B2A
P 7750 4800
F 0 "U5" H 7750 5967 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 7750 5876 50  0000 C CNN
F 2 "lib:MODULE_ESP32-DEVKITC-32D" H 7750 4800 50  0001 L BNN
F 3 "Espressif Systems" H 7750 4800 50  0001 L BNN
F 4 "4" H 7750 4800 50  0001 L BNN "フィールド4"
	1    7750 4800
	1    0    0    -1  
$EndComp
Text GLabel 3300 4200 2    50   Output ~ 0
BALOON_2-
Text GLabel 3300 4100 2    50   Output ~ 0
BALOON_2+
Wire Wire Line
	1450 4700 1700 4700
Text GLabel 1600 1900 0    50   Output ~ 0
ESP32_COM1
Text GLabel 1450 4700 0    50   Output ~ 0
ESP32_COM2
Wire Wire Line
	4150 4750 4250 4750
Text GLabel 4150 4750 0    50   Output ~ 0
ESP32_COM4
Text GLabel 4200 2300 0    50   Output ~ 0
ESP32_COM3
Text GLabel 8250 3350 0    50   Output ~ 0
BALOON_4-
Text GLabel 8250 3250 0    50   Output ~ 0
BALOON_4+
Text GLabel 8250 3050 0    50   Output ~ 0
BALOON_3+
Text GLabel 8250 3150 0    50   Output ~ 0
BALOON_3-
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5E484FC8
P 8450 3150
F 0 "J5" H 8530 3142 50  0000 L CNN
F 1 "Conn_01x04" H 8530 3051 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-04A_1x04_P2.50mm_Vertical" H 8450 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
Text GLabel 6950 3250 0    50   Output ~ 0
BALOON_4+
Text GLabel 6950 3350 0    50   Output ~ 0
BALOON_4-
Text GLabel 6950 3050 0    50   Output ~ 0
BALOON_3+
Text GLabel 6950 3150 0    50   Output ~ 0
BALOON_3-
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5E484FBA
P 7150 3150
F 0 "J4" H 7230 3142 50  0000 L CNN
F 1 "Conn_01x04" H 7230 3051 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-04A_1x04_P2.50mm_Vertical" H 7150 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
Text GLabel 8250 2650 0    50   Output ~ 0
BALOON_2+
Text GLabel 8250 2750 0    50   Output ~ 0
BALOON_2-
Text GLabel 8250 2450 0    50   Output ~ 0
BALOON_1+
Text GLabel 8250 2550 0    50   Output ~ 0
BALOON_1-
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5E40C152
P 8450 2550
F 0 "J3" H 8530 2542 50  0000 L CNN
F 1 "Conn_01x04" H 8530 2451 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-04A_1x04_P2.50mm_Vertical" H 8450 2550 50  0001 C CNN
F 3 "~" H 8450 2550 50  0001 C CNN
	1    8450 2550
	1    0    0    -1  
$EndComp
Text GLabel 6950 2650 0    50   Output ~ 0
BALOON_2+
Text GLabel 6950 2750 0    50   Output ~ 0
BALOON_2-
Text GLabel 6950 2450 0    50   Output ~ 0
BALOON_1+
Text GLabel 6950 2550 0    50   Output ~ 0
BALOON_1-
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E3F76E6
P 7150 2550
F 0 "J2" H 7230 2542 50  0000 L CNN
F 1 "Conn_01x04" H 7230 2451 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-04A_1x04_P2.50mm_Vertical" H 7150 2550 50  0001 C CNN
F 3 "~" H 7150 2550 50  0001 C CNN
	1    7150 2550
	1    0    0    -1  
$EndComp
Text GLabel 6950 4300 0    50   Output ~ 0
ESP32_COM1
Text GLabel 6950 4400 0    50   Output ~ 0
ESP32_COM2
Text GLabel 6950 5100 0    50   Output ~ 0
ESP32_COM3
Text GLabel 6950 5300 0    50   Output ~ 0
ESP32_COM4
NoConn ~ 6950 3900
NoConn ~ 6950 4000
NoConn ~ 6950 4100
NoConn ~ 6950 4200
NoConn ~ 6950 4500
NoConn ~ 6950 4600
NoConn ~ 6950 4700
NoConn ~ 6950 4800
NoConn ~ 6950 4900
NoConn ~ 6950 5000
NoConn ~ 6950 5400
NoConn ~ 6950 5500
NoConn ~ 6950 5600
NoConn ~ 8550 5700
NoConn ~ 8550 5600
NoConn ~ 8550 5500
NoConn ~ 8550 5400
NoConn ~ 8550 5300
NoConn ~ 8550 5200
NoConn ~ 8550 5100
NoConn ~ 8550 5000
NoConn ~ 8550 4900
NoConn ~ 8550 4800
NoConn ~ 8550 4700
NoConn ~ 8550 4600
NoConn ~ 8550 4400
NoConn ~ 8550 4300
NoConn ~ 8550 4200
NoConn ~ 8550 4100
NoConn ~ 8550 4000
NoConn ~ 8550 4500
$Comp
L power:GND #PWR06
U 1 1 5E470D1A
P 8700 3900
F 0 "#PWR06" H 8700 3650 50  0001 C CNN
F 1 "GND" H 8705 3727 50  0000 C CNN
F 2 "" H 8700 3900 50  0001 C CNN
F 3 "" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E471E50
P 6250 5200
F 0 "#PWR03" H 6250 4950 50  0001 C CNN
F 1 "GND" H 6255 5027 50  0000 C CNN
F 2 "" H 6250 5200 50  0001 C CNN
F 3 "" H 6250 5200 50  0001 C CNN
	1    6250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3900 8700 3900
Wire Wire Line
	6950 5200 6250 5200
$Comp
L Regulator_Linear:L7805 U6
U 1 1 5E47ADF6
P 6550 5700
F 0 "U6" H 6550 5942 50  0000 C CNN
F 1 "L7805" H 6550 5851 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-3_Horizontal_TabDown" H 6575 5550 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6550 5650 50  0001 C CNN
	1    6550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5700 6950 5700
$Comp
L power:GND #PWR05
U 1 1 5E47EE71
P 6550 6000
F 0 "#PWR05" H 6550 5750 50  0001 C CNN
F 1 "GND" H 6555 5827 50  0000 C CNN
F 2 "" H 6550 6000 50  0001 C CNN
F 3 "" H 6550 6000 50  0001 C CNN
	1    6550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3700 4000 5700
Wire Wire Line
	4000 5700 6250 5700
Wire Wire Line
	4000 1300 2600 1300
Wire Wire Line
	2600 1300 2600 1400
Connection ~ 2600 1400
Wire Wire Line
	4000 900  4000 1300
$EndSCHEMATC
