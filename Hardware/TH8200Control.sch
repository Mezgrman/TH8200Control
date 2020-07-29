EESchema Schematic File Version 4
LIBS:TH8200Control-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Control board for Siemens TH8200 hand dryer"
Date "2020-07-29"
Rev "1.1"
Comp "xatLabs"
Comment1 "Julian Metzler"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L device:Transformer_1P_1S T1
U 1 1 5F0C909E
P 2050 1350
F 0 "T1" H 2050 1800 50  0000 C CNN
F 1 "BV EI 306 3601" H 2050 1700 50  0000 C CNN
F 2 "custom:Transformer_Hahn_BVEI3063601" H 2050 1350 50  0001 C CNN
F 3 "~" H 2050 1350 50  0001 C CNN
	1    2050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:LINE #PWR01
U 1 1 5F0C9118
P 1300 1100
F 0 "#PWR01" H 1300 950 50  0001 C CNN
F 1 "LINE" V 1318 1228 50  0000 L CNN
F 2 "" H 1300 1100 50  0001 C CNN
F 3 "" H 1300 1100 50  0001 C CNN
	1    1300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:NEUT #PWR02
U 1 1 5F0C9158
P 1300 1600
F 0 "#PWR02" H 1300 1450 50  0001 C CNN
F 1 "NEUT" V 1318 1728 50  0000 L CNN
F 2 "" H 1300 1600 50  0001 C CNN
F 3 "" H 1300 1600 50  0001 C CNN
	1    1300 1600
	-1   0    0    1   
$EndComp
$Comp
L device:D_Bridge_+-AA D2
U 1 1 5F0C9314
P 3650 1350
F 0 "D2" H 3750 1650 50  0000 L CNN
F 1 "ABS15D" H 3750 1550 50  0000 L CNN
F 2 "custom:Rectifier_SMD_4pin_ABS" H 3650 1350 50  0001 C CNN
F 3 "~" H 3650 1350 50  0001 C CNN
	1    3650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1150 2600 1150
Wire Wire Line
	2600 1150 2600 950 
Wire Wire Line
	2600 950  3650 950 
Wire Wire Line
	3650 950  3650 1050
Wire Wire Line
	2450 1550 2600 1550
Wire Wire Line
	2600 1550 2600 1750
Wire Wire Line
	2600 1750 3650 1750
Wire Wire Line
	3650 1750 3650 1650
$Comp
L device:CP C1
U 1 1 5F0C941E
P 4500 1600
F 0 "C1" H 4383 1554 50  0000 R CNN
F 1 "100µ/35V/E" H 4383 1645 50  0000 R CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 4538 1450 50  0001 C CNN
F 3 "~" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1350 3950 1350
Wire Wire Line
	3350 1350 3250 1350
$Comp
L power:+12V #PWR011
U 1 1 5F0C9703
P 4500 1200
F 0 "#PWR011" H 4500 1050 50  0001 C CNN
F 1 "+12V" H 4515 1373 50  0000 C CNN
F 2 "" H 4500 1200 50  0001 C CNN
F 3 "" H 4500 1200 50  0001 C CNN
	1    4500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1200 4500 1350
$Comp
L power:GND #PWR05
U 1 1 5F0C9899
P 3250 1500
F 0 "#PWR05" H 3250 1250 50  0001 C CNN
F 1 "GND" H 3255 1327 50  0000 C CNN
F 2 "" H 3250 1500 50  0001 C CNN
F 3 "" H 3250 1500 50  0001 C CNN
	1    3250 1500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5F0C9A24
P 4950 1350
F 0 "U3" H 4950 1592 50  0000 C CNN
F 1 "MC7805" H 4950 1501 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 4975 1200 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4950 1300 50  0001 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F0C9BE4
P 4950 1950
F 0 "#PWR012" H 4950 1700 50  0001 C CNN
F 1 "GND" H 4955 1777 50  0000 C CNN
F 2 "" H 4950 1950 50  0001 C CNN
F 3 "" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F0C9DDA
P 5400 1200
F 0 "#PWR013" H 5400 1050 50  0001 C CNN
F 1 "+5V" H 5415 1373 50  0000 C CNN
F 2 "" H 5400 1200 50  0001 C CNN
F 3 "" H 5400 1200 50  0001 C CNN
	1    5400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1200 5400 1350
Wire Wire Line
	5400 1350 5250 1350
Wire Wire Line
	5400 1350 5400 1450
Connection ~ 5400 1350
Wire Wire Line
	5400 1750 5400 1850
Wire Wire Line
	5400 1850 4950 1850
Wire Wire Line
	4950 1650 4950 1850
Connection ~ 4950 1850
Wire Wire Line
	4950 1850 4950 1950
