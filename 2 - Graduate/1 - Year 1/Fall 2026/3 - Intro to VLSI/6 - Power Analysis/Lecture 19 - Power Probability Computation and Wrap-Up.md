---
creation_date: 2026-11-04 12:16
last_modified: 2026-11-04 12:16
folder: 6 - Power Analysis
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

## Probability Computation and Power Draw

### No-Fanouts with Independent Inputs

```ad-summary
Given the probabilities of each input (in this case $A \to D$), you can compute the probabilities of each node through the circuit ($E \to G$)
```

**Assumptions**:
1. Equally likely to be 0 or 1
2. Inputs are *independent* of each other

![[Pasted image 20261104122831.png]]

![[Pasted image 20261104123822.png]]

Transition probability of node $G$:


$$
P_{G}^{0 \to 1} = P_{G}^0 \times P_{G}^1 = \frac{3}{32} \times \frac{29}{32}
$$
*Power Draw of Node $G$*:


$$
V_{DD}^2 f C_{G} \times P_{G}^{0 \to 1}
$$

**Power Draw of All Nodes**:

![[Pasted image 20261104124012.png]]

```ad-warning
Be careful of NOTed inputs, as their outputs will be the *reverse* probability.
Ex. $P_F^1 = (\frac{1}{2}\times\frac{1}{4})^{-1} = \frac{7}{8}$
```

#### Probability Expressions for Basic Gates


| Gate     | Probability                                     |
| -------- | ----------------------------------------------- |
| Inverter | $P_{B}^1=1-P_{A}^1$                             |
| AND      | $P_{C}^1=P_{A}^1 \times P_{B}^1$                |
| OR       | $P_C^1 = 1-(1-P_{A}^1)\times(1-P_{B}^1)$        |
| XOR      | $P_{C}^1=P_{A}^1(1-P_{B}^1)+(1-P_{A}^1)P_{B}^1$ |

```ad-note
For the N- gates, just be aware there is another inverter at the end
```

#### Probability Expressions for the OR gate

**Truth Table**

| $A$ | $B$ | $C$ | Probability                                            |
| --- | --- | --- | ------------------------------------------------------ |
| 0   | 0   | 0   | $P_{C}^0=P_{A}^0P_{B}^0$                               |
| 0   | 1   | 1   | $P_{C}^1=P_{A}^0P_{B}^1+P_{A}^1P_{B}^0+P_{A}^1P_{B}^1$ |
| 1   | 0   | 1   | $P_{C}^1=P_{A}^0P_{B}^1+P_{A}^1P_{B}^0+P_{A}^1P_{B}^1$ |
| 1   | 1   | 1   | $P_{C}^1=P_{A}^0P_{B}^1+P_{A}^1P_{B}^0+P_{A}^1P_{B}^1$ |

$$
P_{C}^0 + P_{C}^1=1
$$

```ad-note
^^^ This can be proven by subbing each value as seen above, where their factors will combine to make $1 \times 1=1$. See the notes for more info
```

## Conditional Probabilities
### The Problem: Fanout Dependent Inputs

![[Pasted image 20261104125101.png]]

```ad-warning
$D$ and $E$ are not independt of each ohter, since they both depend on $B$
```

- This means that $P_{F}^1 \not = \frac{1}{16}$ as if they were independent
- We have to consider a **truth table** to figure out its probability
- We **cannot** rely on the general independent expressions here!

*Truth Table*

| $A$ | $B$ | $C$ | $F$ |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 0   | 0   |
| …   | …   | …   | …   |
| 1   | 1   | 1   | 1   |

Since this acts like a three-input NAND, we need to find $P_{A}^1 \times P_{B}^1 \times P_{C}^1$ since that is the only time when $F$ is high.

$$
P_{F}^1 = P_{A}^1 \times P_{B}^1 \times P_{C}^1 = 3\left( \frac{1}{2} \right)=\frac{1}{8}
$$
### Handling Conditional Probabilities

- If $B = 0$ in the case above,  $P_{F}^1=0$ since it relies purely on $B$ to be high.
- If $B = 1$ in the case above, $P_{F}^1= \frac{1}{4}$ since it is being driven by two half probabilities from $P_{A}^1$ and $P_{B}^1$

$$
P_{F | B=0}^1 \times P_{B}^0 + P_{F|B=1}^1 \times P_{B}^1
$$

$$
P_{F}^1 = 0 \times \frac{1}{2} + \frac{1}{4} \times \frac{1}{2}
$$
$$
P_{F}^1 = \frac{1}{8}
$$

