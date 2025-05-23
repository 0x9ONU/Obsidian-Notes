Date: 23rd February 2024
Date Modified: 23rd February 2024
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

# Subgroup

## Subgroup Generated by $a$

```ad-summary
title: Definition
If $a$ is an element of a group $G$, then 
- $<a> = \{a^n : n \in \mathbb{Z} \}$ in multiplication
- $<a> = \{ na : n \in \mathbb{Z} \}$ in addition
```

```ad-important
This is the smallest subgroup of $G$ that contains the element $a$
```

```ad-note
Let $G$ be a group of $a \in G$. Then, $<a>$ is a subgroup of $G$ and is calle dthe cyclic subgroup of $G$ generaged by $a$.
- $<a> = G$
```

```ad-example
Is $(\mathbb{Z}, +)$ a cyclic group?
- YES, $(\mathbb{Z}, +) = <1>$
	- $1+1+1+1+1 = 5$
- This makes $mathbb{Z}$ a cyclic group
$$\space$$
- $3 \mathbb{Z} = <3>$
- $\mathbb{Z}_n = <1>$
- $(\mathbb{Z}_p^\star, \cdot)$
- $(\mathbb{Z}_n^\star, \cdot)$ IS NOT *generally* cyclic. Can be cyclic when it is not a prime as well
```

```ad-important
Every subgroup of a cyclic group is *also* cyclic.
- If $K$ is any subgroup of $G$ and $a \in K$, then, $<a>$ is *contained* in $K$
```

### Example 

```ad-question
Is $\{1, i, -1, -i \} = <i>$ a cyclic subgroup of $(\mathbb{C}^\star, \cdot)$?
```

$$\begin{matrix}i^0 = 1 & i^1 = i & i^2 =-1 & i^3 = -i \\ i^4 =1 & i^5 = i & i^6=-1 & i^7 = -i \end{matrix}$$
This satisfies the above

## Order of the Group

```ad-summary
title: Definition
The number of elements of a group $G$ is called the order of the gorup. WE use $|G|$ to denote the gorpu order.
```

```ad-example
$$|\mathbb{b}_n| = n, |\mathbb{Z}_n^\star = \phi(n), |\mathbb{Z}| = \infty, |\mathbb{R}^\star| - \infty$$
```

## Order of Elements

```ad-summary
title: Definition
The order of an element $g$ in a group $G$ is the smallest postiive integer $n$ such that $g^n = e$ (in additive notation, this would be $ng=e$). Least power of $g$ to equal to $e$
$$\space$$
We use $|g|$ to denote the order the element $g$.
$$\space$$
If for every positive integer $n$, we have that $g^n \ne e$, then we say that $g$ has infinite order
```

```ad-example
$$(\mathbb{Z}_8, +): |4| = 2, |3| = 8$$
$$(\mathbb{Z}_8^\star, \cdot): |3| = 2, |7| = 2$$
```

## Lagrange's Theorem

```ad-summary
title: Theorem
If $H$ is a subgroup of the *finite group* $G$, then the order of $H$ is a **divsor** of the order of $G$
```

```ad-important
This also means that the order of an **element** will divide the order of a **group**
```ad-example
$$|\mathbb{Z}_{10}| = 10$$
$$x \in \mathbb{Z}_{10}$$
$$|<x>| = |x| \space is \space a \space factor \space of \space 10$$
```

## Euler's Theorem

```ad-note
title: Corollary
Let $G$ be a finite group of order $n$.
1. For any $a \in G$, the order of $a$ divides $n$
2. For any $a \in G$, we have $a^n = e$

```ad-example
$$(\mathbb{Z}^\star_{11}, \cdot)$$
$$|\mathbb{Z}_{11}^\star| = 10$$
$$6^{10} = 1$$
$$|6| = 10$$
```


$$6^2 = 36 = 3$$
$$6^3 = 6^2 * 6 = 7$$
$$6^4 = 6^3 * 6 = 9$$
$$6^5 = 6^4 * 6 = 10$$
$$6^6 = 6^5 * 6 = 5$$
$$...$$
$$6^{10}=1$$

As a consquence of this corollary in the Euler's theorem:

If $G = \mathbb{Z}_n^\star$, then the order of $G$ is $\phi(n)$ and so, 

$$a^{\phi(n)}\equiv 1 \mod n$$
