Date: 16th February 2024
Date Modified: 16th February 2024
File Folder: Week 4
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Non-ideal Op-Amps

```

# Non-Ideal Characteristics of Op-Amps

## Offset Voltage

![[Electronics - Week 4 Day 3 2024-02-16 13.02.58.excalidraw]]

```ad-summary
In real op-amp, when the input is zero, the output will not equal zero. However, there is a value for the input that provides an output of 0. This is called the **Offset Voltage**.
```

```ad-important
The offset's behavior can be captured by the following model:
![[Electronics - Week 4 Day 3 2024-02-16 13.07.58.excalidraw]]
```

### Inverting Configuration with DC Offset

![[Electronics - Week 4 Day 3 2024-02-16 13.11.07.excalidraw]]

#### Finding Equation

```ad-important
Use superposition
```

**Assume $V_i$ is on and $V_{os}$ is off**

$$v_{01} = -\frac{R_2}{R_1}V_I$$
**Assume $v_{os}$ is on and $v_I$ is off**

$$v_{o2} = (1+\frac{R_2}{R_1})v_{os}$$

**Then**:

$$v_o = -\frac{R_2}{R_1}v_i + (1+ \frac{R_2}{R_1})v_{os}$$

## Input Bias and Offset Current

We assume that there is no current going into the op-amp, but in reality, there is a little bit that does leak into it such that:

![[Electronics - Week 4 Day 3 2024-02-16 13.17.37.excalidraw]]

**Input Bias Currents** $\Rightarrow I_{B_1} \space \& \space I_{B_2}$

**Offset Current:** $$I_{os} = |I_{b_1}-I_{b_2}|$$
### Analysis of the Closed Loop Amplifier Due to the Input Bias Currents:

![[Electronics - Week 4 Day 3 2024-02-16 13.20.42.excalidraw]]

```ad-note
- Assume that there is only a bias current and not any other not ideal currents.
- This works for both inverting and non-inverting op-amps
```

$$v^+ = v^-=0V$$
$$v_o - 0V = R_2 I_{b1}$$
$$V_o = R_2 I_{b1}$$

### Reducing the Effect of the Input Bias Currents by Introducing $R_3$

![[Electronics - Week 4 Day 3 2024-02-16 13.26.14.excalidraw]]

$$0 - v^+ = I_{b2} R_3$$
$$v^+ = -I_{b2}R_3$$
$$v^+ = v^- = -I_{b2}R_3$$
**At Node $v^-$**

$$I_{b1} + \frac{-I_{B_2}R_3}{R_1} + (\frac{-I_{b2}R_3 - v_o}{R_2}) = 0$$
$$V_o = -I_{b2}R_3 + R_2(\frac{I_{b1}-I_{b2}R_3}{R_2})$$

**$\Rightarrow$If $I_{b1}=I_{b2} \Rightarrow I_{os} = 0$**
$R_3 = R_1 // R_2 = \frac{R_1R_2}{R_1+R_2}$ and Substitute into the $v_o$ equation above, THEN:
$$v_o = 0$$

$\Rightarrow$ **If $I_{b1} \ne I_{b2} \Rightarrow I_{os} = |I_{b1}-I_{b2}| = 10\% \space of \space I_b$**
$$V_o = I_{os}R_2$$
## Example

```ad-question
An op amp is connected in a clsoed loop with a gian of +10 using a feedback resistor of $1 M \Omega$
1. If the input bias current is $20 nA$, what output voltage results with the input gorunded?
2. If the input offset voltage is $\pm 2 mV$ and the input bias current as in (1), what is the largest possible output that can be observed with the input gorunded?
3. If bias current compesation is used, what is the value of the requried resistor? If the offset current is no more than one-tenth the bias current, what is the resulting output offset votlage. (due to offset current alone)?
4. With bias current compensation is used as in (3) in place, what is the largest dc voltage as the output due to the cobmined effect of offset voltage and offset current.
```

![[Electronics - Week 4 Day 3 2024-02-16 13.37.05.excalidraw]]
### Part 1 - Finding Voltage to Offset Voltage

**Find $R_1$**

$$A = (1+ \frac{R_2}{R_1})$$
$$(10 V/V) = (1+ \frac{(1M)}{R_1})$$
$$R_1 = \frac{1 M}{9} = 111 k\Omega$$

**Find $v_o$**

$$v_o -0 = I_{b1}(1M)$$
$$V_o = I_{b1} \space 1M$$
$$v_o = (20 nA)(1M)$$
$$v_o = 20 mV$$

### Part 2 - Finding Voltage Due to Offset Current

![[Electronics - Week 4 Day 3 2024-02-16 13.44.17.excalidraw]]

```ad-important
Use superpositon AS you can have two sources on at once.
```

**Assume both input bias currents are on and Vos is off *(SAME AS PART 1)** 

$$v_{o1} = 20mV$$

**Turn off both input bias currents and keep the voltage source on**

```ad-note
WIth both input bias currents off, it is an ideal non-inverting op-amp
```

$$v_{o2} = (1 + \frac{1M}{111k}) 2mV$$

**Combine**

$$v_o = 20mV + (1 + \frac{1M}{111k}) 2mV$$
$$v_o = 40 mV$$

### Part 3 - Correcting Offset Current

![[Electronics - Week 4 Day 3 2024-02-19 13.11.29.excalidraw]]

**Find $R_3$**

$$R_3 = R_1 // R_2 = \frac{111k *1M}{111k+1M}= 100 k \Omega$$

**Bias Current**

Since $I_{B_{1}} = I_{B_2}$ AND $R_3 = R_1 // R_2$, then $v_o = 0$

*Long Way*

$$0-v^+ = 20nA(100k)$$
$$v^+ = -2mV$$
$$v^+ = v^- = -2mV$$

At Node $v^-$

$$\frac{-2mV}{11k} + 20nA + \frac{-2mV-v_o}{1M} = 0$$
$$v_o = 0$$

**Offset Current**

$$I_{os} = |I_{b_1}- I_{b_2}|$$
***$I_b = 20 nA \Rightarrow$ 10% of that is $2nA$***

![[Electronics - Week 4 Day 3 2024-02-19 13.18.34.excalidraw]]

*Find $v^+$*

$$0 - v^+ = 22nA(100k)$$
$$u^+ = -2.2mV$$
$$v^+ = v^- = -2.2mV$$

*Node at $v^-$*

$$\frac{-2.2mV}{111k} + 20nA + \frac{-2.2mV-v_o}{1M} = 0$$
$$v_o = \frac{-2.2mV(1M)}{111k} + (1M)20nA-2.2mV$$
$$v_o = 2mV$$
```ad-important
Remember this value can also be found by using: $I_{os}R_2$
```

### Part 4 - Effect of Offset Voltage & Current

![[Electronics - Week 4 Day 3 2024-02-19 13.26.03.excalidraw]]

**Use Superposition**

*Due to the current sources:*

```ad-important
We already solved this in part 3
```

$$v_{o1} = 2mV$$

*Due to the $2mV$ voltage source*

```ad-important
Since there is no current giong through the branch now, the resistor $R_3$ can be neglected and only the standard non-inverting can be taken.
```

$$v_{o2} = (1+ \frac{1M}{111k})2mV$$
$$v_{o2} = 20mV$$

*Combine*

$$v_o = v_{o1}+v_{o2}$$
$$v_o = 22mV$$

