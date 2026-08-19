0\\Date: 29th November 2023
Date Modified: 29th November 2023
File Folder: Week 14
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Semiconductor Devices:
	- Diode

```

# Semiconductor Devices

## Diodes

```ad-summary
title: Definition
A two-terminal device that allows the flow of electric current in only one direction.
```

![[Circuits Week 14 - Day 2 2023-11-29 11.06.38.excalidraw]]

The diode conducts **only** when the voltage on the anode is higher than the voltage of the cathode, meaning the current is flowing from the anode to the cathode:

$$V_{anode} > V_{cathode} \Rightarrow V_{A} > V_{K}$$
### Diode Types


1. Ideal diode
![[Circuits Week 14 - Day 2 2023-11-29 11.13.02.excalidraw]]
2. Practical Diode
![[Circuits Week 14 - Day 2 2023-11-29 11.16.11.excalidraw]]

### Determination of the Current, Voltage, and Conduction State of Diodes
1. Assume a conduction state for each diode in the circuit (ON or OFF) base don your estimate.
- ex. Diode 1 and 2 may be on or off. Assume any combination of them (ON & ON, ON & OFF, OFF & ON, OFF & OFF)

2. Replace each diode with the equivalent model based on its assumed conduction state.
 - If ON: Replace it with a short circuit in series with a voltage source  $V_k$  $$V_k= 0 \rightarrow ideal$$$$V_k = 0.7V \rightarrow silicon$$
$$V_k = 0.3V \rightarrow Germanium$$
 - If OFF: Replace it with an open circuit and enforce $I_D = 0$
3. Analyze the circuit using any method to determine the current $I_D$ if assumed ON **or** the voltage $V_D$ if assumed OFF

4. Check the diode conduction state assumptions based on the results from *step 3*. 
- If ON, $I_D \ge 0$, if $I_D< 0$, then change the assumption.
- If OFF, $V_D < V_k$, if $V_D \ge V_k$, then change the assumption

5. If any conduction state is incorrect, repeat *steps 2-5* until no violation exists.

### Example

```ad-question
Determine the loop currents in the circuit:
- Assume diode 1 is made of silicon
- Diode 2 is made of germanium

![[Circuits Week 14 - Day 2 2023-11-29 11.35.15.excalidraw]]

```

**Step 1**: Assume that both diodes are on:

**Step 2:** Redraw the circuit with the diode models:

![[Circuits Week 14 - Day 2 2023-11-29 11.38.32.excalidraw]]

**Step 3:** Use any method (in this case Loop Analysis)

![[Circuits Week 14 - Day 2 2023-11-29 11.40.36.excalidraw]]

```ad-warning
Make sure the currents are going in the same direction of the diodes
```

Loop 1:

$$-12 + 2I_1 + 0.7 + 3(I_1-I_2) = 0$$
$$5I_1-3I-2 = 11.3 \space \space \space Equation \space 1$$

Loop 2:

$$3(I_2-I_1)-0.7+0.3+4I_2+9=0$$
$$-3I_1+7I_2=-8.6 \space \space \space Equation 2$$

Solve using Matrix:

$$\begin{bmatrix} I_1 \\ I_2 \end{bmatrix} = \begin{bmatrix} 2.05 mA \\ -0.35 mA\end{bmatrix}$$

$$\begin{bmatrix} I_1 \\ I_2 \end{bmatrix} = \begin{bmatrix} 5 & -3 \\ -3 & 7\end{bmatrix}^{-1}\begin{bmatrix} 11.3 \\ -8.6\end{bmatrix}$$

**Step 4:** Check Assumptions
- $I_{D_1} >0 \rightarrow$ Assumption is Correct
- $I_{D_2} < 0 \rightarrow$ Assumption is Incorrect

```ad-warning
Since a violation exists, repeat steps 2 - 5 until it is fixed. In this case, turn off diode 2
```

**Step 5:** REPEAT... Assuming the Diode 1 is still on BUT Diode 2 is off

![[Circuits Week 14 - Day 2 2023-11-29 11.47.20.excalidraw]]

Loop 1:

$$-12 + 2I_1 + 0.7 + 3I_1 = 0$$
$$5I_1 = 11.3 \Rightarrow I_1 = 2.26 mA$$

**Check for $V_d$

$$-3I_1-0.7+V_D+9 = 0$$
$$-3(2.26)-0.7+V_D+9 = 0$$
$$\Rightarrow V_D = -1.52 V$$

**Check Conditions**:
$$V_D < 0.3 V$$
$$V_D < V_k \space \& \space I_D > 0$$
$$\therefore I_1=2.26mA, I_2=0A$$


