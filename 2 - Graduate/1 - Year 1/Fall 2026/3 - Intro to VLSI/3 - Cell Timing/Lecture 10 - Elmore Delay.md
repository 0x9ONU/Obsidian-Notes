---
creation_date: 2026-09-23 12:21
last_modified: 2026-09-23 12:21
folder: 2 - CMOS Design
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

## RC Interconnect Models

### Model 1: Distributed Model

- Per-unit-length
- The total resistance and capacitance of the wire is:

$$
R = r \times L
$$

$$
C = c \times L
$$

![[Pasted image 20260923122232.png]]

### Model 2: Lumped Model

- Combines the two equations into two simple components of $R$ and $C$

![[Pasted image 20260923122357.png]]

### Model 3: Segmented Model

- The wire is divided into a bunch of smaller segments such that:

$$
R = R_{1}+R_{2}+R_{3} \quad \text{and} \quad C=C_{1}+C_{2}+C_{3}
$$

- Distirbuted model captures the continuous RC line per-unit-length parameters $r$ and $c$.
- Segmented model approximates the distributed line by $N$ lumped sections ($\pi$ or $RC$ ladder)

![[Pasted image 20260923122441.png]]

## Net with Multiple Receivers

![[Pasted image 20260923122737.png]]

- In this case, there is a fanout of three!

```ad-question
How would that look like if we used the segmented RC model
```

![[Pasted image 20260923122756.png]]

At each of the nodes, there will be a different time constant $\tau$
- In this case, there will be $\tau_{1},\tau_{2},\tau_{3}$
- To find these constants, we need to find a way to find these times in terms of $R_{n}$ and $C_{n}$

## Elmore Delay Model: *Tree-Shaped RC Networks*

### Example RC Tree

![[Pasted image 20260923123737.png]]

### Definitions

1. **Path**: A path from the source $s$ to a node $i$ is a sequence of RC interconnect segments (edges) connecting $s$ to $i$. Denoted as $\text{path}(s \to i)$. *Highlighted in Red*
2. **Shared Path**: The portion of two paths that is common from the source up to their divergence point. *Highlighted in Yellow*
3. **Path Resistance $R_{i}$**: The *sum* of the resistances of *all segments* on the path from the source $s$ to node $i$
4. **Shared path resistance $R_{ik}$**: For node $i$ and $k$, the *sum* of the resistances of the segments that $\text{path}(s \to i)$ and $\text{path}(s \to k)$
5. **Time Constant at node $i$ (*Elmore Delay*)**: The first moment of impulse resopnse at node $i$, given by the sum over all capacitors times the shared path resistance to node $i$

### Functions

$$
R_{ik}= \sum_{j}Rj \Rightarrow (R_{j} \in [\text{path}(s \to i)] \cap \text{path}(s \to k)) \Leftarrow \circ \mathbb{1}
$$
$$
\tau_{Di} = \sum_{k=1}^N c_{k}R_{ik} \Leftarrow \circ{\mathbb{2}}
$$
Where:
- $s$: the source node
- $i, k$: arbitrary nodes (of your choice)
- $C_{k}$: capacitance at node $k$
- $R_{j}$: resistance of segment $j$
- $N$: total number of nodes

### Examples

**Path resistances**:
- $R_{s \to 4}=R_{1}+R_{3}+R_{4}$
- $R_{s \to 5} = R_{1}+R_{3}+R_{5}$

**Shared Path**:
- $R_{2 \to 4}=R_{1}$ 
- $R_{2 \to 5}=R_{1}$ 
- $R_{4 \to 5} = R_{1}+R_{3}$

