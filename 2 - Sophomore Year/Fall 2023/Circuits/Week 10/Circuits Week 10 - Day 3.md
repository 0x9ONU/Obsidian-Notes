Date: 27th October 2023
Date Modified: 27th October 2023
File Folder: Week 10
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Indpedence

```

# Impedance

```ad-summary
Consists of a two circuit elements that is expressed as:
$$Z = R \pm jx$$
```

**Inductive Impedance**

$$Z = R + jX_L$$
$$|Z| \angle \Theta$$
**Capacitive Impedance**:

$$Z = R-jX_C$$
$$|Z| \angle -\Theta$$

## Differences between elements and impedance

| Circuit Element | Impedance  |
| --------------- | ---------- |
| $R$             | $Z = R$    |
| $L$             | $Z = jX_L$ |
| $C$             | $Z=-jX_c$           |

```ad-note
Impedance is positive for inductance and **negative** for capacitance
```
 
## Impedances in Series

#comebacklater ex. 1

$$Z_{eq} = Z_{total} = Z_1 + Z_2 + Z_3 + ... + Z_n$$

## Impedances in Parallel

#comebacklater ex. 2

$$\frac{1}{Z_{eq}} = \frac{1}{Z_1} + \frac{1}{Z_2} + \frac{1}{Z_3} + ... + \frac{1}{Z_3}$$

**For two impedances in parallel:**

$$Z_{eq} = \frac{Z_1Z_2}{Z_1+Z_2}$$

## Example

```ad-question
Find the equivalent impedance at the terminals $a-b$. Operating Frequency is $60 Hz$
```

#comebacklater ex. 3

```ad-warning
The circuit must be expressed in phasor domain to simplify
- Inductors and Capacitors must be converted to Resistance
```

- Convert values
	- $3mF = X_C = \frac{1}{wC} = \frac{1}{2\pi fC} = \frac{1}{2\pi(60(3*10^{-3}))} = 0.88 \Omega = Z \to -j0.88\Omega$
	- $2mH = X_L = wL = 2\pi fL = 2 \pi (60)(2*10^{-3} = 0.754 \Omega \to Z = j0.754 \Omega$

**Redraw Circuit**:

#comebacklater ex. 4

**Begin Simplification**

```ad-note
$$|Z| \angle \Theta \to |Z|\cos\Theta + j|Z| \sin\Theta$$
```

- $(-j0.88) // (4+j0.754)$
	- $\frac{(-j0.88)(4+j0.754)}{4-j0.754 - j0.88}$
	- $\frac{0.664 - j3.52}{4-j0.126}$
	- $

