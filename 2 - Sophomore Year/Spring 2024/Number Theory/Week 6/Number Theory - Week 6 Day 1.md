Date: 26th February 2024
Date Modified: 26th February 2024
File Folder: Week 6
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Group Homomorphism
	- Isomorphism
- Probability

```

```ad-important
Slides Link:

https://www.overleaf.com/read/nhybbdkvnsqm#e2f44d
```

# Subgroup

## Group Homomorphism

A function $f: G_1 \to G_2$ from a group $G_1$ to a group $G_2$ is said to be a group homomorphism if for any $x, y \in G_1$, we have:

$$f(x \odot_1 y) = f(x) \odot_2 f(y)$$
```ad-note
Where $\odot_1$ and $\odot_2$ are operations respectively in $G_1$ and $G_2$
```

![[Number Theory - Week 6 Day 1 2024-02-26 09.13.49.excalidraw]]

```ad-summary
This means the group operations are kinda equivalent, but they are **not** necessarily bijective.
```

If additionally, $f$ is a bijective (one to one correspondence) mapping, then $f$ is called an **isomorphism**.
- One to one and subjective (every value of $G_2$ is within range of $G_1$)
- This means they have the same number of elements
- This would mean that they are the same in terms of groups
- Two groups have the same group structure

```ad-example
The funciton $f: \mathbb{Z} \rightarrow 2 \mathbb{Z}$ is an isomorphism.
- Because both go into the infinity domain and they are both one to one functions, that means that they have the same size.
- If the domain of these sets was bound to be *finite*, then that would mean they would have the same elements
$$\space$$
The funciton $f(j) = 2k$ is an isomorphism.
- $f$ is injective (one to one) since $f(k_1) = f(k_2)$ implies $2k_1 = 2k_2$ and $k_1 = k_2$
- $f$ is surjective (onto) since any even integer $2n$ is an image of $f$, i.e., $f(n) = 2n$.
- $f$ is a homomorphism since for any $x, y \in \mathbb{Z}$ you get:
$$f(x+y) = 2(x+y) = 2x + 2y = f(x) + f(y)$$
```

### Cyclic Groups in Homomorphism

```ad-summary
title: Proposition
Let $G$ be a cyclic gorup. If $(G)=n$, then $G$ is isomorphic to $\mathbb{Z}_n$. If $(G) = \infty)$, then $G$ is isomorphic to $\mathbb{Z}$
```

$$<a> = \{a^k: k \in \mathbb{Z}), |G| = \infty$$
$$f : \mathbb{Z} \to G$$
$$f(n) = a^n$$



**READ THROUGH PERMUTATION SLIDES IN YOUR OWN TIME**

# HW 1 Comments