**Time Constants using Elmore Delay**
- $\tau_{D_{1}}=C_{1}R_{1}+C_{2}R_{1}+C_{3}R_{1}+C_{4}R_{1}+C_{5}R_{1}$
- $\tau_{D_{2}}= C_{1}R_{1}+C_{2}(R_{1}+R_{2})+C_{3}R_{1}+C_{4}R_{1}+C_{5}R_{1}$
- $\tau_{D_{3}}=C_{1}R_{1}+C_{2}R_{1}+C_{3}(R_{1}+R_{3})+C_{4}(R_{1}+R_{3})+C_{5}(R_{1}+R_{3})$
- $\tau_{D_{4}}=C_{1}R_{1}+C_{2}R_{1}+C_{3}(R_{1}+R_{2})+C_{4}(R_{1}+R_{3}+R_{4})+C_{5}(R_{1}+R_{3})$
- $\tau_{D_{5}}=C_{1}R_{1}+C_{2}R_{1}+C_{3}(R_{1}+R_{3})+C_{4}(R_{1}+R_{3})+C_{5}(R_{1}+R_{3}+R_{5}k)$
## Elmore on RC Chains

### RC Chain Model

![[Pasted image 20260923125409.png]]

### For Lumped Model (the Entire Chain)

$$
R = L \times r
$$

$$
C = L \times c
$$

$$
\boxed{\tau = RC = (L \times r)(L \times c)=rCL^2}
$$

![[Pasted image 20260923125443.png]]

### Distributed Model (Elmore Delays)

$$
\boxed{\tau_{N}= \sum_{i=1}^NC_{i} \times \sum_{j=1}^N R_{j}}
$$
Where:
- $C_{i}$ is the capacitance at *node* $i$
- $R_{j}$ is the resistance of *segment* $j$

### Elmore Delay (For All Segments)

```ad-important
title: Setup
$$
C_{i}=c \Delta L, \quad R_{j}=r \Delta L
$$
```


$$
\tau_{N} = \sum_{i=1}^N (c \Delta L) \times \sum_{j=1}^i (r \Delta L)
$$
$$
= c \Delta L \times r \Delta L \sum_{i=1}^N i
$$
$$
=cr(\Delta L)^2 \times \frac{N(N+1)}{2}
$$
```ad-note
$$\Delta L = \frac{L}{N}$$
```
$$
= \frac{crL^2}{N^2}\times \frac{N(N+1)}{2} \Leftarrow \text{From proof} 
$$
$$
\boxed{\tau_{N}= \frac{crL^2(N+1)}{2N} = \frac{RC(N+1)}{2N} \Leftarrow \circ \mathbb{3}}
$$

*For Large $N$*

$$
N+1 \approx N
$$
$$
\boxed{\tau_{N} \approx \frac{crL^2}{2} = \frac{RC}{2}}
$$

```ad-important
Even though the lump model is quick, it is actually *very* pessimistic, up to **half** depending how large $N$ is
```

### Key Takeaways

- An RC interconnect of length $L$ with a per-unit-length resistance $r$ and capacitance $c$ can be modeled as a chain of $N = \frac{L}{\Delta L}$ sections.
- Elmore delay is *above*
- For large # of segments, the time constant is about *half* of the lump estimation
- The lumped RC model, which predicts the time constant to be the product of $R$ and $C$, is overly pessimistic.
- For $N=1$, we can divide it even further into smaller segments until it meets best case!

## Step Response of RC Wire as a Function of Time and Space

![[Pasted image 20260923131546.png]]

**Parameters**:
- Uniform $RC$ wire length $L$
- Per-unit-length resistance: $r (\Omega/\text{length})$
- Per-unit-length capacitance: $c (F/\text{length})$
- Wire is modeled by $N$ equal-length segments (distributed $RC$)
- A step input $V_{in}$ is applied at $x= 0$
- The plot shows the step response $V(x,t)$ at different positions $x$ along the wire 

```ad-important
title: Observations
- Nodes clsoer ot the soruce (smalelr $x$) respond faster
- Nodes frather form the source have larger delay and slower rise time
- Therepsonse is monotonic and approaches the input value
```

## RC-Models: Lumped vs. Distributed

### Points of Interest

| Voltage Range                 | Lumped RC Network | Distributed RC Network |
| ----------------------------- | ----------------- | ---------------------- |
| $0 \to 50\% \space (t_{p})$   | $0.69 RC$         | $0.38RC$               |
| $0 \to 63\% \space (\tau)$    | $RC$              | $0.5RC$                |
| $10\% \to 90\% \space(t_{r})$ | $2.2RC$           | $0.9RC$                |