$Comp
L device:C C2
U 1 1 5F0CA756
P 5400 1600
F 0 "C2" H 5515 1646 50  0000 L CNN
F 1 "10µ/50V/X7R" H 5515 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5438 1450 50  0001 C CNN
F 3 "~" H 5400 1600 50  0001 C CNN
	1    5400 1600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:CNY17-3 U1
U 1 1 5F0CA8A3
P 3150 3300
F 0 "U1" H 3150 3625 50  0000 C CNN
F 1 "CNY17-3" H 3150 3534 50  0000 C CNN
F 2 "custom:Optocoupler_SMD_6pin" H 3150 3300 50  0001 L CNN
F 3 "http://www.vishay.com/docs/83606/cny17.pdf" H 3150 3300 50  0001 L CNN
	1    3150 3300
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R4
U 1 1 5F0CAA81
P 3800 3300
F 0 "R4" H 3859 3346 50  0000 L CNN
F 1 "1M" H 3859 3255 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3800 3300 50  0001 C CNN
F 3 "~" H 3800 3300 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3200 3500 3200
Wire Wire Line
	3500 3200 3500 3150
Wire Wire Line
	3500 3150 3800 3150
Wire Wire Line
	3800 3150 3800 3200
Wire Wire Line
	3450 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3450
Wire Wire Line
	3500 3450 3800 3450
Wire Wire Line
	3800 3450 3800 3400
$Comp
L Isolator:CNY17-3 U2
U 1 1 5F0CC36C
P 3150 3950
F 0 "U2" H 3150 4275 50  0000 C CNN
F 1 "CNY17-3" H 3150 4184 50  0000 C CNN
F 2 "custom:Optocoupler_SMD_6pin" H 3150 3950 50  0001 L CNN
F 3 "http://www.vishay.com/docs/83606/cny17.pdf" H 3150 3950 50  0001 L CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R5
U 1 1 5F0CC372
P 3800 3950
F 0 "R5" H 3859 3996 50  0000 L CNN
F 1 "1M" H 3859 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3800 3950 50  0001 C CNN
F 3 "~" H 3800 3950 50  0001 C CNN
	1    3800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3850 3500 3850
Wire Wire Line
	3500 3850 3500 3800
Wire Wire Line
	3500 3800 3800 3800
Wire Wire Line
	3800 3800 3800 3850
Wire Wire Line
	3450 4050 3500 4050
Wire Wire Line
	3500 4050 3500 4100
Wire Wire Line
	3500 4100 3800 4100
Wire Wire Line
	3800 4100 3800 4050
Wire Wire Line
	2850 3400 2750 3400
Wire Wire Line
	2750 3400 2750 3850
Wire Wire Line
	2750 3850 2850 3850
Connection ~ 2750 3400
Wire Wire Line
	3450 3300 3600 3300
Wire Wire Line
	3600 3300 3600 3750
Wire Wire Line
	3600 3950 3450 3950
$Comp
L device:R R2
U 1 1 5F0D0A69
P 2750 2750
F 0 "R2" H 2680 2704 50  0000 R CNN
F 1 "470R/0.5W" H 2680 2795 50  0000 R CNN
F 2 "Resistors_SMD:R_1206" V 2680 2750 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 2900 2750 3400
Wire Wire Line
	2750 1150 2600 1150
Connection ~ 2600 1150
Wire Wire Line
	2600 1750 2450 1750
Wire Wire Line
	2450 1750 2450 3200
Wire Wire Line
	2450 4050 2850 4050
Connection ~ 2600 1750
Wire Wire Line
	2450 3200 2850 3200
Connection ~ 2450 3200
Wire Wire Line
	2450 3200 2450 4050
$Comp
L power:GND #PWR06
U 1 1 5F0D9A90
P 3800 3500
F 0 "#PWR06" H 3800 3250 50  0001 C CNN
F 1 "GND" H 3805 3327 50  0000 C CNN
F 2 "" H 3800 3500 50  0001 C CNN
F 3 "" H 3800 3500 50  0001 C CNN
	1    3800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F0D9AC8
P 3800 4150
F 0 "#PWR07" H 3800 3900 50  0001 C CNN
F 1 "GND" H 3805 3977 50  0000 C CNN
F 2 "" H 3800 4150 50  0001 C CNN
F 3 "" H 3800 4150 50  0001 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4150 3800 4100
Connection ~ 3800 4100
Wire Wire Line
	3800 3450 3800 3500
Connection ~ 3800 3450
Wire Wire Line
	3600 3750 4200 3750
Connection ~ 3600 3750
Wire Wire Line
	3600 3750 3600 3950
