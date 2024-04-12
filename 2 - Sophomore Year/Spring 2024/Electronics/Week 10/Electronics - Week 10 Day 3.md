 Date: 5th April 2024
Date Modified: 5th April 2024
File Folder: Week 10
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] test
```

# MOSFET DC Circuit Analysis

## Example 1 - NMOS

```ad-question
Find $V_{DS}$ and $I_D$. Given:
- $V_t = 1v$
- $K_N^\prime = 20 \micro A /V^2$
- $W - 20 \micro m$
- $L = 2 \micro m$
- $\lambda \approx 0$
```

![[Electronics - Week 10 Day 3 2024-04-05 13.03.45.excalidraw]]

**Check that if it is in Cutoff or NOT**

$$V_{GS} = V_G-V_S = (3)-(0) = 3V$$
$$V_{GS} > V_T \space \space \space \checkmark$$

### Assume Saturation:

**Find $I_D$**

$$I_D = \frac{K_N^\prime}{2} \frac{W}{L}(V_{GS}-V_t)^2$$
$$I_D = \frac{(20\micro A /V^2)}{2}(\frac{20 \micro m}{2 \micro m})(3-1)^2$$
$$I_D = 400 \micro A$$

**Find $V_{DS}$

$$5-V_D = I_DR_D$$
$$V_D = 5-I_DR_D$$
$$V_{D} = 5 - (400 \micro A)(10k\Omega)$$
$$V_D = V_{DS} = 1V$$
**Check Boundary Condition**

$$V_{DS} =^? V_{GS} -V_t$$
$$1 > 3-1$$
$$1 \not> 2$$
```ad-warning
This means it is not in saturation
```

### Assume Triode

**Find $I_D$ and $V_{DS}$

$$I_D = K_N^\prime (\frac{W}{L})[(V_{GS}-V_t)V_{DS} - \frac{V_{DS}^2}{2}]$$
$$I_D = 10 \micro A /V^2 (\frac{20}{2})[(3-1)V_{DS}- \frac{V_{DS}^2}{2}]$$
$$I_D = 200 * 10^{-6}[2V_{DS} - \frac{V_{DS}^2}{2}] \space \space \space \circ1$$

$$V_{DS} = 5- I_D(10,000) \space \space \space \circ 2$$
*Using Equation Solver, We get:*

$$I_D = 138.2 \micro A,V_{DS} = 3.618V$$
$$\mbox{OR } I_D = 361.8 \micro A, V_{DS} = 1.382 V$$
```ad-important
Check boundary condition for both, only ONE of them will be within the boundary condition. We will go with the second answer
```

$$V_{GS} - V_t = 2V$$
$$V_{DS} < V_{GS} -V_t$$
$$1.382V < 2 \space \checkmark$$

## Example 2 - Chosing Bias Point

```ad-question
Design the circuit shown below to establish a drain current of $0.4 mA$ and a drain votlage of $1V$. The MOSFET has $V_t= 2V, $\lambda \approx 0, K_N^\prime = 20 \micro A/V^2, L = 10 \micro m, w = 400 \micro m$. Specify the required values for $R_s$ and $R_D$
```

![[Electronics - Week 10 Day 3 2024-04-05 13.26.30.excalidraw]]

**Check for Cutoff Mode**

$$V_{RS} = 0 \Rightarrow V_{S} = -5V$$
$$V_{GS} = 0 - (-5) = 5 > V_t$$
It is ON!

### Saturation Mode

$$V_{DS}>V_{GS} - V_t$$
$$(V_D-V_S) > (V_G-V_S) - V_t$$
$$V_D > V_G -V_t \space \space \space \star$$

$$(1) > (0) - (2)$$
$$1 > -2 \space \checkmark$$

```ad-important
Using the alternative boundary conditon, we can see that the transitor must be in saturation
```

### Find the Value for $R_D$

$$V_D - 5 = I_DR_D$$
$$R_D = \frac{5 - V_D}{I_D} = \frac{5-1}{0.4mA} = 10k \Omega$$
### Find the Value for $V_S$

$$I_D = 0.4 mA = \frac{K_N^\prime}{2}(\frac{W}{L}(V_{GS}-V_t)^2$$
$$0.4mA - (10*10^{-6})(40)((0-v_S)-2)^2$$
$$V_S = -3V, -1V$$
**Check Both Boundary Conditions**

$\Rightarrow \mbox{For } V_S = -3V$

---
$$(V_D-V_S) >^? (V_G - V_S)-V_t$$
$$(1-(-3)) >^? (0 - (-3)-(2)$$
$$4 > 1 \space \checkmark$$
---
$$V_{GS} >^? V_t$$
$$4 > 2 \space \checkmark$$
$$\therefore V_S = -3V$$

### Find the Value of $R_S$

$$R_S = \frac{V_s -(-5)}{I_D} = \frac{-3-(-5)}{(0.4mA)}\Rightarrow R_s = 5k\Omega$$

## Example 3

```ad-question
Figure below shows an NMOS with its drain adn gate termiansl connected together. $I_D = 0.4mA, \lambda = 0, K_N^\prime = 20 \micro A/V^2, W = 100 \micro m, L = 10 \micro m, V_t = 2V$. Find $R_D$
```

![[Electronics - Week 10 Day 3 2024-04-05 13.44.29.excalidraw]]

### Check for Cutoff

$$I_D = 0 \Rightarrow V_D=10V$$
$$V_D = V_G\Rightarrow V_G = 10V$$
$$V_{GS} = V_G - V_S$$
$$10 - 0 < v_t$$
$$10 < 2 \space X$$
**It is ON**
### Check for Saturation

$$V_D = V_G$$
$$V_D > V_G -V_t$$
if $V_D = V_G$, then $V_D$ must be $> V_G -V_t$

**Transistor is Saturated**

### Find $V_G$

$$I_D = 0.4mA = \frac{K_N^\prime}{2} (\frac{W}{L})(V_{GS}-V_t)^2$$
$$0.4mA = (100*10^{-6})((V_G - 0) - 2)^2$$
*Using Calculator*

$$V_G = 0V, V_G = 4V$$

**Use Boundary Conditions

$\Rightarrow \mbox{ For } V_G = 0V$
$$V_{GS} = V_G -V_S$$
$$V_{GS} = 0-0$$
$$V_{GS} >^? V_t$$
$$0 \not > 2 \space X$$

$\Rightarrow \mbox{ For } V_G = 4V$
$$V_{GS}=V_G-V_S$$
$$4 - 0$$
$$4 > 2 \space \checkmark$$

$$\therefore V_G = 4V$$

### Find $R_D$

$$R_D = \frac{10-4}{0.4 mA} = 15 k \Omega$$
