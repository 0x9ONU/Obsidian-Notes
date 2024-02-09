Date: 9th February 2024
Date Modified: 9th February 2024
File Folder: Week 3
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Slides Link:

https://www.overleaf.com/read/bkdjqzrmggtp#1d0b20
```

# Modular Arithmetic 

## Complete set of residues Modulo $m$

```ad-summary
title: Definition$
A complete set of residues modulo $m$ is a set of integers such that every integer is congruent moduo $m$ to eaxactly one integer of the set. The set of integers $0, 1, 2,...,m-1$ is a complete set of residues modulo $m$
```

```ad-important
A resudiues of modulo $m+1$ exists such that:
$$2, 3,..., m, m+1$$
```

## Canonical Set of Residues

```ad-summary
title: Definition
Let $n$ be a positive integers. The set $\{0, ..., n-1 \}$ is the canonical complete residue system modulo $n$
```

```ad-example
For **Mod 6**:
$$0, 1, 2, 3, 4, 5 \space \leftarrow \space canonical$$
$$2, 3, 4, 5, 6, 7$$
$$6, 7, 8, 9, 10, 11$$
```

## Congruent Modulo Distinct Solutions

```ad-summary
title: Theorem
Let $a, b$ and $n>0$ be integers. The equation $ax \equiv b \mod n$ has a solution iff $b$ is divisible by the $d = \gcd(a, n)$
$$\space$$
If $d|b$, then there are $d$ distinct solutions modulo $n$, and these solutions are congruent modulo $n/d$
```

If $x$ is any particular solution, then all of the solutions are given by $x+ \frac{n}{d} k$, where $0 \le k < d$

### Example 1

**If we think of the solution as equal**

$$2x = 3$$
$$x = \frac{3}{2}$$
If $2x = 3 \in \mathbb{Z}$, then there is no solution

**However, as a modulo equivalence**

$$2x = 3 \mod 5$$
$$0, 1, 2, 3, 4$$

In this case, 5 is  a solution as $8 \mod 5  = 3 \mod 5$

**How can we figure this out:**

$$\begin{matrix}2x \equiv 3 \mod 4 & \gcd(2, 4) = 2 \nmid 3 & No \space Solution \\ 2x \equiv 3 \mod 5 & \gcd(2, 5) =  1 \mid 3 & One \space Solution \end{matrix}$$

### Example 2

```ad-question
Solve $60x \equiv 90 \mod 105$
```

```ad-important
Since $\gcd(105, 60) = 15$ and $15 | 90$, we see that the congruence indeed has solutions.
- 15 Solutions as the GCD is 15
```

**Use EEA to Find 15 In terms of 60 and 105**

$$60(2) + 105(-1) = 15$$


**Multiply both sides by 6 to get 90**

$$60(12)+105(-6) = 90$$

**Move 60 to the other side to leave $b$ and $n$ alone** 
$$60(12) = 90 + 105(6)$$
**Therefore**

```ad-note
Take the Solution found from the multiple of 60 above, then divide the modulo by the gcd to find the coefficient of k
```

$$x = 12 + \frac{105}{15}k, \space \space \space 0 \le k < 15$$
$$x = 12 + k, \space \space \space  0 \le k < 15$$
$$x = 5, 12, 19, 26, 33, 40, 47, 54, 61, 68, 75, 82, 89, 96, 103 \mod 105$$

## Inverse Modulos

```ad-summary
title: Definition
Let $a, b$ and $n>0$ b eintegers. We say that $b$ is the *inverse* of a modulo $n$ if $ab \equiv 1 \mod n$ If $b$ is the inverse of $a$, we will write $b = a^{-1}$
```

```ad-note
In the set of integers $\mathbb{Z}$, there are only two invertible elements: $-1$ and $1$
```

To find $a^{-1}$, we have to solve the congruence $ax = 1 \equiv 1 \mod n$, and  hence by the previous theorem, $a^{-1} exists iff $\gcd(a, n) = 1$

```ad-example
$$3^{-1} \mod 7 = 5$$
$$3(5) = 1 \equiv 1 \mod 7$$
```

```ad-important
To solve, make sure that the $\gcd(a, n) = 1$
```ad-example
What are in the inverses when $\mod 6$?:
$$\mathbb{1}, 2, 3, 4, \mathbb{5}$$
```

### Inverse Using EEA

$$ax \equiv 1 \mod n$$
$$1 = ax + ny$$
$$ax = 1 + n(-y)$$
$$x = a^{-1}$$




