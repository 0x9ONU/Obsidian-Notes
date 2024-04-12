Date: 27th March 2024
Date Modified: 27th March 2024
File Folder: Week 9
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# MOSFET (Metal Oxide Semiconductor Field Effect Transistor)

```ad-summary
A transistor can act as:
- Amplifing Device $\Rightarrow$ Amplifier
- Switch $\Rightarrow$ Logic Gates
```

**Two Main Types of Transistors**:
- Bipolar Junction Transistor (BJT)
- Field-Effect Transistor (FET) $\Rightarrow$ MOSFETs are the most common type

**Two Types of MOSFETs**
- NFET/NMOS
- PFET/PMOS

![[Electronics - Week 9 Day 2 2024-03-27 13.06.50.excalidraw]]

![[Electronics - Week 9 Day 2 2024-03-27 13.11.05.excalidraw]]

$$\mbox{Source} \leftarrow Drain$$

**When you connect voltage:



**Case 1: (Cutoff Region)** - $V_{GS} = 0, V_{DS} = 0$
$\Rightarrow$ MOSFET is in Cutoff. No voltage is connected, so *no current*.

![[Electronics - Week 9 Day 2 2024-03-27 13.20.29.excalidraw]]

**Case 2 (Action Region Begins): - $V_{GS}>0$, $V_{DS} = 0$**
$\Rightarrow$ Minority electrons within the p-type semi-conductor are attracted to the region beneath the gate
If $V_{GS}$ is increased, a channel is created, but since there is not a voltage at the drain, there is no current

![[Electronics - Week 9 Day 2 2024-03-27 13.24.33.excalidraw]]

**Case 3 (Active Region Increases): Increase $V_{DS}>0$**
$I_D$ (drain current) will happen to flow as a channel has more electrons going into it
Linear/Ohmic increase

**Case 4 (Saturation Region): When $V_{GS} > V_T$**
Boundary Condition; $V_{DS} \ge V_{GS}-V_T$
The channel is completely pinched off, which results with $I_D$ being a **constant** current.
Any farther increases in $V_{DS}$, $I_D$ will not change.

![[Electronics - Week 9 Day 2 2024-03-27 13.32.57.excalidraw]]

## Graph of IV-Drain

![[Electronics - Week 9 Day 2 2024-03-27 13.38.41.excalidraw]]

