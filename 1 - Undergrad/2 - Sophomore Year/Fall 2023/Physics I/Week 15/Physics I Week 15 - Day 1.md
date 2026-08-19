Date: 4th December 2023
Date Modified: 4th December 2023
File Folder: Week 15
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Law of Thermodynamics

```

# Laws of Thermodynamics 

```ad-note
The most fundamental idea of thermal. Proven by experiments, but there is no proofs lower than them to prove they exist.
```

## Zeroth Law of Thermodynamics

```ad-summary
Thermal-equilibrium happens when two systems come in contact with each other and exchange heat until they are the same temperature
```

When a system A is in equilibrium with a system B, AND the system B is equilibrium with system C, THEN system A is in equilibrium with a system C

```ad-note
Considered the transitive law of thermo:
$$x=y \space \& \space y=z \rightarrow x=z$$
```
## First Law of Thermodynamics

$$Q = W  + \Delta E_{int}$$

### Sign Convention of Work

```ad-note
title: Remember
- $Q$ absorbed by a system is positive
- $Q$ released by a system is negative
```

$W$ done ***by*** the system is positive
$W$ done ***upon*** the system is negative

### Isobaric Transformation

![[Physics I Week 15 - Day 1 2023-12-04 10.07.28.excalidraw]]

#### Finding Work
```ad-note
title: Remember
$$W = F * d * \cos(F^\rightarrow, d^\rightarrow)$$
```

$$W = p\Delta v$$

#### Find Change in Internal 

$$\Delta E_{int} = \frac{3 \space OR \space 5 \space OR \space 7}{2}rR\Delta t$$

#### Final Form
$$\therefore Q = p\Delta v + \frac{3 \space OR \space 5 \space OR \space 7}{2}nR\Delta t$$

#### Geometric Interpretation of Work

```ad-important
The work done by the system is the area under the curve of the transformation
```

![[Physics I Week 15 - Day 1 2023-12-04 10.16.12.excalidraw]]

### Isovolumetric Transformation

```ad-important
Since there is no change in volume, no work is done by the system
```

$$Q = \Delta E_{int}$$
![[Physics I Week 15 - Day 1 2023-12-04 10.21.36.excalidraw]]

### Isothermal Transformation

```ad-important
Since the internal energy depends on the change in temperature, there is not change in internal energy
```

$$Q = W$$
![[Physics I Week 15 - Day 1 2023-12-04 10.25.01.excalidraw]]

$$dW = p * dV$$

$$W = \int_{V_i}^{V_f} p dV$$
```ad-note
title: Remember
Formula for the state of ideal gas:
$$pV=nRT$$
```

$$= \int_{V_i}^{V_f} \frac{nRT}{V} dV = nRT \int_{V_i}^{V_f} \frac{dV}{V}$$
$$= nRT \ln(V) |_{V_i}^{V_f}$$
$$W = nRT\ln(\frac{V_f}{V_i})$$
$$\therefore Q = nRT \ln(\frac{V_f}{V_i})$$
### Adiabatic Transformation

```ad-summary
NO exchange of heat between the system and the surroundings. That means there is no heat added or removed, so $Q = 0$
```

$$W + \Delta E_{int} = 0$$
$$W = \Delta E_{int}$$

```ad-important
The work done by the system is at the expense of its own internal energy as its temperature would decrease.
```

### Examples

#### Example 1

![[Pasted image 20231204103428.png]]

```ad-question
Assuming that the gas is 2 moles of $O_2$. Calculate the change in temperaure of this gas.
```

This is an **isovolumetric** transformation since the container has rigid walls.

$$Q = W + \Delta E_{int}$$
**Interpret Units**:
$$Q = -425 k \dot{J}$$
**How much work**: (Trivial)
$$W = 0$$

**Change in internal energy**

$$Q = \Delta E_{int} \Rightarrow \Delta E_{int} = -425 k \dot{J}$$
**Change in Temperature**

$$\Delta E_{int} = \frac{5}{2} nR \Delta t = -425,000 \dot{J}$$
$$\Delta t = \frac{-425000 * 2}{5 * 2 8.314}$$
$$\Delta t = -10,223 K$$
#### Example 2:

![[Pasted image 20231204104103.png]]

```ad-warning
Gauge pressure is always IN ADDITION to the current atmosphere:
$$3.5 atm \space gauge = 4.5 atm \space on \space Earth$$
```

![[Physics I Week 15 - Day 1 2023-12-04 10.42.29.excalidraw]]

**Find $V_f$**

Since $A \rightarrow B$ is isothermal: 
$$P_A V_a = P_B V_B$$
$$V_B = \frac{P_AV_A}{P_B} = \frac{4.5 atm * 1L}{2 atm} = 2.25 L$$
**Calculate $W_{A \to B}$

$$W = nRT \ln(\frac{V_f}{V_i}) = nRT_A \ln \frac{V_B}{V_A}$$
$$W = P_AV_A \ln \frac{V_B}{V_A}$$


**Calculate $W_{B \to C}$

$$W = p \Delta v = P_B(V_C-V_B)$$

**Calculate $W_{C \to A}$

Because it is isovolumetric, $W = 0$

