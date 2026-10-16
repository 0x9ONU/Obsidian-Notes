---
creation_date: 2026-09-28 12:09
last_modified: 2026-09-28 12:09
folder: 3 - Cell Timing
tags:
  - type/lecture
  - field/VLSI
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```
## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Elmore Day 2

### Delay Components

Delay has two primary parts:
1. **Parasitic Delay**
	- INtrinsic/Internal Delay
	- **Independent** of the load
2. **Effort Delay**
	- External Delay
	- Linearly proportional to the load capacitance

### Best-Case (Contamination) Delay

Typically much less than the propagation delay

```ad-example
![[Pasted image 20260928125826.png]]
(111)->(000) makes sure that no internal capacitances are given on the NMOS, and that the internal resistances of the PMOS are placed in parallel.
```

```ad-important
Important when designing a clock for a circuit. By not considering the best-case delay, you can run into race problems with your chosen clock.
```

## Clocking Introduction

### Synchronous Sequential Circuits

![[Pasted image 20260928132420.png]]

**Different Paths for SSCs**:
1. FF Output →FF Input
2. Primary Input → FF Input
3. FF Output → Primary Output
4. Primary Input → Primary Output

#### Huffman Model

```ad-summary
THe general model used for combining combinational logic and sequential circuits
- A group of combinational logic is connected to a bunch of state registers, which 
- On each clock cycle, the state is outputted and becomes the present state and the inputs for the combinational circuit.
- The combinational logic is driven by the primary input and the present state from the combinational logic.
- Outputs from the combinational logic drive the next state and go to the state regsiter
```

![[Pasted image 20260928132927.png]]

#### Four Types of Storage

**Positive** Level-Sensitive **Latch**

![[Pasted image 20260928133041.png]]

*Negative* Level-Sensitive **Latch**

![[Pasted image 20260928133051.png]]

**Positive** Edge-Triggered **Flip-Flop**

![[Pasted image 20260928133100.png]]

*Negative* Edge-Triggered **Flip-Flop**

![[Pasted image 20260928133109.png]]

### Clocking Constraints with Level-Sensitive Latches

![[Pasted image 20260928133434.png]]

- $D_{min}$: min delay of the combinational logic
- $D_{max}$: max delay of the combinational logic
- $d_{min}$: min delay of the latches
- $d_{max}$: max delay of the latches

![[Pasted image 20260928133529.png]]

**Critical Constraints**

| Constraint                      | Reason                                                                           |
| ------------------------------- | -------------------------------------------------------------------------------- |
| $T_{on}>d_{max}$                | Latch output must settle while the latch is transparent                          |
| $T_{on}<d_{min}+D_{min}$        | Prevents *race-through*: the data must not go around the loop twice in one pulse |
| $T_{off}>D_{max}$               | Combinational logic must finish before the next pulse                            |
| $T_{off}<\text{Refresh Period}$ | Dynamic nodes (if any) must not leak                                             |

$$
d_{max}<T_{on}<(d_{min}+D_{min}) \text{ AND } D_{max}<T_{off} < \text{Ref. Period}
$$

```ad-warning
This is a double-sided constraint. Often, we will see that the second constraint, in particular, is very difficult to satisfy properly. 
```


## Quiz Questions

### Elmore 4

Review Questions found within quiz itself!

### Elmore 5-8

```ad-question
Assume $4C$ capacitance at $g$ and $4C$ capacitance at $h$. Assume $8C$ diffusion cap at $f$. Assume $C$ gate cap per unit width and $R$ resistance per 1 unit width of NMOS and 2 units per PMOS.
1. Find input sequence for worst-case fall
2. Find the worst-case fall time constant
3. Find the best-case rise time cosntant
4. Find the best case fall time constant
```


$$
f = \overline{A \times(B+C)}
$$

![[Pasted image 20260928130745.png]]


#### Elmore 5

*Worst Case Rise*
- (110)→(100)
- Discharges all the capacitors and then charges them again

```ad-warning
Be aware, $h$ is discharging via a NMOS transistor, it will fully discharge. HOWEVER, $g$ will reach $V_{th}$ of the PMOS transistor. In this case, it will be $0.7V$. This does not affect our timings; however.
```

![[Pasted image 20260928131414.png]]


$$
t_{r}=4C\left( \frac{R}{2} \right)+8CR+4CR
$$

$$
t_{r}=14RC
$$

*Worst Case Fall*
- (100)→(110)
- Charge all the capacitors on the path, and then make sure they can be discharged

![[Lecture 11 - Elmore + Clocking 2026-09-28 14.05.14.excalidraw]]


$$
t_{f}=\tau_{h}+\tau_{f}+\tau_{g}
$$
$$
t_{f}= 4C\left( \frac{R}{2} \right)+8C\left( \frac{R}{2}+\frac{R}{2} \right)+4C\left( \frac{R}{2}+ \frac{R}{2}\right)
$$

$$
t_{f}=2RC+8RC+4RC
$$

$$
\boxed{t_{f}=14RC}
$$

#### Elmore 7

WRONG GO OVER THIS #comebacklater 
- [ ] Fix Elmore 7 📅 2026-10-01 
The best case rise vector would be: (110)→(011)
- The g-cap is discharged, but, it will be closed off when B and C switch off 
- We unfortunately cannot avoid the h cap

![[Lecture 11 - Elmore + Clocking 2026-09-28 14.23.39.excalidraw]]


$$
t_{r}=8C\left( R \right)+4C\left( R \right)
$$

$$
t_{r}=8RC+4RC
$$

$$
\boxed{t_{r}=12RC}
$$
#### Elmore 8


WRONG GO OVER THIS #comebacklater 
- [ ] Fix Elmore 8 📅 2026-10-01 

The best case fall vector would be: (011)→(101)
- The bottom capacitor would not be charged and will not discharge during the fall time
- On the other hand, the top capacitor will charge, but it will not be part of the circuit and will not affect the discharge

![[Lecture 11 - Elmore + Clocking 2026-09-28 14.30.38.excalidraw]]


$$
t_{f}=8C\left( \frac{R}{2}+\frac{R}{2} \right)
$$

$$
\boxed{t_{f}=8RC}
$$
# 3. Action Items & Follow-Up
- [x] Review Lecture 11 for VLSI 📅 2026-09-30 ✅ 2026-09-30
- [x] Quiz [[Lecture 11 - Elmore + Clocking#Elmore 4| Elmore 4]] ⏫ 📅 2026-09-30 ✅ 2026-09-29
- [x] Quiz [[Lecture 11 - Elmore + Clocking#Elmore 5-8| Elmore 5]] ⏫ 📅 2026-09-30 ✅ 2026-09-29
- [x] Quiz [[Lecture 11 - Elmore + Clocking#Elmore 5-8| Elmore 6]] ⏫ 📅 2026-09-30 ✅ 2026-09-29
- [x] Quiz [[Lecture 11 - Elmore + Clocking#Elmore 5-8| Elmore 7]] ⏫ 📅 2026-09-30 ✅ 2026-09-30
- [x] Quiz [[Lecture 11 - Elmore + Clocking#Elmore 5-8| Elmore 8]] ⏫ 📅 2026-09-30 ✅ 2026-09-30


