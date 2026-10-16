---
creation_date: 2026-10-05 13:34
last_modified: 2026-10-05 13:34
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

- HW3 will focus on a Moore machine instead of a mealy machine for the sequential analyzer with a different set of 4 binary numbers. 
# 2. Lecture & Discussion Notes

## Introduction - Combinational Logic

```ad-summary
For each timing path, simulate it and their L->H and H->L output using timing vectors.
```

![[Pasted image 20261005133700.png]]

**Timing Paths**:
1. $a \to d \to Y$
2. $a \to f \to Y$
3. $b \to d \to Y$
4. $b \to e \to Y$
5. $c \to e \to Y$
6. $c \to f \to Y$

## Simulation 1

|      | Setup Vector | Evaluation Vector |
| ---- | ------------ | ----------------- |
| High | 010          | 110               |
| Low  | 110          | 010               |

## Simulations 2-6

```ad-important
*Practice* Find vector sequences to stimulate paths 2 to 6, in both directions
```

### Solution

![[Pasted image 20261005134822.png]]

## DPA for Sequential Logic Circuits

```ad-note
This is the carry part of a carry adder!
```

![[Pasted image 20261007122057.png]]

**Timing Paths**:
1. $a \to d \to Y$
2. $b \to d \to Y$
3. $a \to f \to Y$
4. $b \to e \to Y$

**Input → Register**:
1. $a \to d \to di$
2. $a \to f \to di$
3. $b \to e \to di$
4. $b \to d \to di$

**Register → Register**:
1. $q \to e \to di$
2. $q \to f \to di$

**Register → Output**:
1. $q \to e \to Y$
2. $q \to f \to Y$

### Setup

```ad-summary
A FSM is driven into a desired state via a *sequence of vectors*
```

![[Pasted image 20261007122513.png]]

*For this circuit*
![[Pasted image 20261007122521.png]]

### Simulation for Input→Output Path

**For $a \to f \to Y$**:

*Setup*: Drive the FSM to $q_{1}$
- $Reset$ → $q = 0$
- $ab=11, clk$ → $q=1$

*Evaluate*: $q=1$, no clock edge between
1. $ab:\quad 00 \to 10 \quad Y: L \to H$ 
2. $ab:\quad 10 \to 00 \quad Y:H \to L$

**Reasoning**:

$q=1$ lets $a$ control $f$, $b=0$ holds $d=e=1$, so only $f$ reaches $Y$

```ad-warning
It is very difficult to test all paths for the worst case for a sequential circuit. Instead, we **estimate** some paths that may be the worst case and only worry about those!
```


### Practice

```ad-question
Determine stimulation vector sequences for *each In->Out* path, for both $L \to H$ and $H \to L$
```

#### Solution

![[Pasted image 20261007124153.png]]



```ad-note
Since $Y$ and $di$ are the same net, Paths 1-4 observe $Y$, while paths 5-8, $q$ is observed since they need to be checked on the next clock edge.
```

### Simulating for Register→Register/Reigster→Output

![[Pasted image 20261007124259.png]]

```ad-warning
- To pass $q$ through $e$: $ab=01$. 
- Through $f$: $ab=10$. 
- Both are self-loops: $q$ nev er toggles while its path is open

![[Pasted image 20261007124604.png]]
```

This means we have to pass either $A$ or $B$ AND clock the circuit *at the same time* for paths 9 and 11.

![[Pasted image 20261007124621.png]]

### Able to Stimulate vs. Useful to Stimulate

*Why Do We Simulate Paths?*
- To find the **best case and worst case** $L \to H$ and $H \to L$ propagation times among all paths

*Able is not the same as useful*:
- Whether a path *can* be simualted and whether it is *useful* to stimulate it are different questions

**We use context to decide**:
- Which paths are used or not
- Some paths in a module may not be necessary to stimulate

*So know the module*
- It is best to know the utility of the module, which helps determine what paths need to be tested

### Practice Problem 2: Sequential Adder

![[Pasted image 20261007125950.png]]

```ad-question
1. List all *timing paths*
2. Detemrine stimualtion vector sequences for **each path** for both $L \to H$ and $H \to L$
```

**Signals**:
1. $a,b$ are inputs
2. $s$ is the sum output
3. $c$ is the carry, held in the register
4. $co$ is the next carry
5. $x,d,e,f$ are internal nodes

```ad-note
Check notes for solution
```

## False Paths

```ad-summary
A physical path that **cannot be stimulated**
```

![[Pasted image 20261007130310.png]]

- In this case, $A_{1}$ will never go to $B_{2}$ and $A_{2}$ to $B_{1}$
- Even though the wiring exists physically, it can never be stimulated because $s$ controls *both* the MUX and DEMUX 

### False Paths within Gates

![[Pasted image 20261007130546.png]]

Let’s follow $A_{1} \to B_{2}$
- AND → $n_{1}$: passes $A_{1}$ only if $\bar{S}=1$
- OR → $m$: passes $n_{1}$ only if $n_{2}=0, S=0$
- AND → $B_{2}$: passes $m$ only if $S=1$

Since both $S$ cannot be both  $0$ and $1$ at once, there is no way to stimulate this path and it is a false path.

![[Pasted image 20261007130735.png]]

### When the Longest Path is False

![[Pasted image 20261007130847.png]]