$Comp
L device:R R7
U 1 1 5F0DCAEC
P 4200 3450
F 0 "R7" H 4270 3496 50  0000 L CNN
F 1 "10k" H 4270 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 4130 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3600 4200 3750
$Comp
L power:+5V #PWR010
U 1 1 5F0DDCFB
P 4200 3200
F 0 "#PWR010" H 4200 3050 50  0001 C CNN
F 1 "+5V" H 4215 3373 50  0000 C CNN
F 2 "" H 4200 3200 50  0001 C CNN
F 3 "" H 4200 3200 50  0001 C CNN
	1    4200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3200 4200 3300
Wire Notes Line
	4450 2500 2350 2500
Wire Notes Line
	2350 4400 4450 4400
Wire Wire Line
	3250 1350 3250 1500
Wire Wire Line
	4500 1450 4500 1350
Wire Wire Line
	4500 1350 4650 1350
Wire Wire Line
	4500 1750 4500 1850
Wire Wire Line
	4500 1850 4950 1850
Connection ~ 4500 1350
Wire Notes Line
	4450 2500 4450 4400
Wire Notes Line
	2350 2500 2350 4400
Wire Wire Line
	2750 1150 2750 2600
Text Notes 4450 2450 2    50   ~ 0
Zero Crossing Detection
Wire Notes Line
	6100 2200 3100 2200
Wire Notes Line
	3100 2200 3100 850 
Wire Notes Line
	3100 850  6100 850 
Wire Notes Line
	6100 850  6100 2200
Text Notes 6100 800  2    50   ~ 0
Power Supply
$Comp
L device:LED D1
U 1 1 5F108CE8
P 3150 5900
F 0 "D1" V 3188 5782 50  0000 R CNN
F 1 "HE3-290AC" V 3097 5782 50  0000 R CNN
F 2 "LEDs:LED_D5.0mm_Horicontal_O5.08mm" H 3150 5900 50  0001 C CNN
F 3 "~" H 3150 5900 50  0001 C CNN
	1    3150 5900
	0    -1   -1   0   
$EndComp
$Comp
L device:R R6
U 1 1 5F10DBCA
P 4000 5400
F 0 "R6" H 4070 5446 50  0000 L CNN
F 1 "10k" H 4070 5355 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 3930 5400 50  0001 C CNN
F 3 "~" H 4000 5400 50  0001 C CNN
	1    4000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5550 3150 5750
$Comp
L power:+5V #PWR03
U 1 1 5F10EF5A
P 3150 5050
F 0 "#PWR03" H 3150 4900 50  0001 C CNN
F 1 "+5V" H 3165 5223 50  0000 C CNN
F 2 "" H 3150 5050 50  0001 C CNN
F 3 "" H 3150 5050 50  0001 C CNN
	1    3150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5050 3150 5250
$Comp
L device:Q_NPN_BEC Q1
U 1 1 5F11038E
P 3050 6350
F 0 "Q1" H 3241 6396 50  0000 L CNN
F 1 "BC817" H 3241 6305 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3250 6450 50  0001 C CNN
F 3 "~" H 3050 6350 50  0001 C CNN
	1    3050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6050 3150 6150
$Comp
L power:GND #PWR04
U 1 1 5F11182E
P 3150 6650
F 0 "#PWR04" H 3150 6400 50  0001 C CNN
F 1 "GND" H 3155 6477 50  0000 C CNN
F 2 "" H 3150 6650 50  0001 C CNN
F 3 "" H 3150 6650 50  0001 C CNN
	1    3150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6650 3150 6550
$Comp
L device:R R1
U 1 1 5F112D17
P 2600 6350
F 0 "R1" V 2393 6350 50  0000 C CNN
F 1 "4.7k" V 2484 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2530 6350 50  0001 C CNN
F 3 "~" H 2600 6350 50  0001 C CNN
	1    2600 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 6350 2750 6350
$Comp
L device:R R12
U 1 1 5F148410
P 12650 1850
F 0 "R12" V 12857 1850 50  0000 C CNN
F 1 "470R/0.5W" V 12766 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 12580 1850 50  0001 C CNN
F 3 "~" H 12650 1850 50  0001 C CNN
	1    12650 1850
	0    -1   -1   0   
$EndComp
$Comp
L device:Q_TRIAC_A1A2G D3
U 1 1 5F148632
P 13050 2200
F 0 "D3" H 13179 2246 50  0000 L CNN
F 1 "T835-800B" H 13179 2155 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2Lead" V 13125 2225 50  0001 C CNN
F 3 "~" V 13050 2200 50  0001 C CNN
	1    13050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 2600 13050 2350
Wire Wire Line
	12800 1850 13050 1850
Wire Wire Line
	13050 1850 13050 2050
