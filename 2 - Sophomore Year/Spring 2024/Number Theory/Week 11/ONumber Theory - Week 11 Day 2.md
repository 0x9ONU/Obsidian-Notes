Date: 12th April 2024
Date Modified: 12th April 2024
File Folder: Week 11
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# HW 3 Review - Groups

## Problem 1 & 2

```ad-question
Is $\mathbb{Z}_10$ a group under multiplication $\mod 10$? If not, does it have a subset that is a gorup under multiplication $\mod 10$?
```

Inverse of $0$ does not exist with respect to multiplication $\mod 10$

$\mathbb{Z}_p$ is **NOT** a group under multiplication

$\mathbb{Z}_{10}^\star = \{1, 3, 7, 9\}$

## Problem 3

| x     | 1   | 3   | 7   | 9   |
| ----- | --- | --- | --- | --- |
| **1** | 1   | 3   | 7   | 9   |
| **3** | 3   | 9   | 1   | 7   |
| **7** | 7   | 1   | 9   | 3   |
| **9** | 9   | 7   | 3   | 1   |

## Problem 4

```ad-question
Is $\mathbb{R}^n$ is a group under multiplicaiton component wise addation?
```
$$\mathbb{R}^n = \{a_1,...,a_n\}: a_i \in \mathbb{R}, i=1,2,...,n\}$$
$$(a_1, a_2,...,a_n)+(b_1,b_2,..,b_n) = (a_1+b_1,a_2+b_2,...,a_n+b_n)$$

**Associative?**

Since $+$ in each component is associative, it follows that the whole group is associative.

**Identity?**

$$R+(0,0,...,0) = R$$
**Inverse?**

Inverse of $(a_1, a_2,...,a_n)$ is $(-a_1, -a_2,...,-a^n)$

## Problem 6

```ad-question
Let $G$ be a gorup and $x, y \in G$. Call $y$ the conjugate of $x$ denoted by $x \sim y$ if there exists $a \in G$ such that $y=axa^{-1}$. Prove that $\sim$ is an equivalence relation.
```

**Reflexive?**

$x \sim x$ Since $x =exe^{-1}$

**Symmetric?**

If $x \sim y$, then $y =axa^{-1}$. Then $x=a^{-1}ya = (a^{-1})y(a^{-1})^{-1}$. So, if $x\sim y \rightarrow y \sim x$

**Transitive?**

If $x \sim y \mbox{ AND } y \sim z$

Then, $y = axa^{-1}$ and $z byb^{-1}$ for some $a, b \in G$

Then $z = baxa^{-1}b^{-1} = (ba)x(ba)^{-1}$. SO, $x \sim z$

## Problem 7

```ad-question
Define $*$ on $\mathbb{Z}$ by $a * b = \max\{a, b\}$ Is $\mathbb{Z}$ a gorup under $*$?
```

**Check the Identity**

$$a * e = a \space \forall a \in \mathbb{Z}$$
$$\max\{a, e\} = a \space \space \space \forall a \in \mathbb{Z}$$

This implies that $e$ must be the least element of $\mathbb{Z}$, BUT $\mathbb{Z}$ does not have a least element, so $e$ cannot exist. $\boxed{\mbox{NOT A GROUP}}$



## Problem 8

```ad-question
Let $G = \{x \in \mathbb{R} \mbox{ if } x > 0, x \ne 1 \}$. Define operation $*$ on $G$ by $a * b = a^{\ln b}$ for all $a, b \in G$. Prove $G$ is an abelian group
```

**Associative?

Check if $a *(b *c) = (a * b) * c$ 

LHS
$$a * (b * C) = a * (b^{\ln c})= a^{\ln(b^{\ln c})} = a^{(\ln c)(\ln b)}$$
RHS
$$(a * b)*c = (a^{\ln b})*c = c^{\ln (a^ {\ln b})} = c^{\ln a \ln b}$$

#comebacklater 
Ask questions

## Problem 10

```ad-question
If $G$ is a gorup and $a, b \in G$, find the inverses of $a \cdot b$. What is the inverse of $a_1,a_2,...,a_n$ if $a_1,a_2,...,a_n$ is in a group $G$.
```

$$(ab)^{-1}=b^{-1}a^{-1}$$

$$(a_1*a_2,...a_n)^{-1} = a_n^{-1},a_{n-1}^{-1},..., a_1^{-1}$$

## Problem 11

```ad-question
Prove that $(ab)^2=a^2b^2$ iff $ab=ba$
```

Assume $ab=ba$ Then,

$$(ab)^2=(ab)(ab) = aabb=a^2b^2$$

Assume that $(ab)^2=a^2b^2$

$$abab=aabb$$
Since this can be part of a group, then you can have inverses and identities:

$$\cancel ab a \cancel b= \cancel a a b \cancel b$$
$$a^{-1}(abab)b^{-1} = a^{-1}(aabb)b^{-1}$$
$$\therefore ba = ab$$

## Problem 12

```ad-question
Is $R^+$, the gorup of positive real nubmers multiplicaiton, a sub gorup $R^\star$, which is the gorup of nonzero real numbers under multiplication?
```

$\mathbb{R}^+, \mathbb{R}^\star$ both are group under multiplication and $\mathbb{R}^+ \le \mathbb{R}^\star$, so it is a group

## Problem 13

Find the generators in $(\mathbb{Z}_8, +) : 1, 3, 5, 7$



