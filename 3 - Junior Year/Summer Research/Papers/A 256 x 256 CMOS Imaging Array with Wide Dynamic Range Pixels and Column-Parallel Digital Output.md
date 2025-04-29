
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
	- Dynamic range expansion technique
	- Compression that can be controlled digitally.
## Theory

![[Pasted image 20250428094239.png]]

![[Pasted image 20250428095057.png]]

- Originally meant for a CCD pixel, but can be used for CMOS pixels
- M3 is added to increase the sensitivity, but is not necessary
- Fig 3 is the operating sequence for the wide dynamic range

![[Pasted image 20250428095307.png]]

- 3a is when the pixel is reset by pulling $B(t)$ high
	- Lowers the potential barrier between charge sense node and drain diffusion and allows excess charge to flow into the drain.
- b
	- The lateral overflow gate is raised a small mount
	- Charge accumulates in the photodiode
	- The lateral overflow gate rises at a rate with time
- c
	- If the illumination is sufficiently high, there will be a period of time in the integration interval during which the integration interval during which the photodiode charge is limited by the lateral overflow gate
- d
	- lateral overflow gate rises fast enoguht o retain all fo the photocurrent entering the integration well.
	- At the end of the period, the row select is turned on and the output voltage is sensed on the column output line

- Comparison
	- Different properties in three areas:
		1. Intentional change in the transfer characteristic relating input illumination to output voltage, described in Section II-A.
		2. random and fixed-pattern noise also changes

### Relationship Between Barrier Curve and Compression Curve

![[Pasted image 20250428101141.png]]

- Barrier height $b(t)$ represents the charge capacity of the sense node and is the product of the sense-node capacitance and barrier potential voltage, which is a function of the lateral overflow gate voltage $B(t)$
- Continuous-time case (4(a))
	- For low illumination, the charge integration curve stays below the barrier, and all charge is retained
	- For high illumination, the charge integration curve starts below the barrier curve and rises linearly.
	- Charge curve NEVER goes over integration curve, so it will immediately flow to the drain node
	- “Departure Time” $t_d$
		- Follows until the barrier curve is equal the initial slope of the charge curve
		- From here until the end, the barrier curve lies above the charge curve
		- All the photocharge on the pixel is retained
		- Referred to as the barrier-limited charge $Q_{bl}$
			- the integrated charge is continuously limited by the barrier curve until $t_d$
- Stepped waveform
	- Based on a piecewise linear equation
	- The number of segments is equal to the number of steps in the barrier function
	- There are multiple departure times depending on the number of segments ($t_1, t_2, … t_n$)
- Relationship between $b(t)$ and $Q(I)$
	- Assuming the photocurrent is constant
	- The barrier curve has $N$ corners and $N$ breakpoints
	- Levels are chosen so the points are convex upward.
	- Compression curve always tarts at zero, and limits at the saturation charge $Q_{max}$ for $I \ge I_N$
	- Barrier levels and departure times can be found to obtain that compression curve

$$\frac{b_1}{b_t} < \frac{b_i-b_{i-1}}{t_i-t_{i-1}} < \frac{b_{i+1-b_i}}{t_{i+1}-t_i} \quad 2 \le i \le N-1$$

![[Pasted image 20250428103957.png]]
### Random Noise

Main contributor is shot noise from the current flowing over the barrier, the dark current, and the photogenerated current
- Subthreshold current flows through the charge spill device and lateral overflow gate during reset
- Current flows through M3 and M4 when not needed
-  

### FPN

Caused by mismatches in the optical aperture $A_{opt}$