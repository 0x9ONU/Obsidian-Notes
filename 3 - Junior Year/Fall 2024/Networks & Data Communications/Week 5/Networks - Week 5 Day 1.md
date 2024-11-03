Date: 23rd September 2024
Date Modified: 23rd September 2024
File Folder: Week 5
#networks

```ad-summary
title: Today's Topics
- Link State vs. Distance Vector Comparisons
- DV Algorithm Practice
```

# Comparison of LS and DV Algorithms

**Distance Vector**:
- Distance one’s own routing table to neighbors
	- Routing update can be large in size, but travels only one link
- Each node only knows distances to other destinations

**Link State**
- Broadcast raw topology information to entire net
	- Routing update is small in size, but travels over all links in the net
- Each node knows entire topology

*Performance Measure*: Message complexity, Time to convergence

*Robustness:* What happens if the router malfunctions?

**LS**:
- Node can advertise incorrect *link* cost
- Each node computes only its *own* table

**DV**:
- DV node can advertise incorrect *path* cost
- Each node’s table used by others

## Summary

**Dijkstra Routing Algorithm**: Given a *topology map*, compute the shortest paths to all other nodes

**Bellman-Ford Routing Algorithm**: Given *the lists of distance to all destinations* from all neighbors, compute the shortest path to destination

# DV Algorithm Practice

## Practice Problem #1 

```ad-question
Consider the following network. With the indicated link costs, compute the shortest-path from $x$ to all network nodes using DV Routing Algorithm.
```

![[Pasted image 20240923092806.png]]

**Step 1**

| R-R | $x$      | $y$      | $w$      | $z$      |
| --- | -------- | -------- | -------- | -------- |
| $x$ | 0        | 8        | 3        | 5        |
| $y$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $w$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $z$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |

**Step 2**:

| R-R | $x$ | $y$      | $w$      | $z$   |
| --- | --- | -------- | -------- | ----- |
| $x$ | 0   | ==7==    | 3        | ==4== |
| $y$ | 8   | 0        | $\infty$ | 2     |
| $w$ | 3   | $\infty$ | 0        | 1     |
| $z$ | 5   | 2        | 1        | 0     |

**Step 3**

| R-R | $x$   | $y$   | $w$   | $z$ |
| --- | ----- | ----- | ----- | --- |
| $x$ | 0     | ==6== | 3     | 4   |
| $y$ | ==7== | 0     | ==3== | 2   |
| $w$ | 3     | ==3== | 0     | 1   |
| $z$ | ==4== | 2     | 1     | 0   |

## Practice Problem #2

```ad-question
Compute the shortest-path from $z$ to all netowrk nodes, using DV Routing Algorithm.
```

![[Pasted image 20240923092847.png]]

**Step 1**

| R-R | $z$      | $u$      | $v$      | $x$      | $y$      |
| --- | -------- | -------- | -------- | -------- | -------- |
| $z$ | 0        | $\infty$ | 6        | 2        | $\infty$ |
| $u$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $v$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $x$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |
| $y$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ | $\infty$ |

**Step 2**

| R-R | $z$      | $u$      | $v$      | $x$      | $y$      |
| --- | -------- | -------- | -------- | -------- | -------- |
| $z$ | 0        | ==7==    | ==5==    | 2        | ==5==    |
| $u$ | $\infty$ | 0        | 1        | $\infty$ | 2        |
| $v$ | 6        | 1        | 0        | 3        | $\infty$ |
| $x$ | 2        | $\infty$ | 3        | 0        | 3        |
| $y$ | $\infty$ | 2        | $\infty$ | 3        | 0        |

**Step 3**:

| R-R | $z$   | $u$   | $v$   | $x$   | $y$   |
| --- | ----- | ----- | ----- | ----- | ----- |
| $z$ | 0     | ==6== | 5     | 2     | 5     |
| $u$ | ==6== | 0     | 1     | ==4== | 2     |
| $v$ | ==5== | 1     | 0     | 3     | ==3== |
| $x$ | 2     | ==4== | 3     | 0     | 3     |
| $y$ | ==5== | 2     | ==3== | 3     | 0     |