$Comp
L opto:OPTO-TRIAC U5
U 1 1 5F14F320
P 11800 1950
F 0 "U5" H 11800 2275 50  0000 C CNN
F 1 "MOC3052S" H 11800 2184 50  0000 C CNN
F 2 "custom:Optocoupler_SMD_6pin" H 11800 1950 50  0001 L CIN
F 3 "" H 11775 1950 50  0000 L CNN
	1    11800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 2050 12300 2050
Wire Wire Line
	12300 2050 12300 2300
Wire Wire Line
	13050 1850 13800 1850
Connection ~ 13050 1850
$Comp
L power:LINE #PWR026
U 1 1 5F15733B
P 15350 1850
F 0 "#PWR026" H 15350 1700 50  0001 C CNN
F 1 "LINE" V 15367 1978 50  0000 L CNN
F 2 "" H 15350 1850 50  0001 C CNN
F 3 "" H 15350 1850 50  0001 C CNN
	1    15350 1850
	0    1    1    0   
$EndComp
$Comp
L power:NEUT #PWR027
U 1 1 5F1573AD
P 15350 2600
F 0 "#PWR027" H 15350 2450 50  0001 C CNN
F 1 "NEUT" V 15367 2728 50  0000 L CNN
F 2 "" H 15350 2600 50  0001 C CNN
F 3 "" H 15350 2600 50  0001 C CNN
	1    15350 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	14850 2600 14850 2700
$Comp
L device:L L1
U 1 1 5F161AD7
P 14550 2600
F 0 "L1" V 14830 2600 50  0000 C CNN
F 1 "220µ/3A" V 14739 2600 50  0000 C CNN
F 2 "custom:Choke_Toroid_13x29mm_Vertical" H 14550 2600 50  0001 C CNN
F 3 "~" H 14550 2600 50  0001 C CNN
F 4 "DPO-3.0-220" V 14648 2600 50  0000 C CNN "Order No."
	1    14550 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13050 2600 13800 2600
Wire Wire Line
	14700 2600 14850 2600
Wire Wire Line
	15050 2700 15050 2600
Wire Wire Line
	15050 2600 15350 2600
Wire Wire Line
	12100 1850 12500 1850
$Comp
L device:Q_NPN_BEC Q3
U 1 1 5F186095
P 11250 2450
F 0 "Q3" H 11441 2496 50  0000 L CNN
F 1 "BC817" H 11441 2405 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 11450 2550 50  0001 C CNN
F 3 "~" H 11250 2450 50  0001 C CNN
	1    11250 2450
	1    0    0    -1  
$EndComp
$Comp
L device:R R11
U 1 1 5F18613A
P 11350 1450
F 0 "R11" H 11420 1496 50  0000 L CNN
F 1 "180R" H 11420 1405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 11280 1450 50  0001 C CNN
F 3 "~" H 11350 1450 50  0001 C CNN
	1    11350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 1600 11350 1850
Wire Wire Line
	11350 1850 11500 1850
Wire Wire Line
	11500 2050 11350 2050
Wire Wire Line
	11350 2050 11350 2250
$Comp
L power:GND #PWR023
U 1 1 5F18989F
P 11350 2750
F 0 "#PWR023" H 11350 2500 50  0001 C CNN
F 1 "GND" H 11355 2577 50  0000 C CNN
F 2 "" H 11350 2750 50  0001 C CNN
F 3 "" H 11350 2750 50  0001 C CNN
	1    11350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 2750 11350 2650
$Comp
L power:+5V #PWR022
U 1 1 5F18B5C5
P 11350 1200
F 0 "#PWR022" H 11350 1050 50  0001 C CNN
F 1 "+5V" H 11365 1373 50  0000 C CNN
F 2 "" H 11350 1200 50  0001 C CNN
F 3 "" H 11350 1200 50  0001 C CNN
	1    11350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 1200 11350 1300
$Comp
L device:R R10
U 1 1 5F18F501
P 10800 2450
F 0 "R10" V 10593 2450 50  0000 C CNN
F 1 "4.7k" V 10684 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10730 2450 50  0001 C CNN
F 3 "~" H 10800 2450 50  0001 C CNN
	1    10800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	10950 2450 11050 2450
Wire Notes Line
	10550 950  15700 950 
Wire Notes Line
	15700 950  15700 3200
Wire Notes Line
	15700 3200 10550 3200
Wire Notes Line
	10550 3200 10550 950 
Text Notes 15700 900  2    50   ~ 0
Motor Control
$Comp
L conn:CONN_01X02_FEMALE J2
U 1 1 5F195360
P 14850 4150
F 0 "J2" H 15050 4250 60  0000 L CNN
F 1 "Heater Relay" H 15050 4050 60  0000 L CNN
F 2 "custom:2_Cables_D1.5mm_P10mm" H 14850 4250 60  0001 C CNN
F 3 "" H 14850 4250 60  0001 C CNN
	1    14850 4150
	1    0    0    -1  
