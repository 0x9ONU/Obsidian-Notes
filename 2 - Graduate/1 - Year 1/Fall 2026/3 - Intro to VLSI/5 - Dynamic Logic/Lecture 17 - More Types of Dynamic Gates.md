---
creation_date: 2026-10-28 12:13
last_modified: 2026-10-28 12:13
folder: 5 - Dynamic Logic
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

## Dual-Rail Signals

```ad-warning
A dynamic node carries one event per cycle:
- It falls, or it does not

No stage can know in advance that a node will stay high. This means that a signal and its complement cna never enter the same stage, which makes gates like **XOR TO BE IMPOSSIBLE WITH DYNAMIC LOGIC**
```

```ad-check
This can be solved with dual-rail signals! Each signal has two nodes: 
1. The original signal ($S$)
2. It's complement ($\bar{S}$)
```


| $A$   | True Node  | Complement Node |
| ----- | ---------- | --------------- |
| Setup | 1          | 1               |
| $A=1$ | stays 1    | falls to 0      |
| $A=0$ | falls to 0 | stays 1         |

![[Pasted image 20261028124414.png]]


$$
A = \bar{X}+\bar{Y}\Rightarrow_{Demorgans} A=xy
$$

```ad-important
Both the True and complement node have to implement the same function
```

### Examples: Choosing What Stage Type

#### Example 1:

```ad-question
Impelement the circuit below using dynamic logic
```

![[Pasted image 20261028125114.png]]

#### Example 2: Exclusive Or (XOR)

![[Pasted image 20261028125315.png]]

```ad-note
Assume that $A$ and $B$ are both being driven by n-type dynamic gates.
```

##### Step 1: Check Signal Types

![[Pasted image 20261028125644.png]]

- $A$ and $B$ rest at 1 and may fall. After a static inverter, they rest at 0 and may rise. Each AND gate gets one of them each, so it can neither be an n-type nor a p-type stage.

##### Step 2: What does not work?

XOR is not *monotonic*: If $A$ and $B$ both fall, one falls first. We will have either 01 or 10 and $f$ evaluates to 1.

What does *not* work:
1. We can’t have the static inverters (domino) because it will not solve this issue
2. We can’t have another n-type in a row because of the n-type (zipper)

Therefore, we must use **dual-rail**:

![[Pasted image 20261028125841.png]]

- Each input is carried on two  n-type nodes: $A$ and its complement as well as $B$ and its complement. 
- All four rest at 1, and in each pair exactly one falls. Every input now has the type a p-type stage needs, and $f$ raises exactly one of $A$ or $B$ to 1.

## Disadvantages of Dynamic Circuits

```ad-note
We already discussed cascading, which has been solved using alternatives.
```

### Con 2: Charge Sharing

![[Pasted image 20261028130028.png]]

**During Pre-charge ($\phi = 0$)**: 
- $C_{f}$ is charged to $V_{DD}$ 
- $C_{A}$ and $C_{B}$ may be fully empty

**During Evaluation** ($\phi =1$):
- There is no path to ground, so $f$ should stay at 1
- HOWEVER, at the evaluation transistor and any other capacitance in series (ex. $A=1$), will *also* get charged by node $f$. 
- If $C_{A}=C_{B}=C_{f}$, node $f$ will be **HALVED**


$$
V_{f} \approx V_{DD} \times \frac{C_{f}}{(C_{f}+C_{A}+C_{B})}
$$

```ad-danger
This will result in an indeterminate high output.
```

HOWEVER, at the evaluation transistor and any other capacitance in series (ex. $A=1$), will *also* get charged. 
- If $C_{A}=C_{B}=C_{f}$, node $f$ will 

#### **Solution**: Pre-Charge Internal Nodes

![[Pasted image 20261028130742.png]]

```ad-summary
When $\phi=0$, $C_{f}$, $C_{A}$, and $C_{B}$ are charged to $V_{DD}$, so no charge sharing can occur since they are all charged high.
```

*However, we also have to consider*:
1. $N-1$ PMOS transistors extract needed PER $N$ inputs.
2. We need to move the evaluation transistor to the bottom of the PDN instead of the beginning.
	- $V_{DD}$ might be directly connected to ground during pre-charge!!! (if the bottom input = 1 and is pre-charging during $\phi=0$)
3. We don’t need to worry about the bottom node (in this case $h$), since it only reaches $f$ when $h$ is already grounded ($\phi: 0\to 1$)

```ad-warning
We *cannot* use one transistor to charge every node since it would bypass $B$ to $C$
```

### Con 2: Leakage

![[Pasted image 20261028132345.png]]

```ad-summary
With the PDN off and $\phi = 1$ for evaluation, $f$ floats at $V_{DD}$. Due to this, the drain junctions and the off transistors still pass a *small current*

![[Pasted image 20261028132957.png]] 
```


$$
\text{Droop} \approx \frac{ I_{L} \times T\phi/2}{C_{f}}
$$

#### *Solution 1*: Keep the clock speed high
- Dynamic logic has a minimum clock frequency, where droop is not significant based on the equation above.

```ad-example
$C_f=10fF$ and $1 nA$ of leakage lose $0.1V$ per microsecond. If $0.2V$ of droop is acceptable, evaluation msut end within $2 \micro s$: A clock of 250kHz or faster is needed 
```

#### *Solution 2*: Keeper Circuits

```ad-summary
A **weak** PMOS, driven by an inverter on $f$ holds $f$ at $V_{DD}$ whenever $f$ is high.
- Creates a feedback circuit using a transistor and a static inverter
```

![[Pasted image 20261028133700.png]]

*During precharge, the node is unaffected by the keeper*

**During Evaluation**:
- The node $f$ is floating during evaluation
- If $f=1$, the inverter output is 0, so the keeper is on and replaces the charge that leaks away. The weak  becomes a **driven 1** 
- If $f$ falls, the PDN overpowers the keeper and $f$ falls from $0 \to 1$. The inverter output goes $0 \to 1$ and switches the keeper off.

```ad-note
If this circuit is connected via a domino, only a single transistor is needed since the inverted signal already exists.
```


## Summary

![[Pasted image 20261028134631.png]]

```ad-important
Dynamic logic buys area and speed. The price is a clock at every gate and close attention to timing and stored charge. It also tends to be more power-hungry.
```
# 3. Action Items & Follow-Up
- [x] Review Lecture 17 for VLSI 📅 2026-11-02 ✅ 2026-11-04