## Quizzes

### Power 1: Output Transition Probability

```ad-question
Givne the probabiity of a $1$ at each input, find the probability of a $1$ at the output $G$
```

![[Pasted image 20261104130857.png]]

### Power 2: Reconvergent Fanout

```ad-question
Find the probability of a 1 on the output $y$, given the input probabilities. Verify using a truth table.
```

![[Pasted image 20261104130929.png]]

### Power 3: Dynamic Power Computation

```ad-question
Assume the capactiance a each node is $10fF$ and he supply is $5V$. he inputs $a, b, c$ change from $011 \to 110$
1. Would $y$ draw energy? If so, how much?
2. What is the total energy drawn?
```

![[Pasted image 20261104131031.png]]

```ad-note
Any node that changes from $0 \to 1$ will draw energy.
```

### Quiz 4: Static Power Analysis

![[Pasted image 20261104131503.png]]

## Dynamic Gates Power Draw

![[Pasted image 20261104131535.png]]

- Power draw happens whenever the node $c$ goes from $0 \to 1$.
- This happens during the precharge state, and is dependent on if the output was dropped to 0 during the evaluate stage
- For a 0→0 transmission, this means that there is a power draw during the precharge cycle
- This is also true for the 0→1 transition

![[Pasted image 20261104132211.png]]

*For n-type dyanmic gate’s output*

| Previous Cycle | This Cycle | Draws power         |
| -------------- | ---------- | ------------------- |
| 1              | 1          | NO                  |
| 1              | 0          | NO                  |
| 0              | 1          | Yes ($P^{0 \to 1}$) |
| 0              | 0          | Yes ($P^{0 \to 0}$) |

```ad-note
$$
P^{0 \to 1}+ P^{0 \to 0} = P^0
$$
```

N-type dynamic Gate Output Power Draw:

$$
\boxed{E=C_{L, i} V_{DD}^2 f P_{i}^0}
$$
P-type dynamic Gates:

$$
\boxed{E = C_{L, i}V_{DD}^2f P_{i}^1}
$$


### Comparison with Static Gate

```ad-warning
Dynamic gates have a higher power draw when compared to static gates
```


$$
C_{L,i} V_{DD}^2 f P_{i}^{0\to 1} \rightarrow P_{i}^0P_{i}^1
$$
$$
\boxed{P_{i}^0 \gg P_{i}^0P_{i}^1}
$$
- That means that the dynamic gate will charge *more often* than the comparable static gate
- Also have to worry about the significant power draw from the clock network.

## Leakage Summary

![[Pasted image 20261104133541.png]]

**Four Main Mechanisms**:
1. **Junction**: Caused by the reverse-bias current through the drain-to-body junction
2. **Sub-threshold**: Caused by the drawin-to-soruce current that goes through the off channel.
3. **Gate**: Carries tunnel through the very thin gate oxide, which increases with the oxide thinnest.
4. **Gate-induced drain (GIDL)**: Tunneling at the drain edge under the gate, where the electric field is the highest. Flows from drain to body.

```ad-note
These are not all bad. Gate leakage and thinner gate oxide is directly connected to performance increases for the transistor.
```

### Magnitudes of Leakage

1. Subthreshold: largest 
2. Gate
3. GIDL
4. Junction: least

## Comparing Dynamic, Short-Circuit and Leakage Power

![[Pasted image 20261104133750.png]]

## Project Layout

1. Week 1: RTL design (.v) and constraints (.sdc)
2. Week 2: Logic Synthesis and Gate-Level Simulation (Genus and Xcelium)
3. Week 3: Layout synthesis

![[Pasted image 20261104134932.png]]

![[Pasted image 20261104135146.png]]
# 3. Action Items & Follow-Up
- [ ] [[Lecture 19 - Power Probability Computation and Wrap-Up#Power 1 Output Transition Probability|Power Quiz 1]] for VLSI 📅 2026-11-11 ⏫ 
- [ ] [[Lecture 19 - Power Probability Computation and Wrap-Up#Power 2 Reconvergent Fanout|Power Quiz 2]] for VLSI 📅 2026-11-11 ⏫ 
- [ ] [[Lecture 19 - Power Probability Computation and Wrap-Up#Power 3 Dynamic Power Computation|Power Quiz 3]] for VLSI 📅 2026-11-11 ⏫ 
- [ ] [[Lecture 19 - Power Probability Computation and Wrap-Up#Quiz 4 Static Power Analysis|Power Quiz 4]] for VLSI 📅 2026-11-11 ⏫ 