$EndComp
$Comp
L device:D D4
U 1 1 5F1954F8
P 14300 4150
F 0 "D4" V 14254 4229 50  0000 L CNN
F 1 "LL4148" V 14345 4229 50  0000 L CNN
F 2 "Diodes_SMD:D_MiniMELF_Standard" H 14300 4150 50  0001 C CNN
F 3 "~" H 14300 4150 50  0001 C CNN
	1    14300 4150
	0    -1   1    0   
$EndComp
$Comp
L power:+12V #PWR024
U 1 1 5F1999CC
P 14500 3800
F 0 "#PWR024" H 14500 3650 50  0001 C CNN
F 1 "+12V" H 14515 3973 50  0000 C CNN
F 2 "" H 14500 3800 50  0001 C CNN
F 3 "" H 14500 3800 50  0001 C CNN
	1    14500 3800
	1    0    0    -1  
$EndComp
$Comp
L device:Q_NPN_BEC Q4
U 1 1 5F19BF11
P 14400 4800
F 0 "Q4" H 14591 4846 50  0000 L CNN
F 1 "BC817" H 14591 4755 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 14600 4900 50  0001 C CNN
F 3 "~" H 14400 4800 50  0001 C CNN
	1    14400 4800
	1    0    0    -1  
$EndComp
$Comp
L device:R R14
U 1 1 5F19BF17
P 13950 4800
F 0 "R14" V 13743 4800 50  0000 C CNN
F 1 "4.7k" V 13834 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 13880 4800 50  0001 C CNN
F 3 "~" H 13950 4800 50  0001 C CNN
	1    13950 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	14100 4800 14200 4800
$Comp
L power:GND #PWR025
U 1 1 5F19E3E6
P 14500 5100
F 0 "#PWR025" H 14500 4850 50  0001 C CNN
F 1 "GND" H 14505 4927 50  0000 C CNN
F 2 "" H 14500 5100 50  0001 C CNN
F 3 "" H 14500 5100 50  0001 C CNN
	1    14500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 5100 14500 5000
Wire Wire Line
	14750 4250 14500 4250
Wire Wire Line
	14500 4250 14500 4400
Wire Wire Line
	14300 4300 14300 4400
Wire Wire Line
	14300 4400 14500 4400
Connection ~ 14500 4400
Wire Wire Line
	14500 4400 14500 4600
Wire Wire Line
	14750 4050 14500 4050
Wire Wire Line
	14500 4050 14500 3900
Wire Wire Line
	14300 4000 14300 3900
Wire Wire Line
	14300 3900 14500 3900
Connection ~ 14500 3900
Wire Wire Line
	14500 3900 14500 3800
Wire Notes Line
	13700 3550 15700 3550
Wire Notes Line
	15700 3550 15700 5350
Wire Notes Line
	15700 5350 13700 5350
Wire Notes Line
	13700 5350 13700 3550
Text Notes 15700 3500 2    50   ~ 0
Heater Relay Control
$Comp
L device:R R3
U 1 1 5F1E7E63
P 3150 5400
F 0 "R3" H 3220 5446 50  0000 L CNN
F 1 "22R/0.5W" H 3220 5355 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 3080 5400 50  0001 C CNN
F 3 "~" H 3150 5400 50  0001 C CNN
	1    3150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5F1E7E69
P 4000 5050
F 0 "#PWR08" H 4000 4900 50  0001 C CNN
F 1 "+5V" H 4015 5223 50  0000 C CNN
F 2 "" H 4000 5050 50  0001 C CNN
F 3 "" H 4000 5050 50  0001 C CNN
	1    4000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5050 4000 5250
$Comp
L power:GND #PWR09
U 1 1 5F1F2471
P 4000 6650
F 0 "#PWR09" H 4000 6400 50  0001 C CNN
F 1 "GND" H 4005 6477 50  0000 C CNN
F 2 "" H 4000 6650 50  0001 C CNN
F 3 "" H 4000 6650 50  0001 C CNN
	1    4000 6650
	1    0    0    -1  
$EndComp
$Comp
L device:Q_Photo_NPN Q2
U 1 1 5F1F9389
P 3900 5900
F 0 "Q2" H 4090 5946 50  0000 L CNN
F 1 "SFH 300" H 4090 5855 50  0000 L CNN
F 2 "LEDs:LED_D5.0mm_Horicontal_O5.08mm" H 4100 6000 50  0001 C CNN
F 3 "~" H 3900 5900 50  0001 C CNN
	1    3900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6100 4000 6650
Wire Notes Line
	2400 6900 4450 6900
Wire Notes Line
	4450 6900 4450 4800
Wire Notes Line
	4450 4800 2400 4800
Wire Notes Line
	2400 4800 2400 6900
