Date: 25th August 2023
Date Modified: 25th August 2023
File Folder: Week 1
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Ohm's Law

```

```ad-note
title: Homework
- [x] 2.13, 2.14, 2.18
```

# Ohm's Law

The voltage drop across a _resistor_ is proportional to the value of the current flowing through it

$$ v = Ri$$

```ad-note
**Resistance**: The property of a material that oppose the flow of current. 
- Measured in ohm (Ω)
- Adds across a circuit for multiple resistors
```

```ad-note
color: 180, 80, 100
**Conductance**: It is the property of a material to conduct current
- The inverse (reciprocal) of resistance. 
- Measured in seimens (s) or mho (℧)
```

## Ohm's Law Formulas

```ad-summary
The following formulas can be derived from Ohm's Law:
- $i = \frac{v}{R}$
- $R = \frac{v}{i}$
```

```ad-important
Further, using the Power formula ($P = vi$):
- $P = i^2R$
	- Find power knowing current and resistance
- $P = \frac{v^2}{R}$
	- Find power knowing voltage and resistance
- $R = \frac{v^2}{P}$
	- Find resistance knowing voltage and power
```

## Short Circuit & Open Circuit

When resistance = 0 or $v=0$, there is a short circuit.

When resistance = $\infty$ or $i=0$, there is an open circuit

![[CamScanner 08-25-2023 13.30_8.jpg]]
## Examples

```ad-example
Find the current $i$ flow and the power abosrbed by the resistor
![[CamScanner 08-25-2023 13.30_9 (1).jpg]]
```ad-check
title: Solution
- Recall the current formula
	- $i = \frac{v}{R}$
	- $i= \frac{42}{6K} = 7 mA$
		- $mA$ due to the resistance being in K
- Find the power absorbed by recalling P formula
	- $P = i^2R = (7*10^{-3})^2(6*10^3)$
		- Because the current is in milliamp, make sure it is multiplied by $10^3$
		- Because the resistance is in K, it is $10^3$
	- $0.294 W$
```

```ad-example
title: Example #2 
color: 100, 200, 150
If a light bulb is rated at $50W$ and connected across a $120-V$ soruce, determine the resistance of the bub and the current flowing through it.
```ad-check
title: Solution
- Find the resistance
	- $R = \frac{v^2}{P}$
	- $R = \frac{120^2}{50}$
	- $= 288 ohms$
- Find the current
	- $i = \frac{v}{R}$
	- $i = \frac{120}{288}= 0.417 A$
		- ALWAYS HAVE ANSWER IN 3 DIGITS
```



