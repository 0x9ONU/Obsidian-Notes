Date: 11th April 2025
Date Modified: 11th April 2025
File Folder: Week 11
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Transient Response

```

# Transient Response

*DC analysis* tells us $V_{out}$ if $V_{in}$ is constant

*Transient Analysis* tells us $V_{out}(t)$ if $V_{in}(t)$ changes
- Requires solving differential equations

Input is usually considered to be a step or ramp
- From 0 to $V_{DD}$ or vice versa

## Delay Definitions

1. $t_{pdr}$: *rising propagation delay*
	- From input to rising output crossing $V_{DD}/2$
2. $t_{pdf}$: *falling propagation delay*
	- From input to falling output crossing $V_{DD}/2$
3. $t_{pd}$: *average propagation delay*
	- $t_{pd} = (t_{pdr}+t_{pdf})/2$
4. $t_{r}$ *rise time*
	- From output crossing $0.2V_{DD}$ to $0.8V_{DD}$
5. $t_f$ *fall time*
	- From output crossing $0.8 V_{DD}$ to $0.2V_{DD}$
6. $t_{cdr}$: *rising contamination delay*
	- From input to rising output crossing $V_{DD}/2$
7. $t_{cdf}$ *falling contamination delay*
	- From input to falling output crossing $V_{DD}/2$
8. $t_{cd}$ *aveage contamination delay*
	- $t_{pd}=(t_{cdr}+t_{cdf})/2$

![[Pasted image 20250411110701.png]]

## Simulated Inverter Delay

Solving differential equations by hand is too hard
- SPICE simulator solves the equations numerically and uses more accurate IV models as well
- Simulations take time to write, may hide insight

![[Pasted image 20250411110957.png]]

## Delay Estimation

We would like to be able to easily estimate delay
-  Not as accurate as simulation
- But easier to ask “What if?”

The step response usually looks like a 1st order RC response with a decaying exponential

Use RC delay models to estimate delay
- $C$ = total capacitance on output node
- Use *effective resistance* $R$
- So that $t_{pd} = RC$

Characterize transistors by finding their effective $R$
- Depends on average current as gate switches

### Effective Resistance

Shockley models have limited value
- Not accurate enough for modern transistors
- Too complex for much harder analysis

**Simplification**: Treat transistor as resistor
- $I_{ds}=V_{ds}/R$

Too inaccurate to predict current at any given time, but good enough to predict RC delay

## RC Delay Model

Use equivalent circuits for MOS transistors
- Ideal switch + capacitance and ON resistance
- Unit nMOS has resistance $R$, capacitance $C$
- Unit pMOS has resistance $2R$, capacitance $C$

Capacitance proportional to width with resistance inversely proportional

![[Pasted image 20250411111419.png]]

### RC Values

**Capacitance**
- $C = C_g = C_s = C_d = 2 fF/\micro m$ of gate wdith in $0.6 \micro m$
- Gradually decline to $1 fF/\micro m$ in nanometer techs

**Resistance**
- $R \approx 6K \Omega \star \micro m$ in $0.6 \micro m$ process
- Improves with shroter channel lengths

**Unit Transistors**
- May refer to minimum contacted device ($4/2 \lambda$)
- Or maybe $1 \micro m$ wide device
- Does not matter as long as you are consistent

### Inverter Delay Estimate

```ad-question
Estiamte the delay of a fanout-of-1 inverter
```

![[Pasted image 20250411111941.png]]

$$\boxed{d = 6RC}$$

![[Pasted image 20250411112707.png]]

## Examples

### Example 1: 3-input NAND

```ad-question
Sketch a 3-input NAND with transistor widths chosen to acheive effective rise and fall resistances equal to a unit inverter ($R$)
```

```ad-note
title: Assumptions
- For falling edge, we need all three nMOS transistors to be on to get a path to ground
- For rising edge, we need at least one n-mos transistor off and one pMOS transistor on to get a path to high.
```

![[Pasted image 20250411112943.png | center]]

![[Pasted image 20250411113440.png | center]]

![[Pasted image 20250411113449.png | center]]

Estimate worst-case rising and falling delay of e-input NAND driving $h$ identical gates

![[Pasted image 20250411114242.png]] ![[Pasted image 20250411114246.png]]

![[Pasted image 20250411114253.png]]

$$t_{pdr} = (9+5h)RC$$

![[Pasted image 20250411114314.png]]

$$t_{pdf} = (3C)(\frac{R}{3})+(3C)(\frac{R}{3}+\frac{R}{3})+[(9+5h)C](\frac{R}{3}+\frac{R}{3}+\frac{R}{3}) \Rightarrow \boxed{t_{pdf}=(11+5h)RC}$$

## Elmore Delay

- ON transistors look liek reisstors
- Pullup or pulldown network modled as *RC ladder*

$$t_{pd} \approx\sum_{\mbox{nodes }i} R_{i-to-soruce}C_i$$

![[Pasted image 20250411114205.png]]

