---
creation_date: 2026-09-09 12:14
last_modified: 2026-09-09 12:14
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
```

## Pre-Class Notes

- Get ready for lab lol
- $C_{L}$ is the total parasitic capacitance across a line
- Continuing from the fall time-linear approximations remember:

$$
t_{f} \approx R_{n}\times C_{L}
$$
$$
R_{n} \approx \frac{L_{n}}{W_{n}} \times \frac{1}{V_{DD}} \times \frac{1}{K_{n}}
$$
# 2. Lecture & Discussion Notes

## Rise Time-Linear Approximation

```ad-note
Fall time can be found here: [[Lecture 5 - CMOS Design Part 2#Fall Time-Linear Approximations]]
```

![[Pasted image 20260909122742.png]]

Since we are assuming linear approximation, it can be approximated with a resistor and a capacitor based on the load ($C_{L}$)

![[Pasted image 20260909122812.png]]


$$
t_{r} \approx R_{p}\times C_{L}
$$

$$
R_{p} \approx \frac{L_{p}}{W_{p}} \times \frac{1}{V_{DD}} \times \frac{1}{K_{p}}
$$
**Process gain factor for p-transistor**
$$
K_{p} = \frac{\mu_{p}\epsilon_{SiO_{2}}}{t_{ox}}
$$
```ad-note
Mobility of holes ($\mu_p$) vs. the mobility of electrons ($\mu_n$) because the CMOS uses a p-type istead of an n-type transistor during fall time
```

```ad-important
Similar to the previous rise time, we will focus on adjusting either $L_p$ or $W_p$ to change our fall time
```

## Sizing of a Circuit Based on Linear-Approximation

### Introduction

```ad-warning
From a design perspective, all of these dimensions makes 2 million different combinations for transistors just from a linear approximation. We need to find a way to constrain them down to reduce the selection space
```

1. We cannot make the width too close to zero ($\lim_{ w_{p} \to 0 } \frac{L_{p}}{w_{p}}= \infty$)
2. Manufactures typically set a lot of $k_{n}$ or $k_{p}$’s statistics
3. Assume that $L_{p}$ should be made equal to $L_{min}$

```ad-important
This means that only $w_n$ and $w_p$ need to be adjusted, which helps in design significantly by reducing the amount of options
```
#### Scalable Rules

Further, all dimensions are in multiples of **lambda ($\lambda$) units**, where lambda value is **set** by the *fabrication process*
- ex. A lambda value may be set to $0.3 \micro m$
- $\lambda=0.3 \micro m \Rightarrow \{0.3 \micro m, 0.6 \micro m, 0.9 \micro m, \dots\}$
#### Sizing With An Assumption

When making a circuit, we assume that $\mu_n \approx 2-3 \mu_p$. For now, we will assume that:

$$
\boxed{\mu_{n} = 2 \mu_{p}}
$$
##### Asymmetrical Response

If we don’t change anything, the circuit work it out such that:

$$
\frac{L_{n}}{w_{n}}= \frac{L_{p}}{w_{p}} \Rightarrow R_{p}=2R_{n}
$$

$$
\boxed{\therefore t_{r} \approxeq 2t_{f}}
$$

```ad-summary
The fall time will approximately be twice that of the rise time
```
##### For a Symmetric Response…

We need $t_{r}=t_{f}$,

To fix this, we need to make it such that:

$$
R_{p}=R_{n} \Rightarrow \frac{L_{p}}{w_{p}}=\frac{1}{2} \frac{L_{n}}{w_{n}}
$$

$$
\boxed{L_{p}=L_{n}=L_{min}} \Rightarrow \boxed{w_{p}=2 \times w_{n}}
$$
### Reference Inverter Design Process

#### What is a Reference Inverter?

```ad-summary
A unit inverter that is designed by using the minimum values allowed by a process
```

##### Example

```ad-question
Assume the following values provided by the fabrication plant:
1. $\lambda = 0.3 \micro m$
2. $L_{min} = 2 \lambda$
3. $w_{min} = 2 \lambda$

What will the Reference Inverter look like?
   
```

![[Pasted image 20260909125210.png]]


```ad-note
When we say 2x2, we mean that it is two lambda by two lambda in size. In this case, the inverter is $0.6 \micro m \times 0.6 \micro m$
```

$$
t_{f} \approxeq 1ns; \quad t_{r}\approxeq 2ns
$$

```ad-important
Spice simulators are used to determine the rise and fall time given the min length, width, and lambda size.
```

#### Inverter Sizing Given The Reference Inverter

##### Example 1

```ad-question
Given $C_L=10 fF$, get a symmetric response such that $t_r=t_f=1ns$
```

Using the knowledge of the reference transistor and symmetric responses, we are able to double the width of the p-type transistor such that:

$$
w_{p}=4 \lambda
$$

$$
size_{p} = 2 \times 4, \quad size_{n}=2 \times 2
$$

##### Example 2

```ad-question
Given $C_L = 30fF$, find the symmetrical response such that $t_r =t_f = 1ns$
```

$$
t_{r}=\frac{1}{2}t_{f}= 3ns
$$
We need to divide out 3 to find the proper widths

$$
\frac{1}{3}t_{r}=\frac{1}{6}t_{f}=1ns
$$
*For N-type*
$$
t_{r}= \frac{L_{p}}{3w_{n}}
$$
$$
3w_{n}= 2 \lambda
$$
$$
w_{n} = 6 \lambda
$$
*For p-type*

$$
t_{f} = \frac{1}{6} \frac{L_{n}}{w_{n}}
$$
$$
6W_{n}= 2 \lambda
$$
$$
w_{n}=12 \lambda
$$
**THEREFORE**

n-type = $2 \times 6$, and p-type = $2 \times 12$

### NAND Gate Sizing

#### Base Analysis

![[Pasted image 20260909130751.png]]

##### Fall Time

It will fall, ONLY when:
$$
AB = 11
$$
```ad-important
This is known as the **fall vector**
```
$$
t_{f}=R_{n} \times C_{L}= 2ns
$$
##### Rise Time

It will rise both when $A=0, B=1$, $A=1, B=0$, and $A=0, B=0$
```ad-important
These are known as the **rise vector(s)**
```

*First Vector*

![[Pasted image 20260909131100.png]]


$$
t_{r}=2ns
$$
*Second Vector*

![[Pasted image 20260909131113.png]]


$$
t_{r}=2ns
$$

*Third Vector*

![[Pasted image 20260909131132.png]]


$$
t_{r}=R_{P_{A}} \parallel R_{P_{B}} \times C_{L} = 1ns
$$

```ad-warning
This is difference from the rest, and is closest to the reference inverter
```

**Worst Case**

For all cases but rising on $A=0, B=0$, we have the worst case-scenario where $t_{r}=2ns$

#### Design Problem 1

```ad-question
Assume $C_L=10ns$, make it symmetric such that $t_r=t_f=1ns$ in its *worst-case*
```

The widths of *both* n-transistors should become $2 \times 4$

The widths of *both* p-transistors should become $2 \times 4$

#### Design Problem 2

```ad-question
Assume $C_L=30fF$, $t_r=t_f=1ns$, Make it symmetric such that $t_r=t_f=1ns$ in its *worst-case*
```


$$
t_{r}=t_{f}=R \times C_{L} = 3ns
$$
If we triple the width from the previous symmetric step, we will also triple the fall/rise time

*Both* p-transistors: $2 \times 12$

*Both* n-transistors: $2 \times 12$

### Complex Gate Sizing

```ad-question
Size the gate to achieve worst-case $t_r=t_f=1ns$ when $C_L=40fF$:

$$F = \overline{A+BC}$$
```

#### Step 1: Make Gate Based on Structural Complement

![[Pasted image 20260909133707.png]]

#### Step 2: Setup Rise and Fall Paths

![[Pasted image 20260909133747.png]]


$$
t_{r}=2 \times 2R_{p}=4 ns
$$
![[Pasted image 20260909133855.png]]

![[Pasted image 20260909133901.png]]

$$
t_{f}= \frac{1}{2} \times (2 \times 2) R_n =2ns
$$

For $C_{L}=40fF \Rightarrow 4 \times 10fF$

$$
t_{r}=4(4ns)=16ns, \quad t_{f}=4(2ns)=8ns
$$

#### Step 3: Find Cases

##### For P-type

$$
16t_{r}=1ns
$$

$$
16 w_{p}= 2\lambda 
$$

$$
\therefore \text{All P-type is } 2 \times 32
$$
##### For N-type

$B,C$ n-transistors need to be $2 \times 16$ since we need an eight-fold increase

HOWEVER, for $A$, there is only one transistor in parallel, we only need  $2 \times 8$ rather than $2 \times 16$

## Performance Metrics

**Propogation Delay**:

$$
t_{p}=\frac{t_{P_{HL}}t_{P_{LH}}}{2}
$$
- $t_{P_{HL}}$ is the time it takes for a circuit to go from high-to-low from input to output
- $t_{P_{LH}}$ is the time it takes for a circuit to go from low-to-high from input to output

![[Pasted image 20260909133047.png]]

```ad-note
So far, this means that we have to worry about:
1. Rise time ($t_r$)
2. Fall time ($t_f$)
3. H-L propogation delay ($t_{P_{HL}}$)
4. L-H propogation delay ($t_{P_{LH}}$)
```


## Sizing-1 Quiz 

```ad-question
For NOR gate sizing:
1. find $t_f$ and $t_r$ worst-case for $C_L=10fF$
2. Find the size of the gate for $t_f=t_r=1ns$
3. Changing the $C_L=30fF$, keep the previous expresssion true
```

### Part 1

**Truth Table**

| $a$ | $b$ | $f$ |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 0   |

**Function**
$$
f = \overline{ab}
$$

$$
\bar f =a+b
$$
**Circuit**

![[Lecture 6 - Gate Sizing and Performance Metrics 2026-09-10 10.20.45.excalidraw]]

**Pull-Up Network**:

Only one path: ($\overline{AB}$), so:

$$
t_{r}=R_{p}\times C_{L}=4ns
$$
**Pull-Down Network**:

Worse-case is is any case (parallel)

$$
t_{f}=1ns
$$
### Part 2

**Pull-Down**:

*NMOS Remains the same* (2x2)

**Pull-Up**


$$
4ns = t_{r}
$$

$$
1ns = \frac{1}{4}t_{r}
$$

$$
t_{r}= \frac{L_{p}}{4W_{p}}
$$

$$
4W_{p}=2 \lambda
$$

$$
W_{p}=8 \lambda
$$

*BOTH* PMOS will need to be sized to (2x8)



## Sizing-2 Quiz

```ad-question
Design $F=\overline{A(B+C+D)}$ with $L_{min}=2 \lambda$ and $W_{min}=3\lambda$ and $t_f=1ns$, $t_r=3ns$
1. With $C_L=10fF$, size such that $t_r=t_f=1ns$
2. With $C_L=25fF$, size such that $t_r=t_f=1ns$
```

![[Pasted image 20260909135054.png]]


$$
t_{f}=1ns, t_{r}=3ns, L_{min}=2 \lambda, W_{min}=3 \lambda
$$
### Part 0: Circuit Design

```ad-important
Use structural complement to make it easy
```

![[Lecture 6 - Gate Sizing and Performance Metrics 2026-09-10 10.53.10.excalidraw]]

### Part 0.5: Find Worse Case Rise/Fall Times for $C_{L}=10fF$

**Pull-Up Network**:

Worst case is going through 2 transistors:

$$
t_{r}=6ns
$$
**Pull-Down Network**:

Worst case is going through 3 transistors:

$$
t_{f}= 3ns
$$
### Part 1: Symmetric at Same Load Capacitance

**Pull-Up Network**

We need to change **ALL** of the PMOS to fit the bill

$$
t_{r}=6ns
$$

$$
\frac{1}{6}t_{r}=1ns
$$

$$
6W_{p}=3 \lambda
$$

$$
W_{p}=18\lambda
$$
**ALL** PMOS will become ($2 \times 18$)

**Pull-Down**

We can leave $A$ alone such that ($2 \times 2$) since it is in parallel and will have a fall time of $1ns$

However, for $B,C,D$, we need to reduce their fall time

$$
t_{f}=3ns
$$

$$
\frac{1}{3}t_{r}=1ns
$$

$$
3W_{n}=3\lambda
$$

$$
W_{n}=9\lambda
$$

| Transistor | Sizing       |
| ---------- | ------------ |
| $A$        | $2 \times 2$ |
| $B$        | $2 \times 9$ |
| $C$        | $2 \times 9$ |
| $D$        | $2 \times 9$ |

### Part 2: $C_{L}=25fF$

*New Rise/Fall Times*

$$
t_{r}=6ns \times \left( \frac{25}{10} \right)fF
$$

$$
t_{r}=15ns
$$


$$
t_{f}=3ns * \left( \frac{25}{10} \right)fF
$$

$$
t_{f}=7.5ns
$$

**Pull-Up**

Still have to adjust them all

$$
15ns = t_{r}
$$

$$
\frac{1}{15}t_{r}=1ns
$$

$$
15W_{p}= 3 \lambda
$$

$$
W_{p}=45 \lambda
$$

**ALL** PMOS will be set to $2 \times 45$

**Pull-Down**:

For $A$:


$$
t_{f}= 1ns \times \left( \frac{25}{10} \right)=2.5ns
$$

$$
2.5W_{n}=3 \lambda
$$
*Rounding up means*: A should be set to $2 \times 8$

For $B,C,D$:


$$
t_{f}=7.5ns
$$
$$
7.5W_{n}=3\lambda
$$

$$
W_{n}\approxeq 23 \lambda
$$


| Transistor | Sizing        |
| ---------- | ------------- |
| $A$        | $2 \times 8$  |
| $B$        | $2 \times 23$ |
| $C$        | $2 \times 23$ |
| $D$        | $2 \times 23$ |

# 3. Action Items & Follow-Up
- [ ] Review Lecture 6 for VLSI 📅 2026-09-11
- [x] **QUIZ** Sizing-1 VLSI [[Lecture 6 - Gate Sizing and Performance Metrics#Sizing-1 Quiz]] ⏫ 📅 2026-09-14 ✅ 2026-09-10
- [x] **QUIZ** Sizing-2 VLSI [[Lecture 6 - Gate Sizing and Performance Metrics#Sizing-2 Quiz]] ⏫ 📅 2026-09-14 ✅ 2026-09-10