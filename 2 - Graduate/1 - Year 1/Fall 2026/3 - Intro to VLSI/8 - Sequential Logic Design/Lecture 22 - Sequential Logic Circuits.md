---
creation_date: 2026-11-16 13:37
last_modified: 2026-11-16 13:37
folder: 8 - Sequential Logic Design
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

Sequential circuits are made of a combination of logic plus state
- Register holds the state, and the next state computed by the logic becomes the current state

**Two Stage Mechanisms**:
- Positive feedback
- Charge

![[Pasted image 20261118122558.png]]

### Latches

Some are level sensitive on the positive, while others trigger on the negative.

![[Pasted image 20261118122825.png]]

### Register vs. Latch Timing

Registers are edge-triggered, while latches are level-sensitive
- Registers have one delay: $T_{c-q}$ from the clock edge to $Q$
- Latches have **two timing arcs**: $T_{c-q}$ AND the delay from the input to the output ($t_{d-q}$)

![[Pasted image 20261118123121.png]]

## Latch-Based Design

- **N Latch** is transparent on $Clk = 0$
- **P Latch** is transparent on $CLK = 1$

![[Pasted image 20261118123252.png]]

## Building Latches from Muxes

```ad-summary

```

![[Pasted image 20261118123345.png]]

- Negative latches cause feedback when the clock is high
- Positive latches cause feedback when the clock is low

### From Transmission Gates

**Positive Latch**
![[Pasted image 20261118123703.png]]

The clock picks one of two paths into the storage node

## Master-Slave (Edge-Trigger Register)

![[Pasted image 20261118123734.png]]

Two opposite latches make an *edge*
- Mast (negative) open when CLK=0, while slave (positive) open while CLK = 1

**Result**: A positive-edge trigger register
- $Q$ takes the value $D$ had at the rising edge of CLK

### Setup Time, Hold Time, and Clock-to-Q Delay

![[Pasted image 20261118124051.png]]

- Set-up Time $t_{su}$: How long before the edge $D$ must be stable
- Hold Time: $t_{hold}$ how long the dge $D$ must stay stable
- Clock-to-Q: $t_{c-q}$Delay from edge until $Q$ is valid

### Using Transmission Gates

![[Pasted image 20261118124154.png]]

**Clock = 0**
- $T_{1}$ on the master follows $D$
- The feedback loop is closed
- $T_{4}$ on the slave holds $Q$

**Clock = 1**:
- $T_{2}$ on the master holds $Q_{M}$
- $T_{3}$ on $Q_{M}$ drives $Q$
- The feedback loop opens and holds $Q$

### Calculating Setup Time and Clock-to-Q Timing

![[Pasted image 20261118124427.png]]

- **Setup Time**: The time for $D$ to get back to the internal section of the latch
- **Clock-to-Q** Time for the input coming from the clock transmission gate to get to $Q$

$$
t_{su} = 3t_{pd_, inv}+t_{pd,tx}
$$

$$
t_{c-q}=t_{pd,tx} + t_{pd, inv}
$$

**Hold time:** There is no delay due to —
$$
T_{hold} = 0
$$
### Setup Time in Simulation

![[Pasted image 20261118125609.png]]

```ad-warning
A difference of $10ps$ decides the outcome of the circuit.
- At $0.2ns$, $Q_M$ and the $I_2 - T_2$ node have not separated far enough when $T_2$ closes, so the loop flips back and $Q$ goes to the wrong value.
- This is called a **setup violation**
```

## Avoiding Clock Overlap

![[Pasted image 20261118130229.png]]

**1-1 Overlap: Race Condition**:
- Both the input and the slave pass transistors are on, so $D$ can race straight through to $Q$.
- During the overlap, node $A$ is driven by $D$ and by the feedback path at once.

**0-0 Overlap: Floating Nodes**:
- All pass transistors that set $A$ and $X$ are off, so the node *floats*
- Charge holds them briefly, so there is a *short overlap* of **tolerance**

```ad-warning
This means that this is **not** a static design
```
### Solution 1: Pseudo-Static Two-Phase Register

![[Pasted image 20261118131110.png]]

Adding two clocks instead of complementary clocks!
- Replace $CLK$ wiht $\phi_{1}$ and $\phi_{2}$, which are never high together
- The gap $t_{non-overlap}$ guarantees that no race path is ever fully on

```ad-warning
This is *pseudo-static* because the nodes are still temporarily held dynamically during $t_{non-overlap}$.
- Otherwise feedback holds them statically, so the clock can be stopped.
```

### Solution 2: Cross-Coupled NOR SEt-Reset Latch

![[Pasted image 20261118131454.png]]

**Next State**: $Q^+=S + \bar{R}Q$

```ad-danger
$S = R = 1$ is forbidden, so $Q$ and $\bar{Q}$ can coninue to be complements
- IF they fall together, the final state is *unpreditable*
```

#### Clocked Cross Coupled Pair

![[Pasted image 20261118131748.png]]

- To set, $M_{5}$ and $M_{6}$ pull $\bar{Q}$ low while $CLK =1$ and $S = 1$
- So the circuit is *ratioed*: $M_{5}$ and $M_{6}$ must be sized **wider** than $M_{2}$. This is because $M_{2}$ must be weaker!!
- No transmission gates are needed, so the **clock load** is *small*

## Static Versus Dynamic Storage

![[Pasted image 20261118132329.png]]


| Static                                       | Dynamic                                                |
| -------------------------------------------- | ------------------------------------------------------ |
| Positive Feedback                            | Charge-Based                                           |
| Holds its value indefinitely                 | Leakage erases charge, needs a minimum clock frequency |
| More transistors; the clock drives more load | Fewer transistors, faster, less clock load             |

## Dynamic Edge-Triggered Register

![[Pasted image 20261118132724.png]]

![[Pasted image 20261118133025.png]]

**1-1 Overlap**: NMOS of $T_{1}$ and $T_{2}$ are both on
- $D$ is held stable through the overlap
- $t_{hold} > t_{overlap, 1-1}$

**0-0 Overlap:** PMOS of $T_{1}$ and $T_{2}$ both on
- Make the overlap shorter than the race path
- $t_{overlap, 0-0} < t_{T1}+t_{I1} + t_{T2}$

## C$^2$MOS and Pipelining

### Latches and Registers

![[Pasted image 20261118133719.png]]

 **Master Stage
 - Acts as an inverter when $Clk = 0$
 - When $Clk = 1$, both transistors are open and $X$ will become a floating node. This holds the value steady at $X$
 - Acts as a negative latch

**Slave Stage**
- When $Clk = 0$, $Q$ is held
- When $Clk = 1$, it acts as an inverter
- Acts as a positive latch

```ad-important
This acts as a positive edge-triggered flip-flop
```

### Insensitivity to Clock Overlap

![[Pasted image 20261118134718.png]]

**0-0 Overlap**: Only the pull-up is on. 
- A rising $X$ turns off $M_{6}$, so the charge cannot also pull $Q$ up

![[Pasted image 20261118135145.png]]

**1-1 Overlap**: Only the pull-downs are enabled
- The same argument applies, and $Q$ is held stable during the overlap.
# 3. Action Items & Follow-Up
- [ ] Review Lecture 22 for VLSI 📅 2026-11-23 