### For $N=2,3,4$

![[Pasted image 20260923132118.png]]

### Key Observations

- The distributed RC network has a faster initial response than a lumped RC network with the same total $R$ and $C$
- The 50% delay, 63% time constant, and 10%-90% rise time are all smaller for the distributed RC network
- As the number of segmetns increases, the response approaches that of a uniform RC line

## Driving an RC-Line

![[Pasted image 20260923132406.png]]

### Parameters

- $R_{s}$: driver (source) resistance
- $r_{w}$: wire resistance per unit length
- $c_{w}$ wire capacitance per unit length
- $L$: wire length
- $R_{w}=r_{w}L$: total resistance
- $C_{w}=c_{w}L$: total wire capacitance

### Equations

**At the far end**:


$$
\tau_{D}= R_{s}C_{w}+\frac{R_{w}C_{w}}{2}
$$

$$
\boxed{\tau_{D}=R_{s}C_{w}+0.5r_{w}c_{w}L^2}
$$
**Propagation Delay (At the 50% rise time)**:


$$
t_{p}=0.69R_{s}C_{w}+0.38R_{w}C_{w}
$$

### Designer Rule of Thump $\star$

```ad-important
The RC wire delmays should only be considered when the *interconnect delay* is much larger than the *intrinsic delay* of the driving gate.
```


$$
t_{pRC} \gg t_{pgate}
$$

$$
t_{pgate} \gg t_{pwire}
$$

#### Critical Length

```ad-summary
We will ignore the RC delays when the wire length $L$ is much smaller than the following:
```


$$
L_{crit} \gg \sqrt{ \frac{t_{pgate}}{0.38rc} }
$$
Where:
- $t_{pgate}$: **intrinsic delay** of the driving gate
- $r$: **wire** resistance per unit length
- $c$: **wire** capacitance per unit length

#### Typical Guidelines (for $0.5 \micro m$ CMOS )


| Wire Type        | Length for Ignoring Wire Delay (approx.) | Comments                                                                            |
| ---------------- | ---------------------------------------- | ----------------------------------------------------------------------------------- |
| Diffusion wire   | $L < 20 \lambda$                         | Often ignored                                                                       |
| Polysilicon wire | $L < 200 \lambda$                        | WIthin a cell, usually ignored                                                      |
| Metal wire       | $L < 20,000 \lambda$                     | Short metal wires can be ignored, while **long** metal wires *should be considered* |

#### Key Takeaways

- Compare the interconnect delay with gate delay before considering RC effects
- Use above equations to determine this
- Depending on the process, diffusion wire and polysilicon wire can often be ignored, while global metal wires can exhibit smaller RC
- Metal has a lower inherit resistance and capacitance, so it is used from cell-to-cell connections
- Poly connects values within the cells
	- Can also be used to represent length resistances in *analog*
	- due to its lower inherit capacitance
- Diffusion should *never* be used as a wire

## Application of Elmore Method to Static CMOS 

### Example: 3-Input NAND

```ad-question
Sketch a 3-input NAND with trsnsitor widths chosne to achieve effective rise and fall resistances equal to a unit iverter ($R$)
- Gate cap and diff cap are both assumed to be in $C$ units/unit width
```

![[Pasted image 20260923135001.png]]

```ad-important
Good designers make good assumptions to make a design off the ground to get a quick approximation. From there, the initial design is placed on the simulator to get the more accurate numbers.
```

#### Quick Assumptions

- The capacitances are based on the widths of the transistors
- The P-transistor has around 3 times the amount of resistance as the N-transistor:
	- P transistors each have $R$ resistance
	- N transistors each have $\frac{R}{3}$ resistances ($R$ in series if they are all on)
- The $C_{int}$ is a combination of all the capcitances coming from the p-type and n-type
	- $C_{int}=3C + 2C \times 3  =9C$
- The nodal capacitances are just the value of the capacitance on one fo the n-type transistors (aka $C=3C$)
- For the wires,  it is approx equal to all the capacitances connected from the transistors (since they are not long enough):
	- $C_{w}=3+2=5C$
