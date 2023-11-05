Date: 25th October 2023
Date Modified: 25th October 2023
File Folder: Week 10
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Circuit Eleemtns Phase Relationships

```

```ad-important
Sinsusoid waves are used because it will always stay a sinusoidal regardless of the change in the circuit. Square wave and triangle waves do not have this luxery
```

# Circuit elements Phase Relationships

#comebacklater ex. 1

```ad-summary
- **Resistance**
	- The voltage & current are in phase ($\Theta_v \Theta_i)$)
- **Inductor**
	- Current **lags** voltage by $90\degree$ (voltage leads current by $90\degree$)
- **Capacitor**
	- Current **leads** voltage by $90\degree$ (voltage lags current by $90\degree$)
```

```ad-warning
This is for the PURE form of resistance, inductance, or capacitance. NOT A COMBINATION
```

```ad-important
Rely on CIVIL:
- **C**apacitance
	- **I** comes before the **V**, so I leads V
- **L**- Inductance
	- **V** comes before the **I**, so V leads I
```
## Examples

### Resistance

#comebacklater ex. 2

$$\textbf{I} = \frac{\textbf{V}}{R}$$
$$\textbf{I}=\frac{100 \angle 50\degree}{20} = 5 \angle 50\degree$$

## Inductive Reactance

A frequency dependent element
- Increases as the **frequency** increases

```ad-note
- Measured in $\Omega$
- Represented by upper case $X$
```

$$X_L = wL = 2\pi fL = \frac{V_m}{I_m}$$

```ad-warning
For DC, $f = 0$
$$\therefore X_L = 0 \Omega \space aka. \space short \space circuit$$

```

## Capacitive Reactance

A frequency dependent element
- Measured in $\Omega$

$$X_C = \frac{1}{wC} = \frac{1}{2 \pi f C} = \frac{V_m}{I_m}$$

```ad-warning
For DC, $f = 0$
$$\therefore X_C = \infty \space \Omega \space aka. \space open \space circuit$$

```

## Example

### Example 1:

```ad-question
A black box is shown with the information.
#comebacklater ex. 2
- $i(t) = 5\cos(377t - 80 \degree)A$
- $v(t) = 1000\cos(377t + 10 \degree)V$
$$\space$$
Determine the circuit element inovled (R, L, or C) with its proper unit.
```

Determine whether $v(t)$ or $i(t)$ leads one or the other:

Since they follow all the requirements, they are able to be compared.

In this case, $\Theta_I = -80$ and $\Theta_V = 10$. Since V is greater than I:

$$v \space leads \space i \space by \space (10-(-80))=90\degree$$
Because the voltage is leading the current, the element being used is an **inductor** $L$

$$X_L = \frac{V_m}{I_m} = \frac{1000}{5} = 200 \Omega$$

$$L = \frac{X_L}{2\pi f}$$

$$f = \frac{w}{2\pi} = \frac{377}{2\pi} = 60 Hz$$
$$L = \frac{200}{377} = 0.531 H$$

```ad-important
IF the angle is not a perfect $90 \degree$, that means there is more than one element. This is the impedance:
$$|Z| = \frac{V_m}{I_m} = \frac{1000}{5} = 200 \angle 60\degree$$
$$z = 100 + j173.2$$
```ad-note
The real number is the Resistance $R$. The Imaginary Part is the inductance $X_L$
```






