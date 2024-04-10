Date: 19th February 2024
Date Modified: 19th February 2024
File Folder: Week 5
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Remember
$$V \rightarrow E \rightarrow F \rightarrow a \rightarrow x(t)$$
```

# Continuous Charge Distribution ($V$)

## Example: Ring of Charge

![[Physics 2 - Week 5 Day 1 2024-02-19 11.05.36.excalidraw]]

$$r = \sqrt{R^2+x^2}$$
$$Q_{total} = Q$$

**Find $V$ at $p$

$$dV = \frac{kdq}{r}$$
$$\int dV = k \int r^{-1} dq$$
$$V = k \int_0^Q (R^2+x^2)^{-\frac{1}{2}} dq$$
$$V = \frac{kQ}{(R^2+x^2)^\frac{1}{2}}$$

**E field**

$$E^\to = - (\frac{\delta V}{dx}\hat i + \frac{\delta V}{dy} \hat j + \frac{\delta V}{dz} \hat k)$$
$$E^\to = - (\frac{\delta}{\delta x} \frac{kQ}{(R^2 + x^2)^\frac{1}{2}}) \hat i$$
$$E^\to = - (kQ\frac{\delta}{\delta x}{(R^2 + x^2)^{-\frac{1}{2}}})$$
$$E^\to = -kQ(R^2+x^2)^{-\frac{3}{2}} \frac{\delta}{\delta x}(R^2+x^2)(-\frac{1}{2}) \hat i$$
$$E^\to = \frac{KQ}{(R^2+x^2)^{\frac{3}{2}}} (\frac{2x}{2})\hat i$$
$$E^\to = \frac{kQx}{(R^2+x^2)^\frac{3}{2}} \hat i$$

## Example: E-Potential - Charge Conductor

### Outside ($r > R$)

![[Physics 2 - Week 5 Day 1 2024-02-19 11.15.44.excalidraw]]

$$V = -\int E^\to \cdot dr^\to$$
$$= - \int_\infty^r \frac{kQ}{r^2}dr$$

$$= \frac{kQ}{r}|_\infty^r$$
$$V = kQ(\frac{1}{r} - \frac{1}{\infty})$$
$$V = \frac{kQ}{r}$$

### Inside ($r < R$)

![[Physics 2 - Week 5 Day 1 2024-02-19 11.19.29.excalidraw]]

**Surface**

$$V = \frac{kQ}{r} = \frac{kQ}{R}$$

**Inside**

$$E = 0$$

```ad-important
To get the E-field to be constant, either that means the e-potential voltage is 0 or some constant. That means the voltage at the surface is the same throughout the inside of the charged capacitor.
```

$$\therefore V = \frac{kQ}{R}$$

### Graph

![[Physics 2 - Week 5 Day 1 2024-02-19 11.22.33.excalidraw]]

# Conductor in E-Field

## Ideally - Uniform with E-Field

![[Physics 2 - Week 5 Day 1 2024-02-19 11.25.23.excalidraw]]

## Place Uncharged Conductor in E-Field

![[Physics 2 - Week 5 Day 1 2024-02-19 11.26.10.excalidraw]]

```ad-note
title: Remember
- $E = 0$ Inside
- E-Field $\bot$ at Surface
- Positive Charges on Right

```

```ad-warning
E-Field is Now Inside the Sphere

```

![[Physics 2 - Week 5 Day 1 2024-02-19 11.31.34.excalidraw]]

**In the Conductor**

$$E_{inside} + E_{outside} = E_{total} = 0$$

![[Physics 2 - Week 5 Day 1 2024-02-19 11.33.08.excalidraw]]

# Big Picture

| Mechanics       | Electricity and Mechanics |
| --------------- | ------------------------- |
| Force ($F^\to$) | $E^\to = \frac{F^\to}{q}$ |
| Energy & Work ($W = -U = \int F^\to \cdot dr^\to$)   | $V = - \int E^\to \cdot dr^\to$                           |
| Force and U ($F^\to = - (\frac{\delta U}{dx}\hat i+...))$                | $$E^\to = - (\frac{dV}{dx} \hat i +...)$$                          |
