Date: 12th April 2024
Date Modified: 12th April 2024
File Folder: Week 11
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Diode Connected MOSFET (Drain and Gate Connected)

$\Rightarrow$If MOSFET is ON
- $V_D = V_G$
- $V_D > V_G - V_t$
- Allows current to flow in one direction, just like a diode.
# Solving for PMOS

## PMOS Equations

**Cutoff**

$$V_{SG} \ge |V_t| \Rightarrow I_D = 0$$

**Saturation**

$$V_{SG} > |V_t| \mbox{ AND } V_{SD} \ge V_{SG} - |V_t|$$
$$I_D = \frac{K_P^\prime}{2} \frac{W}{L}(V_{SG}-|V_t|)^2$$
**Triode**
$$V_{SG} > |V_t| \mbox{ and } V_{SD} < V_{SG} - |V_t|$$
$$I_D = K_p^\prime \frac{W}{L}[(V_{SG}-|V_t|)V_{SD}-\frac{V_{SD}^2}{2}]$$

## Examples

### Example 1 - NMOS Refresher

```ad-question
Analyze the circuti show below to dtermine the voltages at all nodes and the current through all branches. Let $V_t = 1v$ and $K_n = 1 mA /V^2$. Neglect the channel-length modulation effect (assume $\lambda = 0$)
```

![[Electronics - Week 11 Day 2 2024-04-12 13.10.23.excalidraw]]

#### Solve for Gate Voltage

```ad-important
It is a voltage divider!
```

$$V_G = \frac{10M}{10M + 10M}(10V) = 5V$$
$$I_1 = \frac{10}{10M + 10M} = 0.5 \micro A$$

#### Checking NFET

##### Check Cutoff

$$I_D = 0 \rightarrow V_S =0$$
$$V_{GS} = V_G -V_S = 5 - 0$$
$$V_{GS} <^? V_t$$
$$5 \not < 1$$
**Transistor is on**

##### Assume Saturation

$$I_D = \frac{K_n}{2}(V_{GS}-V_t)^2$$
$$I_D = (500*10^{-6})((5-V_S)-1)^2$$
$$V_S = (6*10^{3})I_D$$

*By using equation solver*

$$I_D = 500 \micro A \space \& \space V_S = 3V$$
$$OR$$
$$I_D = 888.9 \micro A \space \& \space V_s = 5.3V$$

**Check**

$$V_{GS} = V_G - V_S = 5-3$$
$$2 > 1 V \space \checkmark$$
```ad-important
Use the first solution
```

###### Check Saturation

$$\mbox{Check} \Rightarrow V_{DS} > V_{GS} - V_t$$
$$V_D = 10 - 6k(500 \micro A) = 7V$$
$$V_D > V_G=V_t$$
$$7 > 5 -1$$
$$7 > 4 \space \checkmark$$
**IT IS IN SATURATION**

### Example 2 - PFET

```ad-question
For the circuit shown below, find the value of $I_D$ and $V_D$. Given:
- $K_p^\prime = 10 \micro A /V^2$
- $\frac{W}{L} = 20$
- $V_t = -1V$
- $\lambda \approx 0$
```

![[Electronics - Week 11 Day 2 2024-04-12 13.23.29.excalidraw]]

#### Check for Cutoff

$$V_{SG} <^? |V_t|$$
$$(10-7) < |-1| \space NO$$

**It is ON**

#### Assume Saturation

$$I_D = \frac{K_P^\prime}{2}\frac{W}{L}(V_{SG}-|V_t|)^2$$
$$I_D = (100*10^{-6})(3-1)^2 = 400 \micro A$$

$$V_D = I_D (10k) = 400 \micro A(10k) = 4V$$


##### Check For Saturation

$$V_{SD} \ge^? V_{SG} - |V_t|$$
$$V_S-V_D \ge V_S -V_G - |V_t|$$
$$(10)-(4) \ge (10)-(7)-|(-1)|$$
$$6 \ge 2 \space \checkmark$$
**It is in Saturation**

