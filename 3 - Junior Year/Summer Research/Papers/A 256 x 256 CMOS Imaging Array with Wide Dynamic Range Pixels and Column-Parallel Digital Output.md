
## Abstract
A stepped reset-gate voltage technique is applied to a CMOS active pixel sensor array to increase dynamic range by 26 dB. A frame rate of 390 frames/s is achieved using column-parallel output circuits. Switched-capacitor correlated double-sampling circuits reduce fixed-pattern noise to 4.0 mV (dark). Cyclic analog-to-digital converters achieve approximately 9-b accuracy. At 30 frames/s, random noise is 0.56 mV (dark), optical dynamic range is 96 dB, and power is 52 mW.

## Introduction

- APS arrays are shown to be a possible alternative to CCD imagers
	- Better system integration
	- reduced power draw
	- Flexible addressing
- Proposed CMOS sensor 
	- Made for a automotive stereo vision system
- When the dynamic range exceeds the sensor’s dynamic range, portions of the signal will be clipped in the highest and lowest region
- Nonlinear elements have been used in the past:
	- GS voltage of a subhtreshold MOSFET
	- Voltage across a forward-biased diode
- The paper proposes…
	- A 256x256 CMOS pixel array
	- Dynamic range expansioni technique
	- Compression that can be controlled digitally.

## Theory


