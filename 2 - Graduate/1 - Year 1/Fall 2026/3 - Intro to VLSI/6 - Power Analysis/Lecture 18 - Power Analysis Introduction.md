---
creation_date: 2026-11-02 12:19
last_modified: 2026-11-02 12:19
folder: Power Analysis
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
Power is a rate aka. how fast energy is drawn from the supply in watts.
```


$$
p(t)=V_{DD}\times i_{DD}(t)
$$
```ad-warning
Energy, on the other hand, is the total, in joules.
```


$$
E = \int p(t)dt
$$

![[Pasted image 20261102122513.png]]

```ad-example
A block drawing 2mA from a 1.0V supply dissipates 2mW. An operating last 5ns costs $2 mW \times 5 ns=10 pJ$
```

## Three Components of Power

$$
P = P_{leakage} + P_{short-circuit} + P_{dynamic}
$$

1. **Leakage**: A small current that flows through the reverse-biased PN junctions, and is present even when *no signal is changing*
2. **Short-circuit**: A brief direct current from $V_{DD}$ to ground while an input is partway between logic levels
3. **Dynamic**: The current that charges the load capacitance each time an output goes from 0 to 1

### Leakage Power

```ad-summary
Leakage flows whenever the supply is on, even when nothing switches
```

- Each drain forms a PN junction with the well or substrate. When its transistor is off, that junction is reverse-biased by up to $V_{DD}$
- A reverse-biased junction still passes a small current, $I_{leak}$


$$
\boxed{P_{leakage}=I_{leak} \times V_{DD}}
$$

![[Pasted image 20261102123020.png]]

### Short-Circuit Power

```ad-summary
While the input is between logic levels, **both** transistors *partially conduct* at once
```

- Real input takes a finite time to rise or flal
- While $V_{tn} < V_{in} < V_{DD} -|V_{tp}|$, the NMOS and PMOS are both on
- A current $I_{sc}$ flows straight from $V_{DD}$ to ground. It does no useful work

```ad-important
Shortcircuit current flows on both the rise **and** fall
```

![[Pasted image 20261102123400.png]]

![[Pasted image 20261102123722.png]]

$I_{sc}$ is a short pulse on every input edge.
- It peaks near the midpoint, where both transistors are saturated. (aka. $I_{sat}$)
- **A slower input edge widens the pulse** and wastes more energy.

### Dynamic Power

```ad-summary
Each time the output rises, the supply must charge the **load capacitance**
```

- On the rise, the PMOS turns on and the NMOS turns off.
- Current flows from $V_{DD}$ through the PMOS into $C_{L}$ until $V_{out}$ reaches $V_{DD}$

```ad-note
$C_L=C_{int}+C_{ext}$, where the gate's own drain capacitance plus the wires and gate inputs drives it.
```

```ad-important
The supply delivers this energy only when $C_L$ is charged on the **rising edge**!
```

![[Pasted image 20261102124331.png]]


### Summary

![[Pasted image 20261102124544.png]]


## Dynamic Power in Detail

### Energy Supplying the Capacitor

![[Pasted image 20261102124634.png]]


| Equation                          | Meaning                                                                                                                         |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| $i=C_{L}\frac{dV}{dt}$            | The current into the load capacitor as its voltage $v$ rises                                                                    |
| $E_{s}= \int_{0}^T iV_{DD}dt$     | Source power is the current times the votlage. Add it up over the transition over $0 \to T$                                     |
| $=V_{DD}\int_{0}^{V_{DD}}C_{L}dv$ | Sub the integral of time for the integral of voltage by combining equations 1 and 2. As $0 \to T$, $v$ goes from $0 \to V_{DD}$ |
| $=V_{DD} \times C_{L} V_{DD}$     | The integral of $dv$ from 0 to $V_{DD}$ is $V_{DD}$                                                                             |
| $\boxed{E_{s}=C_{L} V^2_{DD}}$    | Rise time energy is based on the load capacitance and the supply voltage (*not* PMOS resistance)                                |

### Energy Stored in the Capacitor

| Equation                           | Meaning                                                                            |
| ---------------------------------- | ---------------------------------------------------------------------------------- |
| $E_{c}=\int_{0}^T ivdt$            | Power into the capacitor is $i \times v$, aka current times the voltage on $C_{L}$ |
| $= \int_{0}^{V_{DD}}C_{L}vdv$      | Sub the equations as before                                                        |
| $=C_{L}\int_{0}^{V_{DD}}v dv$      | $C_{L}$ is constant, so it comes outside the integral                              |
| $E_{c}= \frac{1}{2} C_{L}V_{DD}^2$ | *Exactly half* of the energy the source delivered                                  |

#### Heat-Loss

```ad-important
This is caused by **heat-loss**! So half the energy applied will be pure heat loss due the PMOS path (PUN).
```

![[Pasted image 20261102130914.png]]

On the pull-down network (PDN), there will ALSO be heat loss (due to NMOS). 

![[Pasted image 20261102130806.png]]

![[Pasted image 20261102131007.png]]

### Dynamic Power Over the Whole Circuit

![[Pasted image 20261102131052.png]]

*Assuming that each node $i$ contains its own load capacitance*:
$$
E_{T}=V_{DD}^2 \sum_{i}^N C_{L, i}
$$
### Average Power

**Average power of node $i$:**
$$
= C_{L,i}V_{DD}^2f_{0 \to 1}
$$
- Where $f_{0 \to 1}$ is how often the node switches from $0 \to 1$ *per second*

$$
\boxed{\text{Average Power}=C_{L,i}V_{DD}fP_{i}^{0 \to 1}}
$$
- $f$ is the frequency of operation of the circuit
- $P_{i}^{0 \to 1}$ is the **probability** that node $i$ switches from $0 \to 1$ in a cycle.

![[Pasted image 20261102131359.png]]

```ad-example
$10fF$ at $1.0V$, $f=100MHz$, $P_i^{0 \to 1}=0.25$:

