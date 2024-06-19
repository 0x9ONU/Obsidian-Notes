#research

# Glossary
- *Section I*: Overview
- *Section II*: RC Parallel Circuit
	- *Part 1*: Theory
	- *Part 2*: Build
	- *Part 3*: Results
- *Section III*: Differential-OP Amps
- *Section IV*: Three-Bit Flash ADC
	- *Part 1*: Regions
	- *Part 2*: Priority Encoder  
- *Section V*: Eight-to-One MUX
- *Section VI*: Microcontrollers & Code
- *Section VII*: Conclusion & Future Work
- *References*

# Section I: Overview

When it comes to the world of Analog-to-Digital Converts (ADCs), there are many options to choose from. The main type of ADCs are Successive Approximation (SAR), Delta-Sigma ($\Delta \Sigma$), Dual Slope, Pipelined, and Flash [1]. Out of the main types, Flash ADCs peaked the interest of the research team the most. When compared to the other three versions, Flash provides the best sample rate and bit resolution at low bit levels of all the types, which would allow for highly accurate readings and quantization levels without sacrificing time. However, unlike the other variations, Flash ADCs are particularly expensive to produce as they require an exponential amount of comparators per bit ($2^n -1$  comparators where $n$ is the number of bits). We found that, for the Flash ADC to be competitive, a new approach was necessary. To improve the current landscape for the use of flash ADCs in the electronics world, the project for Summer 2024 will focus on using a novel approach to measure the resistance of a RC circuit accurately using Flash ADCs, differential amplifiers, and multiplexers.

In Section II, the RC circuit is covered. In brief, a logarithmic staircase control (CTRL) signal that is powered by a DAC will be placed at the gate of an NMOS. This controls the charge and discharge of a resistor and capacitor in parallel to get an accurate reading of the final voltage by allowing the voltage to saturate in certain regions before it discharges. These regions are critical and determine the range the resistor might be in. The relation on the charging was found to be a modified version of the standard discharging equation.

In Section III, the amplification will be handled. Coming off of the capacitor node, it will be wired into eight different differential op amps that will scale the voltage thresholds from each region to zero to five volts. This will allow for more accurate readings for the ADCs later on.

Further down the circuit, the one coarse three-bit Flash ADC will be used in combination of another fine ten-bit ADC in order to get a thirteen-bit digital output. Controlled by the input of the provided RC circuit, the three bits will be used to both control the 

#  Section II: RC Parallel Circuit

# Section III: Differential-OP Amps

# Section IV: Three-Bit Flash ADC

# Section V: Eight-to-One MUX

# Section VI: Microcontrollers & Code

# Section VII: Conclusion & Future Work

# References

[1] G. Smith, “Types of ADC converters,” Data Acquisition | Test and Measurement Solutions, https://dewesoft.com/blog/types-of-adc-converters
[2] 
