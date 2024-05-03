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
Find an irreducible polynomial in $\GF(2^n)$ that has the $\deg(n)$ such that:
$$\mathbb{Z}_2[x] / <P(c)>$$
```

## AES with Galois Fields

AES uses arithmetic based on $\GF(2^8)$ which is created by using the irreducible polynomial:

$$x^8+x^4+x^3+x+1$$

```ad-question
Prove that $x^8+x^4+x^3+x+1$ is irreducible.

*check for linear factors by checking roots* $$\space$$
Since there are no roots, then it is not a linear polynomial and a 7-th degree polynomial
$$\space$$
Continue this for 2-6, 3-5, etc.
```

**Generalizing...**

$\GF(p^n)$ is a finite field for any prime number $p$. The elements of $\GF(p^n)$ are polynomials over $\GF(p) = \mathbb{Z}_p$ and such that:

$$\mathbb{Z}_p [x] / <q(x)> \space \space \mbox{ where } q(x) \mbox{ is irreducible } \deg(n)$$

**As Binary Codes**:

We can denote the polynomials in $\GF(2^3)$ by 3-bit binary codes:

| $0$       | 000 |
| --------- | --- |
| $1$       | 001 |
| $x$       | 010 |
| $x+1$     | 011 |
| $x^2$     | 100 |
| $x^2+1$   | 101 |
| $x^2+x$   | 110 |
| $x^2+x+1$ | 111 |
**With AES $\GF(2^8)$:**

$$\GF(2^8) = \{ \mbox{ polys of deg < 8 with coefficents 1 or 0} \}$$
$$x^7+x^5+x^4+x^2+x \equiv 10110110$$

```ad-note
Subtracting is the same as adding in $\GF(2^n)$
$$\space$$
Adding the bit patterns in $\GF(2^n)$ simply amounts to taking the bit-wise XOR of the bit patterns.
```

```ad-example
$p(x) = x^8+x^4+x^3+x+1$ is the irreduible polynomial for $\GF(2^8)$. Note that $x^8  \equiv x^4+x^3+x+1 \mod (x^8+x^4+x^3+x+1)$
```

**Multiplication**

The technique for multiplying elements of $\GF(2^n)$ by using their bit patterns is specific to the order (the number of elements in the field) of $\GF(2^n)$ , and the irreducible polynomial that defines a $\GF(2^n)$

$(x) \cdot f(x) = b_7x^8+b_6x^7 +b_5x^6 + b_4x^5 + b_3x^4+b_2x^3+b_1x^2+b_0x$

*For most Significant Bit is ZERO*

If the most significant bit $b_7 = 0$, then $x \cdot f(x) \equiv b_6x^7+b_5x^6 +b_4x^5+b_3x^4+b_2^3 +b_1x^2+b_0x \mod p(x)$ with the output bit pattern being: $b_6b_5b_4b_3b_2b_1b_0 0$

So if the most significant bit $b_7=0$, we shift the bit pattern to the left by one bit and then insert bit 0 for the right most bit.

*For most significant bit is ONE*

If the most significant bit $b_7=1$, then we need to divide the polynomial $x\cdot f(x)$ by the modulus $p(x)$ and find the remainder. If $b_7=1$, then $x \cdot f(x) \equiv x^8+b_6^7 +b_5x^6 +b_4x^5 +b_3x^4+b_2x^3+b_1x^2+b_0x \mod p(x)$

We first move the leading term $x^8$ to the end of the polynomial such that: 

$$(b_6^7 +b_5x^6 +b_4x^5 +b_3x^4+b_2x^3+b_1x^2+b_0x) +x^8 \mod p(x)$$


We now take $x^8 \mod p(x)$ and find:

$$(b_6^7 +b_5x^6 +b_4x^5 +b_3x^4+b_2x^3+b_1x^2+b_0x) +(x^4+x^3+x+1) \mod p(x)$$

In terms of bits, we get $b^6b_5b_4b_3b_2b_1b_0 0 \oplus 00011011$

So if the most significant bit is one, we first shift the bit pattern to the left by one bit and insert bit 0 for the right most bit. Afterwards, we take the XOR of the shifted bit pattern 00011011.

*Multiplying two polynomials*

Let $f_1(x)$, and $f_2(x)$ belong to $\GF(2^8)$. Let $B_1$ and $B_2$ be the 8-bit pattern for each polynomial. We want to multiply them together.

If $B_2=00000001$, then $B_1B_2 = B_1$

If $B_2 = 00000010$, then $B_2$ is $x$. IN this case finding $B_1B_2$ depends on the most significant bit of $B_1$

*Do the same as the previous problem but for bits instead*

If $B_2$ is the bit pattern 00000100, then $B_2$ is $x^2$. TO find $B_1B_2$, multiply $B_1x$ and then $(B_1x)x)$. In other words, we will carry out two iterations of the steps in the previous slide for multiplying with $x$.

If $B_2$'s bit pattern has a single 1-bit in the $j$th position from the right, then $B_2$  is $x^j$ 

#comebacklater 

Generally, if $B_2$ is an arbitrary bit pattern, then first write $B_2$ as a sum of bit patterns containing a single 1-bit:

$$B_1 \times 10000011$$
$$B_1 \times(00000001 \oplus 00000010 \oplus 10000000)$$
$$B_1 \times 00000001 \oplus B_1 \times 00000010 \oplus B_2 \times10000000$$

## Finding Inverses in the $\GF$

```ad-question
Find the inverse of $x^2+1$ in $\GF(2^3)$
```

```ad-important
Apply EEA
```

$$a(x) =x^2+1$$
$$a(x)b(x) \equiv 1 \mod (x^3+x+1)$$




