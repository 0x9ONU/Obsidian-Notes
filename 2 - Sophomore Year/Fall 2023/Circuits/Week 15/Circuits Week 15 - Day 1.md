Date: 4th December 2023
Date Modified: 4th December 2023
File Folder: Week 15
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Transistors Day 2

```

# BJTs Day 2

![[Circuits Week 15 - Day 1 2023-12-04 11.07.38.excalidraw]]

```ad-important
$$I_E = I_B + I_C$$
```


## BJTs Voltage Rules

1. When a voltage has a single subscript such as $V_E \rightarrow$ voltage between node E and ground.
2. When a voltage ahs double subscripts such as $V_{BE} \rightarrow$ voltage between B and E
3. When a voltage has a double subscripts with the same letters such as $V_{cc} \rightarrow$ voltage is a supply voltage (source)

![[Circuits Week 15 - Day 1 2023-12-04 11.16.45.excalidraw]]

## Modes of Operation

1. Active Mode

A transistor is a linear device ONLY at the active mode

```ad-important
$h_{FE} = \beta = \frac{I_C}{I_B}$ DC Current Gain aka. HFE = hybrid paramter forward gain
$$\therefore I_C = \beta I_B$$
```

2. Saturation Mode

3. Cut-off Mode

![[Circuits Week 15 - Day 1 2023-12-04 11.19.20.excalidraw]]

## Transistor Circuit Analysis Day 2

```ad-question
Find the unknown voltages and currents in the BJT circuit shown. Assume $\beta - 30$
![[Circuits Week 15 - Day 1 2023-12-04 11.30.28.excalidraw]]
```


**This if PNP**

1. Assume active mode

2. Enforce the equality conditions for the mode:
$$V_{EB} = 0.7 V$$
3. Use Loop Analysis

**EB Loop:**

$$-5 + 2I_E +V_{EB} = 0$$
$$-5 + 2I_E +0.7 = 0$$
$$I_E = 2.15 mA \space Equation \space 1$$
**EC Loop**

$$-5 +2I_E + V_{EC} + 3.6I_C -5 = 0$$
$$2I_E + 3.6I_C +V_{EC} = 10 \space Equation \space 2$$

**BC Loop:**

$$V_{BC} = 3.6I_C -5 = 0 \space Equation \space 3$$

**and**

$$I_B+I_C-I_E = 0 \space Equaiton \space 4$$
$$I_C = \beta I_B$$
$$30I_B - I_C = 0 \space Equation \space 5$$
**Use Matrix**

$$\begin{bmatrix} I_B \\ I_C \\ V_{BC} \\ V_{BC} \\ V_{EC}\end{bmatrix} = \begin{bmatrix} 0 & 0 & 2 & 0 & 0 \\ 0 & 3.6 & 2 & 0 & 1 \\ 1 & 1 & -1 & 0 & 0 \\ 30 & -1 & 0 & 0 & 0\end{bmatrix} \begin{bmatrix} 4.3 \\ 10 \\ 5 \\ 0 \\ 0\end{bmatrix}$$

4. Check Conditions

$$V_{EC} > 0.3 \rightarrow violation$$
$$V_{BC} > 0 \rightarrow violation$$

NOT IN ACTIVE MODE

5. Redo For Saturation Mode 

6. Enforce:

$$V_{BE} = 0.7V \space \& \space V_{CE} = 0.2 V$$
7. Use Loop Analysis and Solve for Values

$$I_B = 0.62 mA$$
$$I_C = 1.63 mA$$
$$I_E = 2.15 mA$$
$$V_{BC} = -0.5V$$

8. Check Conditions
$$I_C < \beta I_B$$

Transistor is on Saturation Mode