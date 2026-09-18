---
creation_date: 2026-09-15 14:16
last_modified: 2026-09-15 14:16
folder: CMOS Design
tags:
  - type/lecture
  - field/VLSI
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes

- Covered in undergrad here: [[HWSW - Week 9 Day 3]]
# 2. Lecture & Discussion Notes

## Transistor Structure

### N-Type

![[Pasted image 20260915141727.png]]


### CMOS Cross-Section

![[Pasted image 20260915141757.png]]

- Both an n-type and p-type sits on a single section
- Field Oxide separates the two neighboring transistors

### CMOS Inverter Layout

![[Pasted image 20260915141915.png]]

**Cross Section**

![[Pasted image 20260915141931.png]]

```ad-note
The lengths are all the same by best practice
```

**Color Codes**:
- *Red*: Polysilicon, the lines that connect both sides of the CMOS
	- The *width* of the poly is set to the **length** of the transistor
- *Green*: P-differential or N-differential depending on the transistor
	- The *width* of the diffusion is the *width* of the transistor
- *Grey/Black*: Metal contacts to connect the n-diff or p-diff to the physical circuit (a major connection wire)
- *Ends of the Circuit Grey/Black*: EIther a p-well or n-well plug connected to $V_{DD}$ or $GND$ respectively

```ad-important
This is just one metal layer. Modern processes allow up to 15 metal layers to hold millions of transistors.
- You choose the widths across all of these layers to get the proper timing
```

![[Pasted image 20260915143406.png]]

```ad-note
Via is the contact point (aka. a wire) between two metal layers
```
## Simplfied CMOS Process

![[Pasted image 20260915143522.png]]

Metal and contacts using a *contact cut* to connect two *different* types of transistors in series

![[Pasted image 20260915143601.png]]

**Connecting two transistors of teh same type in series

```ad-important
Connected by a shared diffusion
```

![[Pasted image 20260915143700.png]]

**Connecting Poly to Diffusion

![[Pasted image 20260915143751.png]]

## Simplified IC Fabrication Process

**Steps 1**:
1. Mask layouts: Pieces of silicon glass ready to have chips put on them
2. Preparation of photomasks: Placed to make sure we are ready to take out part of the wells
3. Well formation: Take the wells out of the silicon to prepare for gate and diffusion formation
4. Gate and diffusion formation: add material to create the transistors
5. Contacts and metallization: Add all the vias, wires, etc. to connect the transistors

![[Pasted image 20260915143849.png]]

```ad-note

- *Front End of Line*: Everything before the transistors are formed
- *Back End of Line*: Everything after/during the transistors are formed

Both can happen at different foundaries depending on the needs of the manufacturing
```

### Silicon Wafer

- From one wafer, you can make a bunch of processors since they are so large

![[Pasted image 20260915144154.png]]

### Photolithography

```ad-summary
Mask patterns are put on wafer using photo-sensitive materials
```

### Process Steps

1. Place tubs to provide properly-doped substrate for n-type, p-type transistors

![[Pasted image 20260915144407.png]]

2. Pattern polysilicon before diffusion regions
   
![[Pasted image 20260915144430.png]]

3. Add diffsuions and perform self-masking
   
![[Pasted image 20260915144616.png]]

3. Start adding metal layers
   
   ![[Pasted image 20260915144648.png]]

### Modern Processes and Size

```ad-summary
In a modern process, there are a large # of metal layers to break up a chip into multiple sections
```

![[Pasted image 20260915144747.png]]

## Feature Size (Gate Length)

Feature size improves $30\%$ every 2 years or so:
- $\frac{1}{\sqrt{ 2 }}=0.7$ reduction factor every “generation”
- From $1 \micro m$ in 1990 to $14 nm$ in 2015
- 10 generations in 20 years
	- 1000 → 700 → 500 → 350 → 250 → 180 → 130 → 90 →65 → 45 → 32 → 22 → 14 → 10

![[Pasted image 20260915145006.png]]

## Processors Over the Years

![[Pasted image 20260915145418.png]]

## Factors Determining a Design Rule

