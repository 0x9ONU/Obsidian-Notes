Date: 30th October 2023
Date Modified: 30th October 2023
File Folder: Week 11
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Rotational Kinetic Energy
- Torque

```

# Rotational Kinetic Energy

```ad-note
Recall that $v = wR$
```

#comebacklater ex. 1

$$KE_{rot} = \frac{1}{2}m_1v_1^2 + \frac{1}{2}m_2v_2^2+\frac{1}{2}m_3v_3^2+...$$
$$KE_{rot} = \frac{1}{2}m_1(wR_1)^2 + \frac{1}{2}m_2(wR_2)^2+\frac{1}{2}m_3(wR_3)^2+...$$
$$KE_{rot} = \frac{1}{2} w^2 [m_1R_1^2 + m_2R_2^2 + m_3R_3^2+...]$$
$$KE_{rot} = \frac{1}{2}Iw^2$$

```ad-important
$I$ is the moment of inertia that replaces all the mass and radii
$$\sum_{i=1}^i m_i R_i^2$$
$$[I]_{si} = kg*m^2$$
```

## Examples

### Example 1: Discretely Distributed Mass
```ad-question
Assume that there are 4 point-like particles that are connected by four small rods that sit on a square. It is rotated around the z axis and then the y axis. What is the moment of inertia given for both axises:
- $m_1 = 0.1kg$
- $m_2 = 0.2kg$
- $m_3 = 0.3kg$
- $m_4 = 0.4kg$
- $\mathcal{L} = 0.2m$
$$.$$
Additionally, how much kinetic energy does it have when it rotates along the z-axis gien that $w = 3 \frac{rads}{s}$
```

**Setup Moment of Inertia Formula for Z-Axis** 

$$I_z = m_1R_1^2 + m_2R_2^2 + M_3R_3^2+m_4R_4^2$$
$$I_z = m_1(\mathcal{L})^2 + m_2 (\mathcal{L}\sqrt{2})^2 +m_3R(\mathcal{L})^2 + m_4(0)^2$$
$$I_z = 0.1 (0.2)^2 + 0.2(0.2\sqrt{2})^2 + 0.3(0.2)^2 = 0.032 (kg*m^2)$$

**Setup Moment of Inertia Formula for Y-Axis**

$$I_y = m_1R_1^2 + m_2R_2^2 + M_3R_3^2+m_4R_4^2$$
$$I_y = 0.1(0.2)^2 + 0.2(0.2)^2 +0 + 0 = 0.012 (kg m^2)$$
**Calculate Kinetic Energy**:

$$KE_{rot} = \frac{1}{2}(0.032)(3)^2 = 0.144 (\dot{J})$$
## Uniformly Distributed Mass

![[Pasted image 20231030102714.png]]

# Torque ($\tau^\to$)

#comebacklater ex. 3

```ad-important
title: Torque Due to Force $F^\to$
You need to know the following:
1. The force magnitude
2. The point of application of the force
3. The point of rotation

$$\tau = r*F * \sin(r^\to, F^\to)$$

```ad-note
- $r^\to$ si the vector between the point of applciaiton and the point of rotation
- The angle is between the force vector and a **moved** r vector
```

```ad-note
$$[\tau]_{si} = N * m$$
```

**Torque is ZERO when:**
- The force is applied at the point of rotation (when the magnitude of $R$ is zero)
- The force is applied parallel to $R^\to$ (when the direction of $F$  makes it so there is zero degrees between $R^\to$ and $F^\to$)
## Right Hand Rule / Cross Product

**ALWAYS ROTATE R over F**

$$\tau^\to = r^\to \times F^\to $$

In general:

$$a^\to \times b^\to = c^\to$$
$$c = ab \sin(a^\to, b^\to)$$

```ad-warning
This product is NOT commutative
$$b^\to \times a^\to = -c^\to$$
```

```ad-note
title: Distributive
$$a^\to \times (b^\to + c^\to) = a^\to \times b^\to + a^\to \times c^\to$$
$$a^\to \times (c + b^\to)$$
```
