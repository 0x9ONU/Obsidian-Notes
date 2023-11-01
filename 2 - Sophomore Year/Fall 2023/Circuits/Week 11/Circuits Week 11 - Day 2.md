Date: 1st November 2023
Date Modified: 1st November 2023
File Folder: Week 11
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Thevinin Equiv. and Thereom in AC

```

# Thevenin's Theorem

#comebacklater ex. 1

**Find $V_{Th}$ by finding the voltage at the open terminals**

**Find $Z_{Th}$ by using either**:
- Reduction Method
- Finding Short Circuit and using: $$Z_{Th} = \frac{V_{Th}}{I_{sc}}$$
## Maximum Power

$$Z_L = Z_{Th}\star$$
## Examples

### Example 1:

```ad-question
Determine the Thevenin's equivalent circuit at the temrinals $a-b$
```

#comebacklater ex. 2

**Thevenin's equivalent circuit consists of two elements:
- A Voltage Source ($V_{Th}$)
- An impedance ($Z_{Th}$)

**Find $V_{Th}$ using Simplification

$$V_1 = 10 (2 \angle 0 \degree) = 20 \angle 0 \degree V$$
$$V_{Th} = 3V_1 + V_1$$
$$V_{Th} = 4(20 \angle 0 \degree)$$
$$V_{Th} = 80 \angle 0 \degree V$$

**Find $I_{sc}$ Using Loop Analysis**

#comebacklater ex. 3

Loop 1:
$$I_1 = 2 \angle 0 \degree A$$
Loop 2:
$$10(I_2-I_1) - 3V_1+j10I_2 = 0$$
$$-10I_1+(10+j10)I_2 -3V_1 = 0$$
*and*

$$V_1 = 10(I_1-I_2)$$
$$10I_1 - 10I_2 - V_1 = 0$$
Plug into matrix:

$$\begin{bmatrix} I_1 \\ I_2 \\ V_1 \end{bmatrix} = \begin{bmatrix} 1 & 0 & 0 \\ -10 & 10 + j10 & -3 \\10 & -10 & -1\end{bmatrix}^{-1} \begin{bmatrix} 2 \\ 0 \\ 0\end{bmatrix}$$
$$I_1 = 2 \angle 0 \degree$$
$$I_2 = 1.94 \angle -14.03 \degree$$

$$I_{sc} = I_2 = 1.94 \angle -14.03 \degree$$

**Find $Z_{Th}$:

$$Z_{Th} = \frac{V_{Th}}{I_{sc}}$$
$$=\frac{80 \angle 0 \degree}{1.94 \angle - 14.03 \degree}$$
$$=40 + j10 \Omega$$

**Draw Final Circuit**

#comebacklater ex. 4