```ad-danger
In some cases, the longest/worst-case delay path may also be a false path. This means that we need to remove the false path before we can figure out a given $T_{min}$ and $f_{max}$ as well as its reliability.
```

Let’s follow $a\to n_{1}\to p\to n_{4}\to Y$
- Longest delay is 8, with the shortest delay being 4
- This would mean $D_{min}=4$ and $D_{max}=8$
- However, these are false paths!
- In this case, we will never have only the slow stimulated or only the bypass stimulated
- This means the true worst/best would be $D_{min}=D_{max}=6$

![[Pasted image 20261007131122.png]]

```ad-note
The logic is deliberately trivial: $y=a$ for either value of $S$. Only the delays matter. $S$ is assumed to be stable.
```

### Glitches

```ad-summary
A brief *wrong value* at an output while signals with different delays are still arriving
```

![[Pasted image 20261007131330.png]]

→ This is called **reconvergent fanout** (on $T_{3}$)
- Often cannot be avoided
- Is a pain for testing, path stimulation, etc.
- Need to be very careful when considering it

![[Pasted image 20261007131426.png]]

To avoid this, we have to make sure the clock period $T$ **is longer than the delay**
- This ensures $F$ has settled, glitch included, before it is captured on the edge.

```ad-note
This happened on the carry circuit when the pulse $Y$ and $co$ was a glitch, cuased by two inputs changing. Here one input is enough.
```

```ad-important
It is critical to find how long it takes for the glitch to settle down to figure out how large the $T_{min}$ must be to avoid a glitch causes issues in the future.
```

## Stimulating Combinational Circuits is VERY Difficult

- $2^n$ input vectors
- $O(2^{2n})$ time complexity

![[Pasted image 20261007132114.png]]

## Stimulating Sequential Circuits is even WORSE

- $2^q$ states
- $2^n$ input vectors, so $2^n$ transitions out of each state
- $2^{n+q}$ total transitions

![[Pasted image 20261007132251.png]]


![[Pasted image 20261007132208.png]]

```ad-warning
title: Comaprison to Combinational
1. A transition can onlyb e stimulated from its state, and a state cannot be set directly: it is reach through a sequence of vectors
2. That sequence can be long, up to 4.3 billion clocks, for example, a 32-bit counter.
3. Some pahts *cannot be isolated* at all
```

## Practice Problem - Sequential Adder Built from NANDs

```ad-question
1. Find all *stimulatable paths*
2. Find *vector sequences* for each path
```

![[Pasted image 20261007132457.png]]

### Solution

![[Pasted image 20261007132737.png]]

![[Pasted image 20261007132851.png]]

![[Pasted image 20261007132857.png]]

## Sequence Recognizer for `1010`

```ad-note
- **Moore FSM**: The output comes directly from the state
- **Mealy FSM**: Output changes on the path change, independently of the state of the FSM
```

```ad-question
A squence recongizer has one input and one output. It recongizes the sequence `1010` on the input. Draw the Mealy FSM.
```

**State Table**:


| State   | Matched so far | $x=0$      | $x=1$      |
| ------- | -------------- | ---------- | ---------- |
| $S_{0}$ | nothing yet    | $S_{0} /0$ | $S_{1} /0$ |
| $S_{1}$ | 1              | $S_{2} /0$ | $S_{1} /0$ |
| $S_{2}$ | 10             | $S_{0} /0$ | $S_3 /0$   |
| $S_{3}$ | 101            | $S_{2} /1$ | $S_{1} /0$ |


![[Pasted image 20261007133150.png]]

### Using D Flip-Flops

![[Pasted image 20261007133620.png]]

**Minimization**

![[Pasted image 20261007133632.png]]


$$
D_{1}= Q_{0} \times \bar{ x}+ Q_{1} \times \bar{ Q_{0}}\times x
$$
$$
D_{0} = x
$$
$$
z = Q_{1}Q_{0}\bar{x}
$$
### Timing Paths

There are nine major paths:
1. 1 input→output
2. 3 input→Reg
3. 3 reg→reg
4. 2 reg→output

![[Pasted image 20261007133857.png]]

### Stimulating Each Path

![[Pasted image 20261007134315.png]]

### One Circuit Instance, Timed

![[Pasted image 20261007134727.png]]

- Worst path is 6
- Best path is 4

![[Pasted image 20261007134750.png]]

![[Pasted image 20261007134812.png]]

## Summary

**Timing Analysis Can be Broken Down into Three Major Steps**
1. Find the paths
2. Find vectors to stimulate the paths
3. Run simulations through these vectors
	- Can be done on the gate level all the way from an `av_extracted` layout

## Quiz Soljutions

![[Pasted image 20261014134848.png]]

![[Pasted image 20261014134901.png]]



# 3. Action Items & Follow-Up
- [x] Review Lecture 14 for VLSI 📅 2026-10-12 ✅ 2026-10-14
- [ ] *Practice* [[Lecture 14 - Dynamic Performance Analysis#Practice|Carry]] for VLSI 📅 2026-10-12 
- [ ] *Practice* [[Lecture 14 - Dynamic Performance Analysis#Practice Problem 2 Sequential Adder |Sequential Adder]] for VLSI 📅 2026-10-12 
- [ ] *Practice* [[Lecture 14 - Dynamic Performance Analysis#Practice Problem - Sequential Adder Built from NANDs| Sequential Adder with Only NAND Gates]] for VLSI 📅 2026-10-12