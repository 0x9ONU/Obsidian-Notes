Date: 28th March 2025
Date Modified: 28th March 2025
File Folder: Week 9
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# CMOS Fabrication

## Overview

Circuit performance criteria:
- Area
- Power
- Delay/speed

Performance determined by the parasitic circuit elements:
- Capacitance
- Resistance
- Inductance

By products of fabrication

## Basic Steps

CMOS transistors are fabricated on silicon wafer
- Lithography process similar to printing press
- ON each step, different materials are deposited or etched
- Easiest to understand by viewing both top and cross-section of wafer in a simplified manufacturing process.

**Three Steps for Photolithography**
1. Apply photoresist
2. Expose PR to UV light
3. Remove PR

![[Pasted image 20250328111708.png]]

![[Pasted image 20250328112001.png]]
## Patterning of SiO2

![[Pasted image 20250328111827.png]]

## Fabrication Steps

```ad-summary
title: Overview
**Six Masks**
1. n-well
2. Polysilicon
3. n+ diffusion
4. p+ diffusion
5. Contact
6. Metal

![[Pasted image 20250328113908.png]]
```

**Step 0**: Blank wafer
- Start with blnak \wafer
- Build inverter from the bottom up

![[Pasted image 20250328112309.png]]

**Step 1:** Oxidation
- Grow Si02 on top of Si wafer
- 900-1200C with H2O or O2 in oxidation fernace

![[Pasted image 20250328112340.png]]

**Step 2**: Spin on photoresist
- Photoresist is a light-sensitive organic polymer
- Softens where exposed to light

![[Pasted image 20250328112424.png]]

**Step 3:** Lithography
- Expose photoresist through n-well mask
- Strip off exposed photoresist

![[Pasted image 20250328112508.png]]

**Step 4**: Etch
- Etch oxide with HF
- Only attacks oxide where resist has been exposed

**Step 5**: Strip Photoresist
- Strip off remaining photoresist
- Necessary so resist does not melt in next step

![[Pasted image 20250328112729.png]]

**Step 6:** n-well
- Formed with diffusion or ion implantation
- *Diffusion*:
	- Place wafer in furnace with arsneic gas
	- Heat until As atoms diffuse into exposed Si
- *Ion Implantation*:
	- Blast wafer with beam of As ions
	- Ions blocked by SiO2, only enter exposed Si

![[Pasted image 20250328112908.png]]

**Step 7**: Strip Oxide
- Strip off the remaining oxide using HF
- Back to bare wafer with n-well
- Subsequent steps involve similar series of steps

![[Pasted image 20250328112917.png]]


**Step 8**: Polysilicon
- Deposit very thin layer of gate oxide
- Chemical Vapor Deposition (CVD) of silicon layer
	- Place wafer in furnace with Silane gas
	- Forms many small crystals called polysilicon
	- Heavily doped to be good conductor

![[Pasted image 20250328113018.png]]

**Step 9**: Polysilicon Patterning
- Use same lithography process to pattern polysilicon

![[Pasted image 20250328113107.png]]

**Step 10**: Self-Aligned Process
- Use oxide and masking to expose where n+ dopants should be diffused or implanted
- N-diffusion forms nMOS source, drain, and n-well contact

**Step 11**: N-Diffusion
- Pattern oxide and form n+ regions
- Gate blocks diffusion
- Polysilicon is better than metal since it does no melt during later processes
- Historically dopants were difussed
- Ion implanted today
- Regions are still called diffusion
- Strips off oxide at the end

![[Pasted image 20250328113225.png]]

![[Pasted image 20250328113250.png]]

![[Pasted image 20250328113300.png]]

**Step 12**; P-Diffusion
- Similar set of steps to form p+ diffusion regions for pMOS source and rain and substrate contact

![[Pasted image 20250328113405.png]]

**Step 13**: Contacts
- Need to wire togehter the devices
- Cover chip with thick field oxide
- Etch oxide where contact cuts are needed

![[Pasted image 20250328113438.png]]

**Step 14**: Metalization
- Sputter on aluminum over whole wafer
- Pattern to remove excess metal, leaving wires

![[Pasted image 20250328113508.png]]

**Step 15**: Inverter Cross-Section
- Typically use p-type substrate for nMOS transistors
- Requires n-well for body of pMOS transistor

![[Pasted image 20250328113627.png]]

**Step 16**: Inverter Cross-Section with Well and Substrate Contacts
- Substrate must be tied to GND and n-well to $V_{DD}$
- Metal to lightly-doped semiconductor forms poor connection called Shottky Diode
- Use heavily doped well and substrate contacts/taps

![[Pasted image 20250328113808.png]]

**Step 17**: Inverter Mask Set

![[Pasted image 20250328113834.png]]



