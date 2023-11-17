Date: 17th November 2023
Date Modified: 17th November 2023
File Folder: Week 13
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Thermal Expansion

```

# Thermal Expansion

**Solids** have three different types of expansion:
- Linear Expansion
- Surface Expansion
- Volume Expansion

**Liquids** ***ONLY*** have volume expansino

## Linear Expansion

$$l_i \space at \space t_i(\degree C)$$
$$l_f \space at \space t_f(\degree C)$$


![[Drawing 2023-11-17 10.04.41.excalidraw]]

```ad-important
The change in length depends on:
- Change in Temperature
$$\Delta l \Rightarrow \Delta t, l_i$$
- Material
$$\Delta l = \alpha l_i \Delta t$$

```ad-note
$\alpha$ is the coefficient of linear expansion
```

**The following equation is true for**:
- Non-dimensional length
- Same units between $\alpha$ and temperature
$$l_f = l_i(1+\alpha \Delta t)$$

```ad-warning
$$[\alpha]_{si} = \frac{1}{K} = \frac{1}{\degree C}$$
```

![[Pasted image 20231117101134.png]]

```ad-note
Due to often tiny coefficients, a change in length is often very small
```

## Surface Expansion

$$A_i \space at \space t_i(\degree C)$$
$$A_f \space at \space t_f(\degree C)$$

![[Drawing 2023-11-17 10.12.52.excalidraw]]

$$A_i = l_i L_i$$
$$A_f=l_f*L_f = l_i(1 + \alpha \Delta t) * L_i(1 + \alpha \Delta t)$$
$$A_f = A_i(1+ \alpha \Delta t)^2 =A_i(1+ 2\alpha \Delta t + \alpha^2 (\Delta t)^2)$$
```ad-note
The squared coefficient is sooo small that it is negleted
```

$$A_f = A_i(1+ 2 \alpha \Delta t)$$

## Volume Expansion

### For Solids

![[Drawing 2023-11-17 10.18.54.excalidraw]]

$$v_i = l_i L_i h_i \space at \space t_i(C\degree)$$
$$V_f = l_f L_f h_f = V_i(1=\alpha \Delta t)^3$$

$$V_i(1 + 3 \alpha \Delta t + 3 \alpha^2(\Delta t)^2+ \alpha^3(\Delta t)^3)$$$$A_f = A_i(1 + 3 \alpha \Delta t)$$

### For Liquids

![[Drawing 2023-11-17 10.28.18.excalidraw]]

$$v_i \space at \space t_i(\degree C)$$
$$v_f \space at \space t_f(\degree C)$$

$$v_f = v_i(1+ \beta \Delta t)$$

```ad-note
$\beta$ is the coefficient of volume expansion and has the same rules as $\alpha$
```

## Example

![[Pasted image 20231117103150.png]]

![[Drawing 2023-11-17 10.32.28.excalidraw]]

When $t_i = 20 \degree C$
$$V_{i \space water} = 55.5mL$$
$$V_i contianer = 55.5 mL$$

When $t_f = 60 \degree C$, find both $V_{fw}$ and $V_{f \space cont}$

```ad-note
- Water spilled = $0.35g$
- $\rho_{w \space at \space 60 \degree} = 0.98324 \frac{g}{mL}$
```

**Find Volume Spilled**:

$$V_{spilled} = \frac{m}{\rho} = \frac{0.35g}{0.98324 \frac{g}{mL}} = 0.35597 mL$$
```ad-important
$$V_{spilled} = V_{fw}-V_{f \space cont}$$
```

$$0.35597 mL = V_{iw}(1+\beta \Delta t)-V_{ic} (1+\alpha \Delta t)$$
$$0.355597mL = 55.5mL(1+(2.1*10^{-4})(40)) - 55.5mL(1+3\alpha (40))$$

**Solve for $\alpha$**

$$0.355597 = 55.9662 - 55.5 - 6660\alpha$$
$$\alpha = \frac{55.9662-55.5-0.35597}{6660} \Rightarrow \alpha = 16.551 * 10^{-6} \frac{1}{\degree C}$$

**This means the container is made of Copper**

