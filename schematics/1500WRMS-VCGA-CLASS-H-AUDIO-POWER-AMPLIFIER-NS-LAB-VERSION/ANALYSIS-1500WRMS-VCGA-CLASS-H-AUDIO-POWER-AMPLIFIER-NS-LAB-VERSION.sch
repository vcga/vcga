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
P 3000 3600
F 0 "V1" H 3230 3647 50  0000 L CNN
F 1 "120V DC" H 3230 3554 50  0000 L CNN
F 2 "" H 3000 3600 50  0001 C CNN
F 3 "~" H 3000 3600 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 5C873162
P 3000 4300
F 0 "V2" H 3230 4347 50  0000 L CNN
F 1 "120V DC" H 3230 4254 50  0000 L CNN
F 2 "" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 3000 3950
$Comp
L pspice:0 #GND0105
U 1 1 5C8731E3
P 3650 4050
F 0 "#GND0105" H 3650 3950 50  0001 C CNN
F 1 "0" H 3650 4140 50  0001 C CNN
F 2 "" H 3650 4050 50  0001 C CNN
F 3 "~" H 3650 4050 50  0001 C CNN
	1    3650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3950 3650 3950
Wire Wire Line
	3650 3950 3650 4050
Connection ~ 3000 3950
Wire Wire Line
	3000 3950 3000 3900
Wire Wire Line
	3000 4600 3000 4650
Wire Wire Line
	3000 3300 3000 3250
Text Label 3150 3250 0    50   ~ 0
+120V
Text Label 3150 4650 0    50   ~ 0
-120V
$Comp
L pspice:0 #GND0106
U 1 1 5C873298
P 4200 4300
F 0 "#GND0106" H 4200 4200 50  0001 C CNN
F 1 "0" H 4200 4390 50  0001 C CNN
F 2 "" H 4200 4300 50  0001 C CNN
F 3 "~" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4300 4200 4250
Wire Wire Line
	4200 3650 4200 3600
Text Label 4400 3600 0    50   ~ 0
M_INPUT
$Sheet
S 6000 3150 1300 1600
U 5C87359F
F0 "POWER_AMP_BLOCK" 50
F1 "1500WRMS-VCGA-CLASS-H-AUDIO-POWER-AMPLIFIER-NS-LAB-VERSION.sch" 50
F2 "+120V" U L 6000 3250 50 
F3 "-120V" U L 6000 4650 50 
F4 "M_INPUT" U L 6000 3600 50 
F5 "M_OUT" U R 7300 3900 50 
F6 "+42V" U L 6000 3400 50 
F7 "-42V" U L 6000 4500 50 
F8 "+15V" B L 6000 3750 50 
F9 "-15V" B L 6000 3900 50 
F10 "+RLC" B R 7300 3350 50 
F11 "-RLC" B R 7300 3750 50 
$EndSheet
Wire Wire Line
	4200 3600 6000 3600
Wire Wire Line
	3000 3250 6000 3250
Wire Wire Line
	3000 4650 6000 4650
Text Notes 3000 5600 0    50   ~ 0
* AC analysis directive for checking response at range of 20Hz to 20KHz\n* To apply the directive, please uncomment the line below.\n*.ac dec 10 20 20k
Text Notes 3000 5800 0    50   ~ 0
.title ANALYSIS OF 1500W RMS VCGA CLASS-H AUDIO POWER AMPLIFIER (LAB VERSION)
$Comp
L pspice:VSOURCE V3
U 1 1 5CDD2202
P 2100 3600
F 0 "V3" H 2330 3647 50  0000 L CNN
F 1 "42V DC" H 2330 3554 50  0000 L CNN
F 2 "" H 2100 3600 50  0001 C CNN
F 3 "~" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V4
U 1 1 5CDD228B
P 2100 4300
F 0 "V4" H 2330 4347 50  0000 L CNN
F 1 "42V DC" H 2330 4254 50  0000 L CNN
F 2 "" H 2100 4300 50  0001 C CNN
F 3 "~" H 2100 4300 50  0001 C CNN
	1    2100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3900 2100 3950
Wire Wire Line
	3000 3950 2100 3950
Connection ~ 2100 3950
Wire Wire Line
	2100 3950 2100 4000
Wire Wire Line
	6000 3400 4200 3400
Wire Wire Line
	4200 3400 4200 3050
Wire Wire Line
	4200 3050 2100 3050
Wire Wire Line
	2100 3050 2100 3300
Wire Wire Line
	6000 4500 4200 4500
Wire Wire Line
	4200 4500 4200 4850
Wire Wire Line
	4200 4850 2100 4850
Wire Wire Line
	2100 4850 2100 4600
