---
creation_date: 2026-09-30 12:22
last_modified: 2026-09-30 12:22
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

- Best study material are the slides for the exam
- The books have other potential materials
- **Make sure you fully understand both the quiz problems and the practice** 
# 2. Lecture & Discussion Notes

## Clock Constraints with Master/Slave

**General Huffman Layout**:

![[Pasted image 20260930123055.png]]

We have to ensure that we have non-overlapping clocks such that $\phi_{1}, \phi_{2}$ are never high *at the same time*
- We do not want the loop of next-state to current-state to connect
- This would create a **race condition**
- We want the master to be on, which then turns on the slave
- Then, we want the the slave to run once the master turns off
- That way, the next state can to inputted into the master at one time, while the slave can output the present state back into the combinational logic.

$$
T = T_{1,on}+T_{12}+T_{2,on}+T_{21}
$$
![[Pasted image 20260930123338.png]]

### Constraints



| Constraint                      | Reasoning                                                      |
| ------------------------------- | -------------------------------------------------------------- |
| $T_{1,on}>d_{max}$ (Masters)    | Master’s output must settle while $\phi_{1}$ is high           |
| $T_{2, on} > d_{max}$ (Slaves)  | Slave’s output must settle while $\phi_{2}$ is high            |
| $T_{21} > D_{max}$              | Logic settles between $\phi_{2}$ falling and $\phi_{1}$ rising |
| $T_{12}>\text{worst-case skew}$ | $\phi_{1}$ and $\phi_{2}$ never overlap, even with clock skew  |
| $T <\text{Refresh Period}$      | Dynamic nodes (if any) must not **leak**                       |

```ad-note
title: Remember
Clock skew is the difference in the actual clock vs. the expected clock
![[Pasted image 20260930124500.png]]
```

```ad-important
No race-through (lower-bound) constraints: $d_{min}$ and $D_{min}$ have no impact, because $\phi_1$ and $\phi_2$ never overlap.
- The only upper bound is $T < \text{refresh period}$
```

## Flip-Flops

### Master-Slave D-Latches (Positive Edge)

![[Pasted image 20260930125221.png]]

![[Pasted image 20260930125227.png]]

- Master transparent while $clk = 0$
- Slave transparent when $clk=1$
- $d$ is captured at the rising edge

### Register Parameters

- $t_{su}$ → **Setup Time**: $D$ must be stable for at least $t_{su}$ *before* the active clock edge
- $t_{hold}$ → **Hold Time**: $D$ must stay stable for at least $t_{hold}$ *after* the clock edge
- $t_{c-q}$ → **Clock-to-Q Delay**: Time fromt eh clock edge until $Q$ changes - the delay of the flip-flop, ranging from $d_{min}$ to $d_{max}$

![[Pasted image 20260930125915.png]]

![[Pasted image 20260930125923.png]]

```ad-warning
Delays can be different for rising and falling data transitions
```

## Synchronous Timing Constraints

```ad-note
This is primarily for register-to-register transfer (with in-between combinational logic)
```

- The data from R1 should flow through the combinational logic, and then act as the input for R2

![[Pasted image 20260930130448.png]]

![[Pasted image 20260930130456.png]]

**Setup (Max-Delay)**
- Data launched at one edge must arrive $t_{su}$ before the next edge
- *Violation fix:* Slow the clock or shorten the longest path

$$
T > d_{max}+D_{max}+t_{su}
$$
$$
f_{max}<\frac{1}{(d_{max}+D_{max}+t_{su})}
$$
```ad-note
- $d_{max}$ comes from R1
- $D_{max}$ comes from the combinational
- $t_{su}$ comes from R2
```

**Hold (Min-Delay)**
- $d_{min}+D_{min}$ is the *contamination delay* (race time)
- Also known as **reliability**
- Independent of $T$: A slower clock cannot fix itReliablility
- No logic between registers $(D_{min}=0)\Rightarrow t_{h}<d_{min}$: *a constriant on flip-flop design*

$$
d_{min}+D_{min} > t_{h}
$$

```ad-important
- $t_h$ is the launching edge coming from R1
- $t_{su}$ is the capturing edge into R2
```

### Practice


```ad-question
Given the positive edge-triggered registers on the same clock with no skew:
1. Determine the maximum clock frequency
2. Is the design reliable?
```

![[Pasted image 20260930132208.png]]

```ad-note
Each register has the following:
1. $[d_{min}, d_{max}]= [1, 3]$
2. $t_{su}=1, t_h=1$
```

#### Part 1: Max Frequency

The maximum clock frequency from is determined by three of the main constraints.

**For $R_{1}\to R_{2}$**


$$
T > d_{max}+D_{max} + t_{su}
$$

