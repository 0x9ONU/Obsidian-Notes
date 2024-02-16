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

```ad-important
title: At a High Frequency
At **HIGH** frequency $\Rightarrow w = \infty \Rightarrow Z_cf = \frac{1}{1(\infty)c} = 0$
- $\Rightarrow$ Capacitor would act as a short circuit
- $\Rightarrow$ All the current would flow through the capacitor, so $v_o = 0$
```


### Time Domain Analysis:

- $v_+ = v_- = 0$

**Node $v_-$**

$$\frac{v_- - v_i}{R_i}+C \frac{d(v_- - v_o)}{dt} + i_i = 0$$

```ad-note
$v_-$ & $i_-$ are both zero
```

$$-\frac{v_i}{R_i} - C\frac{dv_o}{dt} = 0$$
$$C \frac{d v_o}{dt} = -\frac{v_i}{R_i}$$
$$\frac{dv_o}{dt} = -\frac{v_i}{R_i C}$$
$$Integrate \Rightarrow v_o = \frac{-1}{R_i C} \int_0^t v_i(t) dt$$

### Phasor/Frequency Domain

```ad-note
$$Z_{R_i} = R_i$$
$$Z_C = \frac{1}{jwc} = \frac{1}{SC}$$
```

![[Electronics - Week 3 Day 3 2024-02-12 13.09.18.excalidraw]]

$$v_o = - \frac{Z_f}{Z_i} v_i$$

$$v_o = -\frac{\frac{1}{jwc}}{R_i}v_i$$
$$H(s) = \frac{1}{jwcR_i} = \frac{1}{ScR_i}$$

### Adding a Resistor to Fix Low Frequency

```ad-important
Solves the problem when $w = 0$ to avoid an open circuit
```

![[Electronics - Week 3 Day 3 2024-02-12 13.13.57.excalidraw]]

Instead of acting as an open circuit at DC, the op-amp would then act as a standard inverting amplifier.

**Change in Impedance**
$$Z_f = R_f // \frac{1}{jwc}$$
$$\Rightarrow v_o = - \frac{R_f // \frac{1}{jwc}}{R_i} v_i$$
$$v_o = - \frac{\frac{R_f}{R_i}}{1+ jwR_f}$$
$$When \space w = 0 \Rightarrow v_o = -\frac{R_f}{R_i}$$

## Example

```ad-question
Use an ideal op-amp to design an ivering integrator with an input resistance of $10 k\Omega$ and an integration time cosntant of $10^{-3} s$
```

![[Electronics - Week 3 Day 3 2024-02-12 13.21.37.excalidraw]]

$$\tau = RC$$
$$(10^{-3}) = (10k \Omega)C$$
$$C = 0.1 \micro F$$

## Inverting Differentiator

![[Electronics - Week 3 Day 3 2024-02-12 13.27.07.excalidraw]]

### Analysis

$$v^+ = v^- = 0$$
**At $v^-$**

$$c \frac{d(v-v_i)}{dt} + \frac{v^--v_o}{R_f}= 0$$
$$-c \frac{dv_i}{dt} - \frac{v_o}{R_f} = 0$$
$$V_o = -R_f C \frac{dv_i}{dt}$$

```ad-warning
$$w=0 \Rightarrow Z_c \frac{1}{jwc} \Rightarrow v_0 = 0 \space (Open)$$
$$w = \infty \Rightarrow v_o = \infty \space (Saturate)$$
```

