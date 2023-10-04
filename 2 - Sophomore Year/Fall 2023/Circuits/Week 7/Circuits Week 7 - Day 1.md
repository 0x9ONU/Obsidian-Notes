Date: 4th October 2023
Date Modified: 4th October 2023
File Folder: Week 7
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Storage Elements
	- Capacitors
	- Inductors

```

# Capacitors

A device that has an ability to store energy in its electric field.
- It usually consists of *two conducting plates* separated by an *insulator* (dielectric).
- The most popular dielectric is **mica**.

```ad-important
The amount of charge is:
$$q = Cv$$
$$C = \frac{q}{v}$$
```

```ad-note
- Capacitance ($C$) The ratio of the charge on one plate to the voltage difference between the two plates.
	- Measured in Farad ($F$)
```

# Voltage-Current Relationship

$$I = C \frac{dv}{dt}$$

```ad-important
To obtain the voltage, use integration:
$$v = \frac{1}{C} \int_{t_0}^t I dt + v(t_0)$$
```

```ad-note
$v(t_0)$ is the initial condition
```

```ad-warning
For DC, the capacitor will have a current of 0 as there is no change in voltage. Thus, a capacitor will act as a capcitor in a DC circuit
```

```ad-note
Voltage will **NOT** change abruptly in a capacitor. It takes time to change from one value to another.
```
## Energy Stored

$$W = \frac{1}{2} C v^2 = \frac{q^2}{2C}$$

## Example

Find the current flowing through a $100mF$ capacitor if its voltage waveform is as shown:

#comebacklater ex. 2

```ad-check
title: Solution
- Find $v$ equations
	- $v = 2t \space \space 0 < t < 1$
	- $v = -2t + 4 \space \space 1 < t < 2$
		- Find Slope
		- $\frac{y-2}{x-1} = \frac{2-0}{1-2}$
		- $y-2 = -2x + 2$
		- $y = -2x+4$
	- $v = 2t - 4 \space \space 2 < t < 3$ 
		- Point Slope
		- $(v-0) = 2(t - 2)$
		- $v = 2t - 4$
	- $v = -2t+8 \space \space 3 < t < 4$
- Solve for i
	- $i = C \frac{dV}{dt}$
	- $i = (100 * 10^{-6}) * \begin{bmatrix} 2 & 0 < t < 1 \\ -2 & 1 < t < 3 \\ 2 & 2 < t < 3 \\ -2 & 3 < t < 4 \end{bmatrix}$
- Draw current waveform
	- #comebacklater ex. 3
```

# Capacitor Connections

## Series Connection

#comebacklater ex. 4

```ad-important
Use parallel resistance formula with their capacitance
$$\frac{1}{C_T} = \frac{1}{C_1} + \frac{1}{C_2} + \frac{1}{C_3}$$

```

## Parallel Connection

#comebacklater ex. 5

```ad-important
Use series resistance fromula with their capacitance aka Add them
$$C_T = C_1 + C_2 + C_3$$
```

