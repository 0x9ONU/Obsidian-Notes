Date: 16th October 2023
Date Modified: 16th October 2023
File Folder: Week 9
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```
# Test 3 Materials

- Work
	- Done by a constant force
	- Done by a variable force
- Work as a dot-product
- Energy
	- KE 
	- GU
	- EU
	- Conservation of Mechanical Energy
	- Frictionless and Friction ($E_i = E_f$ OR $E_i = E_f - W_{fk}$)
- Power
- Linear Momentum

# Power

The amount of work done by an object at a certain time

$$\bar{P} = \frac{W}{\Delta t}$$
$$P = F^{->} \bullet v^{->} = F*v*\cos(F^{->}, v^{->})$$

## Example

![[Pasted image 20231016100623.png]]

#comebacklater ex. 1

```ad-check
title: Solution
- Create Power Equation
	- $P = \frac{W_{Lift}}{\Delta t} = \frac{F_{lift}*d*\cos(0)}{\Delta t}$
- Find the Force
	- $F_{lift} - mg = ma$ where $a=0$
	- $F_{lift} = mg$
- Solve for time
	- $1750 = \frac{335 * 9.8*18}{\Delta t}$
	- $\Delta t = 33.7 s$
```

```ad-note
Assume constant velocity
```

# Linear Momentum

The mass of an object times its velocity:

$$p^{\rightarrow} = mV^\rightarrow$$

#comebacklater ex. 2

```ad-important
Same direction as the velocity
```

```ad-note
$$[p]_{si} = kg \frac{m}{s}$$
```

## Force In Terms of Linear Momentum

$$F^\rightarrow = \frac{\Delta p^\rightarrow}{\Delta t}$$
```ad-warning
Will slowly replace the original $F^\rightarrow = ma^\rightarrow$
```

```ad-important
Represents an *average* force that acting upon the object for a **finite** time interval $\Delta t$. To find instantaneous force, use the derivative:
$$F^\rightarrow = \frac{dp^\rightarrow}{dt}$$
```

## Impulse Imparted by the Force to the Object

$$\Delta p^\rightarrow = F^\rightarrow \Delta t$$

## Examples

### Example 1: Baseball Bat

![[Pasted image 20231016102238.png]]

#comebacklater ex. 3

```ad-check
title: Solution
- Use Impulse by Force
	- $F^\rightarrow * \Delta t = P_f^\rightarrow - P_i^\rightarrow
- Write in terms of $x$
	- $F * \Delta t = P_f - (-P_i)$
	- $F * \Delta t = P_f + P_i$
	- $F = \frac{P_f+P_i}{\Delta t}$
	- $F = \frac{(0.145kg * 46 \frac{m}{s}) + (0.145kg * 31 \frac{m}{s})}{5*10^{-3}s}$
	- $F = 2,233 N$
```

### Example 2: Collision

#comebacklater ex. 4

```ad-check
title: Solution
- Write Impulse for $m_1$
	- $F_{2,1}^\rightarrow * \Delta t = m_1v_1^\rightarrow \prime - m_1v_1^\rightarrow$
- Write Impulse for $m_2$
	- $F_{1,2}^\rightarrow * \Delta t = m_2v_2^\rightarrow \prime - m_2v_2^\rightarrow$
- Combine Formulas
	- $(F_{2,1}^\rightarrow + F_{1,2}^\rightarrow) \Delta t =  m_1v_1^\rightarrow \prime +  m_2v_2^\rightarrow \prime - (m_1v_1^\rightarrow + m_2v_2^\rightarrow)$
	- $0 = P^\rightarrow_{After \space Collision} - P^\rightarrow_{Before \space Collision}$ Both forces should be equal
```ad-important
$$P^\rightarrow_{After \space Collision} = P^\rightarrow_{Before \space Collision}$$
```

```ad-warning
Only works for a fraction of second before or after if there are external forces on the system such as friction
```