$$10fJ \times 25MHz=0.25\micro W$$
```
### Expected Power for $N$ Nodes

$$
W_{N}= V_{DD}^2 f \sum_{i=1}^N C_{L, i}P_{i}^{0 \to 1}
$$
- Both the supply voltage and frequency are constants (*outside* of sum)
- The probabilities and the load capacitance are different per node (**inside** the sum)

```ad-example
![[Pasted image 20261102132732.png]]
```

```ad-warning
The **clock net** carries the *most* amount of capacitance, and will always have *a probability of 100%* since it switches every cycle. This will be the most power-hungry part of the circuit.
```

```ad-important
Node switching speed is the main cause of increased average power, rather than the actual load capacitance.
```

## Signal and Transition Proabilities

### Notation

- $P_{i}^1$ the probability that node $i$ is at 1.
- $P_{i}^0=1-P_{i}^1$ the probability that it is at 0

A $0 \to 1$ transition needs the node at $0$ in one cycle and at $1$ in the next:
- This treats the two cycles as independent of each other.
$$
P_{i}^{0 \to 1}=P_{i}^0 \times P_{i}^1
$$
```ad-example
Node $C$ is at 1 a quarter of the time:
$$
P_{C}^{0 \to 1} = P_{C}^0P_{C}^1 = \frac{3}{4} \times \frac{1}{4} = \frac{3}{16}
$$
```

```ad-note
In the other direction:
$$P_i^{1 \to 0}= P_i^1 \times P_i^0$$

They are the **SAME**
```

The rest of the probability left is the case where the node goes $0 \to 0$ or $1 \to 1$. aka $P_{i}^{0 \to 0}$ or $P_{i}^{1 \to 1}$
$$
\boxed{\therefore P_{i}^{0 \to 0} + P_{i}^{1 \to 1} + P_{i}^{0 \to 1} + P_{i}^{1 \to 0}= 100\%}
$$

# 3. Action Items & Follow-Up
- [x] Review Lecture 18 for VLSI 📅 2026-11-04 ✅ 2026-11-04