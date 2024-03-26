Date: 22nd March 2024
Date Modified: 22nd March 2024
File Folder: Week 9
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Voltage Regulator

![[Electronics - Week 9 Day 1 2024-03-22 13.43.58.excalidraw]]

```ad-note
title: Remember
For the follwoing circuit below:
$$V_{DD} = 10V \Rightarrow V_o =0.689 V \space \& \space I = 931 \micro A$$
```
![[Electronics - Week 9 Day 1 2024-03-22 13.45.29.excalidraw]]

**However, when you change the $V_{DD}$**

$$V_{DD} = 5V \Rightarrow V_o =0.67 V$$
$$V_{DD} = 15V \Rightarrow V_o =0.7 V$$
$$\frac{\Delta v_o}{\Delta V_DD}=\frac{0.7-0.670}{15-5}=0.3 \%$$


```ad-important
The goal of any good voltage regualtor design:
1. Minimize $\Delta v_o$ due to $\Delta v_{DD} Rightarrow$ Solve for Line Regulation $\frac{\Delta v_o}{\Delta V_{DD}}$
2. Minimize $\Delta v_o$ due to $\Delta I_L \space (\Delta R_L) \Rightarrow$ Load Regulation $\frac{\Delta v_o}{\Delta I_L}$
```

## Example - Voltage Regulator with Large Load (Regulating)

![[Electronics - Week 9 Day 1 2024-03-25 13.06.25.excalidraw]]

*By KCL*

$$\frac{10-V_o}{10k} = I_D + \frac{V_o}{1k}$$
$$V_D = v_o = V_T \ln(\frac{I_D}{I_s})$$
$$V_o = 0.659 V$$
$$I_D = 281 \micro A$$

```ad-important
In general:
- As $R_L$ decreases and $I_L$ increases, then $I_D$ decreases and $V_o$ decreases
```

## Example - Voltage Regulator with Small Load (Unregulating)

![[Electronics - Week 9 Day 1 2024-03-25 13.09.53.excalidraw]]

$$\frac{10-0.7}{10k}+ I_D + \frac{0.7}{100}=0$$
$$I_D = -6.07mA$$
$$V_o = \frac{100}{100+10k}10V = 99.01mV$$

### Smallest Resistor to Connect to this Circuit Before Diode Cuts Off

**Boundary Condition**: $I_D = 0$

$$\frac{10-0.7}{10k}= 0 + \frac{0.7}{R_L}$$
$$R_L = 752 \Omega$$
```ad-warning
If $RL < 752 \Omega$, the circuit would be out of regulation like above.
```

## How to Fix Voltage Regulators From Not Regulating

Use an OP-AMP!

![[Electronics - Week 9 Day 1 2024-03-25 13.15.40.excalidraw]]

# Zener Diode

![[Electronics - Week 9 Day 1 2024-03-25 13.23.20.excalidraw]]

**The Zener Diode is Modeled by:**

![[Electronics - Week 9 Day 1 2024-03-25 13.24.21.excalidraw]]

$$V_z = V_{zo}I_zr_z$$

![[Electronics - Week 9 Day 1 2024-03-25 13.21.20.excalidraw]]

$$m = \frac{\Delta I_Z}{\Delta V_z}$$
## Zener Diode Shunt Regulator

![[Electronics - Week 9 Day 1 2024-03-25 13.25.58.excalidraw]]

$$V_{DD} > V_z$$
$$P_z = I_z * V_z$$

**Boundary Condition**: 

$$I_s = I_Z + I_L$$
$$\frac{V_{DD} -V_z}{R_s} = I_z + \frac{V_z}{R_L}$$
$$\therefore I_z >0 \space (\mbox{To be in the breakdown region})$$

Then:

$$\frac{V_{DD}-V_z}{R_s} = I_z + \frac{V_z}{R_L}$$
$$I_z = \frac{V_{DD}- V_z}{R_s}- \frac{V_z}{R_L}$$
$$\frac{V_{DD}-V_z}{R_s} - \frac{V_z}{R_L} > 0$$
$$V_{DD} > V_z(1 + \frac{R_s}{R_L}) \space \space \space \star$$

### Example

![[Electronics - Week 9 Day 1 2024-03-25 13.32.24.excalidraw]]

**Replace with Model**

![[Electronics - Week 9 Day 1 2024-03-25 13.34.18.excalidraw]]

$$V_{zo} = 6.3V, r_z = 10 \Omega$$
Find $v_o$ and $p_z$

From KCL:

$$I_s = I_L + I_z$$
$$\frac{12-V_o}{1k}= \frac{v_o}{2k} + \frac{v_o-6.3}{10}$$
$$v_o = 6.3251$$
$$P_z = V_z *I_z = (6.3251)(\frac{(6.3251)-6.3}{10}) = 15.9 mW$$
#### Line Regulation

$$\frac{V_{DD}-v_o}{1k} = \frac{v_o}{2k} + \frac{v_o-6.3}{10}$$
$$v_o = \frac{V_{DD}+630}{101.5}$$
**Now set $V_{DD} = 12 \pm 1 V$

$$V_{DD} \Rightarrow 13V \Rightarrow V_o = 6.33498V$$
$$V_{DD} \Rightarrow 11 V \Rightarrow v_o = 6.31527V$$

**Solve for Line Regulation**:

$$\frac{\Delta v_o}{\Delta V_{DD}} = \frac{6.33498-6.31527}{13-11} = 9.85*10^{-3} \Rightarrow 9.85 mV /V$$

#### Minimum Resistor?

**Boundary Condition**: $I_z =0 \Rightarrow V_z = V_{zo} = 6.3V$

$$\frac{12-(6.3)}{1k}= 0 + \frac{6.3}{R_L}$$$$R_L = 1105.3 \Omega \leftarrow \mbox{Minimum Resistor}$$
$$I_L = \frac{6.3}{1105.3} = 5.70mA \leftarrow \mbox{Maximum Load Current}$$

