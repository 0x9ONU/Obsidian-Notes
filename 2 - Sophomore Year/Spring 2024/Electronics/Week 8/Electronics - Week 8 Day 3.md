Date: 20th March 2024
Date Modified: 20th March 2024
File Folder: Week 8
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Modeling the Diode

## Forward Bias

```ad-note
title: Remember in **Forward Bias**
$$I_D = I_S e^\frac{V_D}{nV_T}$$
$$V_D = nV_T \ln(\frac{i_D}{I_s})$$
```

![[Electronics - Week 8 Day 3 2024-03-20 13.47.12.excalidraw]]

$$\mbox{If} \space V_D > 0 (i.e \space V_s >0)$$
Because it is in forward bias region:
$$I_D = I_S e^\frac{V_D}{nV_T} \space \space \space \space \mbox{ Equation 1}$$

And by KCL:
$$V_S = I_DR_D + V_D$$
$$I_D = \frac{V_s-V_D}{R} \space \space \space \space \mbox{ Equation 2}$$

```ad-note
This is a nonlinear I-V relationship. Analyzing a circuit using nonlinear relationshiops would take significant time. Either it has to be done iteratively or in a graphical form.
```

### Example - Iterative Approach

```ad-question
Find $I_D$ given the following:
- $I_s = 1 fA$
- $n=1$
- $V_T=25mV$
- $R = 10k \Omega$
```

**Assume a Starting Point

1. Let $V_D = 0.7$
2. Plug in the value $\Rightarrow I_D = \frac{10-0.7}{10k} = 930 \micro A$
3. Solve for the voltage across the diode$V_D = nV_T\ln(\frac{I_D}{I_S}) =(1)(25 mV)\ln(\frac{930 \micro A}{1 fA})= 0.689V$
4. Plug the $V_D$ back into the $I_D$ equation and repeat until $V_D$ is the same value as it was before.

## Constant Voltage-Drop Model

![[Electronics - Week 8 Day 3 2024-03-22 13.11.34.excalidraw]]

**When the Diode is ON:** $V_D = 0.7$ and check if $i_D > 0$

**When the Diode is OFF:** $i_D = 0$ and check if $V_D < 0.7$

![[Electronics - Week 8 Day 3 2024-03-22 13.13.58.excalidraw]]

### Example

![[Electronics - Week 8 Day 3 2024-03-22 13.15.21.excalidraw]]

By KVL:

$$I_D = \frac{V_s-V_D}{R} = \frac{10-0.7}{10k} = 930 \micro A$$

**When compared to the Iterative Approach**

$$\mbox{\% error} = \frac{0.7-0.689}{0.689}*100=1.6 \mbox{ \% error}$$

### Example 2

![[Electronics - Week 8 Day 3 2024-03-22 13.19.14.excalidraw]]

$V_o = 2.1V$ as long as $V_{DD} > 2.1V$


### Example 3:

```ad-question
Find $I_1, I_2, V_A, V_B$ assuming the CVD model:
![[Electronics - Week 8 Day 3 2024-03-22 13.21.22.excalidraw]]
```