$$
T > (3)+(5)+(1)
$$
$$
T > 9
$$
**For $R_{2}\to R_{3}$**


$$
T > 3 + 10+1
$$

$$
T > 14
$$

**Therefore**:

We have to choose the highest constraint here, so:

$$
T > 14
$$
*Take the inverse*
$$
\boxed{f_{max} < \frac{1}{14}}
$$

#### Part 2: Reliability

To do so, we have to check the following:

$$
t_{h} < d_{min}+D_{min}
$$
**For $R_{1}$**:


$$
(1) < (1)+(2) \quad \checkmark
$$
**For $R_{2}$**

$$
1 < (1)+(3) \quad \checkmark
$$
**For $R_{3}$**


$$
1 < 1 + 3 \quad \checkmark
$$

**Therefore**:

The synchronous circuit is *reliable*. There are **no race conditions**.  

## Timing Paths

![[Pasted image 20260930133931.png]]

There are **four total** classes of timing paths:
1. Input→Register Path 
2. Register→Register Path 
3. Register→Output Path
4. Input→Output (without going through any registers)

```ad-seealso
title: Input->Register Paths
1. $A\to R_1$ *[0,0]*
2. $B \to \text{AND} \to R_2$ *[2,5]*
3. $C \to \text{Logic} \to R_3$ *[3,10]*

Setup/hold depends on when the input arrives from *outside* of the block
```

```ad-info
title: Register -> Register
color: yellow
1. $R_1 \to \text{and} \to R_2$ *[2,5]*
2. $R_2 \to \text{logic} \to R_3$ *[3,10]*
3. $R_3 \to \text{logic} \to R_3$ *[3,10]*

Fully checkable inside the block; set the clock period (setup) and reliability (hold)
```

```ad-tip
title: Register -> Output
1. $R_3 \to \text{output}$ *[0,0]*

Output timing depneds on when the next block needs the data
```

```ad-danger
title: Input -> Output
There is no direct input to output (they all go thorugh registers)
```

Therefore, there are a total of 7 timing paths for the circuit above.
## Quiz Questions

### Clocking 1

```ad-question
Basic concepts regarding clocking
```

### Clocking 2&3:

```ad-question
Given the circuit with its constraints below, answer the following:
1. How many register-to-register paths exist in this design?
2. Determine the maximum clock frequency and the critcal path
3. Is the design reliable?
```

![[Pasted image 20260930133608.png]]

```ad-summary
title: Characteristics of Registers $R_1, R_2$
1. $[d_{min}, d_{max}] = [1, 1]$
2. $t_{su}=2, t_h=4$
3. Same clock with no skew
```

#### Part 1: Register-to-Register Paths

There are **5** paths
- R1→C1→C3→R2
- R1→C2→C3→R2
- R1→C2→C4→R1
- R2→C3→R2
- R2→C4→R1
#### Part 2: Max Frequency

We are going to use:

$$T > d_{max}+D_{max} + t_{su}$$

**For Path 1** (R1→C1→C3→R2)

$$
T > (1) + (1+3)+(2)
$$

$$
T > 7
$$

**For Path 2** (R1→C2→C3→R2)

$$
T > (1) + (2+3) + (2)
$$

$$
T > 8
$$

**For Path 3** (R1→C2→C4→R1)

$$
T > (1)+(2+4)+2
$$

$$
T > 9
$$

**For Path 4** (R2→C3→R2)

$$
T > (1) + (3)+(2)
$$

$$
T > 6
$$

**For Path 5** (R2→C4→R1)

$$
T > (1) + (4) + (2)
$$

$$
T > 7
$$

**Therefore**:


$$
T > 9
$$

$$
\boxed{f_{max} < \frac{1}{9}}
$$
#### Part 3: Reliability

$$
t_{h} < d_{min}+D_{min}
$$

**For $R_{1}$**:


$$
(4) < (1) + (6) \quad \checkmark
$$


**For $R_{2}$**:


$$
(4) < (1) + (3) \quad \text{X}
$$


# 3. Action Items & Follow-Up
- [x] Review Lecture 12 for VLSI 📅 2026-10-05 ✅ 2026-10-05
- [x] [[Lecture 12 - Clocking Constraints#Clocking 1|Clocking 1]] for VLSI ⏫ 📅 2026-10-05 ✅ 2026-10-03
- [x] [[Lecture 12 - Clocking Constraints#Clocking 2&3|Clocking 2]] for VLSI ⏫ 📅 2026-10-05 ✅ 2026-10-05
- [x] [[Lecture 12 - Clocking Constraints#Clocking 2&3|Clocking 3]] for VLSI ⏫ 📅 2026-10-05 ✅ 2026-10-05
- [ ] *Practice 1* for VLSI Lecture 12 📅 2026-10-05 🔼 

