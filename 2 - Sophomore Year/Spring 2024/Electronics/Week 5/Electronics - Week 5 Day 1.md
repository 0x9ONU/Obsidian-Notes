Date: 19th February 2024
Date Modified: 19th February 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Finite Open Loop Gain

```

# Finite Open Loop Gain

## Inverting

![[Electronics - Week 5 Day 1 2024-02-19 13.40.44.excalidraw]]

**In an Ideal Op-Amp**

$$v_o = A(v^+-v^-)$$
$$(v^+-v^-)= \frac{v_o}{A} = \frac{v_o}{\infty} = 0 \Rightarrow v^+ = v^-$$

**Practical Op-Amp** ($A \ne \infty \Rightarrow v^+ \ne v^-$)

![[Electronics - Week 5 Day 1 2024-02-19 13.43.01.excalidraw]]

$$i_1 = \frac{V_i -V^-}{R_1} = i_2 \space \space \space (1)$$
$$v_o = A(v^+ -v^-) \Rightarrow v^- = \frac{-v_o}{A} \space \space \space (2)$$
*sub (2) into (1)*

$$i_1 = \frac{v_i- \frac{-v_o}{A}}{R_1} = \frac{v_i + \frac{v_o}{A}}{R_1}$$
$$i_1R_2 = \frac{-v_o}{A} -v_o$$
$$\Rightarrow v_o = \frac{-v_o}{A} - (\frac{v_i+\frac{v_o}{A}}{R_1})R_2$$
$$G = \frac{v_o}{v_i} = \frac{-\frac{R_2}{R_1}}{1 + \frac{(1+ \frac{R_2}{R_1})}{A}}$$
```ad-note
$G = \frac{-R_2}{R_1}$ when $A = \infty$
```

## Non-Inverting

$$G = \frac{v_o}{v_i} = \frac{1+ \frac{R_2}{R_1}}{1+ \frac{(1+ \frac{R_2}{R_1})}{}A}$$
$$A = \infty \Rightarrow G = 1 + \frac{R_2}{R_1}$$
