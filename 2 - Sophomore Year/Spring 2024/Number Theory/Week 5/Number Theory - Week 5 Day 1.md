Date: 19th February 2024
Date Modified: 19th February 2024
File Folder: Week 5
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

https://www.overleaf.com/read/nhybbdkvnsqm#e2f44d
```

# Binary Operation

```ad-summary
title: Definition

Let $G$ be a set. A binary operation $G$ is a function $(\star): G \times G \rightarrow G$ that assigns each **ordered pair of elements** of $G$ an elemnet of $G$.
- ex. $\star(A,b) = c$ OR $a \star b = c$
```

```ad-note
title: Remember 
$G \times G$ is the cross product that results in all the pairs such that:
$$\{(g_1, g_2) : g_1, g_2 \in G \}$$
```

Notation: $a * b = G(a, b)$

```ad-example
Addition and multiplications of integers are examples of binary operation
```

## Set of Integers Example

**Addition**

$$G = \mathbb{Z}$$
$$+: \mathbb{Z} \times \mathbb{Z} \rightarrow \mathbb{Z}$$
$$+(-3,5)=2$$
$$-3 + 5 = 2$$

**Multiplication**

$$\cdot : \mathbb{Z} \times \mathbb{Z} \rightarrow \mathbb{Z}$$
$$\cdot(-2, 3) = -6$$
$$(-2) \cdot (3) = -6$$

# Group

```ad-summary
title: Definition

