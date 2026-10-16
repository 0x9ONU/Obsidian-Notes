---
creation_date: 2026-09-21 12:08
last_modified: 2026-09-21 12:08
folder: 2 - CMOS Design
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
# 2. Lecture & Discussion Notes

## Effect of Input Slew on Cell Delay

Imagine a rise/fall time that is idealized to an exponential ramp between the input/output of two gates:

![[Pasted image 20260921122455.png]]

- This rise/fall has an effect on the 
- Larger input slew (slower rise/fall) results in a slower output transistion and a larger cell delay.

```ad-summary
title: Definition
**Input Slew ($t_r,t_f$)**: Time for the input transition from $X\%$ to $Y\%$ of $V_{DD}$ 
```

![[Pasted image 20260921123023.png]]
### Key Definitions

1. **Slew Rate**: Rate of change of voltage. Typically around $100 mV/ps$ or $0.1V/ns$ 
2. **Slew (Transition) Time**: Time for the input transition from $X\%$ to $Y\%$ of $V_{DD}$ (ex. 20% to 80% OR 25% to 75%, etc.)
3. **Input Slew (or slew)**: Rise or fall time at the input of a cell
	- If nothing is specified, assume that they are talking about **10%** and **90%** for the two parameters

### Propogation Delay Model

![[Pasted image 20260921123040.png]]


$$
\text{Propogation delay model}: \quad \boxed{t_{pHL}= \sqrt{ t^2_{pHL(step)}+(t_{r}/2)^2 }}
$$

$$
t_{pLH} = \sqrt{ t^2_{pLH(step)} +(t_{f}/2)^2} 
$$
- $t_{pHL(step)}$ is the the propagation high-to-low time when an ideal step input is provided to the input.
- $t_{r}$ is the standard rise time

```ad-warning
When the input rise time is doubled, that means the propogation delay is affected by about a 70%
```

```ad-note
In practice, here is **no** idealized step signal. Practically, we use a signal that has a finite signal that has a rise or the fall that can be introduced to both the simulator and implemented in the real world.
```

## Intrinsic Delay vs. Effort Delay of a Unit Inverter

**Unit Inverter**
![[Pasted image 20260921123746.png]]

- $s$ is the *sizing factor*, where $W_{p}=W_{n}=s$
- $C_{int}$ includes the following capacitances:
	1. Gate/diffusion
	2. Contacts and wiring
	3. Metal parasitics

```ad-note
title: Unit Transistor Resistances
$R_{pu}, R_{nu}$ : The effective resistances of unit PMOs and NMOS transistors
```

**Intinsic/Rise Delay**:
$$
t_{ri}=k_{1}R_{pu}C_{int}
$$
**Effort/Fall Delay**
$$
t_{fu}=k_{2}R_{nu}C_{int}
$$

```ad-warning
These two equations only work for the unit inverter wiht no external load
```

```ad-important
Rise/Fall Delay wiht External Load


$$
t_{r}= k_{1} \frac{R_{pu}}{s}(sC_{int}+C_{ext})
$$

$$
=k_{1} R_{pu}C_{int}\left( 1+\frac{C_{ext}}{sC_{int}} \right)
$$

$$
\boxed{t_r =t_{ri}\left( 1+ \frac{C_{ext}}{sC_{int}} \right)}
$$
$$\boxed{t_{f}=t_{fu}\left( 1+ \frac{C_{ext}}{sC_{int}} \right)}$$
```

- The size of the transistor ($s$) directly affects the size of the internal capacitance ($C_{int}$) 
- If there is no external load, the $t_{r} \text{ and }t_{s}$ is equivalent to the direct intrinsic/effort delay respectively.

```ad-important
This means that the rise/fall times are **independent** of the width when there is *no load*. It only comes into play when the inverter comes in contact with a load it needs to drive.
```

### Impact of Sizing

**Propogation Delay of a unit inverter**


$$
t_{p}=k_{1}R_{eq}(C_{int}+C_{ext})
$$
```ad-note
Let us assume it is $k_1=0.69$
```


$$
= 0.69R_{eq}C_{int}\left( 1+ \frac{C_{ext}}{C_{int}} \right)
$$

$$
\boxed{t_{p}= t_{p0}\left( 1+ \frac{C_{ext}}{C_{int}} \right)}
$$

*Therefore:*


$$
t_{p} = 0.69 \left( \frac{R_{ref}}{S} \right)(SC_{int, ref})\left( 1+\frac{C_{ext}}{SC_{int, ref}} \right)
$$

