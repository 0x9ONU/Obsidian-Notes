Date: 16th February 2024
Date Modified: 16th February 2024
File Folder: Week 4
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Electric Potential Energy

## Important Equations

$$U = q V$$
$$U = - \int F_E^\to * dr^\to$$
## Examples

### Example 1: Work to Bring in Charge

```ad-question
What work is required to bring in the 6uC charge into the 4uC charge at 2 meters?
![[Physics 2 - Week 4 Day 3 2024-02-16 11.09.04.excalidraw]]
```

$$W = \Delta W = U_f -U_o$$

$$= \frac{kq_1q_2}{2} - 0 = \frac{(9*10^9)(4*10^{_6})(6*10^{-6})}{2} = 0.108 J$$

### Example 2: Work to Bring Charge into Empty Space

```ad-question
How much work does it take to move a charge from one spot to another in empty space
```

![[Physics 2 - Week 4 Day 3 2024-02-16 11.13.34.excalidraw]]

$$W = \Delta U = U_f - U_o$$
$$W = (0)-(0)$$
$$W = 0$$

### Example 3: Point Charge in E-Field $(Q, m)$

This charge moves from $75V \rightarrow 400 V$

![[Physics 2 - Week 4 Day 3 2024-02-16 11.16.15.excalidraw]]

**Find Charge**

$$\Delta U = q \Delta V = q(400-75) = 325 q$$

**Velocity of $400 V$**

```ad-important
Use conservation of energy!
```

$$E_o = E_f$$
$$\Delta PE = KE$$
$$U = \frac{1}{2}mv^2$$
$$325q = \frac{1}{2} mv^2$$
$$v^2 = \frac{325(2)q}{m}$$
$$v = \sqrt{\frac{650q}{m}} \space \space \space \square$$

## E-Field due to a Potential - Derivation $\star$

![[Physics 2 - Week 4 Day 3 2024-02-16 11.21.35.excalidraw]]

$$V = -\int E^\to * dr^\to$$
$$= - \int (E_x \hat{i} + E_y \hat j + E_z \hat k) \cdot (d_x \hat i + d_y \hat j + d_z \hat k)$$

```ad-note
WE are only worring about $x$ for now
```

$$V= - \int E_x dx$$
```ad-note
Take differential of both sides
```
$$dV = -d\int E_x dx$$
$$dV = -E_x dx$$
$$E_x = -\frac{dV}{dx}$$
**E is a Vector, so write the E-field as a full vector**

$$E^\to = -[\frac{\delta V}{ \delta x} \hat i + \frac{\delta V}{\delta y} \hat j + \frac{\delta V}{\delta z} \hat z] \space \space \space \square$$

### Example 1:

$$V = 3x^2, \space \space \space E=?$$

$$E^\to = - (\frac{\delta V}{\delta x} \hat i+...)$$
$$E^\to = -(\frac{\delta (3x^2)}{dx} \hat i + \frac{\delta 3x^2}{\delta y} \hat j + \frac{\delta3x^2}{\delta z} \hat k)$$

```ad-note
There is no $y$ or $z$, so they are zero
```
$$E^\to =-(6x \hat i + 0 \hat j + 0 \hat k)$$

$$E^\to = -6x \hat i$$

### Example 2:

$$V = 3xy, \space \space \space E = ?$$

$$E^\to = -(\frac{\delta (3xy)}{\delta x} \hat i + \frac{\delta (3xy)}{\delta y} \hat j + \frac{\delta (3xy}{\delta z} \hat k)$$
$$= -(3y \hat i + 3x \hat j)$$
$$E^\to = -3y\hat i - 3x \hat j$$

### Example 3:

$$V = xy^2 - yz, \space \space \space E^\to = ?$$$$E^\to = -(\frac{\delta ( xy^2 - yz)}{\delta x} \hat i + \frac{\delta ( xy^2 - yz)}{\delta y} \hat j + \frac{\delta ( xy^2 - yz)}{\delta z} \hat k)$$
$$= -[(y^2)\hat i + (2xy - z) \hat j + (-y) \hat k]$$
$$E^\to = (-y^2)\hat i + (-2xy +z) \hat j + (y) \hat k$$
### Example 4:

$$V = 2xy + xz$$
$$E^\to @ (1, 3, 2)$$

$$E^\to = -(\frac{\delta ( 2xy+xz)}{\delta x} \hat i + \frac{\delta ( 2xy+xz)}{\delta y} \hat j + \frac{\delta ( 2xy+xz)}{\delta z} \hat k)$$

$$E^\to = -[(2y+z) \hat i + (2x)\hat j + (x)\hat k]$$
$$E^\to = (-2y-z) \hat i + (-2x) \hat j + (-x) \hat k$$
$$E @ (1,3,2) = (-2(3)-(2)) \hat i + (-2(1))\hat j + (-(1))\hat k$$
$$E@(1,3,2) = -6 \hat i -2 \hat j -1 \hat k$$
### Example 5: $V$ for Parallel Plates

![[Physics 2 - Week 4 Day 3 2024-02-16 11.45.35.excalidraw]]

$$\Delta V = - \int E^\to - dr^\to$$
$$=- \int_0^d (-E_x \hat i \cdot dx \hat i)$$
$$= \int_0^d E dx$$
$$\star \space \space \space V = Ed \space \space \space \star$$
```ad-warning
NOT THE VOLTAGE OF A POINT CHARGE. Voltage of a point charge is:
$$V=\frac{kq}{r}$$
```


