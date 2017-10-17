EESchema Schematic File Version 2
LIBS:Remote_Kate-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:switches
LIBS:Remote_Kate-cache
EELAYER 25 0
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
L BC817 Q1
U 1 1 59DD703E
P 7700 2900
F 0 "Q1" H 7900 2975 50  0000 L CNN
F 1 "BC817-40" H 7900 2900 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7900 2825 50  0001 L CIN
F 3 "http://www.mccsemi.com/up_pdf/BC817-16~BC817-40(SOT-23).pdf" H 7700 2900 50  0001 L CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-Remote_Kate D3
U 1 1 59DD7168
P 7800 2000
F 0 "D3" H 7800 2100 50  0000 C CNN
F 1 "LED" H 7800 1900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 7800 2000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/81009/tsal6100.pdf" H 7800 2000 50  0001 C CNN
	1    7800 2000
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1
U 1 1 59DD73AD
P 7200 2200
F 0 "R1" H 7230 2220 50  0000 L CNN
F 1 "3.3k" H 7230 2160 50  0001 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7200 2200 50  0001 C CNN
F 3 "" H 7200 2200 50  0000 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 59DD73FE
P 7800 3300
F 0 "R2" H 7830 3320 50  0000 L CNN
F 1 "1.5" H 7830 3260 50  0001 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7800 3300 50  0001 C CNN
F 3 "" H 7800 3300 50  0001 C CNN
	1    7800 3300
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 59DD7528
P 7200 3100
F 0 "D1" H 7200 3200 50  0000 C CNN
F 1 "D" H 7200 3000 50  0001 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 7200 3100 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30196.pdf" H 7200 3100 50  0001 C CNN
	1    7200 3100
	0    -1   -1   0   
$EndComp
$Comp
L D D2
U 1 1 59DD7581
P 7200 3450
F 0 "D2" H 7200 3550 50  0000 C CNN
F 1 "D" H 7200 3350 50  0001 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 7200 3450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30196.pdf" H 7200 3450 50  0001 C CNN
	1    7200 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3600 7800 3400
Wire Wire Line
	7800 2650 7800 2700
Wire Wire Line
	7800 3100 7800 3200
Wire Wire Line
	7500 2900 7200 2900
Wire Wire Line
	7200 2300 7200 2950
Connection ~ 7200 2900
Wire Wire Line
	7800 2200 7800 2250
Wire Wire Line
	7200 2100 7200 1800
Connection ~ 7200 3600
Wire Wire Line
	7200 3300 7200 3250
$Comp
L LED-RESCUE-Remote_Kate D4
U 1 1 59E500A5
P 7800 2450
F 0 "D4" H 7800 2550 50  0000 C CNN
F 1 "LED" H 7800 2350 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 7800 2450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/81009/tsal6100.pdf" H 7800 2450 50  0001 C CNN
	1    7800 2450
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C1
U 1 1 59E505E1
P 8400 2950
F 0 "C1" H 8425 3050 50  0000 L CNN
F 1 "10u" H 8425 2850 50  0001 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 8400 2950 50  0001 C CNN
F 3 "" H 8400 2950 50  0001 C CNN
	1    8400 2950
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C2
U 1 1 59E5065C
P 8400 2150
F 0 "C2" H 8425 2250 50  0000 L CNN
F 1 "100u" H 8425 2050 50  0001 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 8400 2150 50  0001 C CNN
F 3 "" H 8400 2150 50  0001 C CNN
	1    8400 2150
	0    -1   -1   0   
$EndComp
Connection ~ 7800 3600
$Comp
L AP1117-50 U1
U 1 1 59DD7660
P 8250 2550
F 0 "U1" H 8350 2300 50  0000 C CNN
F 1 "AP1117" H 8250 2800 50  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 8250 2550 50  0001 C CNN
F 3 "" H 8250 2550 50  0000 C CNN
	1    8250 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 2150 8600 2150
Wire Wire Line
	8600 2150 8600 2950
Wire Wire Line
	8550 2550 8700 2550
Wire Wire Line
	8600 2950 8550 2950
Connection ~ 8600 2550
Connection ~ 8250 2950
Text GLabel 8300 1950 2    60   Input ~ 0
5V_REF
Connection ~ 8250 2150
Wire Wire Line
	8250 2850 8250 3150
Wire Wire Line
	8250 3150 8300 3150
Wire Wire Line
	8250 1950 8250 2250
Wire Wire Line
	8250 1950 8300 1950
Wire Notes Line
	9000 1850 9000 3250
Wire Notes Line
	9000 3250 8100 3250
Wire Notes Line
	8100 3250 8100 1850
Wire Notes Line
	8100 1850 9000 1850
Text GLabel 7200 1800 1    60   Input ~ 0
PINX_MCIN
Wire Wire Line
	7400 3600 7400 3750
Wire Wire Line
	7200 3600 7800 3600
Connection ~ 7400 3600
Text GLabel 7800 1700 1    60   Input ~ 0
5V_REF
Wire Wire Line
	7800 1700 7800 1800
Text GLabel 5200 1600 3    60   Input ~ 0
5V_REF
Wire Notes Line
	6950 1200 6950 4350
Wire Notes Line
	7000 1200 8000 1200
Wire Notes Line
	8000 1200 8000 4050
Wire Notes Line
	8000 4050 7000 4050
