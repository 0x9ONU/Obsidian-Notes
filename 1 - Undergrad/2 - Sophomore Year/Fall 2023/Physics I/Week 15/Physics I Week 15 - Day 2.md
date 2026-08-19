Date: 6th December 2023
Date Modified: 6th December 2023
File Folder: Week 15
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Second Law of Thermodynamics

```

# Second Law of Thermodynamics

## Kelvin-Planck Formulation 

```ad-note
Refers to heat engines
```

**Heat Engine:** Working substance that goes thorough cyclic transformations

![[Physics Week 15 - Day 2 2023-12-06 10.09.39.excalidraw]]

$Q = W + \Delta E_{int}$ happens for the whole cycle

```ad-important
$\Delta E_{int} = 0$ as the internal energy does not change
```

$$Q = W$$
$$Q_h+Q_c=W$$
### Efficiency

$e$ is the efficiency of the engine

$$e =\frac{W}{Q_h} = \frac{Q_h+Q_c}{Q_h}$$
$$\therefore e = 1+ \frac{Q_c}{Q_h}$$
```ad-note
Since $Q_c$ is released, it will be negative as $Q_h$ will be positive. Thus, it would be 1 plus a negative number
```

The efficiency is 100% ONLY when all the heat added is converted into work and no heat is expelled.

```ad-summary
title: 2nd Law for Kelvin-Planck
It is impossible to have a heat engine that transforms *entirely* the heat that it receives into work. ($e \ne 1$)
```

### Carnot Engine

A cycle that consists of two isothermal transformations and two adiabatic transformations

```ad-note
It is impossible for a real engine to function like this engine.
```

```ad-important
Is used to determine the maximum and minimum running temperature of an engine **AND** is the upperbound for real engine efficiency which work between the same extreme temperatures
```

![[Physics Week 15 - Day 2 2023-12-06 10.23.15.excalidraw]]

$$e_c = 1- \frac{T_c}{T_h}$$
$$e < e_c$$

## Examples

### Example 1:

![[Pasted image 20231206102945.png]]

$$Q_c = -7600 \dot{J}$$
$$W = 2600 \dot{J}$$
$$e = \frac{W}{Q_{h}}= \frac{Q_h+Q_c}{Q_h} = 1 + \frac{Q_c}{Q_h}$$

$$W = Q_h + Q_c \Rightarrow 2600 J = Q_h -7600 J \Rightarrow Q_h = 10,200J$$
$$e = \frac{2600J}{10200J} = 0.25 = 25\%$$

### Example 2:

![[Pasted image 20231206103353.png]]

$$e_c = 1- \frac{T_c}{T_h}$$
$$e_c = 1- \frac{(345+273.15) K}{(530+273.15) K}$$
$$e_c = 0.23 = 23 \%$$

### Example 3:

![[Pasted image 20231206103649.png]]

**Find Carnot**:

$$e_c = 1 - \frac{T_c}{T_h}$$
$$e_c = 1- \frac{(330 + 273.15)K}{(660+273.15)K}$$
$$e_c = 0.35 = 35 \%$$
**Find efficiency**:

$$e = 0.65 e_c$$
$$e = 0.23 = 23 \%$$

```ad-note
$W = 1.4*10^9 \dot{J} \space every \space second$
```

**Find Intake**

$$e = \frac{W}{Q_h} = \frac{1.4*10^9 \dot{J}}{0.23} = 6.09 * 10^9 J \space (every \space second)$$

**Find Exhaust**


$$W = Q_h + Q_c$$
$$1.4*10^9 \frac{\dot{J}}{s} = 6.09 *10^9\frac{\dot{J}}{s} + Q_c$$
$$Q_c = -4.69 *10^9 J \space (every \space second)$$
**Find Per Hour**

$$Q_{exhausted \space in \space one \space hour} = -469 * 10^9 * 3600$$
$$= -1.69 *10^{13} \dot{J}$$

