---
creation_date: 2026-10-26 12:10
last_modified: 2026-10-26 12:10
folder: 4 - Verilog HDL
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

## Introduction

```ad-summary
Unlike when we assumed there is a pull-up network, we will be computing with stored charge instead!
```

- In the previous class, we discussed how bidirectional logic and charge sharing with t-gates had problems due to dynamic logic
- Today, we will discuss 

### The Dynamic NAND Gate

![[Pasted image 20261026122426.png]]

**Precharge Transistor**: Connects $f$ to $V_{DD}$ when the clock is low
- *Unconditionally* charged high with $V_{DD}$

**Evaluation Transistor**: Connects $f$ to the PDN when the clock is high
- *Conditionally* grounded

**PDN**: NMOS A and B are in series to implement the NAND gate.

**Output Capacitance $C$**:

**Clock $\phi$**:
- When the clock is *low*: The output is directly connected to VDD (aka. Logic 1) $f = V_{DD}$. P-transistor is on. **Unconditional connection**
	- Also known as the **pre-charge** phase
- When the clock is *high*: The output is connected to the PDN, so this is a **conditional discharge**. $f = A\times B \times GND$
	- Also known as the **evaluation phase**


| $A$ | $B$ | $f$                      |
| --- | --- | ------------------------ |
| 0   | 0   | $V_{DD}$ (floating/weak) |
| 0   | 1   | $V_{DD}$(floating/weak)  |
| 1   | 0   | $V_{DD}$ (floating/weak) |
| 1   | 1   | 0 (*Strong*)             |

```ad-note
- Implements the NAND funciton with a weak high when clock is on.
- Keeps it so there is no short as well due to its two phases.
```

```ad-important
This is a dynamic gate because the output could be left floating during its steady (evaluation) state. 
```

### Strong and Weak Output Values

![[Pasted image 20261026123824.png]]

**Strong (Driven)**: A conducting path of transistors ties $f$ to $V_{DD}$ or to ground. Low impedance: any disterbance is corrected

**Weak (Floating)**: No path conducts. $f$ has a high impedance. Its value is only the charge stored on $C$.
- Leakage, charge sharing and coupling noise can all erode it.

### The Input Timing Rule

```ad-warning
Inputs may change during precharge. They must stay stable during evaluation
```

- If not, nothing can pull $f$ back up during evaluation. Charge that leave $C$ is gone until the next precharge.

```ad-example
If a glitch happens on $A$ and $B$ is 1. $A$ pulses high fro a moment. The gate should settle at $1$, but the pulse has already discharged $f$
```

![[Pasted image 20261026124107.png]]

## General Dynamic Gate

![[Pasted image 20261026124641.png]]

**P: Precharge**: The value $f$ is charged high until it is ready to be evaluated

**E: Evaluation**: Either stays high if PDN is not true, or goes low if the PDN is true

**PDN**: Implemented using standard static NMOS logic.
- $I$ *must be stable* during evaluation ($\phi = 1$)

## Comparing Static CMOS and Dynamic Gate

![[Pasted image 20261026125026.png]]

- $2n$ transistors VS. $n + 2$ transistors


| $n$ | Static | Dynamic | *Saved* |
| --- | ------ | ------- | ------- |
| 2   | 4      | 4       | 0       |
| 3   | 6      | 5       | 1       |
| 4   | 8      | 6       | 2       |
| 8   | 18     | 10      | 6       |

```ad-important
For 3-input gates and further, transistors are saved with dynamic gates as $n$ grows.
- Each input also drives one NMOS gate instead of an NMOS and PMOS pair, which means there is less load on the driver.
```

*Downside*: clocks need to be run to each gate with all the downsides of clocking added
- Glitching
- Clock Skewing causing issues with setup/hold

### Pros and Cons of Dynamic Gates

| Pros                                                                                                                                                                   | Cons                              |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| *Smaller Area*: $n+2$ transistors intead of $2n$ (no PUN)                                                                                                              | Clock distirbution and generation |
| *Lower power?* (less capacitance and less switching time), but $f$ being precharged every cycle, it could burn power due to the clock network                          | $f$ may float during evaluation   |
| *Higher performance?* Each input drives a single NMOS and $f$ starts to fall as soon as the inputs pass the NMOS threshold. But, the precharge phase does no computing |                                   |

## Cascading of Dynamic Gates

![[Pasted image 20261026130127.png]]

```ad-warning
When $f: 1 \to 0$, and $g$ was still discharging, $g$ will be stuck between a value of logic high or a logic low. We cannot read this value.
```

We **cannot** cascade dynamic gates like this because $f$ is not stable during evaluation. It makes them pretty difficult to use.

![[Pasted image 20261026130847.png]]

Both stages evaluate at the same time ($\phi = 1$)

## Fix Cascading Issue with Dynamic Gates
### Domino Gates

![[Pasted image 20261026131453.png]]

**$P$, Precharge**: $g$ is precharged high, so $f$ is *pre-discharged* low. ($f = 0$). 

**E, Evaluation**: $f = AB$

![[Pasted image 20261026132203.png]]

- $x$ and $y$ are pre-discharged to $0$
- The clock edge happens ($\phi: 0 \to 1$)
- When this happens, $f$ will charge from 0→1, but $g$ will stay at an *indeterminate* strong low (*due to the static inverter between $g$ and $y$*)

```ad-warning
If $y$ would go indeterminate, $g$ would also go intdeterminate, which still might be possible since $y$ is a weak low until the NMOS closes due to $f: 0 \to 1$
```

