Date: 14th February 2024
Date Modified: 14th February 2024
File Folder: Week 4
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

# Modular Arithmetic Day 3

## Chinese Remainder Theorem

```ad-question
Solve the following:
$$\begin{bmatrix} x \equiv 7 \mod 8 \\ x \equiv 3 \mod 5 \end{bmatrix}$$
```

**Construct $x$ in such a way that both equations are correct:**

$$x = 7(5)y + 3(8)z$$

```ad-important
Find a number where:
$$5y \equiv 1 \mod 8$$
$$8z \equiv 1 \mod 5$$
$$\space$$
Find the inverse of $5 \mod 8$ and $8\mod 5$
$$x = 7(5)(5^{-1} \mod 8) + 3(8)(8^{-1} \mod 5)$$
```

**Find Inverses:**

$$5^{-1} = 5 \mod 8 = y$$
$$8^{-1} = 2 \mod 5 = z$$
**Plug Numbers back in**

$$x = 7(5)(5) + (3)(8)(2) \mod 40$$
$$x = 223 \mod 40 \Rightarrow x = 23 \mod 40$$

```ad-warning
If the two modulos are *not* relatively prime, the chinese remainder theorem might have no solutions
```

### Example 

```ad-question
Using the Chinese Remainder THeorem, solve:

$$\begin{bmatrix} x \equiv 2 \mod 3 \\ x \equiv 3 \mod 5 \\ x \equiv 4 \mod 7 \end{bmatrix}$$
```

$$x = \begin{matrix} 2 + 3 + 4 \\ \mod 3 \mod 5 \mod 7 \end{matrix}$$

$$x = \begin{matrix} 2(1)(5)(7)a + 3(3)(1)(7)b + 4(3)(5)(1)c \\ \mod 3 \mod 5 \mod 7 \end{matrix}$$

$$x = \begin{matrix} 2(1)(5)(7)(35^{-1} \mod 3) + 3(3)(1)(7)(21^{-1} \mod 5) + 4(3)(5)(1)(15^{-1} \mod 7) \\ \mod 3 \mod 5 \mod 7 \end{matrix}$$


$$x = \begin{matrix} 2(1)(5)(7)(2) + 3(3)(1)(7)(1) + 4(3)(5)(1)(1) \\ \mod 3 \mod 5 \mod 7 \end{matrix}$$

$$x = 140 + 63 + 60 \mod 105$$
$$x = 263 \mod 105$$
$$x = 52 \mod 105$$

## Cartesian Product

```ad-summary
title: Definition

For two sets $S$ and $T$, we define $S \times T = \{(x, y) : x \in S, y \in T \}$. $S \times S$ is a colleciton of ordered pairs $(x, y)$ where $x \in S$ and $y \in T$
```

```ad-example
Let $A = \{1, 2, 3 \}$ and $B = \{4,5, 6 \}$. Then:
$$A \times B = \{(1, 4), (1, 5), (1,6), (2, 4), (2, 5), (2, 6), (3, 4), (3,5), (3, 6) \}$$
```

### Relation

```ad-summary
title: Definiton
Let $S$ be a set. A subset of $R$ of $S \times S$ is called a relation on $S$.
$$R \le S \times S$$
```

**Notation**: We will write $a \sim b$ to denote the fact that $(a, b) \in R$. The symbol $\sim$ is called "tilde".

```ad-example
Let $B = \{1, 2, 3 \}. Thne $R = \{(1,1), (1,3), (2,2), (3,1), (3,3) \}$ is a relation on $B$
```

```ad-example
Let $x \sim y$ if $x \le y$ for all $x, y \in \mathbb{R}$. This can be written as:
$$\{(x, y) \in \mathbb{R} \times \mathbb{R} : x \le y \}$$

```ad-note
$$(3, 1) \notin \mathbb{R}$$
$$(1, 3) \in \mathbb{R}$$
```

### Equivalence Relation

```ad-summary
title: Definition
An equivalence relation on a set $S$ is a set $R$ of rodered pairs of elements of $S$, i.e., $R \subseteq S \times S$, such that:
1. $(a, a) \in R$ for all $a \in S$, i.e., $a \sim a$ for all $a \in S$ (Reflexive Property))
2. $(a, b) \in R$ implies $(b, a) \in R$, i.e., $a \sim$ implies $b \sim a$ for all $a, b \in S$. (Symmetric Property)
3. $(a, b) \in R$ and $(b, c) \in R$ implies $(a, c) \in R$, , i.e., $a \sim b$ and $b \sim c$ implies $a \sim c$ for all $a, b, c, \in S$. (Transitive Property)
```

#### Example

Let $S$ be the set of all triangles in a plane. For $a ,b \in S$, define $a \sim b$ if $a$ is similar to $b$. Then $\sim$ is an equivalence relation.

Let$S$ be the set of all polynomials with real coefficients. For $f, g \in S$, define $f \sim g$ if $f^\prime = g^\prime$. Then $\sim$ is an equivalence relation.
1. $f^\prime = f^\prime$
2. $f^\prime = g^\prime \Rightarrow g^\prime = f^\prime$
3. $f^\prime = g^\prime \space \& \space g^\prime = h^\prime \Rightarrow f^\prime = h^\prime$

### Equivalence Class

```ad-summary
title: Definition
If $\sim$ is a relation on the set $S$, then the set:

$$[a] = \{x \in S : x \sim a \}$$

is called the equivalence class of $S$ containing $a$.
```

**Notation**: $S / \sim$ denotes the collection of all equivalence classes  of $S$  defined by  the equivalence relation $\sim$. We say that $S / \sim$ is a factor set of the relation $\sim$.

```ad-example
Let $S$ be the set of all polynomials with real coefficients. For $f, g \in S$, define $f \sim g$ if $f^\prime = g^\prime$. THen $\sim$ is an equivalence relatnion. Then the calss $[f]$ contianing $f$ is the set of all antiderivaties of $f$
```

$$[x^2] = \{f \in S : f \sim x^2 \}$$
$$= \{ \frac{1}{3}x^3 + C : c \in R \}$$

```ad-warning
If equivalence on $S$ is denoted by $\sim$, that means that two classes either have to be exactly the same OR entirely different. **NO COMMON ELEMENTS**:
$$[a] = [b] \space or \space [a] \cap [b] = \emptyset$$
```

### Partition on a Set

```ad-summary
title: Definition
A partition of a set $S$ is a colleciton of *nonempty* disjoint subsets of $S$ whose union is $S$
```



