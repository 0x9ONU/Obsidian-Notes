Date: 31st January 2024
Date Modified: 31st January 2024
File Folder: Week 2
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Friday Quiz Topics

- $F_ \frac{kq_1q_2}{r^2}\hat{r}$ (Columb's Law)
- $E^\to = \frac{F^\to}{q}$
- Sketch E-Fields
	- NO DIPOLES

# Fields & Charges
## Cathode Ray Tube

```ad-question
Find how far the electrons move by the time they hit the end of the tube
- $E^\to = 1.2*10^4 \frac{N}{c}$
- $V_0 = 2.7*10^7 \frac{m}{s}$
- $x = 1.5 cm$
- $y = ?$
```

![[Physics 2 - Week 2 Day 2 2024-01-31 11.07.37.excalidraw]]

### X-Axis

$$x = \frac{1}{2} a_xt^2 + v_{ox} t$$
$$x = v_{ox}t$$
$$t = \frac{x}{v_{ox}} = 5.56 * 10^{-10} sec$$

### Y-Axis ($a = ?$)

$$F_e = qE$$
$$ma = qE$$
$$a  = \frac{qE}{m}$$
$$a = \frac{1.6*10^{-19}}{9.1*10^{-31}} = 2.1*10^{15} \frac{m}{s^2}$$

$$y = \frac{1}{2}a_yt^2 + v_{oy}t$$
$$y = \frac{1}{2}(2.1*10^{15})(5.5*10^{-10})^2$$
$$y = 3.26 * 10^{-4} \space m$$

# Charge Densities

```ad-note
title: Remember
$$\rho = \frac{m}{V}$$
```

## Volume Density

![[Physics 2 - Week 2 Day 2 2024-01-31 11.22.25.excalidraw]]

$$\rho = \frac{Q}{V}$$

## Area Density

![[Physics 2 - Week 2 Day 2 2024-01-31 11.23.52.excalidraw]]

$$\sigma = \frac{Q}{A}$$

## Line Charge

![[Physics 2 - Week 2 Day 2 2024-01-31 11.24.35.excalidraw]]

$$\lambda = \frac{Q}{L}$$
# Continuous Charge Distributions

```ad-question
FInd the E-Field at p?
```

![[Physics 2 - Week 2 Day 2 2024-01-31 11.25.45.excalidraw]]

$$E_T^\to = \sum E_1^\to + E_2^\to + E_3^\to+...$$
$$E_T^\to = \int$$
```ad-important
You can integrate to find the sum of e-fields acting on a point
```

## Examples

### Example 1 - Ring of Charge $Q$

```ad-question
Given a ring of charge $Q$, find $E^\to$
```

#### Sketch

![[Physics 2 - Week 2 Day 2 2024-01-31 11.29.24.excalidraw]]

```ad-note
Based on trig:
$$\cos \Theta = \frac{a}{r}$$
$$r = \sqrt{a^2+R^2}$$
```

#### Equations

$$dE^\to = dE_x\hat{i}+dE_y \hat{j}$$
```ad-note
No $dE_y$ so it cancels out
```

$$dE_x = dE\cos \Theta$$
$$= \frac{kdq}{r^2} (\frac{a}{r})$$
$$= \frac{kadq}{(a^2+R^2)^{\frac{3}{2}}}$$
**Integrate**

$$\int dE_x = ka \int \frac{dq}{(a^2+R^2)^\frac{3}{2}} = \frac{ka}{(a^2+R^2)^\frac{3}{2}} \int_0^Q dq$$
$$E_x = \frac{kaQ}{(a^2+R^2)^\frac{3}{2}}$$
$$E^\to = ... \hat{i}$$

```ad-important
- At a long distance where $a >> R$
$$E = \frac{kaQ}{a^3}$$ 
$$\frac{kQ}{a^2}$$
- At a short distance where $a << R$
$$E =\frac{kQa}{R^3}$$
$$\Rightarrow F = \frac{kQqa}{R^3}$$
$$F= ka$$
```

### Example 2 - E-Field at P with Line Charge

```ad-question
Find the E-Field at point P
```

#### Sketch

![[Physics 2 - Week 2 Day 2 2024-01-31 11.43.12.excalidraw]]

**When Relating Charge Q**

$$Q = \lambda L$$
$$dq = \lambda dx$$

#### Equations

$$dE^\to = \frac{k dq}{x^2} \hat{i}$$
$$dE = \frac{k \lambda dx}{x^2}$$
$$\int dE = \int_a^{L+a} k \lambda \frac{dx}{x^2}$$
$$E = k \lambda (\frac{-1}{x}) |_a^{L+a}$$
$$= k \lambda (\frac{-1}{L+a} - \frac{-1}{a})$$
$$=\frac{kQ}{L}( \frac{-a+L+a}{a(L+a)})$$
$$E^\to = \frac{kQ}{a(L+a)} \hat{i} \space \space \space \space \space \square$$


