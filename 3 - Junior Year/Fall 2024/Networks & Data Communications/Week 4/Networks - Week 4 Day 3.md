Date: 20th September 2024
Date Modified: 20th September 2024
File Folder: Week 4
#networks

```ad-summary
title: Today's Topics
- Distance-Vector Routing Algorithm
```

# Distance-Vector Routing Algorithm (Bellman-Ford)

```ad-summary
- Each router knows *direct neighbors* & link costs to neighbors
- Calculate the shortest path to each destination through an *iterative* process *based on the neighbors distances* to each destination
```

Utilizes the Bellman-Ford equation to calculate least-cost path from $x$ to $y$

*Bellman-Ford Equation*

Define:

$d_x(y):=$ Cost of least-cost path from $x$ to $y$
then:
$$d_x(y)=\min(\{c(x, v)+d_v(y)\}$$
## Basic Idea

From time-to-time, each node sends its own distance vector estimate to neighbors.
- When a node $x$ receives new DV estimate from neighbor, it updates its own DV using B-F equation:

$$D_x(y) \leftarrow \min_v\{c(x,v)+D_v(y)\} \space \space \space \forall \space y \in N$$
```ad-note
In normal cases, the estimate $D_x(y)$ *converge to the actual least cost* $d_x(y)$
```

## Features

**Iterative, Asynchronous:** Each local iteration caused by:
- Local link cost change
- DV update message from neighbor

**Distributed**- Each node notifies neighbors *only* when its DV changes
- Neighbors then notify their neighbors if necessary

![[Pasted image 20240920092941.png]]

## Overview: How Do They Route?

![[Pasted image 20240920093020.png]]

## Examples

### Example 1: Walk-Through

```ad-question
Compute the short-path from Node $A$ to all network nodes using Distance-Vector Algorithm
```

![[Pasted image 20240920093235.png]]

**Step 1:** Node $A$ finds the cost to all directly connected neighbors

| Router-to-Router | $A$      | $B$      | $C$      | $D$      |
| ---------------- | -------- | -------- | -------- | -------- |
| **$A$**          | 0        | 5        | 7        | 9        |
| $B$              | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $C$              | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $D$              | $\infty$ | $\infty$ | $\infty$ | $\infty$ |

**Step 2:** Node $A$ receives cost from all neighbors

| Router-to-Router | $A$ | $B$      | $C$   | $D$      |
| ---------------- | --- | -------- | ----- | -------- |
| **$A$**          | 0   | 5        | ==6== | 9        |
| $B$              | 5   | 0        | 1     | $\infty$ |
| $C$              | 7   | 1        | 0     | 2        |
| $D$              | 9   | $\infty$ | 2     | 0        |

**Step 3:** Node $A$ calculates minimum cost from Node $A$ to all nodes

| Router-to-Router | $A$   | $B$   | $C$ | $D$   |
| ---------------- | ----- | ----- | --- | ----- |
| **$A$**          | 0     | 5     | 6   | ==8== |
| $B$              | 5     | 0     | 1   | ==3== |
| $C$              | ==6== | 1     | 0   | 2     |
| $D$              | 9     | ==3== | 2   | 0     |

Continues to the next lecture…

[[Networks - Week 5 Day 1]]



