Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** U.P.B. Sci. Bull

**DOI**: http://www.scientificbulletin.upb.ro/rev_docs_arhiva/rez0df_881328.pdf

**Authors**: Martin KENYERES, Jozef KENYERES

**Publication Year**: 2016

**Country of Study**: Romania

**Tags**: #parallel #wsn #averageconsensus

```ad-abstract
title: Abstract
collapse: open
In this paper, we examine the effect of an attack on a network executing the
distributed algorithm average consensus. We assume that only one attack is
committed during the process of reaching the convergence. We examine how intensively an attack affects features of the average consensus algorithm. We define two parameters: the number of additional iterations and the change of the final value. Then we examine how they are changing when the following parameters are being changed: the number of iteration during which an attack is committed, an attacker's internal value, the initial values, the range of the initial values. At the end, we examine how the position of the attacked element affects the impact of an attack on the network. Firstly, we perform experiments in an example network containing 24 densely placed elements and whose topology is randomly generated. We decide to apply TDMA as a method to share a transmission medium. Then we execute another experiment in which we examine how intensive an attack is when the size of a network changes.This paper is motivated by the publications where a potential failure of a node such as a dead node, a misbehaving node etc. significantly affects the whole computation process. In contrast to the previous works, we assume the presence of an attacker who is aware of the weaknesses of distributed computing.
```

**Embed to Paper**: [[IMPACT OF AN ATTACK ON A NETWORK EXECUTING.pdf]]

## Summary

### I. Introduction

This paper investigates how a **single, targeted attack** can disrupt the operation of a distributed consensus algorithm in wireless sensor networks (WSNs). It focuses specifically on **Average Consensus (AC)** — an iterative, distributed protocol where each node updates its value based on its neighbors to converge on the network-wide average.

**Key Objective**:
- Measure how an injected attack affects:
  1. The number of **additional iterations** ($\Delta I$)
  2. The **final consensus value deviation** ($\Delta x$)

The attack is **intentional**, **intelligent**, and carried out **mid-execution**. The attacker:
- Knows the network’s behavior
- Injects malicious values without receiving others
- Replaces a node without triggering network-level alarms

---

### II. Average Consensus Algorithm

Average consensus allows a network of $N$ nodes to compute the average of initial values in a **fully decentralized** way using **iterative local communication**.

Each node $i$ maintains a scalar value $x_i(t)$ at iteration $t$ and updates it by exchanging messages with its neighbors.

**Update Rule**:
$$
x_i(t+1) = x_i(t) + \alpha \sum_{j \in \mathcal{N}_i} (x_j(t) - x_i(t))
$$

Where:
- $\alpha$ is a convergence factor.
- $\mathcal{N}_i$ is the set of neighbors of node $i$.

**Matrix Formulation**:
Let $X(i, j)$ be a 2D matrix where:
- Rows: node IDs
- Columns: iterations
- $X(i, j)$ = value of node $i$ at iteration $j$

**Adjacency Tensor**:
To model the graph structure dynamically:
$$
A(i, j, t) = 
\begin{cases}
1, & \text{if nodes } i \text{ and } j \text{ are adjacent at time } t \\
0, & \text{otherwise}
\end{cases}
$$

**Convergence Condition**:
Consensus is reached when:
$$
\forall i: |x_i(t) - \bar{x}| %3C \epsilon
$$

Where:
- $\bar{x}$ is the actual average
- $\epsilon$ is a convergence tolerance

---

### III. Attacker Model and Network Infiltration

The attacker **replaces a legitimate node** at a specific iteration $t_a$, using the same slot in TDMA scheduling, so no collisions occur.

- The attacker **transmits** but does **not receive**
- Injects a **constant malicious value** $k$
- Neighbors process it as valid data

**Adjacency Matrix Update**:
- The attacker’s position is added to $A$
- Attacked node becomes passive
- Neighbors now link to the attacker

**State Injection**:
$$
x_{attacker}(t_a) = k
$$

**Update Rule (with attacker)**:
$$
x_i(t+1) = x_i(t) + \alpha \sum_{j \in \mathcal{N}_i} A(i, j, t) (x_j(t) - x_i(t))
$$

---

### IV. Experimental Setup

#### Topology:
- 24-node network with **random dense topology**
- **TDMA access** prevents collisions
- One attacker introduced at a specific iteration

#### Evaluation Metrics:
- $\Delta I$: Difference in number of iterations to reach consensus with and without attack
- $\Delta x$: Final value deviation due to injected value

#### Parameters Varied:
1. **Attacker value** $k$
2. **Time of attack** $t_a$
3. **Initial value distribution**
4. **Attacked node position**
5. **Network size** (20 to 100 nodes)

---

### V. Experimental Results

#### A. $\Delta I(k)$ – Iteration Cost vs. Attacker Value

- As $k$ increases, $\Delta I$ increases logarithmically.
- Diminishing returns at high $k$.
- Implies attacker can significantly slow down convergence by choosing extreme values.

![Figure: ΔI vs k](attachment:image_1.jpg)

---

#### B. $\Delta I(t_a)$ – Iteration Cost vs. Attack Time

- Early attacks ($t_a$ small) are more damaging.
- Attacks after convergence ($t_a \%3E T$) have **no effect**.

![Figure: ΔI vs Attack Time](attachment:image_2.jpg)

---

#### C. $\Delta x(k)$ – Final Value Shift vs. Attacker Value

- Increases **linearly** with $k$
- Timing of attack **does not affect** final average deviation

![Figure: Δx vs k](attachment:image_3.jpg)

---

#### D. Attacked Node Position

- Position has **minimal effect** on outcome
- All nodes are roughly equally impactful due to topology density

![Figure: Effect of Node ID](attachment:image_4.jpg)

---

#### E. Scaling Across Network Sizes

Experiments repeated for 20–100 nodes in increments of 10:
- **Same patterns observed** in all sizes
- Larger networks converge slower but the **relative impact** of the attack is similar

Tables 1–4 provide raw data (not reproduced here, but available in the paper).

![Figure: Network Scaling Impact](attachment:image_5.jpg)

---

### VI. Conclusions

- A **single intelligent attacker** can significantly:
  - Increase convergence time ($\Delta I$)
  - Skew the final result ($\Delta x$)

- Attack is **most effective** when:
  - Performed early in execution
  - Value $k$ is far from the average
  - Initial values have low variance

- The impact is **topology-independent** and **scales across network sizes**

**Implications**:
- Even non-malicious node failure can be catastrophic
- Security-aware design is **mandatory** for distributed WSNs
- Future work should explore:
  - Intrusion-tolerant consensus
  - Lightweight cryptographic detection
  - Fault-aware scheduling or message weighting

---

### Key Equations

**Consensus Update**:
$$
x_i(t+1) = x_i(t) + \alpha \sum_{j \in \mathcal{N}_i} (x_j(t) - x_i(t))
$$

**Adjacency Function**:
$$
A(i, j, t) =
\begin{cases}
1, & \text{if adjacent at } t \\
0, & \text{otherwise}
\end{cases}
$$

**Consensus Condition**:
$$
\sum_{i=1}^N |x_i(t) - \bar{x}| < \epsilon
$$

**Injection Impact**:
$$
x_{attacker}(t_a) = k
$$