```ad-summary
Designed by engineers to increase the yield of chips and hold up performance guarantees 
```

1. **Mask Alignment Accuracy**: How accurate is one mask aligned to another mask?
2. **Process Variation**:
	- If cutting a hole, how much do sides of the cut vary?
	- If implanting dopants, how much does the width of the diffusion vary?
3. **Conservative Mindset**:
	- How conservative do you need to assure good process yield?
	- 30-40 masks levels
	- 5-10 process steps per mask level

```ad-warning
The more aggressive you are at making the maximum of the chip, the more likely your yeild will decrease
```

### Process-Specific Rules

- Rules that are very specific to a single type of prcoess (ex. 300nm is very different from 10nm)
- The process will allow tighter tolerances and less space waste
### $\lambda$ Rules (Portable/Scalable Rules)

- Technology generation (“node”) independent
- All dimensions are normalized in terms of $\boxed{\lambda = \frac{f}{2}}$
	- $f$ is the **minimum length** of the transistor
- Very conservative and wastes space
- However! This makes it easy to move from one process to another due to the extra length and width 

```ad-example
![[Pasted image 20260915150845.png]]
```

### Transistor Layout

During DRC, they will also check layout rules to ensure no rules are being broken

![[Pasted image 20260915152135.png]]

```ad-example
We are allowed to use up to 6 metal layers for the processes we are using; however, it is good practice to use less layers if we are doing full custom designs
```

**Poly Overhang**:
- Extend the transistor $2 \lambda$ away from the edge of a differential
- Without it, you might not have a clearly defined channel region
- Used to avoid tolerance errors making a transistor fail

**Differential Overhang**:
- Extend the diffusion area by $1 \lambda$ from the edge of the transistor
- Needed to avoid an ill-formed transistor region

### MOSIS Design Rules

![[Pasted image 20260915152629.png]]

```ad-important
- SCMOS is greater than 500nm
- SUBM is between 500nm to 180nm
- The 180nm and below use the DEEP column
```

## Cell and Circuit Layouts

### Inverters

```ad-note
Wells and selects are not shown. Only important for other applications and are hidden for now.
```



- *Green*: N-diff
- *Brown*: P-diff
- *Blue*: Metal1
- *Magenta*: Metal2
- *Red*: Poly

![[Pasted image 20260915153959.png]]

```ad-note
Top level contact is the well contact to $V_{DD}$, while the bottom level contact connects $GND$ to the base
```

```ad-warning
Only some processes allow **metal stacking**, aka. contacts on top of each other. In this case, it does not exist for this process, so we need to put a small amount of metal one to connect p-diff->metal1->metal2
```

### NOR

![[Pasted image 20260915154124.png]]

```ad-question
*Practice*: Draw a NOR layout with vertical diffusions
```

### NAND

![[Pasted image 20260915154223.png]]

### T-Gate (Transmission Gate)

![[Pasted image 20260915154252.png]]

### Complex Gate Example

```ad-question
What is this complex layout trying to implement?
```

![[Pasted image 20260915154502.png]]

#### Step 1: Build the PMOS Side

![[Pasted image 20260915154631.png]]

#### Step 2: Add on the NMOS Side

```ad-warning
This side is a logical complement, but might not be a *strucural compelement*. Take the same method as before
```

![[Pasted image 20260915154837.png]]

#### Step 3: Make Function

*Use the PMOS in reverse*
$$
F = \overline{A(B+C+D)}
$$

### Another Complex Gate Example

![[Pasted image 20260915155043.png]]

### Approaches to Layout

1. **Single Diffusion Runs**: a single P-diff and N-diff is used to make the whole gate from left-right
	- Also called *continuous diffusion*
	- Usually compact
2. **Multiple Diffusion Runs**: multiple p-diff and n-diff can be used to make the gate
	- Used to reduce the amount of poly that needs to be ran when compared to single diffusion
# 3. Action Items & Follow-Up
- [x] Review Art of Layout for VLSI 📅 2026-09-16 ✅ 2026-09-16
- [ ] *Practice* NOR layout [[Lecture 7 - Art of Layout#NOR]]📅 2026-09-16 