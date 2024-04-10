Date: 7th February 2024
Date Modified: 7th February 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Operational Amplifiers

```

# Operational Amplifiers

![[Electronics - Week 3 Day 2 2024-02-07 13.03.02.excalidraw]]

## Properties of Ideal Op-Amp

```ad-note
We assume the following:
$R_i$ is an open circuit $R_i = \infty$
$R_o$ is a closed circuit $R_o = 0$
```

![[Electronics - Week 3 Day 2 2024-02-07 13.07.16.excalidraw]]



1. $A = \infty$ (open loop gain) $U^+ = U^- \Rightarrow V_1 = V_2$
2. Infinite Bandwidth
3. Infinite input resistance $R_{in} = \infty \Rightarrow i_+ = 0 \space \& \space i_- = 0$
4. Zero output resistor ($R_o = 0$)
5. Zero common mode voltage gain (When the same signal is coming through $v_1$ and $v_2$, the output is zero, which is used to remove noise)

## OP-Amp Configurations

### Inverting

![[Electronics - Week 3 Day 2 2024-02-07 13.13.42.excalidraw]]

$$i_1 = 0$$
$$i_2 = 0$$
$$V^+ = V^- = 0$$
**Node $V^-$**

$$\frac{V^- - V_i}{R_1} + \frac{V^--V_0}{R_2} = 0$$
$$\frac{V_o}{R_2} = \frac{-V_i}{R_1} \Rightarrow V_o = \frac{-R_2}{R_1} V_i$$
$$A = \frac{-R_2}{R_1}$$

### Non-Inverting

![[Electronics - Week 3 Day 2 2024-02-07 13.18.26.excalidraw]]

$$V^+ = V^- = 0$$

$$\frac{V^- - 0}{R_1} + \frac{V^- - v_0}{R_2} = 0$$
$$\frac{V_i}{R_1}+ \frac{V_I}{R_2}- \frac{V_o}{R_2} = 0$$
$$V_o = (\frac{V_i}{R_1}+\frac{V_i}{R_2} )R_2$$

$$v_o = (1+ \frac{R_2}{R_1})V_i$$
$$A = (1 + \frac{R_2}{R_1}) \Rightarrow Gain \space of \space non-inverting$$
### Voltage Follower

![[Electronics - Week 3 Day 2 2024-02-07 13.22.43.excalidraw]]

$$v^+ = v_i = v_i$$
$$v^- = v_o$$
$$v_o = v_i$$
$$A = 1 \Rightarrow \space Gain$$

## Examples

### Example 1:

```ad-question
The circuit below uses an op-amp that is ideal execpt for having a finite gain ($A$. Measurements indicates $V_o = 4.0V$ when $V_i = 1.0V$. What is the op-amp gain A?
```

![[Electronics - Week 3 Day 2 2024-02-07 13.26.47.excalidraw]]

```ad-important
Since $A$ is not finite, then $V^+ \ne V^-$
```

$$V_o = A(V^+ - V^-)$$

**Use Voltage Division to Solve for $V^+$**

$$V^+ = \frac{1k}{1k + 1M} v_s$$
$$V^+ = 0.000999V$$

**Plug Back in:**

$$A = \frac{V_o}{V^+ - 0} = \frac{4}{0.000999-0} = 4004 \space V/V$$

### Example 2:

```ad-question
It is requried to connect a transducer having an open-circut voltage of $1V$ and a source reisstance of $1 M \Omega$ to a load of $1k \Omega$ resistance. Find the laod votlage if the connection is done:
1. Directly
2. Through a unity gain voltage follower
```

**Directly**

![[Electronics - Week 3 Day 2 2024-02-07 13.33.02.excalidraw]]

$$v_0 = \frac{1k}{1M+1k}(1V)$$
$$v_o = 1mV$$

**Unity Gain Voltage Follower**

![[Electronics - Week 3 Day 2 2024-02-07 13.35.52.excalidraw]]

$$v^+ = 1V = v^-$$
$$v_i = v_o$$
$$v_o = 1V$$

### Example 3:

```ad-question
Assuming ideal op-amps, find the votlage gain $v_o/v_i$ and input resistance $R_{in}$ fore ach of the circutis shown below
```

**Circuit 1**

![[Electronics - Week 3 Day 2 2024-02-07 13.42.17.excalidraw]]

```ad-important
You can ignore the bottom $20k \Omega$ resistor since it is connected to the node where $v^+ = v^- = 0$
```

Inverting OP-Amp

$$R_{in} = 20k \Omega$$
$$A = \frac{-R_2}{R_1} = \frac{-100k}{20k} = -50 V/V$$


**Second Circuit**

![[Electronics - Week 3 Day 2 2024-02-07 13.45.41.excalidraw]]

```ad-note
Since there is no current going through the op-amp, there is no voltage drop over the bottom $20 k \Omega$ Resistor
```
$$R_{in} = 20k$$
$$A = \frac{-R_2}{R_1}$$
$$= \frac{-100k}{20k} = -5 \space V/V$$
### Example 4:

```ad-question
Design an inverting op-amp circuit for which the gain is $-10 \space V/V$ and the total resistance used is $110 k \Omega$
```

$$A = \frac{-R_2}{R_1} = -10 \space V/V$$
$$R_2 + R_1 = 110k \Omega$$

$$A = \frac{-(100k \Omega)}{(10k \Omega)} = -10 \space V/V$$

