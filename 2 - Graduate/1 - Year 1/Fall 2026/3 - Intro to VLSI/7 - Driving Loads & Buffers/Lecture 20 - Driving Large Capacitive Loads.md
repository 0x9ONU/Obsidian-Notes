---
creation_date: 2026-11-09 12:19
last_modified: 2026-11-09 12:19
folder: 7 - Driving Loads
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

## Motivation

A small gate must sometimes drive a very large node
- Clock networks
- Long on-chip buses
- High-fanout control nets
- Output pads, off-chip loads

![[Pasted image 20261109122359.png]]

```ad-example
Similar to 1 person trying to move a heavy boulder vs. a bunch of people moving a single boulder
```

- By placing $N$ inverter stages, we can improve the performance of a chip that needs to drive a large cap load

```ad-question
title: Design Questions
1. How many stages should the driver have
2. How large should each stage be?
```

## Review: Single-Stage Delay

```ad-summary
An inverter's delay grows linearly wih its load
```

![[Pasted image 20261109122959.png]]

$$
t_{p}=k R_{W}C_{int}+kR_{W}C_{ext}
$$
```ad-important
When the external capacitance is zero, we have $C_{int}$ does not change when $W$ increases. 
- This means that $R_W \times C_{int}$ is a constant independnet of the width.
- This means all intrinsic falls do not depend on $W$
```
### Normalizing the Delay Model

$$
t_{p} = kR_{W}(C_{int} + C_{ext})
$$
$$
= kR_{W}C_{int}\left( 1 + \frac{C_{ext}}{C_{int}} \right)
$$
$$
= t_{p0}\left( 1 + \frac{C_{ext}}{C_{int}} \right)
$$

$$
= t_{p0}\left( 1 + \frac{C_{ext}}{\gamma C_{in}} \right)
$$
$$
\boxed{t_{p} = t_{p0} \left( 1 + \frac{f}{\gamma} \right)}
$$
```ad-note
$$ \frac{C_{ext}}{C_{int}} = \frac{C_{ext}}{C_{in}} \times \frac{C_{in}}{C_{int}} = \frac{f}{\gamma}$$ 
This is how the input capacitance relates to the internal and external capacitance.
$$\gamma = \frac{C_{int}}{C_{in}} \approx 1$$
**Self-laoding ratio**: fixed by the process, close to 1 in most CMOS
$$f = \frac{C_{ext}}{C_{in}}$$
**Effective fanout**: the only term sizing can change
- Driving $N$ identical inverters from a single line would make this value $N$
- For non-identical, consider $C_{in}$ as a ratio (ex. $C_{in} + 1/2 C_{in} = 1.5 C{in}$)
```

### Example: Two-Stage Delays

```ad-question
Find the difference between a single stage and a two stage delay given:
1. $t_{p0} = 10ps$
2. $\gamma = 1$
3. $C_{in} = 10fF$
4. $C_{ext} = 1000 fF$
```

![[Pasted image 20261109125032.png]]

*For Single Stage*
$$
t_{p} = t_{p0}\left( 1 + \frac{f}{\gamma} \right)
$$
$$
t_{p} = (10ps)\left( 1 + \frac{1000fF}{10fF} \right)=1010ps
$$
*For Double Stage (adding a single buffer)*


$$
t_{p} = 10ps\left( 1 + \frac{100fF}{10fF} \right) + 10ps\left(  + \frac{1000fF}{100fF} \right)=220ps
$$

![[Pasted image 20261109125457.png]]

## Inverter-Chain Sizing Problem

![[Pasted image 20261109130145.png]]


$$
t_{p} = t_{p,1} + t_{p,2} + \dots + t_{p, N} = \sum_{j=1}^N t_{p, j}
$$

**Given**: Stage 1’s input capacitance and the load
**Find**: Number of stages $N$ and the size of each stage to drive the load properly

### Sizing a Chain of Fixed Length Expression

