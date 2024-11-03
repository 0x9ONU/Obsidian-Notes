Date: 18th September 2024
Date Modified: 18th September 2024
File Folder: Week 4
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# Network Layer, Routing Fundamentals, Link State Routing Algorithm

## Routing Goal

```ad-summary
title: GOAL!
Determine "good" paths (equivalently, routes), from sending host to receiving host, thorugh network of routers
```

**Path**: Sequence of routers packets will traverse in going form given initial source host to given final destination host

*Good Paths*:
- Least “cost”
- “Fastest”
- “Least congested”

```ad-note
Tries to find a way so packets do not get lost/stuck along the way
```

Much like trying to find a path from city to city, the router calculates all of these factors in order to route a packet in the most effective way.
- This is determined how the router is programmed and how it determines its weights.

## Graph Abstraction

![[Pasted image 20240918090725.png]]

Graph: $G = (N, E)$

$N = \mbox{set of routers}= \{ u, v, w, x, y, z \}$

$E = \mbox{Set of Links} = \{ (u,v), (u,x), (v,x), (v, w), (x, w), (x, y), (w, y), (w, z), (y, z)\}$
### Costs
$$c(x, x^\prime) = \mbox{cost of link}(x, x^\prime)$$

```ad-example
- $c(w,z) = 5$
- $c(u, v) = 2$
```

Cost could always be one, or inversely related to bandwidth, or inversely related to congestion

$$\mbox{Cost of Path}(x_1, x_2, x_3,...,x_p)= c(x_1, x_2)+c(x_2, x_3)+...+c(x_{p-1}, x_p)$$

```ad-question
What is the least-cost path between $u$ and $z$
```

The least-cost path between $u$ and $z$ is 4.

$$u \rightarrow z = u \rightarrow x, x \rightarrow y, y \rightarrow z = 1+1+2 = 4$$

## Network Routing: Algorithms & Protocols

**Routing Protocol Checklist**:
1. Define the format of routing information exchanges
2. Define the computation upon receiving routing updates
3. Network topology changes over time, routing protocol must continuously update the routers with latest changes

```ad-important
**Routing Protocol** gives the steps to code and configure a router, while a routing algorithm defines how the routers see each other from a high-level view
```

### Link-State Routing Algorithm (Dijkstra)

```ad-summary
- Each router knows *complete topology* & link cost information.
- Run routing algorithm to calcualte shortest path to each destination.
```

Net topology, link costs known to all nodes
- Via a “link state broadcast”
- All nodes have same info

```ad-warning
Only routers within the *same administration* will communicate with each other in this way.
- Google routers only have access to other Google routers
- ONU routers cannot ask for information about a Google router using the link state broadcast
```

Computes least cost paths form one node (‘Source’) to all other nodes
- Creates *forwarding table* for that node

**Iterative**: After $k$ iterations, source knows least cost path to $k$ destinations

**Notation**:

$c(x, y)$: Link cost from node $x$ to $y$; ($\infty$ if not direct neighbors)

$D(v)$: Current value of cost of path from source to destination $v$

$p(v)$: Predecessor node along path from source to $v$ (neighbor of $v$)

$N^\prime$: Set of nodes whose least cost path is already known

#### Dijkstra’s Algorithm: Example

```ad-question
Compute the short-path from $u$ to all netowrk nodes using Dijkstra's algorithm
```

![[Pasted image 20240918090725.png]]

| Step | $N^\prime$     | $D(v), p(v)$ | $D(w), p(w)$ | $D(x), p(x)$ | $D(y), p(y)$ | $D(x), p(z)$ |
| ---- | -------------- | ------------ | ------------ | ------------ | ------------ | ------------ |
| 0    | $u$            | $2, u$       | $5, u$       | ==$1, u$==   | $\infty$     | $\infty$     |
| 1    | $u$==$x$==     | ==$2, u$==   | $4, x$       |              | $2, x$       | $\infty$     |
| 2    | $ux$==$v$==    |              | $4, x$       |              | ==$2, x$==   | $\infty$     |
| 3    | $uxv$==$y$==   |              | ==$3, y$==   |              |              | $4, y$       |
| 4    | $uxvy$==$w$==  |              |              |              |              | ==$4, y$==   |
| 5    | $uxvyw$==$z$== |              |              |              |              |              |

**Shortest Path**

![[Pasted image 20240918094319.png]]

**Routing Table for $u$**

| Destination | Link     |
| ----------- | -------- |
| $v$         | $(u, v)$ |
| $x$         | $(u, x)$ |
| $y$         | $(u, x)$ |
| $w$         | $(u, x)$ |
| $z$         | $(u, x)$ |

```ad-important
The shortest paths, regardless of which node the table was started from, will *always* be the same for each group of routers
```

#### Algorithm Complexity

For $n$ nodes:
- Each iteration: Need to check all nodes, $w$, not in $N$

$$n(n+1)/2 \space \mbox{comparisons}$$

```ad-note
This complexity is very high. This means that the Distance-Vector algorithm is MORE efficient for larger networks
```

#### Another Example

![[Pasted image 20240918094725.png]]

![[Pasted image 20240918094745.png]]

### MORE Examples

#### Example 1

```ad-question
Compute the shortest path from $z$ to all network nodes, using Dijkstra Algorithm
```

![[Pasted image 20240920090602.png]]

| step | Node         | $D(v), p(v)$ | $D(x)p(x)$ | $D(y)p(y)$ | $D(u)p(u)$ |
| ---- | ------------ | ------------ | ---------- | ---------- | ---------- |
| 0    | $z$          | $6, z$       | ==$2, z$== | $\infty$   | $\infty$   |
| 1    | $z$==$x$==   | ==$5, x$==   |            | $5, x$     | $\infty$   |
| 2    | $zx$==$v$==  |              |            | ==$5, x$== | $6, v$     |
| 3    | $zxv$==$y$== |              |            |            | ==$6, v$== |

![[Networks - Week 4 Day 2 2024-09-20 09.11.22.excalidraw]]

**Routing Table for $z$**

| Destination | Route    |
| ----------- | -------- |
| $v$         | $(z, x)$ |
| $x$         | $(z, x)$ |
| $y$         | $(z, x)$ |
| $u$         | $(z, x)$ |

#### Example 2

```ad-question
Consider the following network. WIth the indicated link costs, compute the shortest path from $A$ to all network nodes using Dijkstra Algorithm.
```

![[Pasted image 20240920091519.png]]

| Step | Node    | $D(B), p(B)$ | $D(C),P(C)$ | $D(D), p(D)$ | $D(E), p(e)$ | $D(F), p(f)$ |     |
| ---- | ------- | ------------ | ----------- | ------------ | ------------ | ------------ | --- |
| 0    | $A$     | $9, A$       | $9, A$      | ==$2, A$==   | $\infty$     | $\infty$     |     |
| 1    | $AD$    | $9, D$       | $8, D$      |              | ==$3, D$==   | $8, D$       |     |
| 2    | $ADE$   | $9, D$       | $8, D$      |              |              | ==$4, E$==   |     |
| 3    | $ADEF$  | $9, D$       | ==$6, F$==  |              |              |              |     |
| 4    | $ADEFC$ | ==$7, F$==   |             |              |              |              |     |

![[Networks - Week 4 Day 2 2024-09-20 09.21.16.excalidraw]]