- Let us make three nodes ($f, g, h$) for the function and the two nodes on the pull-down side
- Let us call the inputs $a, b, c$ respectively

#### Analysis

![[Pasted image 20260928122835.png]]

**What is the worst case?**

*Worst Case Fall*
- (110) → (111)
- This way, we are able to charge both internal capacitances found on nodes $g$ and $h$

![[Pasted image 20260928123357.png]]

```ad-note
The source here is the ground (aka. the driver driving 1 to 0)
```

$$
t_{f}= 9C\left( \frac{R}{3} +\frac{R}{3}+\frac{R}{3} \right)+3C\left( \frac{R}{3}+\frac{R}{3} \right)+3C\left( \frac{R}{3} \right)
$$

$$
t_{f}=9RC+2RC+RC
$$

$$
\boxed{t_{f}=12RC}
$$

*Worst Case Rise*

```ad-note
There are multiple worst-case rise vectors that could be chosen.
```

- (111)→(110)
- With both internal nodes being fully discharged and then voltage is added, they will charge.
- We need to consider them in the rise time this way.

![[Pasted image 20260928124434.png]]

```ad-warning
This time around, the VDD will be the source as it is the driver this time.
```

$$
t_{r}= 9C(R)+3C\left( R \right)+3C\left( R \right)
$$
$$
\boxed{t_{r}=15RC}
$$

#### Further Question

```ad-question
Estimate the worst-case rising and falling delay of 3-input NAND driving $h$ identical gates.
```

![[Pasted image 20260928125215.png]]

*Fall Time*

![[Pasted image 20260928125314.png]]

$$
t_{f}= 3C\left( \frac{R}{3} \right)+3C\left( \frac{R}{3}+\frac{R}{3} \right)+[(9+5h)C]\left( \frac{R}{3}+\frac{R}{3}+\frac{R}{3} \right)
$$

$$
t_{f}=(12+5h)RC
$$
**Rise Time**


$$
t_{f}=3C(R)+3C(R)+[(9+5h)C](R)
$$

$$
t_{r}=(15+5h)RC
$$


## Quiz Questions

### Elmore 1

```ad-question
A wire has these parameters:
1. $r= 100k \Omega / \micro m,$ 
2. $c = 100 aF / \micro m,$ 
3. $L = 1000 \micro$
   
Determine $\tau$ when $N=1, 2, 4, 10, \text{ and } n \gg 1$. 
```


$$
R = 10^5k \Omega = 100M \Omega
$$
$$
C = 10^5 aF = 10^5*10^{-18}F=100fF
$$
#### For $N=1$

$$
\tau = RC=(100*10^9)(100*10^{-15})= 10ms
$$

#### For $N=2$

$$
\tau = \frac{RC(N+1)}{2N}= \frac{(100*10^9)(100*10^{-15})(2+1)}{2*2}= 7.5ms 
$$
#### For $N = 4$

$$
\tau = \frac{10ms*5}{8}= 6.25ms 
$$
#### For $N=10$

$$
\tau = \frac{10ms * 11}{20}=5.5ms
$$

#### For $N\gg 1$

$$
\tau = \frac{RC}{2}=\frac{10ms}{2}=5ms
$$



### Elmore 2

### Elmore 3

```ad-question
Consider source $s$ and recievers $A, B, C$ placed as shown. Considering the wire delays, which routing is preferred? Justify based on Elmore time constants.
```

![[Pasted image 20260923133749.png]]

The second routing is better!
# 3. Action Items & Follow-Up
- [x] Review Lecture 10 for VLSI 📅 2026-09-28 ✅ 2026-09-28
- [x] [[Lecture 10 - Elmore Delay#Elmore 1|Elmore 1]] Quiz ⏫ 📅 2026-09-28 ✅ 2026-09-23
- [x] [[Lecture 10 - Elmore Delay#Elmore 2|Elmore 2]] Quiz ⏫ 📅 2026-09-28 ✅ 2026-09-23
- [x] [[Lecture 10 - Elmore Delay#Elmore 3|Elmore 3]] Quiz ⏫ 📅 2026-09-28 ✅ 2026-09-23
