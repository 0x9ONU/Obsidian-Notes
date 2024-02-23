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

$$G = \frac{v_o}{v_i} = \frac{1+ \frac{R_2}{R_1}}{1+ \frac{(1+ \frac{R_2}{R_1})}{A}}$$
$$A = \infty \Rightarrow G = 1 + \frac{R_2}{R_1}$$
## Example

### Part 1

```ad-question
Design an inverting amplifier with a closed loop gain of $-200 V/V$ and input resistance of $1k \Omega$
```

**Ideal Case**

![[Electronics - Week 5 Day 1 2024-02-21 13.05.11.excalidraw]]

$$\frac{v_o}{v_i} = -200 = -\frac{R_2}{R_1}$$
$$R_2 = 200 k \Omega$$
### Part 2

```ad-question
If the op-amp is known to have an open loop gain of $5000 V/V$, what do you expect the clsoed-loop gain of your circuit to be?
```

![[Electronics - Week 5 Day 1 2024-02-21 13.07.29.excalidraw]]

$$G = \frac{\frac{-R_2}{R_1}}{1 + \frac{(1+\frac{R_2}{R_1})}{A}}$$

$$= \frac{-200 / 1}{1 + (201/5000)}$$
$$G = \frac{v_o}{v_i} = -192.27 V/V$$

```ad-note
It is slightly smaller than the ideal closed-loop gain
```
### Part 3

```ad-question
Give the value of a resistor you can place in parallel (shunt) with $R_1$ to restore the closed loop gain to its nominal value.
```

![[Electronics - Week 5 Day 1 2024-02-21 13.09.40.excalidraw]]

$\frac{v_o}{v_i} = -200 V/V$ Nominal Value

$$R_1^\prime = 1k //R_x$$

$$G = \frac{\frac{-R_2}{R_1^\prime}}{1 + \frac{(1+\frac{R_2}{R_1^\prime})}{A}}$$
$$-200 = \frac{200k/R_1^\prime}{1+(1+\frac{200}{R_1^\prime})/5000}$$
$$R_1^\prime = 0.960 k \Omega$$

$$\frac{1}{R_1^\prime} = \frac{1}{R_1} + \frac{1}{R_x}$$
$$\frac{1}{0.960k} = \frac{1}{1k} + \frac{1}{R_x} \Rightarrow R_x = 24k \Omega$$