Text Label 2150 3050 0    50   ~ 0
+42V
Text Label 2250 4850 0    50   ~ 0
-42V
Text Notes 3000 5200 0    50   ~ 0
* Transient analysis directive for 1KHz with input at 1.41Vp\n* To apply the directive, please uncomment the line below.\n*.tran 1u 22m 20m
$Comp
L pspice:VSOURCE V5
U 1 1 5C873252
P 4200 3950
F 0 "V5" H 4430 3997 50  0000 L CNN
F 1 "dc 0 ac 1.41 sin(0 1.414 1k 0 0)" H 4430 3904 50  0000 L CNN
F 2 "" H 4200 3950 50  0001 C CNN
F 3 "~" H 4200 3950 50  0001 C CNN
	1    4200 3950
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V6
U 1 1 5F65DEA2
P 3450 1650
F 0 "V6" H 3680 1697 50  0000 L CNN
F 1 "15V DC" H 3680 1604 50  0000 L CNN
F 2 "" H 3450 1650 50  0001 C CNN
F 3 "~" H 3450 1650 50  0001 C CNN
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V7
U 1 1 5F65DEAC
P 3450 2350
F 0 "V7" H 3680 2397 50  0000 L CNN
F 1 "15V DC" H 3680 2304 50  0000 L CNN
F 2 "" H 3450 2350 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1950 3450 2000
Connection ~ 3450 2000
Wire Wire Line
	3450 2000 3450 2050
Wire Wire Line
	3450 1100 3450 1350
Wire Wire Line
	3450 2900 3450 2650
Text Label 3500 1100 0    50   ~ 0
+15V
Text Label 3600 2900 0    50   ~ 0
-15V
Wire Wire Line
	6000 3750 5350 3750
Wire Wire Line
	5350 3750 5350 1100
Wire Wire Line
	5350 1100 3450 1100
Wire Wire Line
	3450 2900 5200 2900
Wire Wire Line
	5200 2900 5200 3900
Wire Wire Line
	5200 3900 6000 3900
Wire Wire Line
	2100 3950 1550 3950
Wire Wire Line
	1550 3950 1550 2000
Wire Wire Line
	1550 2000 3450 2000
Wire Wire Line
	7700 3350 7700 3400
Wire Wire Line
	7300 3350 7700 3350
Wire Wire Line
	7700 3700 7700 3750
Wire Wire Line
	7300 3750 7700 3750
$Comp
L pspice:0 #GND0107
U 1 1 5C87D2BC
P 8150 6050
F 0 "#GND0107" H 8150 5950 50  0001 C CNN
F 1 "0" H 8150 6140 50  0001 C CNN
F 2 "" H 8150 6050 50  0001 C CNN
F 3 "~" H 8150 6050 50  0001 C CNN
	1    8150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3900 7300 3900
Text Label 7400 3350 0    40   ~ 0
+RLC
Text Label 7400 3750 0    40   ~ 0
-RLC
Text Label 7400 3900 0    40   ~ 0
M_OUT
Wire Wire Line
	8150 6000 8150 6050
Text Label 8150 5650 0    40   ~ 0
M_SP
Wire Wire Line
	7950 5550 7950 5750
Wire Wire Line
	7950 5750 7350 5750
Wire Wire Line
	7950 5250 7950 5200
Wire Wire Line
	7950 5200 7350 5200
Wire Wire Line
	8150 5250 8150 5200
Text Label 7500 5200 0    40   ~ 0
+RLC
Text Label 7500 5750 0    40   ~ 0
-RLC
Text Label 8350 5200 0    40   ~ 0
M_OUT
Wire Wire Line
	8150 5200 8800 5200
Wire Wire Line
	8800 5250 8800 5200
Connection ~ 8800 5200
Wire Wire Line
	8800 5200 9050 5200
Wire Wire Line
	8800 5550 8800 5650
Wire Wire Line
	8150 5550 8150 5700
$Comp
L pspice:0 #GND0126
U 1 1 6CFFF740
P 8800 5650
F 0 "#GND0126" H 8800 5550 50  0001 C CNN
F 1 "0" H 8800 5740 50  0001 C CNN
F 2 "" H 8800 5650 50  0001 C CNN
F 3 "~" H 8800 5650 50  0001 C CNN
	1    8800 5650
	1    0    0    -1  
$EndComp
$Comp
L VCGA:RESISTOR Rdummy3
U 1 1 69DEA6D1
P 8800 5400
F 0 "Rdummy3" H 8855 5447 50  0000 L CNN
F 1 "100k" H 8855 5354 50  0000 L CNN
F 2 "" H 8800 5400 50  0001 C CNN
F 3 "" H 8800 5400 50  0001 C CNN
	1    8800 5400
	1    0    0    -1  
$EndComp
$Comp
L VCGA:RESISTOR Rdummy1
U 1 1 5C87D0DC
P 8150 5850
F 0 "Rdummy1" H 8205 5897 50  0000 L CNN
F 1 "4" H 8205 5804 50  0000 L CNN
F 2 "" H 8150 5850 50  0001 C CNN
F 3 "" H 8150 5850 50  0001 C CNN
	1    8150 5850
	1    0    0    -1  
$EndComp
$Comp
L VCGA:RELAY_STD SR701
U 1 1 69DE1F65
P 8050 5400
F 0 "SR701" H 8331 5439 40  0000 L CNN
F 1 "sw1 ON" H 8331 5362 40  0000 L CNN
F 2 "" H 8050 5400 40  0001 C CNN
F 3 "" H 8050 5400 40  0001 C CNN
	1    8050 5400
	1    0    0    -1  
$EndComp
$Comp
L VCGA:RESISTOR Rdummy2
U 1 1 6954662C
P 7700 3550
F 0 "Rdummy2" H 7755 3597 50  0000 L CNN
F 1 "660" H 7755 3504 50  0000 L CNN
F 2 "" H 7700 3550 50  0001 C CNN
F 3 "" H 7700 3550 50  0001 C CNN
	1    7700 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC