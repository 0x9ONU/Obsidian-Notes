Date: 29th January 2024
Date Modified: 29th January 2024
File Folder: Week 2
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- E-Fields

```

# Reflection on E-Field Hockey

![[Physics 2 - Week 2  Day 1 2024-01-29 11.01.51.excalidraw]]

# Electric Fields

```ad-summary
- Points in the direction a positive charge would move
```

$$E^\to = \frac{F^{\to}}{q} \frac{N}{C}$$
```ad-warning
It is a VECTOR not a scalar
```

## Drawing E-Fields

```ad-question
Sketch the E-Field for a Positive & Negative Charge
- Two positive?
- Two Negative?
- Dipole?
- Capacitor?
```

![[Physics 2 - Week 2  Day 1 2024-01-29 11.05.18.excalidraw]]

![[Physics 2 - Week 2  Day 1 2024-01-29 11.07.19.excalidraw]]

![[Physics 2 - Week 2  Day 1 2024-01-29 11.09.28.excalidraw]]

![[Physics 2 - Week 2  Day 1 2024-01-29 11.10.49.excalidraw]]

![[Physics 2 - Week 2  Day 1 2024-01-29 11.12.12.excalidraw]]

## Examples 
### Example 1 - 1 Dimensional Charges

```ad-question
1. Find the Force on $q_1$
2. Find the E-Field at $q_1$
```

![[Physics 2 - Week 2  Day 1 2024-01-29 11.16.17.excalidraw]]

#### Force

$$F_E^\to = \frac{kQq_1}{x^2}\hat{i}$$

#### E-Field

$$E^\to = \frac{F^\to}{q_1} = \frac{kQq_1}{x^2q_1}\hat{i}$$
$$E^\to = \frac{kQ}{x^2}\hat{i}$$

### Example 2 - 2-Dimensional

```ad-question
Find the E-field at each Point
```

![[Physics 2 - Week 2  Day 1 2024-01-29 11.19.28.excalidraw]]

1. At $P_1$

$$E_1^\to = \frac{kQ}{r^2} \hat{j}$$

2. At $P_2$

$$E_2^\to = \frac{kQ}{r^2} \hat{i}$$
3. At $P_3$

$$E_3 = -\frac{kQ}{r^2}\hat{j}$$

4. At $P_4$

$$E_4 = -\frac{kQ}{r^2} \hat{i}$$

### Example 3

```ad-question
Find the E-Field at $P_1$
```

![[Physics 2 - Week 2  Day 1 2024-01-29 11.26.37.excalidraw]]

$$E_T = E^\to x \hat{i} + E^\to y \hat{j}$$
$$= (\frac{kq_1}{x^2_1} + \frac{kq_2}{x^2_2}) \hat{i}$$
$$= [\frac{9*10^9)(2*10^-6)}{(0.1)^2} + \frac{(9*10^9)(-4*10^{-6})}{(0.12)^2}]$$
$$= [1.8*10^6 + 2.5*10^6] \hat{i}$$
$$4.3 * 10^6 \hat{i} \space (\frac{N}{C})$$
## Electric Dipole (Derivation)

```ad-question
Derive the Equation for the Electric Dipole
```

### (a) Sketch

![[Physics 2 - Week 2  Day 1 2024-01-29 11.33.02.excalidraw]]

$$\cos \Theta = \frac{a}{r} = \frac{a}{(a^2+y^2)^{\frac{1}{2}}}$$
### (b) Equations

$$E_T = E_x \hat{i} + E_y \hat{j}$$

#### X-Axis

$$E_x = E_{1x} + E_{2x}$$
$$= E_1\cos\Theta + E_2 \cos\Theta$$
$$=(E_1 + E_2) \cos\Theta$$
$$= (\frac{kq}{r^2} + \frac{kq}{r^2})\cos \Theta$$
$$E_x= \frac{2kq}{r^2} \cos \Theta$$
$$E_x = \frac{2kq}{(a^2+y^2)} * \frac{a}{(a^2+y^2)^\frac{1}{2}}$$
$$E_x = \frac{2kqa}{(a^2+y^2)^\frac{3}{2}}$$
#### Y-Axis

$$E_x = E_{1y} - E_{2y}$$
$$E_y = 0$$

#### Final

$$E_T^\to = \frac{2kqa}{(a^2+y^2)^\frac{3}{2}} \hat{i}$$
```ad-note
Good for large distances where $y > a$
```


