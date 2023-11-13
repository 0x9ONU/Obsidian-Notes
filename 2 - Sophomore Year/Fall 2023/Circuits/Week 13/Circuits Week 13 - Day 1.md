Date: 13th November 2023
Date Modified: 13th November 2023
File Folder: Week 13
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Maximum Power Transfer in AC Circuits

```

# Maximum Power Transfer in AC Circuits

![[Drawing 2023-11-13 11.03.39.excalidraw]]

**For Max Power:**

$$Z_L = Z_{Th}^\star$$

**For Phasor**
$$P_{max} = \frac{V_{th}^2}{8R_{th}}$$
**For RMS:**
$$P_{max} = \frac{V_{th}^2}{4R_{th}}$$
```ad-note
$V_{th}$ is the magnitude of the phasor $\textbf{V}_{th}$
```

## Example 1

```ad-question
Find the value of $Z_L$ for max. power
```

![[Drawing 2023-11-13 11.10.50.excalidraw]]

### Step: 1 Draw with Terminals over $Z_L$

![[Drawing 2023-11-13 11.13.34.excalidraw]]

### Step 2: Find $V_th$ using nodal:

Node 1:

$$\frac{V_{th}-12 \angle 0 \degree}{2} + \frac{V_{th}-2I_x}{-j2}$$
$$(0.5+j0.5)V_{th}-jI_x=6 \angle 0 \degree$$

*and* equation for $I_x$

$$I_x = \frac{12\angle 0\degree-V_{th}}{2}$$
$$V_{th}+2I_x = 12 \angle 0 \degree$$

Write and Solve Matrix:

$$\begin{bmatrix}V_{th} \\ I_x\end{bmatrix} = \begin{bmatrix} 0.5+j0.5 & -j \\ 1 & 2\end{bmatrix}^{-1} \begin{bmatrix}6 \angle 0 \degree \\ 12 \angle 0 \degree \end{bmatrix}$$

$$V_{th}= 7.2-j2.4 \Rightarrow V_{th} = 7.59 \angle -18.43 \degree$$

### Step 3: Find $Z_{th}$ Using $I_{sc}$ Method

![[Drawing 2023-11-13 11.28.05.excalidraw]]

**Loop 1:**

$$-12 \angle 0 \degree + 2I_1 +j1(I_1-I_2)=0$$
$$(2+j1)I_1-j1I_2=12\Rightarrow \odot1$$

**Loop 2:**

$$j1(I_2-I_1) -j2I_2+2I_x=0$$
$$-jI_1-jI_2+2Ix=0 \Rightarrow \odot 2$$

*and*:

$$I_x=I_1$$
$$I_1-I_x = 0 \Rightarrow \odot 3$$

**Plugin into Matrix and Solve**

$$\begin{bmatrix}I_1 \\ I_2 \\ I_x\end{bmatrix} = \begin{bmatrix} 2-j1 & -j & 0\\ -j & -j & 2 \\ 1 & 0 & -1\end{bmatrix}^{-1} \begin{bmatrix}12 \angle 0 \degree \\ 0 \\ 0 \end{bmatrix}$$
$$\begin{bmatrix}I_1 \\ I_2 \\ I_x\end{bmatrix} = \begin{bmatrix} -j6 \\ -12 +j6 \\ -j6 \end{bmatrix}$$

**Solve for $I_{sc}$
$$I_{sc}=I_1-I_2$$
$$=-j6 -(-12+j6)$$
$$=12-j12 \Rightarrow 16.97 \angle -45 \degree$$

### Find $Z_{th}$

$$Z_{th} = \frac{V_{th}}{I_{sc}}$$
$$=\frac{7.59 \angle -18.43 \degree}{16.97 \angle -45 \degree}$$
$$=0.45 \angle 26.57 \degree$$
$$Z_{th} = 0.4 + j0.2 \Omega$$

### Find $Z_L$
$$Z_L=Z_{th}^\star$$
$$Z_L = 0.4 -j0.2 \Omega$$
### Find Max Power

$$P_{max} = \frac{V_{th}^2}{8R_{th}}$$
$$P_{max} = \frac{7.59}{8(0.4)}$$
$$P_{max} = 2.37 W$$

## Example 2

```ad-question
Find $Z_L$ for max. power

```

![[Drawing 2023-11-13 11.42.44.excalidraw]]

```ad-warning
Because there are no dependent sources, you can take a shortcut and just find $Z_L$ by shorting the voltage and opening the currents
```

![[Drawing 2023-11-13 11.46.06.excalidraw]]

$$Z_{th} = (2 // j1)+6$$
$$=\frac{2(j1)}{2+j1} +6 \Rightarrow Z_{th}=6.4 + j0.8 \Omega$$
$$Z_L = Z_{th}^\star$$
$$Z_L=6.4-j0.8 \Omega$$