Wire Notes Line
	7000 4050 7000 1200
$Comp
L SW_SPST SW1
U 1 1 59E5761C
P 6450 2150
F 0 "SW1" H 6450 2275 50  0000 C CNN
F 1 "Input" H 6450 2050 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h13mm" H 6450 2150 50  0001 C CNN
F 3 "" H 6450 2150 50  0001 C CNN
	1    6450 2150
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW2
U 1 1 59E576DE
P 6450 2450
F 0 "SW2" H 6450 2575 50  0000 C CNN
F 1 "Mute" H 6450 2350 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h13mm" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW3
U 1 1 59E57755
P 6450 2750
F 0 "SW3" H 6450 2875 50  0000 C CNN
F 1 "Vol_Down" H 6450 2650 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h13mm" H 6450 2750 50  0001 C CNN
F 3 "" H 6450 2750 50  0001 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW4
U 1 1 59E5775C
P 6450 3050
F 0 "SW4" H 6450 3175 50  0000 C CNN
F 1 "Vol_Up" H 6450 2950 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h13mm" H 6450 3050 50  0001 C CNN
F 3 "" H 6450 3050 50  0001 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW5
U 1 1 59E57817
P 6450 3350
F 0 "SW5" H 6450 3475 50  0000 C CNN
F 1 "Power" H 6450 3250 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h13mm" H 6450 3350 50  0001 C CNN
F 3 "" H 6450 3350 50  0001 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-20PU U2
U 1 1 59E57DD9
P 5650 2700
F 0 "U2" H 4500 3100 50  0000 C CNN
F 1 "ATTINY85-20PU" H 6650 2300 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 6650 2700 50  0001 C CIN
F 3 "" H 5650 2700 50  0001 C CNN
	1    5650 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 1300 5900 1350
Wire Wire Line
	5800 4050 5800 4100
Wire Wire Line
	5800 4100 6050 4100
Wire Wire Line
	6050 4100 6050 2150
Wire Wire Line
	6050 2150 6250 2150
Wire Wire Line
	5700 4050 5700 4150
Wire Wire Line
	5700 4150 6100 4150
Wire Wire Line
	6100 4150 6100 2450
Wire Wire Line
	6100 2450 6250 2450
Wire Wire Line
	5600 4050 5600 4200
Wire Wire Line
	5600 4200 6150 4200
Wire Wire Line
	6150 4200 6150 2750
Wire Wire Line
	6150 2750 6250 2750
Wire Wire Line
	5500 4050 5500 4250
Wire Wire Line
	5500 4250 6200 4250
Wire Wire Line
	6200 4250 6200 3050
Wire Wire Line
	6200 3050 6250 3050
Wire Wire Line
	5400 4050 5400 4300
Wire Wire Line
	5400 4300 6250 4300
Wire Wire Line
	6250 4300 6250 3350
Wire Wire Line
	6700 1600 6700 3350
Wire Wire Line
	6700 3350 6650 3350
Wire Wire Line
	6650 3050 6700 3050
Connection ~ 6700 3050
Wire Wire Line
	6650 2750 6700 2750
Connection ~ 6700 2750
Wire Wire Line
	6650 2450 6700 2450
Connection ~ 6700 2450
Wire Wire Line
	6650 2150 6700 2150
Connection ~ 6700 2150
Wire Wire Line
	5200 1600 5200 1350
Wire Wire Line
	5200 1350 5400 1350
Wire Wire Line
	5050 1600 5050 1300
Wire Wire Line
	5050 1300 5900 1300
Wire Notes Line
	6950 4350 4950 4350
Wire Notes Line
	4950 4350 4950 1200
Wire Notes Line
	4950 1200 6950 1200
Text Notes 5650 1150 0    60   ~ 0
Microcontroller\n
Text Notes 7250 1150 0    60   ~ 0
LED Driver
Text Notes 8200 1850 0    60   ~ 0
Linear Regulator\n
Text GLabel 7400 3750 3    60   Input ~ 0
GND
Text GLabel 6700 1600 1    60   Input ~ 0
GND
Text GLabel 5050 1600 3    60   Input ~ 0
GND
Text GLabel 8700 2550 2    60   Input ~ 0
GND
Text GLabel 8300 3150 2    60   Input ~ 0
9V_PWR
Text GLabel 8350 3400 0    60   Input ~ 0
GND
Text GLabel 8500 3550 0    60   Input ~ 0
9V_PWR
Wire Wire Line
	8350 3400 8750 3400
Wire Wire Line
	8500 3550 8600 3550
$Comp
L Conn_01x01 J1
U 1 1 59E5AF00
P 8950 3400
F 0 "J1" H 8950 3500 50  0000 C CNN
F 1 "Conn_01x01" H 8950 3300 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 8950 3400 50  0001 C CNN
F 3 "" H 8950 3400 50  0001 C CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 59E5AF6C
P 8800 3550
F 0 "J2" H 8800 3650 50  0000 C CNN
F 1 "Conn_01x01" H 8800 3450 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 8800 3550 50  0001 C CNN
F 3 "" H 8800 3550 50  0001 C CNN
	1    8800 3550
	1    0    0    -1  
$EndComp
Text GLabel 6400 4050 2    60   Input ~ 0
PINX_MCIN
Wire Wire Line
	6400 4050 5900 4050
$EndSCHEMATC
