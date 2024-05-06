Date: 3rd May 2024
Date Modified: 3rd May 2024
File Folder: Week 14
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# More BJT Problems

## Problem 1: Thevinin's Equivalent

```ad-question
The pnp transisotr shown below has $\beta = 100.$ Find all voltages and currents.
```

![[Electronics - Week 14 Day 3 2024-05-03 13.04.20.excalidraw]]

### Using Thevenin's Equivalent:

![[Electronics - Week 14 Day 3 2024-05-03 13.06.24.excalidraw]]

$$V_{OC} = V_{th} = 10( \frac{10k}{10k+10k}) = 5V$$
$$R_{th} \Rightarrow 10k//10k = 5k \Omega$$
### Assume Active

![[Electronics - Week 14 Day 3 2024-05-03 13.08.16.excalidraw]]

*By KVL*
$$-5+5kI_B +0.7+1kI_E=0 \space \space -\mbox{Equation 1}$$
$$I_E = (\beta +1)I_B$$
$$I_E = 101I_B \space\space  -\mbox{Equation 2}$$

*By substituting the two equations and solving:*

$$I_B = 40.6 \micro A$$
$$V_B = 5-5k(I_B) = 4.80V$$
$$I_E = 101I_B = 4.10 mA$$

Solve rest on your own.

## Problem 2:

```ad-question
Find all labeled voltages and currents for the circuit.
```

![[Electronics - Week 14 Day 3 2024-05-03 13.13.48.excalidraw]]

### Check for Cutoff

$$V_B =0, V_E = 10$$
$$V_{EB} = 10-0=10V$$
**IT MUST BE ON**
### Assume Active

$$V_{EB} = 0.7V$$
$$V_B+V_E = 0.7$$
$$-10+2kI_E +0.7+50kI_B = 0$$
$$I_E = (\beta+1)I_B$$
$$I_E =101I_B$$
Plug both equations together to get the base current with one equation and one uknown
$$-10+2k(101I_B)+0.7+50kI_B =0$$
$$\boxed{I_B = 36.9 \micro A}$$

$$I_C = \beta I_B = 3.69 mA$$
$$I_E = (\beta +1)I_B = 3.73 mA$$
$$V_E = 10-2kI_E = 2.55V$$
$$V_C = -10 +1kI_C = -6.31V$$
$$V_B =50I_B = 1.85V$$

#### Check for Active

$$V_{CB} = V_C -V_B = -8.16 < 0.4 \space \checkmark$$
The BCj is reversed biased, **so the active is confirmed.**

## Question 3: PNP BJT design problem

```ad-question
The PNP transistor shown below has $\beta= 50$. FInd the value for $R_c$ that gives $V_{EC} = 2V$.
```

![[Electronics - Week 14 Day 3 2024-05-03 13.25.57.excalidraw]]

### Use Thevenin's Equivalent 

$$V_{th} = V_{oc} = 12 ( \frac{40k}{20k+40k}) = 8V$$
$$R_{TH} = 20k//40k//=13.33 k \Omega$$

### Redraw Circuit

![[Electronics - Week 14 Day 3 2024-05-03 13.29.50.excalidraw]]
### Active

Since $V_{EC} = 2V$, it must be **active** since $V_{EC} \ge 0.3V$

$$-12 +2kI_E + (0.7 = V_{EB})+13.33kI_B +8 = 0$$
$$I_E = (\beta+1)I_B$$
$$I_E = 51I_B$$

Substitute the two equations together to get:

$$I_B = 28.6 \micro A$$

Find other currents using Beta equations
$$I_C = \beta I_B = 1.43 mA$$
$$I_E  = (\beta +1) I_B = 1.45 mA$$
Solve voltages using currents

$$V_E = 12- 2kI_E \Rightarrow V_E = 9.08V$$
Solve voltages using constraints

$$V_{EC} = V_E -V_C =2V$$
$$V_C = 7.08V$$
Solve for missing resistance

$$\boxed{R_C = \frac{V_C-0}{I_C} = 4.9k \Omega}$$

## Question 4: Double Transistor Problem

```ad-question
For the circuit shown below, find $V_B$ and $V_E$ for $V_i = 0, =+2V, =-5V$. The BJTs have $\beta 50$
```

![[Electronics - Week 14 Day 3 2024-05-03 13.37.44.excalidraw]]

### When $V_i=0V$ 

#### Check $Q_1$ for cutoff

$$I_{B_1} = I_{E_1} = 0$$
$$V_B=0, V_{E} =0$$
$$V_{BE}=0$$
It IS in cutoff since both $V_B$ and $V_E$ would be zero, which would make $V_{BE} < 0$

#### Check $Q_2$ for cutoff

$$I_{B_2} = I_{E_2}=0$$
$$V_B = 0, V_E=0$$
It is OFF!

### When $V_i = 2V$

#### Check $Q_1$ for cutoff

$$V_B = 2v, V_E = 0$$
$$V_{BE} = 2-0 = 2 \rightarrow \mbox{ON!}$$
### Check $Q_2$ for cutoff

$$V_B = 2V, V_E = 0$$
$$V_{EB}=0-2=-2 \rightarrow \mbox{OFF}$$
#### Assume $Q_1$ is in Active

***Simplify Circuit:*** We are assuming that the other circuit is an open circuit since it is OFF

![[Electronics - Week 14 Day 3 2024-05-03 13.49.09.excalidraw]]



$$V_{EB} = 0.7$$
