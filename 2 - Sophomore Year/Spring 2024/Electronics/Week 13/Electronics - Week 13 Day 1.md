Date: 22nd April 2024
Date Modified: 22nd April 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Multiple MOSFETs Problems

## Example 1

```ad-question
In the circuit shown below, transistors are characterized by $|V_t| = 1V, K_p^\prime = 4 mA/V^2, \lambda = 0$. Find the labelled votlages.
```

![[Electronics - Week 13 Day 1 2024-04-22 13.05.04.excalidraw]]

```ad-important
They are both in saturaiton mode since:
$$V_D \ge V_G + {V_t}$$
$$\space$$
Since this is true for both diodes, then they both must be in saturation since there is a drain current going thorugh both of them.
```

### For Transistor One

$$I_D = \frac{K_p^\prime}{2} \frac{W}{L}(V_{SG}-|V_t|)^2$$
$$(2*10^{-3}) = (2*10^{-3})(5-V_1-1)^2$$
**Gives two solutions:**

$$V_1 = 5v \space OR \space \boxed{V_1 = 3V}$$

*Check second one*

$$V_{SG} > |V_t|$$
$$(5-3) > |1| \space \checkmark$$
### For Transistor Two

$$(2*10^{-3})=(2*10^{-3})(3-V_2-1)^2$$
**Gives two solutions:**

$$V_2 = 3V \space OR \space \boxed{V_2 = 1V}$$

*Check second one:*

$$V_{SG} > |V_t|$$
$$(3-1) > |1| \space \checkmark$$

## Example 2: Three NMOS

```ad-question
The NMOS transistors int he circuit below have $V_t = 0.5V, K_n^\prime = 90 \micro A/V^2, \lambda = 0$ and $L_1=L_2=L_3=0.5 \micro m$. Find the required values of each gate width for each transistor to obtians the voltages anc current values indicated.
```

![[Electronics - Week 13 Day 1 2024-04-22 13.13.22.excalidraw]]

```ad-important
Since all of them are diode connected mosfets and there is a current, they are all in saturated mode
```
### For Transistor $Q_3$
$$(90 \micro A)= (45 \micro A/V^2)(\frac{W_3}{0.5 \micro m})(2.5-1.5-0.5)^2$$
$$W_3 = 4 \micro m$$
### For Transistor $Q_2$

$$(9*10^{-6}) = (45 *10^{-6})(\frac{W_2}{0.5 \micro A})(1.5-0.8-0.5)^2$$
$$W_2 = 25 \micro m$$
### For Transistor $Q_1$

$$(9*10^{-6})=(45*10^{-6})(\frac{W_3}{0.5 \micro m})(0.8-0-0.5)^2$$
$$W_E = 11.11 \micro m$$
## Example 3:
```ad-question
For the circuit shown below, assume $Q_1$ and $Q_2$ are matched except for ahving different widths, $W_1$ and $W_2$. Let $V_t - 0.5V, K_N^\prime = 0.4 mA/V^2, L_1=L_2=0.36 \micro m, W_1 = 1.44 \micro m, \lambda = 0$
1. Find the value of $R$ required to establish a current of $50 \micro A$ in $Q_1$
2. Find $W_2$ and $R_2$ so that $Q_2$ operates at the edge of saturation with a current of $0.5 mA$
```

#comebacklater 
### Part 1:

Since $Q_1$ is a diode connected NMOS, it must be in **saturation** if there is a current going through it. Additionally, $V_D=V_G$

$$(50 \micro A)=(0.2 mA/V^2)(\frac{1.44 \micro m}{0.36 \micro m})(V_G-0-0.5)^2$$
$$V_G = 0.75 \Rightarrow V_G = 0.75$$
$$(1.8-0.75) = 50 \micro A(R)$$
$$R = \frac{1.05}{50 \micro A}=\boxed{21 k\space \Omega}$$

### Part 2:

To operate on the edge of saturation:
$$V_{DS} = V_{GS}-V_t$$

$$V_{G1}=V_{G2}$$

$$V_{GS_1}=V_{GS}=0.75 V$$
**Find $W_2$**
$$(0.5 *10^{-3}) = (0.2 *10^{-3})(\frac{W_2}{0.35 \micro m})(0.75 - 0.5)^2$$
$$W_2 = 14.4 \micro m$$
**Find $R_2$**

$$V_{D} = V_{G} - V_t \space (\mbox{*Edge of Saturation*})$$
$$V_D = (0.75)-(0.25)$$
$$V_D = 0.25V$$

$$1.8-V_D = R_2(0.5mA)$$
$$R_2 = \frac{1.8-0.25}{0.5mA}$$
$$R_2 = 3.1 k \space \Omega$$
## Example 4:

```ad-question
The NMOS transistors int he circuit below have $V_t = 0.5V, K_N^\prime = 250 \micro A /V^2, \lambda = 0$ and $L_1=L_0.25 \micro m$. Find the required valeus of gate width for each of $Q_1$ and $Q_2$, and the values of R, to obtian the voltages and current values indicated.
```

#comebacklater 

### Find Gate Width $Q_1$

Since diode connected NMOS and a current is going through it, $Q_1$ is in saturation:

$$(0.5 mA) = (125 \micro A/V^2)(\frac{W_1}{0.25 \micro m})(1-0-0.5)^2$$
$$W_1 = 4 \micro m$$

### Find Resistor $R$

$$2.5-1.8=(0.5mA)R$$
$$R = \frac{0.7}{0.5 mA} = 1.4 k \space \Omega$$

### Find Gate Width $Q_2$

Since diode connected NMOS and a current is going through it, $Q_2$

$$(0.5 mA) = (125 \micro A/V^2)(\frac{W_1}{0.25 \micro m})(1.8-1-0.5)^2$$
$$W_2 = 11.11 \micro m$$