Let $G$ be **a set together with a binary operation** (usually called multiplication) that assigns each ordered pair of elements $(a,b)$ of $G$ on element of $G$ denoted by $ab$. We say that $G$ is a group under this operation if:
1. Associativity: $(a \star b) \star c = a \star (b\star c)$ for $a, b, c$ in $G$ (It does not matter how the elements group each other)
2. Identity: There is an element $e$ in $G$ such that $a \star e = e \star a = a$ for all $a \in G$
3. Inverses: For each element $a \in G$, there is an element $b \in G$ such that $a \star b = b \star a = e$
```

## Integers Example

**Addition**

$$(\mathbb{Z}, +)$$
$$\mathbb{Z}_1 + (\mathbb{Z}_2 + \mathbb{Z}_3) = (\mathbb{Z}_1 + \mathbb{Z}_2) + \mathbb{Z}_3$$
$$\mathbb{Z} + 0 = \mathbb{Z}$$
$$\mathbb{Z} - \mathbb{Z} = 0$$
```ad-important
This is a group
```

**Multiplication**

$$(\mathbb{Z}, \cdot)$$

```ad-warning
It is not a group as it fails the third rule.
```

$$\mathbb{Z} \cdot \frac{1}{\mathbb{Z}} \notin \mathbb{Z}$$
## Rational Numbers Example

**Addition is a Group**

**Multiplication**

```ad-warning
This group just barely fails again on the third rule.
```

$$0 * \frac{1}{0} \notin \mathbb{Q}$$

### How Do We Fix This Case?

We define $Q^\star$ such that: Set of **nonzero** rational numbers.

Now $(\mathbb{Q}^\star, \cdot)$ is a group.

## Integer Modulo Example

**Addition $\mod n$**

$$(\mathbb{Z}_n, +)$$

Associative Works

Zero Works for the identity

And, regardless of what is chosen for $n$, every element has an additive inverse.

```ad-important
This is a group
```

**Multiplication $\mod n$**

$$(\mathbb{Z}, \cdot)$$

```ad-warning
This group fails at the third rule
```

Unless $n$ is chosen to be a prime number OR only keep those elements within $Z_{n}$ are relatively prime to $n$, a multiplicative inverse may not exist for certain numbers

$$2^{-1} \notin \mathbb{Z}_6$$
$$\forall x (x \in \mathbb{Z}_p) x^{-1} \in \mathbb{Z}_p $$
$$\mathbb{Z}_6^\star = \{ 1, 5 \}$$

# Abelian Group

```ad-summary
title: Definition
A gropu $G$ is called an abelian group or a commutative group if $ab=ba$ for any $a, b$ in $G$. If there is some pair $(a,b)$ for which $ab \ne ba$.
```

## Examples

### Example 1

```ad-example
1. Show that the set:
$$A = \{ f_{m,b} : \mathbb{R} \rightarrow \mathbb{R}: m, b \in \mathbb{R}, m \ne -, f_{m,b}(x) = mx+b \}$$
of affine fucnitons form a gourp under composition of functions
2. Let $S = \mathbb{R} \backslash \{-1 \}$. Define the operation $\star$ on $S$ by $a \star b = a \cdot b + a + b$ for all $a, b \in S$. Prove that $S$ is an abelian group.
```

**Affine Functions**

Define $(A, \odot)$

*Associative*
$$f \odot(g \odot h) = (f \odot g) \odot h$$

*Identity*

$$e(x) = x$$
$$(f \odot e )(x) = f(e(x)) = f(x) \space \forall x$$

*Inverse*

Since each function is a one-to-one function, an inverse exists for each function

$$(f \odot f^{-1})(x) = e(x)$$

```ad-warning
This is a group that is NOT communative, so it is NOT an affine group.
```

**Prove that $S$ is an abelian group**

This definition is based on usual multiplication and addition of real numbers.

$$(S, \star) \Rightarrow a \star b = a \cdot b +a + b$$

*Associative*

Evaluate Left-Hand Side:

$$a \star (bc + b + c)$$
#comebacklater 
$$$$

Evaluate Right-Hand Side:

*Identity*

Find $e$ such that $a \star e = e \star a = a$

$$ae + a + e = a$$
$$ae + e = 0$$
$$e(a+1) = 0$$

```ad-important
Since $-1 \notin S$, this works out and $a+1$ can be moved to the other side with no problem.
```
$$e = 0$$
$$0 \star a = 0 \cdot a + 0 + a = a$$

*Inverse*

Fix $a$ to a specific value. Find $b$ such that:

$$a \star b = 0$$
$$ab + a + b = 0$$
$$ab +b = -a$$
$$b(a+1)=-a$$
$$b = \frac{-a}{a+1}$$
$$a^{-1} = \frac{-a}{a+1}$$

### More Examples

```ad-example
- $\mathbb{Z}$ is nnot a gorup under subtraction because its not associative.
- The colleciton of 2 x 2 matricies $M_{2 \times 2}$ is a gropu under componetwise addition. What about multiplication?
- The set of all invertible 2 × 2 matrices over $\mathbb{R}$ is called the general  
linear group of degree 2 and is denoted by $GL_2( \mathbb{R})$.
- The set of all invertible $n \times n$ matrices over $\mathbb{R}$ is called the general  
linear group of degree n and is denoted by $GL_n(\mathbb{R})$.
```

#### Matrices

**Additive**

*Associative*

$$\begin{bmatrix} 2 & 1 \\ 0 & -3 \end{bmatrix} + \begin{bmatrix}1 & -2 \\ 3 & 5 \end{bmatrix} = \begin{bmatrix} 3 & -1 \\ 3 & 2 \end{bmatrix}$$

*Additive Inverse*

$$\begin{bmatrix} 1 & -2 \\ 3 & 5 \end{bmatrix} + \begin{bmatrix} -2 & 2 \\ -3 & 5 \end{bmatrix} = \begin{bmatrix} 0& 0 \\ 0 & 0 \end{bmatrix}$$

```ad-note
Is a group
```

**Multiplicative**

*Associative?*

$$\begin{bmatrix} 2 & 1 \\ 0 & -3 \end{bmatrix} \cdot \begin{bmatrix} 1 & -2 \\ 3 & 5 \end{bmatrix} = \begin{bmatrix} 5 & 1  \\ -9  & -15\end{bmatrix}$$

```ad-important
Associative is true, BUT not communative
```

*Identity*

$$\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$

*Inverse*

```ad-warning
**NOT EVERY** 2x2 matrix has a multiplicative inverse.
```

```ad-important
To make it a group, only include the matricies that are invertible, which is determined when the determinate is NOT equal to zero:
$$\begin{bmatrix} a & b \\ c & d\end{bmatrix} = ad-bc$$
```

If matrix $A$ equals:

$$\begin{bmatrix} a & b \\ c & d \end{bmatrix}$$

Then matrix $A^{-1}$ is:

$$\frac{1}{ad-bc} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$$

When they are multiplied:

$$\frac{1}{ad-bc} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}\begin{bmatrix} a & b \\ c & d \end{bmatrix} =  \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} $$

$$A^{-1} \cdot A = Identity$$

