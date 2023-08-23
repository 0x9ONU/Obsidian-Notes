ZDate: 23rd August 2023
Date Modified: 23rd August 2023
File Folder: Week 1
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Basic Electric Quantities

```

```ad-note
title: Homework
- [ ] test
```

# Basic Electric Quantities

**Voltage ($V$)**: 
- The energy per unit charge that is created by charge separation
- Volts (V)
- $V= \frac{dW}{dq}$
	- $dW = Energy (j)$
	- $dq = charge (C)$

**Current ($I$)**:
- The rate of charge flow that is created by charge motion
- Measured in Amperes (A)
- $I=\frac{dq}{dt}$
- $dq = charge (C)$
- $dt = time(s)$
- $I$ = the intensity of current

**Power($P$)**
- Product of voltage and current
- $P = vi$
- $P=\frac{dW}{dt}$
- Measured in Watt ($W$)

**Energy($j$)**
- Product of Power and Time
- Measured in joules (j)
- $W = P*t$

# Circuit Elements

## Active Elements

```ad-summary
title: Definition
Elements that have the ability to generate energy
```

```ad-example
- Battery (DC)
- Generator (AC)
```

## Passive Elements

```ad-summary
title: Defintion
color: 255, 255, 0
Elements that are **unable to** generate energy
```

```ad-example
- Resistors
- Capacitors
- Inductors (store magnetic energy)
```

#comebacklater insert symbols
# Types of Sources

## Independent Sources

**Independent Voltage Source**:
- A circuit with positive and negative that is *set* 
- Is unaffected by any other components within a cirucis

**Independent Current Source:**
- Points in the direction which way the current in flowing 
- Flows at a set rate

## Dependent Sources

**Dependent Voltage Source**:
- Uses either $V_x$ (voltage-controlled) or $I_x$ (current-controlled) to control the voltage or current of the power source

**Dependent Current Sources:**
- Uses either $V_x$ (voltage-controlled) or $I_x$ (current-controlled) to control the voltage or current flowing through the source.

```ad-note
It models the behavior of a three leg transistor with the voltage or current affecting the output
```

# Power Balance

```ad-important
$$\sum P_{supplied} = \sum P_{absorbed}$$
$$\sum P_{supplied} + \sum P_{absorbed} = 0$$
```

```ad-note
- Power is supplied when it is negative ($<0$)
- Power is absorbed when it is positive ($>0$)
```
## Passive Sign Convention
- use $P=vi$
- if $p<0$ it is supplied
- if $p>0$ it is absorbed

```ad-example
Determine if power is supplied or absorbed
#comebacklater Insert example 1
```ad-check
title: Solution
- use $P=vi$
- $=(2)(4)$
- $=8W$
- Because $P>0$, it is absorbed
```

```ad-example
color: 250, 100, 150
Determine if power is supplied or absorbed: #comebacklater insert example 2
```ad-check
title: Solution
- $P=vi$
- $=(-4)(-6)$
- $=24W$
- Because $P>0$, it is absorbed
```

```ad-important
Current is dependent on the direction it is flowing towards
- Positive if it is flowing to the positive terminal
- Negative if it is flowing to the negative terminal
```

```ad-example
color: 255, 255, 0
Find the voltage $V_0$ in the circuit shown using power balance. #comebacklater insert example 3
```ad-check
title: Solution
- Find $P_1$
	- $P_1=vi = (9)(-3)=-27W$
	- Supplied
- Find $P_2$
	- $P_2=vi = (2)(3) = 6W$
	- Absorbed 
- Find $P_3$
	- $P_3 = vi = (4)(1)= 4W$
	- Absorbed
- Find $P_4$
	- $P_4=vi=(1)(2)=2W$
	- Absorbed
- Find $P_5$
	- $P_5=vi = (V_0)(2)=2V_0W$
- Find $P_6$
	- $P_6=vi = (3)(3)=9W$
	- Absorbed
- Use $\sum P_{supplied} = \sum P_{absorbed}$
	- $27W = 6+4+2+2V_0+9W$
	- $27 = 21+2V_0$
	- $2V_0=6W$
	- $V_0=3V$
- $P_5$ is absorbing
```

`