- It is not until $f: 0\to 1$ fully that $g$ will be held at a **determinate** strong logic low.

```ad-important
This means that the PDN cannot pre-maturely evaluate and domino gates *can* be cascaded.
```

![[Pasted image 20261026133329.png]]

```ad-danger

Domino logic can be implemented **ONLY IF** all gates are positive (AND, OR, etc.).This means that no inversion-based gates (such as NOR and NAND) can be implemented as a cascading domino dynamic gate.
```

#### Restructuring Logic for Domino Gates

```ad-summary
Take the original gate and use De Morgan’s on any inverted gates to turn them into their original version using inverters on the gates' inputs that are *not* cascaded from another gate.
```

![[Pasted image 20261026133814.png]]
![[Pasted image 20261026133819.png]]

![[Pasted image 20261026133832.png]]

### NP (Zipper) CMOS Design Style
#### Pre-Knowledge: P-type Type Dynamic Logic

```ad-note
Everything we hav done so far has evaluation on the n-type, and precharge on the p-type.
```

Instead, we will do evaluation on the P-type (logic high), and discharge during the **pre-discharge phase**

![[Pasted image 20261026134633.png]]

![[Pasted image 20261026134637.png]]

**Pre-Dishcarge**
- When the clock is *high* ($\phi = 1$)
- Also known as set-up
- The NMOS f=pulls $f$ to 0
- *Unconditional low*

**Evaluation**:
- When the clock is *low* ($\phi = 0$)
- $f$ rises to 1 only if the PUN conducts
- *Conditional high*

| $A$ | $B$ | $f$ | Strengh         |
| --- | --- | --- | --------------- |
| 0   | 0   | 1   | Strong          |
| 0   | 1   | 1   | Strong          |
| 1   | 0   | 1   | Strong          |
| 1   | 1   | 0   | Weak (floating) |

#### Basic Layout of Zipper Logic

![[Pasted image 20261026135130.png]]

## Quizes

### Dynamic Quiz 1

```ad-question
Design a dynamic logic gate that computes $f = \overline{(a + c) \times b}$
```

1. How many transistors are in the evaluation network?
	- 4 
2. What is the output after evaluation if $abc=011$
	- Output would be a strong low (GND)
3. What is the output after evaluation if $abc=101$
	1. The output would be a weak high (floating node with C)
4. What is the output if $abc$ changes from $011$ to $101$ during evaluation?
	- If $abc$ suddenly changes from 011 to 101 during evaluation, it would be an indeterminate form (between $V_{DD}$ and $GND$).

```ad-note
Q2 to Q4, give the lgoic value and say whether it is strong or weak.
```

![[Lecture 16 -  Dynamic Logic Introduction 2026-10-26 14.49.13.excalidraw]]

### Dynamic Quiz 2

```ad-question
Consider $f =\not A$ followed by $g = NOR(f,B)$ implemented as a dyanmic inverter driving a dyanmic NOR
```

Write the table for $g$ for various input vectors. For each row, give the value of $g$ and say whether it is strong, weak, or indeterminate.

![[Pasted image 20261026131328.png]]


| $A$ | $B$ | $g$                                             |
| --- | --- | ----------------------------------------------- |
| 0   | 0   | undeterminate form (between $V_{DD}$ and $GND$) |
| 0   | 1   | 0 (strong)                                      |
| 1   | 0   | 1 (weak)                                        |
| 1   | 1   | 0 (strong)                                      |

### Dynamic Quiz 3

```ad-question
Impelment the circuit using only domino gates. We must restructure the gates.

![[Pasted image 20261026134003.png]]
```

1. AND and OR only
2. Static inverters, where they are needed

![[Lecture 16 -  Dynamic Logic Introduction 2026-10-26 14.57.41.excalidraw]]
### Dynamic Quiz 4

```ad-question
Analyze the following domino circuit:

![[Pasted image 20261026134107.png]]
```

![[Pasted image 20261026134112.png]]

```ad-note

$f$ and $h$ are positive functions, each impelmented by a domino gate. All inverters are static inverters.
```

| $A$ | $B$ | $C$ | $f$ | $g$ | h   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0→0 | 1→1 | 0   |
| 0   | 0   | 1   | 0→0 | 1→1 | 0   |
| 1   | 1   | 0   | 0→1 | 1→0 | 1   |
| 1   | 1   | 1   | 0→1 | 1→0 | 1   |


# 3. Action Items & Follow-Up
- [ ] Review Lecture 16 for VLSI 📅 2026-10-28 
- [ ] HW4 for VLSI 📅 2026-11-03 ⏫ 
- [ ] [[Lecture 16 -  Dynamic Logic Introduction#Dynamic Quiz 1|Dynamic Quiz 1]] for VLSI 📅 2026-11-02 ⏫ 
- [ ] [[Lecture 16 -  Dynamic Logic Introduction#Dynamic Quiz 2|Dynamic Quiz 2]] for VLSI 📅 2026-11-02 ⏫ 
- [ ] [[Lecture 16 -  Dynamic Logic Introduction#Dynamic Quiz 3|Dynamic Quiz 3]] for VLSI 📅 2026-11-02 ⏫ 
- [ ] [[Lecture 16 -  Dynamic Logic Introduction#Dynamic Quiz 4|Dynamic Quiz 4]] for VLSI 📅 2026-11-02 ⏫ 