Text Notes 4450 4750 2    50   ~ 0
IR sensor
$Comp
L power:GND #PWR019
U 1 1 5F2197C0
P 8050 6500
F 0 "#PWR019" H 8050 6250 50  0001 C CNN
F 1 "GND" H 8055 6327 50  0000 C CNN
F 2 "" H 8050 6500 50  0001 C CNN
F 3 "" H 8050 6500 50  0001 C CNN
	1    8050 6500
	1    0    0    -1  
$EndComp
$Comp
L device:R R9
U 1 1 5F230178
P 10250 5200
F 0 "R9" H 10180 5154 50  0000 R CNN
F 1 "4.7k" H 10180 5245 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" V 10180 5200 50  0001 C CNN
F 3 "~" H 10250 5200 50  0001 C CNN
	1    10250 5200
	-1   0    0    1   
$EndComp
$Comp
L device:R_Small R13
U 1 1 5F23AB09
P 13800 2100
F 0 "R13" H 13859 2146 50  0000 L CNN
F 1 "Snubber" H 13859 2055 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 13800 2100 50  0001 C CNN
F 3 "~" H 13800 2100 50  0001 C CNN
	1    13800 2100
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C6
U 1 1 5F23ABB7
P 13800 2350
F 0 "C6" H 13892 2396 50  0000 L CNN
F 1 "Snubber" H 13892 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13800 2350 50  0001 C CNN
F 3 "~" H 13800 2350 50  0001 C CNN
	1    13800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 2200 13800 2250
Wire Wire Line
	13800 2000 13800 1850
Connection ~ 13800 1850
Wire Wire Line
	13800 1850 15350 1850
Wire Wire Line
	13800 2450 13800 2600
Connection ~ 13800 2600
Wire Wire Line
	13800 2600 14400 2600
$Comp
L device:Resonator Y1
U 1 1 5F14EB83
P 11050 5150
F 0 "Y1" H 11050 5488 50  0000 C CNN
F 1 "8 MHz" H 11050 5397 50  0000 C CNN
F 2 "custom:Resonator_ZTTCC_X.XX_MG" H 11025 5150 50  0001 C CNN
F 3 "~" H 11025 5150 50  0001 C CNN
F 4 "ZTTCC8MG" H 11050 5306 50  0000 C CNN "Order No."
	1    11050 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F14EFBE
P 11050 5450
F 0 "#PWR021" H 11050 5200 50  0001 C CNN
F 1 "GND" H 11055 5277 50  0000 C CNN
F 2 "" H 11050 5450 50  0001 C CNN
F 3 "" H 11050 5450 50  0001 C CNN
	1    11050 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11050 5450 11050 5350
Wire Wire Line
	10900 5150 10800 5150
Wire Wire Line
	11200 5150 11300 5150
Wire Wire Line
	11300 5150 11300 4600
Wire Wire Line
	4000 5550 4000 5650
Wire Wire Line
	4000 5650 4600 5650
Connection ~ 4000 5650
Wire Wire Line
	4000 5650 4000 5700
Wire Wire Line
	4200 3750 4600 3750
Connection ~ 4200 3750
Wire Wire Line
	13800 4800 13550 4800
Wire Wire Line
	10650 2450 10400 2450
Wire Wire Line
	2450 6350 2250 6350
Text GLabel 4600 3750 2    50   Output ~ 0
ZC_DETECT
Text GLabel 4600 5650 2    50   Output ~ 0
IR_SENSOR
Text GLabel 2250 6350 0    50   Input ~ 0
IR_ENABLE
Text GLabel 10400 2450 0    50   Input ~ 0
FAN_ENABLE
Text GLabel 13550 4800 0    50   Input ~ 0
HEATER_ENABLE
Text GLabel 10150 5800 2    50   Input ~ 0
ZC_DETECT
Text GLabel 8050 5350 0    50   Input ~ 0
IR_SENSOR
Text GLabel 10150 4100 2    50   Output ~ 0
FAN_ENABLE
Text GLabel 10150 4000 2    50   Output ~ 0
HEATER_ENABLE
Text GLabel 10150 6200 2    50   Output ~ 0
IR_ENABLE
Text Notes 11400 3500 2    50   ~ 0
Main Controller
$Comp
L conn:CONN_01X02_FEMALE J1
U 1 1 5F2272A0
P 1050 1350
F 0 "J1" H 1250 1450 60  0000 L CNN
F 1 "Mains" H 1250 1250 60  0000 L CNN
F 2 "custom:2_Cables_D1.5mm_P10mm" H 1050 1450 60  0001 C CNN
F 3 "" H 1050 1450 60  0001 C CNN
	1    1050 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1250 1300 1250
Wire Wire Line
	1300 1250 1300 1150
Wire Wire Line
	1300 1150 1650 1150
