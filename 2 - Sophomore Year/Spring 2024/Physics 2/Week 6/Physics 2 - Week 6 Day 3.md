Date: 1st March 2024
Date Modified: 1st March 2024
File Folder: Week 6
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Kirchhoff

```

# Kirchhoff's Rules

## Loop Rule

```ad-summary
The voltage rises = voltage drop
```

### Examples

![[Physics 2 - Week 6 Day 3 2024-03-01 11.16.40.excalidraw]]

$$V = IR_1$$

![[Physics 2 - Week 6 Day 3 2024-03-01 11.17.40.excalidraw]]

$$V_1 + V_2 - V_3 = I(R_1+R_2)$$

## Junction Rule

```ad-summary
Currents into a junction = Currents out
```

### Examples

![[Physics 2 - Week 6 Day 3 2024-03-01 11.19.41.excalidraw]]

$$I_0 = I_1 + I_2$$

## Big Example

```ad-question
Find the current through $4 \Omega$ Resistor
```

![[Physics 2 - Week 6 Day 3 2024-03-01 11.20.58.excalidraw]]

### Junction Rule

$$I_0 = I_1 + I_2$$

**For Loop one**

$$V_3 +V_5 = 2I_1 + 3I_o$$

**For Loop Two**

$$V_5=3I_o+4I_2$$
```ad-note
Use matrices to solve
```
$$I_2 = 0.038 A$$

```ad-important
Do not worry about solving them on the exam. Just worry about writing the equations
```

# RC Circuits

![[Physics 2 - Week 6 Day 3 2024-03-01 11.30.50.excalidraw]]

## Discharging - Open Switch

![[Physics 2 - Week 6 Day 3 2024-03-01 11.32.02.excalidraw]]

$$v_o = V_R + V_c$$
$$0 = IR + \frac{Q}{C}$$
$$0 = R \frac{dQ}{dt} + \frac{Q}{C}$$

### **Solution**

$$Q = Q_oe^{\frac{-t}{RC}}$$
### Solution Works $\star$

$$0 = R \frac{dQ}{dt} + \frac{Q}{C}$$
$$0 = R \frac{d(Q_o e^{\frac{-t}{RC}})}{dt} + \frac{Q}{C}$$
$$0 = R Q_o(\frac{-1}{RC})e^{\frac{-t}{RC}}+ \frac{Q}{C}$$
$$0 = \frac{-R}{RC}(Q_o e^{\frac{-t}{RC}})+ \frac{Q}{C}$$
$$0 = \frac{-Q}{C}+ \frac{Q}{C}$$


## Discharging - Open Switch

![[Physics 2 - Week 6 Day 3 2024-03-01 11.40.18.excalidraw]]

$$v_o = V_R+V_C$$
$$v_o = IR + \frac{Q}{C}$$
$$V_o = R \frac{dQ}{dt} + \frac{Q}{C}$$
$$V_o = R \frac{dQ}{dt} - \frac{Q}{C} = 0$$
### Solution

$$Q = CV_o(1-e^{\frac{-t}{RC}})$$



