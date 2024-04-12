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

#### Assuming that $D_1$ and $D_2$ are ON:

$$V_A-V_B = 0.7 V$$

**By KCL**

$$\frac{10-V_B}{1k}+ I_1 = \frac{V_B}{2k}$$
$$\frac{10-V_A}{5k} = I_1 +I_2$$
$$I_2 = \frac{(V_A-0.7)-(-10)}{5k}$$

**By using matrix of equations**

$$I_1=-2.22mA \space X \Rightarrow D_1 \mbox{ Must be OFF}$$
$$V_A =5.89V$$
$$I_2 = 3.04mA$$
$$V_B = 5.19V$$
```ad-warning
Assumptions are all not true. Try again with new assumption...
```
#### Assuming that $D_1$ is OFF and $D_2$ is ON

$$I_1 =0$$
**By KCL**

$$\frac{10-V_B}{1k}=0 + \frac{V_B}{2k}$$
$$\frac{10-V_A}{5k} = I-2 +0$$
$$I_2 = \frac{(V_A-0.7)-(-10)}{5k}$$

**By using Matrix of Equations**

$$V_B = 6.67V$$
$$V_A = 0.35$$
$$I_2 = 1.93 \space \checkmark D_2 \mbox{ Is Truely ON}$$
$$I_1 = 0$$

**Check $V_{D_1} = V_A-V_B$**

$$=0.35 - 6.67 < 0.7$$
$$=-6.32 < 0.7 \space \checkmark \space D_1 \mbox{ Is Truely OFF}$$

### Example 4:

```ad-question
For the circutis shown below, using the CVD Model ($V_D = 0.7$) diode model, Find the voltages and currents indicated
```

#### Circuit 1

![[PXL_20240322_173316956.MP.jpg]]

##### Assuming $D_1$ is off and $D_2$ is ON

$$2 - V = 0.7 V$$
$$V = 1.3 V$$

**BY KCL**

$$I = \frac{V-(-9)}{2k} = 5.15mA$$

**Checking Assumptions**

$$V_D = 1 - V$$
$$V_D = -0.3 V < 0.7V \space \checkmark$$

$$I > 0 \space \checkmark$$

#### Circuit 2


![[PXL_20240322_173320249 2.jpg]]

##### Assuming $D_1$ is ON and $D_2$ is OFF

$$V = 1 -(-0.7) = 1.7V$$

$$I = \frac{9-(1.7)}{2k} = 3.65 mA$$

**Checking Both Assumptions**:

$$V_D = 2 - 1.7 = 0.3 < 0.7 \space \checkmark$$

$$I > 0 \space \checkmark$$