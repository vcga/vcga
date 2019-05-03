EESchema Schematic File Version 4
LIBS:ANALYSIS-1500WRMS-VCGA-CLASS-H-AUDIO-POWER-AMPLIFIER-NS-LAB-VERSION-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 900  7150 0    140  ~ 0
This KiCad schematic sheet is intentionally designed\nto utilize analysist simulation only, not a netlist\nsource of PCB design.
$Comp
L pspice:VSOURCE V1
U 1 1 5C87310B
P 3200 3100
F 0 "V1" H 3430 3147 50  0000 L CNN
F 1 "120V DC" H 3430 3054 50  0000 L CNN
F 2 "" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5C873162
P 3200 3800
F 0 "V2" H 3430 3847 50  0000 L CNN
F 1 "120V DC" H 3430 3754 50  0000 L CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "~" H 3200 3800 50  0001 C CNN
	1    3200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3500 3200 3450
$Comp
L pspice:0 #GND0105
U 1 1 5C8731E3
P 3850 3550
F 0 "#GND0105" H 3850 3450 50  0001 C CNN
F 1 "0" H 3850 3640 50  0001 C CNN
F 2 "" H 3850 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3450 3850 3450
Wire Wire Line
	3850 3450 3850 3550
Connection ~ 3200 3450
Wire Wire Line
	3200 3450 3200 3400
Wire Wire Line
	3200 4100 3200 4150
Wire Wire Line
	3200 2800 3200 2750
Text Label 3350 2750 0    50   ~ 0
M_VCCHP
Text Label 3350 4150 0    50   ~ 0
M_VCCHN
$Comp
L pspice:0 #GND0106
U 1 1 5C873298
P 4400 3800
F 0 "#GND0106" H 4400 3700 50  0001 C CNN
F 1 "0" H 4400 3890 50  0001 C CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "~" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3800 4400 3750
Wire Wire Line
	4400 3150 4400 3100
Text Label 4600 3100 0    50   ~ 0
M_INPUT
$Sheet
S 6200 2650 1300 1600
U 5C87359F
F0 "POWER_AMP_BLOCK" 50
F1 "1500WRMS-VCGA-CLASS-H-AUDIO-POWER-AMPLIFIER-NS-LAB-VERSION.sch" 50
F2 "M_VCCHP" U L 6200 2750 50 
F3 "M_VCCHN" U L 6200 4150 50 
F4 "M_INPUT" U L 6200 3100 50 
F5 "M_OUT" U R 7500 3400 50 
F6 "M_VCCLP" U L 6200 2900 50 
F7 "M_VCCLN" U L 6200 4000 50 
$EndSheet
Wire Wire Line
	4400 3100 6200 3100
Wire Wire Line
	3200 2750 6200 2750
Wire Wire Line
	3200 4150 6200 4150
$Comp
L VCGA:RESISTOR Rdummy1
U 1 1 5C87D0DC
P 7900 3650
F 0 "Rdummy1" H 7955 3697 50  0000 L CNN
F 1 "4" H 7955 3604 50  0000 L CNN
F 2 "" H 7900 3650 50  0001 C CNN
F 3 "" H 7900 3650 50  0001 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0107
U 1 1 5C87D2BC
P 7900 3900
F 0 "#GND0107" H 7900 3800 50  0001 C CNN
F 1 "0" H 7900 3990 50  0001 C CNN
F 2 "" H 7900 3900 50  0001 C CNN
F 3 "~" H 7900 3900 50  0001 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3900 7900 3800
Wire Wire Line
	7900 3500 7900 3400
Wire Wire Line
	7900 3400 7500 3400
Text Notes 3200 5100 0    50   ~ 0
* AC analysis directive for checking response at range of 20Hz to 20KHz\n* To apply the directive, please uncomment the line below.\n*.ac dec 10 20 20k
Text Notes 3200 5300 0    50   ~ 0
.title ANALYSIS OF 1500W RMS VCGA CLASS-H AUDIO POWER AMPLIFIER (LAB VERSION)
$Comp
L pspice:VSOURCE V3
U 1 1 5CDD2202
P 2300 3100
F 0 "V3" H 2530 3147 50  0000 L CNN
F 1 "42V DC" H 2530 3054 50  0000 L CNN
F 2 "" H 2300 3100 50  0001 C CNN
F 3 "~" H 2300 3100 50  0001 C CNN
	1    2300 3100
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5CDD228B
P 2300 3800
F 0 "V4" H 2530 3847 50  0000 L CNN
F 1 "42V DC" H 2530 3754 50  0000 L CNN
F 2 "" H 2300 3800 50  0001 C CNN
F 3 "~" H 2300 3800 50  0001 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2300 3450
Wire Wire Line
	3200 3450 2300 3450
Connection ~ 2300 3450
Wire Wire Line
	2300 3450 2300 3500
Wire Wire Line
	6200 2900 4400 2900
Wire Wire Line
	4400 2900 4400 2550
Wire Wire Line
	4400 2550 2300 2550
Wire Wire Line
	2300 2550 2300 2800
Wire Wire Line
	6200 4000 4400 4000
Wire Wire Line
	4400 4000 4400 4350
Wire Wire Line
	4400 4350 2300 4350
Wire Wire Line
	2300 4350 2300 4100
Text Label 2350 2550 0    50   ~ 0
M_VCCLP
Text Label 2450 4350 0    50   ~ 0
M_VCCLN
Text Notes 3200 4700 0    50   ~ 0
* Transient analysis directive for 1KHz with input at 1.41Vp\n* To apply the directive, please uncomment the line below.\n*.tran 1u 22m 20m
$Comp
L pspice:VSOURCE V5
U 1 1 5C873252
P 4400 3450
F 0 "V5" H 4630 3497 50  0000 L CNN
F 1 "dc 0 ac 1.41 sin(0 1.414 1k 0 0)" H 4630 3404 50  0000 L CNN
F 2 "" H 4400 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC