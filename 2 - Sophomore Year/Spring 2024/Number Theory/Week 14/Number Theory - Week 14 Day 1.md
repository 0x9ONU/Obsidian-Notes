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

**To get from bits to bytes, we have to think of the following:**

$$\GF(2) \subseteq \GF(2^8)$$
### Division Algorithm with Polynomials

```ad-summary
title: Definition: Division Algorithm
Let $f(x)$ be a polynomial of degree $m$, and $g(x)$ be a polynomial of degree $n$ over a field such that $n \le m$. Then,
$$f(x) = g(x)q(x)+r(x), \space \space \space \deg r(x) \le \deg g(x)$$
If $r(x)=0$, thenw e say that $g(x)$ divides $f(x)$, or that $g(x)$ is a divisor/factor of $f(x)$ and we denote $g(x)|f(x)$
```

### Irreducibility and Roots

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

```ad-important
To find whether or not a quadratic or higher polynomial, find the roots and see if they are within the set to find their linear factors
```

```ad-warning
Constants and linear functions are typically **irreducible**
```

### Examples

#### Example 1: Finding Irreducibility

```ad-question
Find if $x^2+1$ is irreducible under $\mathbb{R}$? Over $\GF(2)$
```

**Under $\mathbb{R}$**

$$x^2+1=^?0$$
$$x^2+1 \ne 0 \in \mathbb{R}$$

It is irreducible

*However*

$$x^2 + 1 = (x-i)(x+i) \in \mathbb{C}$$
It is reducible

**Under $\GF(2)$**

$$x^2+1=^?0$$
$$x^2+1=(x+1)(x+1) \in \GF(2)$$

```ad-note
$$(x+1)(x+1) = x^2+2x+1 = x^2+1 \in \GF(2)$$
```
#### Example 2: Finding Irreducibility 

```ad-question
List all polynomials of degree $3$ over $\GF(2)$. WHich of these are irreducible?
```

$$ax^3+bx^2+cx+d$$

```ad-important
Since $a =1$ and $b, c, d = \{0, 1 \}$ there are $1*2*2*2 = 8$ choices
```

### Modulo over $\GF(2)$

$\GF(2)[x]$ denotes the set of all polynomials over $\GF(2)$

$x^3+x+1$ is an irreducible polynomials of degree $3$ over $\GF(2)$

We now define addition and multiplication in $\GF(2)[x]$ modulo $x^3+x+1$

```ad-example
Find $(x^2+x+1)(x^2+1) \mod (x^3+x+1) \in \GF(2)[x]$:
$$(x^2+x+1)(x^2+1) = x^4+x^3 +2x^2 + x+ 1 \Rightarrow x^4+x^3+1$$
**Do Long Division**:
![[Number Theory - Week 14 Day 1 2024-04-29 09.41.03.excalidraw]]
$$\therefore (x^2+x+1)(x^2+1) \equiv x^2+x \mod (x^3+x+1)$$
```

```ad-example
What are the possibilities for $f(x) \mod (x^3+x+1) \in \GF(2)[x]$.
$$\space$$
*All polynomials $\deg(x) \le 2$*:
$$0, 1$$
$$x, x+1$$
$$x^2, x^2+1, x^2+x, x^2+x+1$$
```

$$\GF(2^3) =\{ 0, 1, x, x+1, x^2, x^2+1, x^2+x, x^2+x+1 \}$$
We can define a finite field $\GF(2^n) \space \space \space \forall n$ 

What do we need to created $\GF(2^n)$?

```ad-important
Find an irreducible polynomial that has the $\deg(n)$
```

