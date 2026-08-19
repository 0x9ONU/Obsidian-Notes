Date: 14th February 2024
Date Modified: 14th February 2024
File Folder: Week 4
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Difference Amplifiers

```

# Difference Amplifiers

![[Electronics - Week 4 Day 2 2024-02-14 13.01.19.excalidraw]]

```ad-note
Using superposiiton, you can see that for each voltage input.
```

$$v_o = v_{o1} + v_{o2}$$

**For when $v_{i1}$ is on:

```ad-important
Since $v_{i2}$ would be set to ground, then it is just an inverting op-amp 
```

$$v_{o1} = - \frac{R_2}{R_1}v_{i1}$$

**For when $v_{i2}$ is on:

```ad-note
This would be a non-inverting op-amp AFTER finding the votlage over $R_4$
```

$$v_+ = \frac{R_4}{R_3+R_4} v_{i2}$$
$$v_{o2} = (1+ \frac{R_2}{R_1})(\frac{R_4}{R_3+R_4})v_{i2}$$

**Combine Equations**

$$v_o = -\frac{R_2}{R_1}v_{i1} + (1+ \frac{R_2}{R_1})(\frac{R_4}{R_3+R_4})v_{i2}$$

$$\Rightarrow Set \space \frac{R_2}{R_1} = \frac{R_4}{R_3}$$
$$R_2 = R_4 \space \& \space R_1 = R_3$$
$$\star \space \space \space v_o = \frac{R_2}{R_1}(v_{i2}-v_{i1}) \space \space \space \star$$

```ad-summary
title: Terms
- **Differiental Input Signal** $\Rightarrow V_{id} = v_{i2} - v_{i1}$
- **Common Mode Signal** $\Rightarrow v_{ICM} = \frac{1}{2}(v_1 + v_2)$
- **From One and Two**:
$$v_{i1} = V_{ICM} - \frac{V_{id}}{2}$$
$$V_{i2} = V_{ICM} + \frac{V_{i2}}{2}$$
```

![[Electronics - Week 4 Day 2 2024-02-14 13.15.32.excalidraw]]

$$A_o = A_d V_{id} + A_{cm} V_{ICM} \space \space \space A_d >>A_{cm}$$

$$\therefore v_o = \frac{R_2}{R_1}(V_{i2}-V_{i1}) = \frac{R_2}{R_1} (V_{id})$$
$$A_d = \frac{V_o}{V_{id}} = \frac{R_2}{R_1}$$

**CMRR**: $20 \log | \frac{A_d}{A_{cm}}|$

```ad-note
Ideally, $A_cm = 0 \Rightarrow CMRR = \infty$ 
```

## Common-Mode Rejection System Version

![[Electronics - Week 4 Day 2 2024-02-14 13.21.38.excalidraw]]

$$v_o = \frac{R_4}{R_4+R_3}(1- \frac{R_2}{R_1}\frac{R_3}{R_4})V_{ICM} = A_{cm}$$
$$When \space \frac{R_4}{R_2} = \frac{R_2}{R_1} \Rightarrow A_{cm} = 0$$
$$A_{cm} \ne 0 \Rightarrow CMRR = finite$$

## Examples

### Example 1

```ad-question
To obtian high gain, high input resistance amplifier is needed. The circuit below empolys positive feedback, in addition to the negative input of the op-amp. Specifically, a votlage dividers $R_s / R_o$ connected across the oput fees a fraction $\beta$j of the output that is, a voltage $\beta v_o$, back to the postive input termainl of the op-amp thorugh a resistor $R$. Assume $R_5$ and $R_6$ are much smaller than $R4 so that the current hrough $R$ is much lower than the current in the votlage divider, with the reuslt taht $\beta = R_6 / ((R_s + R_o))$. Show the differential gain is given by $A_d = v_o / V_{id} = 1 / (1- \beta)$
```

#comebacklater get circuit drawing

```ad-note
Given: $\beta = \frac{R_6}{R_s+R_6}$
```

Show that $A_d = \frac{1}{1-\beta}$

**Superposition**

$\Rightarrow$ due to $V_1$

$$v^+ = v^-$$
$$\frac{v_1- v^-}{R} = \frac{v^- - v_{01}}{R}$$
$$v_1 - v^- = v^- - v_{01}$$

*By Voltage Division:*
$$v^+ = \frac{R}{R+R} \beta v_{01} = \frac{1}{2} \beta v_{01}$$

*Substitute 2 into 1*

$$v_1 - \frac{1}{2} \beta v_{o1} = \frac{1}{2} \beta v_{o1} - v_{o1}$$
$$v_1 = \frac{1}{2} \beta v_{o1} + \frac{1}{2} v_{o1} - v_{o1}$$
$$v_{o1} = \frac{1}{\beta-1}v_1$$

$\Rightarrow$ due to $V_2$

$$v^- = v^+$$
$$\frac{v_2-v^+}{R} = \frac{v^+ - \beta v_o}{R} \Rightarrow v_2 - v^+ = v^+ - \beta v_o$$

*By voltage division*
$$v^- = \frac{R}{R+R} v_{o2} = \frac{1}{2}v_{o2}$$

*Substitute 1 into 2*

$$v_2 - \frac{1}{2}v_{o2} = \frac{1}{2} v_{o2} - \beta v_{o2}$$
$$v_2 = \frac{1}{2} v_{o2} + \frac{1}{2} v_{o2} - \beta v_{o2}$$
$$v_2 =v_{o2} - \beta v_{o2}$$
$$v_2 = v_{o2} (1- \beta)$$
$$v_{o2} = \frac{1}{1- \beta} v_2$$

**Combine Using Superposition**
$$v_o = v_{o1} + v_{o2}$$
$$v_o = \frac{1}{1- \beta}(v_2 -v_1) \Rightarrow A_d = \frac{1}{1- \beta} \space \space \space \star$$
### Example 2

```ad-question
Using the difference amplifier configuration, design the circuit to provide the following differential gains given $R_1 = 5 k \Omega$
```

![[Electronics - Week 4 Day 2 2024-02-14 13.26.41.excalidraw]]

**$A_d = 1 V/V$**

$$A_d = \frac{R_2}{R_1}$$
$$(1) = \frac{R_2}{(5k \Omega)}$$
$$R_2 = R_3 = 5k\Omega$$



![[Electronics - Week 4 Day 2 2024-02-14 13.29.09.excalidraw]]

**$A_d = 5 v/v$**

$$A_d = \frac{R_2}{R_1}$$
$$(5) = \frac{R_2}{(5k\Omega)}$$
$$R_2 = 25k \Omega$$


![[Electronics - Week 4 Day 2 2024-02-14 13.31.11.excalidraw]]

**$A_d = 10 V/V$**

$$A_d = \frac{R_2}{R_1}$$
$$(10 V/V) = \frac{R_2}{(5k\Omega)}$$
$$R_2 = 50k\Omega$$

![[Electronics - Week 4 Day 2 2024-02-14 13.33.14.excalidraw]]

**$A_d = 25 V/V$**

$$A_d = \frac{R_2}{R_1}$$
$$(25 V/V) = \frac{R_2}{(5k\Omega)}$$

$$R_2 = 125 k \Omega$$

![[Electronics - Week 4 Day 2 2024-02-14 13.34.36.excalidraw]]

