Date: 12th February 2024
Date Modified: 12th February 2024
File Folder: Week 4
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Electric Potential ($V$)

```ad-note
This will not be on test #1
```

## Example 1

![[Physics 2 - Week 4 Day 1 2024-02-12 11.03.22.excalidraw]]

If these particles are held in place, they have potential/stored energy . The distance between the two charges determines their stored potential energy.

A **voltage** tells you the stored up energy of the electrons.

## Example 2

![[Physics 2 - Week 4 Day 1 2024-02-12 11.09.36.excalidraw]]

### Example 3

![[Physics 2 - Week 4 Day 1 2024-02-12 11.11.58.excalidraw]]

## Electric Potential Equation

```ad-note
title: Remember
$$W = \Delta Energy$$
$$PE \Rightarrow W = -U$$
```

**Electric Potential Energy**
$$U = qV$$
**Electric Potential**
$$V = \frac{U}{q}$$

## E-FieldE and E-Potential Relationship

**Sketch**

![[Physics 2 - Week 4 Day 1 2024-02-12 11.15.55.excalidraw]]

```ad-note
- E-Field is a Vector
- E-Potential is a Scalar
```

**Derivation**

![[Physics 2 - Week 4 Day 1 2024-02-12 11.17.00.excalidraw]]

$$W = \int F^\to \cdot dr^\to$$
$$W = \int F^\to_E \cdot d^\to$$
$$-U = \int qE^\to \cdot dr^\to$$
$$-qV = \int qE^\to \cdot dr^\to$$
$$V = - \int E^\to \cdot dr^\to \space \space \space \square$$

### Example 1:

$$E^\to = 2x \hat{i} \space \space \space (V= ?)$$
$$V = -\int E^\to \cdot dr^\to$$
$$V = -\int (E_x \hat i + E_y \hat j + E_z \hat j)\cdot(dx \hat i + dy \hat j + dz \hat k)$$
$$V = - \int E_x dx$$
$$V = -\int (2x)dx$$
$$V = -\frac{2x^2}{2}$$
$$V = -x^2$$

### Example 3: 

$$E_x = 3x^2$$

**Find the Voltage from (2-4m)**

$$\mathbb V = - \int E^\to \cdot dr^\to$$
$$\mathbb V = - \int_{2}^{4} 3x^2 dx$$
$$\mathbb{V} = -[x^3]_2^4$$
$$\mathbb{V} = -[(4^3)-(2^3)]$$
$$\mathbb{V} = -56 \space V$$

### Example & Derivation $\star$: E-Potential for a Point Charge at a Distance $r$ 

**Sketch**

![[Physics 2 - Week 4 Day 1 2024-02-12 11.27.39.excalidraw]]

```ad-note
title: Remember
$$E^\to = \frac{kQ}{r^2}\hat r$$
```

**Equations**

$$\mathbb V = -\int E^\to \cdot dr^\to$$
$$= - \int \frac{kQ}{r^2}(\hat r \cdot dr^\to)$$
```ad-note
Since both the r vector and the dr are parallel to each other, their dot product is 1
```

$$= -kQ \int_{\infty}^r r^{-2} dr$$
$$= -kQ (-\frac{1}{r})|_{\infty}^r$$

$$\mathbb V = \frac{KQ}{r} V \space \space \space \square$$

```ad-important
$$E^\to = \frac{kQ}{r^2} \hat r$$
$$\mathbb V = \frac{KQ}{r}$$
```

#### Example 4: Pt Charges

![[Physics 2 - Week 4 Day 1 2024-02-12 11.34.38.excalidraw]]

$$r = \sqrt2 a$$

```ad-note
Each Charge: $V = \frac{kQ}{r}$
```

$$V_T = V_4 + V_3 + V_2$$
$$= \frac{k4Q}{r} + \frac{k3Q}{a} + \frac{k2Q}{a}$$
$$= \frac{k4Q}{\sqrt 2 a} + \frac{k3Q}{a} + \frac{k2Q}{a}$$
$$V_T = \frac{kQ}{a}(\frac{4}{\sqrt 2} + 5) \space \space \space \square$$

## Electric Potential Energy

$$U = qV$$
$$U = - \int F_e^\to \cdot dr^\to$$
$$V = \frac{kq}{r}$$

### Example 1:  PE form 2 Charges

![[Physics 2 - Week 4 Day 1 2024-02-12 11.41.49.excalidraw]]

$$F_e = \frac{kQ_1 Q_2}{r^2}$$

$$U = - \int F_e^\to \cdot dr^\to$$
$$U = - \int \frac{kQ_1Q_2}{r^2}dr$$
$$U = -kQ_1Q_2 \int r^{-2}dr$$
$$U = \frac{kQ_1 Q_2}{r} \space \space \space \square$$


### Example 2: Find PE in a Charge Configuration

![[Physics 2 - Week 4 Day 1 2024-02-12 11.44.43.excalidraw]]

$$U_T = U_{2\to3}+ U_{4\to3} + U_{4\to2}$$
$$= \frac{k2Q3Q}{a} + \frac{k4Q3Q}{\sqrt{2} a} + \frac{k4Q2Q}{a}$$
$$= \frac{kQ^2}{a}(14 + \frac{12}{\sqrt{2}})$$
$$U = \frac{kQ^2}{a}(14+ \frac{12}{\sqrt{2}})$$

