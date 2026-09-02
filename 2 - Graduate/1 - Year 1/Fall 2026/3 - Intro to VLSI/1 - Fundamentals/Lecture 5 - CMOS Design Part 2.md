---
creation_date: 2026-09-02 12:08
last_modified: 2026-09-02 12:08
folder: 1 - Fundamentals
tags:
  - type/lecture
  - field/VLSI
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
- Finishing CMOS static logic
- Performance & Sizing
```

## Pre-Class Notes

- Looks like we are finishing up on CMOS Designs today and will be continuing into a new lecture
- Hopefully we get to true meat and potatoes sooner than later
# 2. Lecture & Discussion Notes

## Fully Complemented Static CMOS Cont.

### NOR Gate

![[Pasted image 20260902122822.png]]

$$
f_{p-type} = \overline{A + B} 
$$
$$
f_{n-type} = \bar{A} \times \bar{B} \equiv \overline{A+B}
$$

$$
\boxed{f_{n-type}=f_{p-type}}
$$

```ad-important
This means that there is no floating nodes as the output is a strong signal rather than a weak one with bidirectionality and charge passing
```

### Complex Gate

- Pull-up network (PUN) uses the p-transistors only
- Pull-down network (PDN) uses the n-transistors only
- PUN and PDN are **logical complements** of each other
	- They do the same thing, but with the opposite gate type

```ad-summary
If we can find both the pull-up and pull-down network end up being the same function at the end, that means a fully complemented static CMOS system is correct
- We want to make sure that one side is on, and the other side is off
- Avoids shorting and floating nodes
```

![[Pasted image 20260902123320.png]]

### Obtaining Logical Complements with *Structural Complements*

```ad-note
Strutural complements as always logical complements, meaning we can design the PUN or PDN network first and find its complement
```

*To derive PUN from PDN*:
- Replace n-transistors with p-transistors
- Replace series connection with parallel connection and vice-versa
- Replace GND by VDD

```ad-note
You don't need to *always* use structural complement as we will see later
```

#### Example 1

```ad-question
Suppose we are implementing the following function:

$$f = \overline{A(B+C)}$$
```

*Implement Pull-Down Network*

```ad-important
Drop the complement part since we are pulling to ground
```

![[Pasted image 20260902123757.png]]

*Find Structural Complement*

```ad-note
It is kind of like reading it backwards, swapping the gates, then switching series with parallel
```

**Words:** B and C in series, parallel with A

![[Pasted image 20260902123905.png]]

*Combine Them Together*

![[Pasted image 20260902123925.png]]

```ad-warning
We can *also* do it backwards starting with a pull-up network by applying **DeMorgans** over the whole function instead
```





### Minority of 3 in Static CMOS

$$
f(A,B,C) = \overline{AB+BC+AC}
$$

![[Pasted image 20260902124214.png]]

Structural **and** logical complements
- They are logical complements *since* they are structural complements
- aka. Structural *implies* logical
#### Example 2

```ad-question
Considering the follwing circuit. Does this implement the minority function
```

![[Pasted image 20260902124603.png]]

First, we realize that both sides are not the compliment of each other
- Find at least one input vector that is wrong

**HOWEVER**: in this case, this is correct 
- If you multiply out the DeMorgan’s complement (the PUN), we see the same circuit as above:

$$
f = \overline{(AB)}+\overline{(BC)}+\overline{(AC)}
$$

```ad-important
This means that PUN and PDN are logical complements, BUT not structural complements
```

### Majority of 3 in Static CMOS


### Implementing AND using NAND

$$
f = A \times B \to f = \overline{(\bar{A} \times \bar{B})}
$$
#comebacklater 

### EX-OR in Static CMOS

$$
f = A \bar{B}+\bar{A}B
$$

```ad-warning
This is not the form we need, we need to express our functions differently
- We need an AND-OR expression with only positive expressions and an inversion on the top
- Any extra inversions will become NOT gates
```

IN this case, we will implement the EX-NOR expression with an inversion on top 
$$
g=\bar{A}\bar{B}+AB 
$$
$$
f = \overline{\bar{A}\bar{B}+AB}=\bar{g}
$$

![[Pasted image 20260902125918.png]]

Afterwards:
1. Implement the PDN
2. Implement the PUN using the structural complement

![[Pasted image 20260902130215.png]]


![[Pasted image 20260902130226.png]]

```ad-important
This is called a two-stage fully complmentary static CMOS circuit
- Also known as a *complex* CMOS Gate (2 or more gate levels)
```

The two stages cut down between the invertors and the EX-NOR gates

![[Lecture 5 - CMOS Design Part 2 2026-09-02 13.03.48.excalidraw]]

```ad-note
Try to find complements if possible. Invertors followed by their complement is the basic idea here.
```
### How many level so static logic are sufficient to implement any Boolean function?

```ad-question
Can any Boolean function be implemented by at most a two-level circuit 
```

This is **TRUE**, but why?? Homework lol

### Memory in Static CMOS

```ad-question
Find the SR Latch in terms of Static CMOS
```

![[Pasted image 20260902130909.png]]

```ad-note
To add a clk signal, add two AND gates before S&R
```

### Disadvantages of Fully Complemented Static CMOS

- *Doubles* the number of transistors compared to pass transistor logic
- Vdd and GND must be routed to *each* gate

## Practice

Design the following:
1. JK-Latch
2. D-Latch
3. T-Latch

Then, add a clock to all of them and make them edge-triggered to make them flip-flops
- JK-Flip Flop
- D-Flip Flop
- T-Flip FLop

## Quiz Questions

### CKT-5

![[Pasted image 20260902131417.png]]

### CKT-6

```ad-question
Implement the follwoing truth-table with as few stages as possible. Which design is correct?
```

![[Pasted image 20260902131525.png]]

![[Pasted image 20260902131554.png]]

### CKT-7

```ad-question
A designer claimed that the follwing CMOS gate implements the minority funcitno of 3 inputs. Verify this claim
```

![[Pasted image 20260902131641.png]]

```ad-important
This is from class lolll
```

### CKT-8

```ad-question
How many levels of static logic are sufficient to implement any Boolean function. Provide proof!
```

### Practice - Full-Adder

Implement the sum output of a full-adder in static CMOS using as few stages as possible

$$
s = A \oplus B \oplus C
$$
```ad-check
title: Answer
![[Pasted image 20260902132152.png]]
```

## Performance (Delay) & Sizing

```ad-summary
Once we understand how to design a circuit, how do we *optimize it*?
```

The following is important reasons for optimizing performance:
1. Sizes
2. Load
3. Input Slew

### Cappacitive Load

```ad-note
The output of a Static CMOS can be connected to many places. 
- The most common example is a pin on a PCB
- Can also drive the gate of *another* transistor
- OR, it can drive the diffusion end (drain/source) of another transistor
```

![[Pasted image 20260902132522.png]]

```ad-warning
All of these have some form of capacitive load
- Gate capacitances
- Pin capacitances
- Diffusion capacitances
- **Intrinsic capacitances**
	- The capacitance of the two diffusions and the contact of the static CMOS output
```

The combination of all these capacitances is represented by the *capacitant load*

$$
C_{L}= C_{I} + C_{E}
$$
where:
1. $C_{I}$ is the intrinsic load
2. $C_{E}$ is the external loads (gate, diffusion, and pin)

### Input Slew

```ad-summary
title: Definition
The rate of time delay between getting an input and raising an output.
- Dictates the delay of the circuit
```

*NOTE*: there needs to be some delay as we cannot find the difference between the input and the output otherwise.


## Fall Time-Linear Approximations

```ad-note
Unlike SPICE, this is a **worse** approximation since it is linear. However, it is a good enough approximation if we need to do it by hand.
```

![[Pasted image 20260902133212.png]]


# 3. Action Items & Follow-Up
- [ ] Review Notes for VLSI Lecture 5 📅 2026-09-09
- [ ] Find the truth to this answer [[Lecture 5 - CMOS Design Part 2#How many level so static logic are sufficient to implement any Boolean function?]] 📅 2026-09-09 
- [ ] Do memory practice for VLSI 📅 2026-09-09 🔼 
- [ ] VLSI CKT-5 Quiz [[Lecture 5 - CMOS Design Part 2#CKT-5]] 📅 2026-09-09 ⏫ 
- [ ] VLSI CKT-6 Quiz [[Lecture 5 - CMOS Design Part 2#CKT-6]] 📅 2026-09-09 ⏫ 
- [ ] VLSI CKT-7 Quiz [[Lecture 5 - CMOS Design Part 2#CKT-7]] 📅 2026-09-09 ⏫ 
- [ ] VLSI CKT-8 Quiz [[Lecture 5 - CMOS Design Part 2#CKT-8]] 📅 2026-09-09 ⏫ 
- [ ] *practice*: [[Lecture 5 - CMOS Design Part 2#Practice - Full-Adder]] 📅 2026-09-09 🔼 