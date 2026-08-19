Date: 6th December 2023
Date Modified: 6th December 2023
File Folder: Week 15
#Circuits

```ad-summary
title: Problems for Final Exam
1. OP-AMP
2. RL-RC Circuit
3. Phasors & Sinusoid
4. Power Quantities & PF Correction
5. AC Max. Power Transfer (Special Thevinin's Case)
6. Transformer
7. Diode Circuit
8. Saturated Transistor
```

# OP-AMP

# RC-RL Circuit

# Phasors & Sinusoid

# Power Quantities & PF Correction

```ad-question
An impedance having a 120 $V_{rms}$ across it and a current flowing through it of $3 A_{rms}$ at 0.8 PF lagging. Find the following:
1. Average Power Absorbed by the Impedance
2. Reactive Power Absorbed by the Impedance
3. Apparant Power Absorbed by the Impedance
4. Complex Power Absorbed by the Impedance
5. Capacitance Required to raise the PF to unity
```

```ad-note
title: Remember
Complex Power gives all the quantities needed in a circuit
```

$$S^\sim = V^\sim_{rms}(I^\sim_{rms})^\star$$
$$V^\sim = 120 \angle 0 \degree V$$
$$\Theta = \cos^{-1} PF = 36.87 \degree$$
```ad-note
Current will be negative if voltage has an angle of 0 and it is **lagging**
```

$$\Rightarrow I^\sim_{rms} = 3 \angle - 36.87 \degree$$
$$S^\sim = 120 \angle 0 \degree (3 \angle 36.87 \degree)$$

**COMPLEX POWER**
$$=360 \angle 36.87 \degree$$

![[Circuits Final Review 2023-12-06 11.35.26.excalidraw]]

**Apparent Power**
$$S^\sim = 360 \angle 36.87 \degree $$
$$S = 360 VA$$

**Average Power & Reactive Power**

$$S^\sim= 288+j216 VA$$
$$P = 288W$$
$$Q = 216 VAR$$

**Power Correction**:

$$C = \frac{P(\tan \Theta_1 - \tan \Theta_2}{w V_{rms}^2}$$
$$C = \frac{288(\tan(36.87 \degree)-\tan(0 \degree)}{377(120)^2}$$
$$C = 39.79 \micro F$$
# AC Max. Power Transfer

```ad-question
14.15 - Find the maximum power transfered over $Z_L$ in the circuit shown
```

![[Circuits Final Review 2023-12-08 11.44.12.excalidraw]]
**Find $V^\sim_{Th}$
$$V^\sim_{Th} = 2I_x$$
*due to independent current source*
$$I_x^\sim = -2A\angle 0 \degree$$

$$V_{Th}^\sim = -4 V$$
**Find $I_{sc}$

![[Circuits Final Review 2023-12-08 11.49.04.excalidraw]]

**Use Loop Analysis**

*Loop 1*:

$$I_1^\sim = -2 \angle 0 \degree$$

*Loop 2:*
$$-2I_x + 13I_{sc}^\sim = 0$$
*substitute*
$$4+13I_{sc}^\sim = 0$$
$$I_{sc}^\sim = -0.31$$

**Find $R_{Th}$

$$R_{Th} = \frac{V_{Th}}{I_{sc}}$$
$$R_{Th} = \frac{-4}{-0.31} = 12.9 \Omega$$
**Solve for Max Power**

$$P_{max} = \frac{V_{Th}^2}{4 R_{Th}}$$
$$P_{max} = 0.31 W$$
# Transformer

```ad-question

```

![[Circuits Final Review 2023-12-08 11.08.20.excalidraw]]

**Use Loop Analysis**

*equation 4*
$$\frac{V^\sim_2}{V^\sim_1} = n \Rightarrow \frac{V^\sim_2}{V^\sim_1}=4$$
*equation 5*

$$\frac{I_1^\sim}{I_2^\sim}=+n=4$$
# Diode Circuit

# Statured Transistor


