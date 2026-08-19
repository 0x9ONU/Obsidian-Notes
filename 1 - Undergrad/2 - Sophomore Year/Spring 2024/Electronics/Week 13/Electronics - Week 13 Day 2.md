Date: 24th April 2024
Date Modified: 24th April 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Bipolar Junction Transistors (BJTs)

Takes on two different forms:
- NPN
- PNP

## NPN BJT

![[Electronics - Week 13 Day 2 2024-04-24 13.03.31.excalidraw]]

**When it is in Forward Active Region**

![[Electronics - Week 13 Day 2 2024-04-24 13.19.41.excalidraw]]

*EBj (Forward) and CBJ (Reverse)*

- Dopping $E >> B >> C$
- This result in more electrons flow from $E$ to $B$ than holes flowing from $B$ to $E$ (forward bias)
- Holes and Elecrons recombine as they enter the emitter and base, respecitvely. But extra free electrons in the base do not immediately combine.
- Electrons in p-type minority, can travel through reverse biased region.

```ad-important
This reuslts in a small $I_B$ creating a much larger $I_C$
```
## Equations

### Exponential Equation

*By KCL*:

$$I_B = I_C = I_E$$
$$I_C = I_s e^{V_{BE}/V_T}$$
$$I_{S}\Rightarrow \mbox{Saturaiton/Scale Current}$$
$$V_T = 25mV$$
### Equation

*By KCL*

$$I_B +I_C = I_E$$
Since $I_c >> I_B$, then $I_C \approxeq I_E$

$\beta \Rightarrow \mbox{Current Gain}, \space \space \space 50 \le \beta \le 300$

$$I_C = \beta I_B$$
$$I_B + \beta I_B = I_E$$
$$I_E = (\beta + 1)I_B$$
$$I_E = \frac{\beta + 1}{\beta} I_C$$

$\alpha = \frac{\beta}{\beta + 1} \space \space \space \alpha \approxeq 0.99$

$$I_C = \alpha I_E$$
## Symbols

![[Electronics - Week 13 Day 2 2024-04-24 13.40.17.excalidraw]]

## Regions of Operation for NPN

**Cutoff:** $V_{BE} < 0 \space \& \space V_{BC} < 0$ Means that EBJ and CBJ is in reverse bias
- $I_C \space \& \space I_E \approx 0$

**Saturation**: 
- Unlike MOSFETs and like Amplifiers, it is undesirable

### Graph

![[Electronics - Week 13 Day 2 2024-04-24 13.44.40.excalidraw]]