Wire Wire Line
	1150 1450 1300 1450
Wire Wire Line
	1300 1450 1300 1550
Wire Wire Line
	1300 1550 1650 1550
Wire Wire Line
	1300 1600 1300 1550
Connection ~ 1300 1550
Wire Wire Line
	1300 1100 1300 1150
Connection ~ 1300 1150
Wire Wire Line
	12300 2300 12900 2300
$Comp
L atmel:ATMEGA328P-AU U4
U 1 1 5F25F9D8
P 9050 5100
F 0 "U4" H 9100 6467 50  0000 C CNN
F 1 "ATMEGA328P-AU" H 9100 6376 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 9100 6467 50  0001 C CIN
F 3 "" H 9100 6376 50  0001 C CNN
	1    9050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6100 8150 6100
Wire Wire Line
	8050 6100 8050 6200
Wire Wire Line
	8150 6200 8050 6200
Connection ~ 8050 6200
Wire Wire Line
	8050 6200 8050 6300
Wire Wire Line
	8150 6300 8050 6300
Connection ~ 8050 6300
Wire Wire Line
	8050 6300 8050 6500
$Comp
L power:+5V #PWR018
U 1 1 5F274F61
P 8050 3800
F 0 "#PWR018" H 8050 3650 50  0001 C CNN
F 1 "+5V" H 8065 3973 50  0000 C CNN
F 2 "" H 8050 3800 50  0001 C CNN
F 3 "" H 8050 3800 50  0001 C CNN
	1    8050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3800 8050 4000
Wire Wire Line
	8050 4100 8150 4100
Wire Wire Line
	8150 4000 8050 4000
Connection ~ 8050 4000
Wire Wire Line
	8050 4000 8050 4100
Wire Wire Line
	10050 4700 10800 4700
Wire Wire Line
	10800 4700 10800 5150
Wire Wire Line
	10050 4600 11300 4600
$Comp
L power:+5V #PWR020
U 1 1 5F2C1539
P 10250 4950
F 0 "#PWR020" H 10250 4800 50  0001 C CNN
F 1 "+5V" H 10265 5123 50  0000 C CNN
F 2 "" H 10250 4950 50  0001 C CNN
F 3 "" H 10250 4950 50  0001 C CNN
	1    10250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4950 10250 5050
Wire Wire Line
	10050 5450 10250 5450
Wire Wire Line
	10250 5450 10250 5350
$Comp
L device:C C3
U 1 1 5F2FAE4D
P 6900 4550
F 0 "C3" H 6785 4504 50  0000 R CNN
F 1 "100n/50V/X7R" H 6785 4595 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 6938 4400 50  0001 C CNN
F 3 "~" H 6900 4550 50  0001 C CNN
	1    6900 4550
	1    0    0    1   
$EndComp
$Comp
L device:R R8
U 1 1 5F2FB019
P 6650 4300
F 0 "R8" V 6857 4300 50  0000 C CNN
F 1 "4.7k" V 6766 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6580 4300 50  0001 C CNN
F 3 "~" H 6650 4300 50  0001 C CNN
	1    6650 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4300 6900 4300
Wire Wire Line
	6900 4400 6900 4300
Connection ~ 6900 4300
Wire Wire Line
	6900 4300 8150 4300
$Comp
L power:+5V #PWR014
U 1 1 5F315304
P 6450 4100
F 0 "#PWR014" H 6450 3950 50  0001 C CNN
F 1 "+5V" H 6465 4273 50  0000 C CNN
F 2 "" H 6450 4100 50  0001 C CNN
F 3 "" H 6450 4100 50  0001 C CNN
	1    6450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4100 6450 4300
Wire Wire Line
	6450 4300 6500 4300
$Comp
L power:GND #PWR015
U 1 1 5F31A9D4
P 6900 4800
F 0 "#PWR015" H 6900 4550 50  0001 C CNN
F 1 "GND" H 6905 4627 50  0000 C CNN
F 2 "" H 6900 4800 50  0001 C CNN
F 3 "" H 6900 4800 50  0001 C CNN
	1    6900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4800 6900 4700
$Comp
L device:C C4
U 1 1 5F35BD73
P 7600 4100
F 0 "C4" V 7348 4100 50  0000 C CNN
F 1 "100n/50V/X7R" V 7439 4100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7638 3950 50  0001 C CNN
F 3 "~" H 7600 4100 50  0001 C CNN
	1    7600 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4100 8050 4100