$$
\boxed{t_{p}= t_{p0}\left( 1+\frac{C_{ext}}{SC_{int,ref}} \right)}
$$
```ad-important
These means that increasing the sizing factor $S$ reduces the impact of teh external load by a factor of $1/S$
```

### Key Takeaways

1. **Intinsic Delay is Independent of Gate Sizing**: 
	- The intrinsic delay $t_{p0}$ is determined by the technology and inverter layout. 
	- When no load is present, increasing the drive (larger $S$) is totally offset by the increased capacitance
2. **Very large sizing yields diminishing returns**
	- Making $S$ infinitely large yields the maximum obtainable performance gain, eliminated the impact of any external load, and reducing the delay tot eh intrinsic one.
	- However, any sizing factor $S$ that is sufficiency larger than ($C_{ext}/C_{int}$) produces similar results at a substantial gain in silicon area


![[Pasted image 20260921125550.png]]

- With a fixed external load, increasing the device size $S$ reduces the delay, but with diminishing returns as the intrinsic (self-loading) capacitances dominate

## Timing Arcs in a CMOS NAND2 Cell

```ad-summary
**Timing Arcs**: Channging one input while the other inputs are stable.
```

![[Pasted image 20260921130304.png]]

For this gate, there are **four timing arcs**:

![[Pasted image 20260921130356.png]]

```ad-note
For the following, $A$ is stable for one of them, whille $B$ is stable for the other. One waveform is made from low-to-high AND high-to-low.
```

![[Pasted image 20260921130411.png]]

### Finding the Propogation Delays for Different Timing Arcs

```ad-note
Let us assume that there is an external load ($C_L$), an internal resistance ($C_{int}$), and a diffusion capacitance between the two transistors at node $G$ ($C_g$).
```

```ad-question
What is the instrinsic delay for each arc given that there is no load ($C_L = 0$)?
```


| Arc                    | Diagram                              | First input vector (setup) ($A,B) | Second input vector (evaluate) ($A,B) | Intrinsic Delay (ps)                 |
| ---------------------- | ------------------------------------ | --------------------------------- | ------------------------------------- | ------------------------------------ |
| $t_{A \to Y \uparrow}$ | ![[Pasted image 20260921131654.png]] | $\left <1,1 \right >$             | $\left <0,1 \right >$                 | ![[Pasted image 20260921132321.png]] |
| $t_{A}\to Y\downarrow$ | ![[Pasted image 20260921131701.png]] | $\left <0,1 \right >$             | $\left <1,1 \right >$                 | ![[Pasted image 20260921132342.png]] |
| $t_{B}\to Y\uparrow$   | ![[Pasted image 20260921131708.png]] | $\left <1,1 \right >$             | $\left <1,0 \right >$                 | ![[Pasted image 20260921132415.png]] |
| $t_{B}\to Y\downarrow$ |                                      | $\left <1,0 \right >$             | $\left <1,1 \right >$                 | ![[Pasted image 20260921132920.png]] |


```ad-important
*Special Case*: When the *third* case is tested, there is a path from $V_{DD}$ to both the output **AND** $C_G$. This means $C_{G}$ will also be charged. This will affect our intrinsic delay for this specific case.
```

```ad-note
Even though there is no "worst-case" here, we have to be careful on more complex gates. The setup vector and evaluation vectors must be given in their worst-cases.
```

### Key Points
- A CMOS NAND2 has four propogation arcs: two from each input $(A,B)$ to the output ($Y$)
- $t_{pLH}$: delay from input falling (or rising, depending on arc) to output low → high transition
- $t_{pHL}$: delay from input rising (or falling) to output high → low transition.
- Each input has separate arcs because delays can be different (due to transistor sizing, stack effect ,etc.)

## Timing Data for a Cell

```ad-summary
For each arc, propogation delays and rise/fall times depend on the **output load** and **input slew**.
```

![[Pasted image 20260921133119.png]]

```ad-important
Designers are trying to characterize a cell based on multiple output loads and input skews across every input condition.
```

### Practice: 3-Input NAND

```ad-question
1. Determine the timing arcs
2. For each arc, find setup and evaluation vectors
3. For each, determine all charged/discharged cpacitors and draw their RC circuits
```

![[Pasted image 20260921134729.png]]

```ad-note
The two node diffusion capacitances are based on the layout and the design characteristics of the transistor. If everything is the same size and layout (even down to the size of wire), these capacitors will be the same.
```
# 3. Action Items & Follow-Up
- [x] Review lecture 9 for VLSI 📅 2026-09-23 ✅ 2026-09-25
- [x] *Practice* Three-Input NAND 🔼 📅 2026-09-23 ✅ 2026-09-25