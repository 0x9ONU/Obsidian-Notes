Date: 27th November 2023
Date Modified: 27th November 2023
File Folder: Week 14
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Transformers

```

# Ideal Transformers

A device that changes the levels of voltage from one circuit to another at **the same frequency**
- 100% efficiency
- Input power = output power

```ad-note
Input frequency = Output Frequency:
- $60Hz \rightarrow 60Hz$
```

## Constructions (Types)

1. Core Type

![[Drawing 2023-11-27 11.08.31.excalidraw]]

Primary and secondary are on different branches
2. Shell Type

![[Drawing 2023-11-27 11.09.40.excalidraw]]

Primary and secondary are on the same branch

```ad-important
Both types are made out of laminated sheets in order to reduce the eddy current, which is a power loss
```

## Transformer in Standard Drawing

![[Drawing 2023-11-27 11.13.39.excalidraw]]

```ad-summary
The primary is connected to the source and the seocndary is connected to the load
```

**TURN RATIO**
$$v_1 = N_1\frac{d\phi}{dt} \Rightarrow \frac{d\phi}{dt}=\frac{V_1}{N_1}$$
$$v_2 = N_2\frac{d\phi}{dt} \Rightarrow \frac{d\phi}{dt}=\frac{V_2}{N_2}$$

$$\Rightarrow \frac{v_1}{n_1}= \frac{v_2}{n_2}$$
$$\frac{v_2^\sim}{V_1^\sim}=\frac{N_2}{N_1}=n \space \space \space Equation \space 1$$

Since the ideal transformer has an efficiency of 100%:

$$\Rightarrow S_1^\sim = S_2^\sim$$
$$V_1^\sim(I^\sim_1)^\star=V_2^\sim(I^\sim_2)^\star$$
$$\Rightarrow \frac{I^\sim_1}{I^\sim_2}=\frac{N_2}{N_1}=n \space \space \space Equation \space 2$$

```ad-example
- ![[Drawing 2023-11-27 11.20.19.excalidraw]]
```

```ad-important
**Step Down**:
![[Drawing 2023-11-27 11.22.16.excalidraw]]
**Step Up**:
![[Drawing 2023-11-27 11.23.55.excalidraw]]
```

## Dot Convention

![[Drawing 2023-11-27 11.27.01.excalidraw]]

**Check for voltages**:
- If both $V_1^\sim$ and $V_2^\sim$ are **both** positive or **both** are negative at the dots, then use $+n$ in Equation 1
- Otherwise, use $-n$

**Check for currents**:
- If both currents are entering into the dots or both are leaving the dots, use $-n$ in Equation 2
- Otherwise, use $+n$

### Example

![[Drawing 2023-11-27 11.33.31.excalidraw]]

$$\frac{v_2^\sim}{v_1^\sim}=-n$$
$$\frac{I_1^\sim}{I_2^\sim}=+n$$
## Examples

```ad-question
Find $I_1^\sim, I_2^\sim, V_1^\sim, V_2^\sim$
```

![[Drawing 2023-11-27 11.36.41.excalidraw]]

**Use Loop Analysis:**

Loop 1:

$$-120\angle 0 \degree + (6-j10)I_1^\sim+V_1^\sim=0$$
$$(6-j10)I_1^\sim+V_1^\sim=120\angle 0 \degree \space \space \space Equation \space 1$$

Loop 2:

$$-V_2^\sim + (15+j30)I_2^\sim=0$$
$$(15+j30)I_2^\sim-V_2^\sim = 0 \space \space \space Equation \space 2$$

**Use Transformer Loop Relations**

Voltage:
$$\frac{V_2^\sim}{V_1^\sim} = n$$
$$\frac{V_2^\sim}{V_1^\sim}=2$$
$$2V_1^\sim-V_2^\sim = 0 \space \space \space Equation \space 3 $$

Current:

$$\frac{I_1^\sim}{I_2^\sim} = n$$
$$\frac{I_1^\sim}{I_2^\sim} = 2$$
$$I_1^\sim-I^\sim_2=0 \space \space \space Equation \space 4$$

**Create Matrix**

$$\begin{bmatrix} I_1 \\ I_2 \\ V_1 \\ V_2\end{bmatrix} = \begin{bmatrix} 6-j15 & 0 & 1 & 0 \\ 0 & 15+j30 & 0 &-1 \\ 0 & 0 & 2 & -1 \\ 1 & -2 & 0 & 0 \end{bmatrix}^{-1} \begin{bmatrix} 120 \angle 0 \degree \\ 0 \\ 0 \\ 0\end{bmatrix}$$

**Solve:**

$$I_1^\sim = 11.92 \angle 14.37 \degree A$$
$$I_2^\sim = 5.96 \angle 14.37 \degree A$$
$$V_1^\sim = 99.97 \angle 77.82 \degree V$$
$$V_2^\sim = 199.93 \angle 77.81 \degree V$$

