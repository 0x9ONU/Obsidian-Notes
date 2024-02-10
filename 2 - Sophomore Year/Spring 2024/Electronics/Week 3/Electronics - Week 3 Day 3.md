Date: 9th February 2024
Date Modified: 9th February 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Additional OP-Amp Types
- OP-Amp Integrator and Differentiator

```

# Additional OP-Amp Types

## Inverting Summing Amplifier

![[Electronics - Week 3 Day 3 2024-02-09 13.06.21.excalidraw]]

```ad-important
Utilize superpositon to take each voltage separately
```

$$v_o = (-\frac{R_f}{R_1}V_1 - \frac{R_f}{R_2}V_2+...+-\frac{R_f}{R_N}V_N)$$
$$v_o = -R_f(\frac{V_1}{R_1}+ \frac{V_2}{R_2}+...+\frac{V_N}{R_N})$$

```ad-note
To make the output of an inverting summing amplifier positive, add another inverting amplifier to flip the polarity:
```

![[Electronics - Week 3 Day 3 2024-02-09 13.14.33.excalidraw]]

$$v_{01} = \frac{-R_f}{R_1}v_1- \frac{R_f}{R_2}V_2$$
$$v_o = (\frac{-R_b}{R_a})(\frac{-R_f}{R_1}v_1 - \frac{R_f}{R_2}v_2)$$
$\Rightarrow$ This makes the gain positive overall


## Non-Inverting Summing Amplifier

![[Electronics - Week 3 Day 3 2024-02-09 13.19.33.excalidraw]]

$$v_o = (1 + \frac{R_f}{R_1})V_1 + (1+ \frac{R_f}{R_1}v_2 +...+(1+ \frac{R_f}{R_1})V_N$$

### Example

![[Electronics - Week 3 Day 3 2024-02-09 13.22.52.excalidraw]]

**Step 1: Find $v_+$** USE SUPERPOSITION

*When $v_1$ is on*

$$v_{+_1} = \frac{3k}{2k+3k}v_1$$

*When $v_2$ is on*

$$v_{+_2} = (\frac{2k}{2k+3k})v_2$$

*And them together*

$$v_+ = v_{+_1} +v_{+_2}$$
$$v_+ = \frac{3k}{2k+3k}v_1 + \frac{2k}{2k+3k}v_2$$

**Step 2: Multiply $v_+$ with the non-inverting op-amp

![[Electronics - Week 3 Day 3 2024-02-09 13.31.56.excalidraw]]

$$v_o = v_+(1+ \frac{R_2}{R_1})$$

$$v_o = (1+ \frac{9k}{1k})[\frac{3k}{2k+3k}v_1 + \frac{2k}{2k+3k}v_2]$$
$$v_o = 6v_1 + 4v_2$$
# Op-Amps with Impedance

Using capacitors together with resistors (impedance) on an op-am, a new wide around of applications of the op-amp open up.

![[Electronics - Week 3 Day 3 2024-02-09 13.03.12.excalidraw]]

$$\frac{v_o}{v_i} = \frac{Z_2}{Z_1}$$

## Inverting Integrator

![[Electronics - Week 3 Day 3 2024-02-09 13.43.43.excalidraw]]

```ad-note
title: Remember From Circuits
**Capacitors**
$$i = c \frac{dv}{dt}$$
$$v = \frac{1}{c} \int_{t_o}^t i \space dt + v(t_0)$$
$$\space$$
**Impedance**
$$Z_{R_i} = R_i$$
$$Z_c = \frac{1}{jwc}$$
```

### Bad Cases

```ad-important
title: In DC...
At DC $\Rightarrow w=0 \Rightarrow Z_i = \frac{1}{jwc} = \infty$
- $\Rightarrow$ the capacitors works as open cirucits
- $\Rightarrow$ WIth no feed back resistor, $v_o = \infty$ as the op-amp becomes saturated.
```

At **HIGH** frequency $\Rightarrow w = \infty \Rightarrow Z_cf = \frac{1}{1(\infty)c} = 0$
- $\Rightarrow$ Capacitor would act as a short circuit
- $\Rightarrow$ All the current would flow through the capacitor, so $v_o = 0$
