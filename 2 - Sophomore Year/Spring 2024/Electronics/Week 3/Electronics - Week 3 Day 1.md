Date: 5th February 2024
Date Modified: 5th February 2024
File Folder: Week 3
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Circuit Models for Amplifiers

```

# Circuit Models for Amplifiers

Used to catch the behavior of an amplifier

![[Electronics - Week 3 Day 1 2024-02-05 13.02.19.excalidraw]]

```ad-note
The output is $A_{V_o} V_i$ if the output resistor $R_o$ is an open circuit ($R_o = \infty$) 
```

**Solving for $v_i$

$$v_i = \frac{R_i}{R_s+R_i}V_s$$
```ad-important
$R_i >> R_s$ ensures that $v_i$ is close to the ideal $v_s$. Ideally $R_i = \infty$
```

**Solving for $v_o$**

$$v_0 = \frac{R_L}{R_o + R_L} A_{V_o} V_i$$

```ad-important
$R_0 << R_L$ where $R_o = 0$
```

**Solving for $A_v$**

$$A_v = \frac{V_o}{V_s}$$

## Cascaded Amplifiers

![[Electronics - Week 3 Day 1 2024-02-05 13.13.09.excalidraw]]

### In the Case of a 2 Stage Amplifier:

$$V_o = (\frac{R_L}{R_L + R_{02}})A_2v_{i2}$$
$$= (\frac{R_L}{R_L + R_{02}})A_2 (\frac{R_{i2}}{R_{01}+R_{i2}})A_1 v_{i1}$$
$$=A_{so} = \frac{v_o}{v_s} = A_1A_2 (\frac{R_{i1}}{R_{i1}+R_s})(\frac{R_{i2}}{R_{i2}+ R_{01}})(\frac{R_L}{R_L + R_{02}})$$

```ad-important
For this to be a good amplifier:
$$\begin{bmatrix} R_{02} << R_L \\ R_{i2} >> R_{01} \\ R_{i1} >> R_s \end{bmatrix} \Rightarrow A_{so} \approx A_1 * A_2$$
```
### Example

```ad-question
As shown in the figure below, an amplifier composed of a cascade of three stages. the amplifier is fed by a signal source with a source reistance of $100 k \Omega$ and delivers its output into a load resistance of $100 \Omega$. The first stage has a relatively hgih input resistance and a modest gain fractor of 10. The second stage has a higher gain factor but lower input resistance. FInally, the last, or oput, stage has unity gain but a low output resistance. We wish to evaluate the overall voltage gain.
```