$$
t_{p} = t_{p_{0}}\sum_{j=1}^N \left( 1 + \frac{C_{in, j + 1}}{\gamma C_{in, j}} \right)
$$

$$
C_{in, N+1} \equiv C_{L}
$$
*Knowns*:
- Stage 1’s $C_{in}$
- The whole load $C_{L}$

*Unknowns*:
1. The $N-1$ input capacitances of stages 2 through $N$ ($C_{in, j}\text{ where } j: 2 \to N$)

```ad-important
title: Method
Set each of the $N-1$ partial derivatives of the delay to zero!

$$\frac{\partial t_p}{\partial C_{in, j}} \forall N \ge j \ge 2$$
```

#### Unrolling the Summation

$$
t_{p} = \dots + t_{p0}\left( 1+\frac{C_{in, j}}{\gamma C_{in, j-1}} \right) + t_{p0}\left( 1+ \frac{C_{in,j+1}}{\gamma C_{in, j}} \right)+\dots
$$

*For two pairs of partials:*
$$
\frac{\partial t_{p}}{\partial C_{in,j}} = \frac{t_{p0}}{\gamma C_{in, j-1}}- \frac{t_{p0}C_{in,j+1}}{\gamma C^2_{in, j}} = 0
$$
*Simplify it out by moving negative equation to the other side and canceling out terms*:
$$
\Rightarrow \frac{C_{in, j}}{C_{in, j-1}} = \frac{C_{in, j+1}}{C_{in, j}}
$$

$$
\equiv f_{j-1} = f_{j}
$$
```ad-important
The effective fannout of every stage should be the same as its neighbors, so each stage would be the **geometric mean of its neighbors**
```

$$
\boxed{\Rightarrow C_{in, j} = \sqrt{ C_{in, j-1}C_{in, j + 1} }}
$$

```ad-example

![[Pasted image 20261109132619.png]]

In this case, the $f$ value is the same for every inverter in the series!
```

### Different Way of Considering it

![[Pasted image 20261109132740.png]]

*Path fanout splits evenly*
$$
f^N=F = \frac{C_{L}}{C_{in, 1}}
$$
*Same fanout, same delay per stage*
$$
f = \sqrt[N]{ F }
$$
**Maximum Delay for a given N**
$$
\boxed{t_{p} = N t_{p0}\left( 1 + \frac{\sqrt[N]{F}}{\gamma} \right)}
$$
```ad-note
$\gamma$ is often very close to or is 1, so that can often simplfy the expression out
```
### Example 1: Applying the Equation for 8 times load

```ad-question
Driving a load of $8 \times$ the input, $N = 3$
```

![[Pasted image 20261109133221.png]]


$$
F = \frac{C_{L}}{c_{in,1}} = 8
$$
$$
f = \sqrt[N]{ F }=\sqrt[3]{ 8 }=2
$$
$$
t_{p} = 3 t_{p0}(1+2) = 9 t_{p0}
$$

```ad-note
The overall ratio of 8 is distributed evenly: every stage drives twice its own input capactiance
```

![[Pasted image 20261109133445.png]]

- They have the same effective fanout ratios

### Example 2: A path fanout of $F = 64$

**Given**: $t_{p0} = 10ps$, $\gamma = 1$, $C_{in, 1} = 1fF$, and $C_{L} = 64fF$


| Stages $N$ | Fanout $f$ | Delay (ps)        |
| ---------- | ---------- | ----------------- |
| 1          | 64         | 650               |
| 2          | 8          | 180               |
| 3          | 4          | 150 (**min**)     |
| 4          | 2.83       | 153 (*increased*) |

![[Pasted image 20261109134159.png]]

```ad-important
This means 3 stages would be the best pick!
```

![[Pasted image 20261109134325.png]]

```ad-note
- Sizes multiply by $f$
- The last stage is large
- Dimishing returns
	- Going past the optimum actually adds delay instead of reducing it
```
# 3. Action Items & Follow-Up
- [x] Review Lecture 20 VLSI 📅 2026-11-16 ✅ 2026-11-16