Connection ~ 8050 4100
$Comp
L power:GND #PWR016
U 1 1 5F36147E
P 7350 4100
F 0 "#PWR016" H 7350 3850 50  0001 C CNN
F 1 "GND" V 7355 3972 50  0000 R CNN
F 2 "" H 7350 4100 50  0001 C CNN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4100 7350 4100
$Comp
L device:C C5
U 1 1 5F366D9E
P 7600 4600
F 0 "C5" V 7348 4600 50  0000 C CNN
F 1 "100n/50V/X7R" V 7439 4600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7638 4450 50  0001 C CNN
F 3 "~" H 7600 4600 50  0001 C CNN
	1    7600 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F371C91
P 7350 4600
F 0 "#PWR017" H 7350 4350 50  0001 C CNN
F 1 "GND" V 7355 4472 50  0000 R CNN
F 2 "" H 7350 4600 50  0001 C CNN
F 3 "" H 7350 4600 50  0001 C CNN
	1    7350 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4600 7450 4600
Wire Wire Line
	7750 4600 8150 4600
NoConn ~ 8150 5450
Wire Wire Line
	8050 5350 8150 5350
Wire Wire Line
	10150 5800 10050 5800
Wire Wire Line
	10150 4100 10050 4100
Wire Wire Line
	10150 6200 10050 6200
Wire Wire Line
	10050 4000 10150 4000
NoConn ~ 10050 4200
NoConn ~ 10050 4850
NoConn ~ 10050 4950
NoConn ~ 10050 5050
NoConn ~ 10050 5150
NoConn ~ 10050 5250
NoConn ~ 10050 5350
NoConn ~ 10050 5600
NoConn ~ 10050 5700
NoConn ~ 10050 5900
NoConn ~ 10050 6000
NoConn ~ 10050 6100
NoConn ~ 10050 6300
Wire Notes Line
	6150 3550 11400 3550
Wire Notes Line
	11400 3550 11400 6750
Wire Notes Line
	11400 6750 6150 6750
Wire Notes Line
	6150 6750 6150 3550
$Comp
L conn:CONN_01X02_MALE J3
U 1 1 5F423403
P 14950 3000
F 0 "J3" V 15155 2812 60  0000 R CNN
F 1 "Motor" V 15049 2812 60  0000 R CNN
F 2 "custom:FASTON_2pin_6.3x0.8mm_P10mm" H 14950 3100 60  0001 C CNN
F 3 "" H 14950 3100 60  0001 C CNN
F 4 "725964-2" V 14951 2812 50  0000 R CNN "Order No."
	1    14950 3000
	0    -1   -1   0   
$EndComp
$Comp
L conn:CONN_02X03 J4
U 1 1 5F18D141
P 7100 6150
F 0 "J4" H 7100 6465 50  0000 C CNN
F 1 "ISP" H 7100 6374 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_SMT_02x03" H 7100 4950 50  0001 C CNN
F 3 "" H 7100 4950 50  0000 C CNN
	1    7100 6150
	1    0    0    -1  
$EndComp
Text GLabel 10350 5450 2    50   Input ~ 0
ISP_RESET
Wire Wire Line
	10250 5450 10350 5450
Connection ~ 10250 5450
Text GLabel 10150 4400 2    50   Input ~ 0
ISP_CIPO
Text GLabel 10150 4300 2    50   Output ~ 0
ISP_COPI
Text GLabel 10150 4500 2    50   BiDi ~ 0
ISP_SCK
Wire Wire Line
	10050 4300 10150 4300
Wire Wire Line
	10150 4400 10050 4400
Wire Wire Line
	10050 4500 10150 4500
Text GLabel 7450 6150 2    50   Input ~ 0
ISP_COPI
Text GLabel 6750 6050 0    50   Output ~ 0
ISP_CIPO
Text GLabel 6750 6150 0    50   BiDi ~ 0
ISP_SCK
Text GLabel 6750 6250 0    50   Output ~ 0
ISP_RESET
$Comp
L power:+5V #PWR0101
U 1 1 5F1ACFF4
P 7450 5950
F 0 "#PWR0101" H 7450 5800 50  0001 C CNN
F 1 "+5V" H 7465 6123 50  0000 C CNN
F 2 "" H 7450 5950 50  0001 C CNN
F 3 "" H 7450 5950 50  0001 C CNN
	1    7450 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F1AD082
P 7450 6350
F 0 "#PWR0102" H 7450 6100 50  0001 C CNN
F 1 "GND" H 7455 6177 50  0000 C CNN
F 2 "" H 7450 6350 50  0001 C CNN
F 3 "" H 7450 6350 50  0001 C CNN
	1    7450 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6350 7450 6250
Wire Wire Line
	7450 6250 7350 6250
Wire Wire Line
	7350 6150 7450 6150
Wire Wire Line
	7450 5950 7450 6050
Wire Wire Line
	7450 6050 7350 6050
Wire Wire Line
	6750 6050 6850 6050
Wire Wire Line
	6750 6150 6850 6150
Wire Wire Line
	6750 6250 6850 6250
$EndSCHEMATC
