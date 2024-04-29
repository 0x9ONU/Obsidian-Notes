Date: 29th April 2024
Date Modified: 29th April 2024
File Folder: Week 14
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

https://www.overleaf.com/read/gzrfycnkqtfc#2fd770
```

# Advance Encryption Scheme (AES)

$$\newcommand{\GF}{\mbox{GF}}$$
## Galois Field

$$\mbox{GF}(2) = \mathbb{Z}_2 = \{0, 1\}$$

```ad-note
The characteristic of a field is the number of times 1 must be added to get zero again.
- This is zero for infinite fields
- This is a finite number for finite fields
```

```ad-summary
title: Definition: Division Algorithm
Let $f(x)$ be a polynomial of degree $m$, and $g(x)$ be a polynomial of degree $n$ over a field such that $n \le m$. Then,
$$f(x) = g(x)q(x)+r(x), \space \space \space \deg r(x) \le \deg g(x)$$
If $r(x)=0$, thenw e say that $g(x)$ divides $f(x)$, or that $g(x)$ is a divisor/factor of $f(x)$ and we denote $g(x)|f(x)$
```

A polynomial $f(x)$ over a field $F$ is called an irreducible polynomial over $F$ if $f(x)$ cannot be expressed as a product of two polynomials over $F$ of degree lower than that of $f(x)$

```ad-example
$$x^2-5(x-\sqrt{5})(x-\sqrt{5}) \Rightarrow \mbox{Reducible over } \mathbb{R}$$
$$x^2-5 \Rightarrow \mbox{Irreducible over } \mathbb{Q}$$
```

Let $f(x)$ be a polynomial over a field $F$. if $\alpha$ is a root of $f(x)$, i.e, $f(\alpha) = 0$, for $\alpha \in F$, then $x - \alpha$ is a factor of $f(x)$:
$$f(\alpha) = 0 \Leftrightarrow (x - \alpha) | f(x)$$

```ad-example
$$f(x)=x^2-4 \Rightarrow f(-2) = 0 \Leftrightarrow (x+2)|(x^2-4)$$
```

**To get from bits to bytes, we have to think of the following:**

$$\GF(2) \subseteq \GF(2^8)$$



