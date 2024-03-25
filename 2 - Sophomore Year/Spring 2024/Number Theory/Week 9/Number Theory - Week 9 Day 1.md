Date: 25th March 2024
Date Modified: 25th March 2024
File Folder: Week 9
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

https://www.overleaf.com/read/mtcyydgrkxqs#f6a3d5
```

--- 
```ad-important
title: Final Project
Chose a topic from chapters 11-16 from the book and do a presentaiton on them.
```ad-warning
Chapter 13 is the most difficult math-wise
```

# Commutative Rings

Both $\mathbb{Z}, \mathbb{Z_n}$ are equipped with two operations addition and multiplicaiton.

```ad-question
What are the algebraic properties of these sets?
```ad-check
title: Solution
We get **commutative rings** and fields
```

```ad-summary
title: Defintiino
A commutative ring $R$ conssists of a nonempy set $R$ together with two binary oeprations addtion $+$ and multiplcaiotn $*$ with respective identities 0 and 1, taht satisfy the follwoing properties:
1. Closure: $u + v \in R$ and $uv \in R$
2. $R$ is an abelian gorup under addtiion. $(R, +)$
3. Multiplicaiton is associative and commutative. $(R, *)$
4. $R$ has a multiplicative identity.
5. Distributive law hold: $w(u+v) = wu+wv$ and $(u+v)w =uw+vw$ for all $u, v, w \in R$
```

**This is written as: $(R, +, *)$**

```ad-example
- $(\mathbb{Z}, +, *$
- $(\mathbb{R}, +,  *)$
- $(\mathbb{Z}_n, +, *)$
- $P = \mbox{Set of polynomials} \Rightarrow (P, +, *)$ (COEFFICIENTS DONT MATTER. Works for $\mathbb{Z}, \mathbb{R}, \mathbb{Q}$)
- $\mathbb{Z}[i] \rightarrow \{m +ni \in R \} \Rightarrow (\mathbb{Z}[i], +, *)$
```

```ad-example
title: Zero Ring
$R = \{0\}$ with $0 + 0 = 0$ and $0 * 0 = 0$, is a commutative rign called the zero ring.
```

## Properties of Commutative Rings

Let $R$ be a commutative ring:
1. For all $a \in R, a * 0 =0$
2. For all $a \in R, -(-a) = a$
3. For all $a, b \in R, a(-b) = (-a)b = -(ab)$
4. For all $a, b \in R, (-a)(-b) = ab$

```ad-important
After confirming the axioms given in the defintion, you must make sure that all of these properties *also* work:
$$a*(0+0) = a*0$$
$$a*0 + a*0 = a*0$$
$$a*0 = 0$$
---
$$-(-a) = a$$
$$-a + a - 0$$
```

```ad-note
A negative sign in front of a number means the addative inverse of it
$$-x=y \Rightarrow x + y = 0$$
```

# Subrings

```ad-summary
title: Definition
A subring $R$ of a ring $S$ is a subset of $S$ which itself a ring under the same operations as definied on $S$, and has the same identity elmeent as $S$.
```

```ad-example
$\mathbb{Z} \subseteq \mathbb{Q} \subseteq \mathbb{R} \subseteq \mathbb{C}$ is a tower os subrings.
```

```ad-important
title: Theorem
Let $R$ be a nonempty subring of the commutative ring $S$. Then $R$ is a subring of $S$ iff
1. $R4 is close dunder the operations defined on $S$,
2. For all $a \in R$, then $-a \in R$, and
3. $R$ contians the muliplicative identity of $S$
```

## Units

```ad-summary
title: Definition
Let $R$ be a commutative ring. An element $a \in R$ is said to be invertible if there exiss an element $b \in R$ such that $ab=1$
$$\space$$
The element $a$ is also called a unit of $R$ , and the elemetn $b$ is called a multiplicative inverse of $a$ usuallyd neoted by $a^{-1}$
```

```ad-example
- $1$ and $-1$ are the only units of $\mathbb{Z}$. The set $\mathbb{Z}^*_n$ is the set of all units of $\mathbb{Z}_n$
- $\mathbb{Z}_n^\star$ are the units of $\mathbb{Z}_n$
```

```ad-important
title: Theorem
Let $R$ be a ring Then the set $R^\star$ of units of $R$ is an abelian group under multiplication of $R$
```

The set $\mathbb{Z}_n^\star$ of the set of all units of $\mathbb{Z}_n$ is a group under multiplication.
## Divisor of Zero

An element $a$ of $a$ commutative ring $R$ is called **a divisor of zero** if there exists a nonzero element $b \in R$ such that $ab=0, a \ne 0, b \ne 0$

```ad-example
$2, 3,4$ are divisors of zero in $\mathbb{Z}_6$
$$\mathbb{Z}_5: 2*3 = 0$$
```

# Integral Domain

```ad-summary
title: Definition
A commutative ring $R$ is called an integral domain if $1 \ne 0$ and for all $a, b \in R,$
$$ab = 0 \mbox{ implies } a=0$$
```

#comebacklater 

# Field

```ad-summary
title: Definition
A field $F$ conssits of a nonempty set $F$ togehter with two operations addition $+$ and multiplciaiton $*$ where it is a commutative ring AND every nonzero element of the ring has a multiplicative inverse.
```

```ad-example
- $\mathbb{Z}$ is not a field
- $\mathbb{Q}, \mathbb{R}, \mathbb{C}$ are fields.
- $\mathbb{Z}_p$ where $p$ is a prime number, would be a field 
```

## Properties of a Field

Let $F$ be a  field:
1. For all $a \in F, a * 0 =0$
2. If $a, b \in F$ with $a \ne 0, b \ne 0$, then $ab \ne 0$
3. For all $a \in R, -(-a) = a$
4. For all $a, b \in R, a(-b) = (-a)b = -(ab)$
5. For all $a, b \in R, (-a)(-b) = ab$

## Subfields

```ad-summary
title: Definition
A subfield $F_0$ of a field $F$ is a subset of $F$ which itself a field under the same operations as defined on $F$
```

```ad-important
title: Theorem
Let $F_0$ be a nonempty subset of the field $F$ having at least two elements. Then $F_0$ is a subfield of $F$ iff $F_0$ is clsoed underthe operations defined on $F$ and clsoe dunder inverses.
```