### Example 3 - Changing a Resistor

```ad-question
Now set the $R_D$ in the previosu problem to $100k \Omega$ and Solve:
```

![[Electronics - Week 11 Day 2 2024-04-12 13.33.20.excalidraw]]

#### Check Cutoff

$$V_{SG} <^? |V_t|$$
$$V_{SG} = 10 - 7 = 3 V$$
$$3 \not < -1 \space X$$
**It is ON**

#### Assume Saturation


$$I_D = \frac{K_P^\prime}{2}\frac{W}{L}(V_{SG}-|V_t|)^2$$
$$I_D = (100*10^{-6})(3-1)^2 = 400 \micro A$$

$$V_D = I_D (10k) = 400 \micro A(100k) = 40V$$


##### Check Saturation

$$V_{SD} \ge^? V_{SG} -|V_t|$$
$$(10)-(40) \ge (10) - (7) - 1$$
$$-30 \not \ge 2$$
**NOT in Saturation**

#### Assume Triode

$$I_D = K_P^\prime \frac{W}{L}[(V_{SG}-|V_t|)V_{SG} - \frac{V_{SD}^2}{2}]$$
$$= (200 *10^{-6})[((10-7)-|-1|)(10-V_D)-\frac{(10-V_D)^2}{2}]$$
$$V_{D} = I_D(100k)$$

**Plugging into Equation Solver**

$$V_D = 6.16 V \space \& \space I_D = 61.6 \micro A$$
$$OR$$
$$\boxed{V_D = 9.74 V \space \& \space I_D = 97.4 \micro A}$$

*Check Solutions*

$$V_{D} >^? V_G - |V_t|$$

$$(9.74) < (7) - |-1|)$$
$$9.74 > 6 \space \checkmark$$
### Example 4: PMOS Design Problem

```ad-question
Design the circuti show below so that the transistor operates in saturation with $I_D=0.5 mA$ and $V_D = +3V$. Let PMOS have $V_t = -1V$ and $K^\prime_p(\frac{W}{L}) = 1mA/V^2$. Assume $\lambda \approxeq 0$. What is the largest value of $R_D$ we can have while maintaining the PMOS in *saturation*
```

![[Pasted image 20240415131121.png]]

#### Find $R_D$

$$\boxed{R_D = \frac{3}{0.5mA} = 6 k\Omega}$$

#### Find $V_G$

$$I_D = 0.5mA = \frac{K^\prime_p}{2}\frac{W}{L}(V_{SG}-|V_t|)^2$$
$$0.5mA = (0.5mA/v^2)[(5-V_G)-1)^2$$

*Plug into equation solver*

$$V_G = 5V \space OR \space V_G = 3V$$

$$V_{SG} >^? |V_t|$$
$$V_{SG} = (5)-(5) = 0 \not > 1$$

$$V_{SG} = (5)-(3) = 2 > 1 \space \checkmark$$

```ad-important
Use second solution!
```

#### Find $R_{G1}$ and $R_{G2}$

$$(3) = (\frac{R_{G2}}{R_{G1}+R_{G2}})(5V)$$
**Find the solution to the ratio**
$$\frac{3}{5} = \frac{R_{G2}}{R_{G1}+R_{G2}}=\frac{3k}{2k+3k}$$

$$\boxed{R_{G1} = 2k, R_{G2}=3k}$$

#### Check Saturation

$$V_{SD} \ge V_{SG} - |V_t|$$
$$(V_S-V_D) \ge (V_S-V_G)-|V_t|$$
$$V_D \ge V_G - |V_t|$$
$$(3) \ge (3) -(1)$$
$$3 \ge 2 \space \checkmark$$

#### Largest Value of $R_D$

$$V_D = V_G+|V_t|$$
$$V_D = 4 V$$

$$R_{Dmax} = \frac{4}{0.5mA}=8k\Omega$$

