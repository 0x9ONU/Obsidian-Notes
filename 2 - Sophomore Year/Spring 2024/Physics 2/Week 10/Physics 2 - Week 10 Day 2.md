Date: 6th April 2024
Date Modified: 6th April 2024
File Folder: Week 11
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Examples

## Example 1: Coil in a Changing E-Field

$$B = B_o(3t^2+9t^3)$$

![[Physics 2 - Week 10 Day 2 2024-04-06 17.23.27.excalidraw]]

```ad-note
Given:
- $B||A$
- $r=6cm$
- $R = 3 \Omega$
- $N=20 \mbox{ turns}$
- $B_o = 10 T/s$
```

### Part A, Find the $e_{inf}$ at $t = 2.0s$

$$e = -N \frac{d \Phi_B}{dt}= -N \frac{d}{dt}BA \cos \Theta$$
$$=-NA \frac{d}{dt}(B_o(3t^2+9t^3))$$
$$-N(\pi r^2)B_o(6t+27t^2)$$
$$e = -271.43 V$$

### Part B, Find the Current

$$|e| = IR$$
$$I = \frac{e}{R}= 9A$$

# Motional $e_{mf}$

## Method 1: Force Equation

![[Physics 2 - Week 10 Day 2 2024-04-06 17.50.48.excalidraw]]

```ad-note
Positive charge in bar end won't move towards the top because of the RHR
```

**CONSTANT B-FIELD**

### Forces on Charges

$$F^\to = qv^\to \otimes B^\to$$
$$F = q v\perp B$$

```ad-note
This would mean the positive charges move up, and the negative charges move down instantly.
```

```ad-important
Over an abitrary length of time, $I = 0$
```

### Voltage Induced ($e_{mf}$)

$$F = qV \perp B$$
$$qE = qvB$$
$$\frac{V}{\mathcal{l}} = VB$$
$$\boxed{e_{mf} = B\mathcal{l}V}$$

```ad-note
- There is voltage induced
- BUT there is no current or another induced B-Field 2
```

## Method 2: Faraday's Law

![[Physics 2 - Week 10 Day 2 2024-04-06 17.58.32.excalidraw]]

```ad-note
- Constant $B_1$
- Wire moved at $V$
- All $B^\to$
```

### Find Voltage Induced

$$e = \frac{-d}{dt}BA\cos \Theta$$
$$e = - B \frac{d}{dt}lx$$
$$e = -Bl \frac{dx}{dt}$$
$$\boxed{|e|=BlV}$$

### Find $I$ Induced

$$I = \frac{e}{R}\Rightarrow \boxed{I = \frac{BlV}{R}}$$

```ad-important
- $I$ makes $B_2$, which will always be the opposite of $B_1$ (Lenz's Law)
```

## Examples

### Example 1 - Voyager Shuttle Antenna

![[Physics 2 - Week 10 Day 2 2024-04-06 18.04.57.excalidraw]]

```ad-note
Given:
- $B^\to = 2*10^{-10}T$
- $l = 5m$
- $r = 8*10^3 \frac{m}{s}$
$$\space$$
Find e
```

$$e = BlV$$
$$e = 8*10^{-6} V$$

```ad-important
For this equation to work, $l$ must ALWAYS be parallel with $v$ and $v$ must be parallel with $B$
```



