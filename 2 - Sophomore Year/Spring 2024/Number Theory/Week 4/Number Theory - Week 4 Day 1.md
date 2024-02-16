Date: 12th February 2024
Date Modified: 12th February 2024
File Folder: Week 4
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Fermat's Little Theorem
- Euler's Phi Function

```

```ad-important
Slides Link:

https://www.overleaf.com/read/bkdjqzrmggtp#1d0b20
```

# Modular Arithmetic Cont.

## Fermat's Little Theorem

```ad-summary
title: Theorem
If $p$ is a rpime, and $a$ is an integer relatively prime to $p$, then $a^{p-1}=1 \mod p$ or $a^p \equiv a \mod p$
```

```ad-warning
Only works if $a$ is relatively prime to $p$. The modulo **cannot** divide the base for this theorem to work.
```

```ad-example
Find:
1. $$p = 3 \space \& \space a=8$$
2. $$512^{373} \mod 13$$
```

**Part 1:**

$$8^{3-1} \equiv 1 \mod 3$$

**Part 2:**

*Take modulo and subtract it by one. Make it a division algorithm with the exponent*
$$373 = 12(31)+(1)$$
$$512^{373} = (512)^{12(31)+1}$$
$$=(512)^{12(31)}*(512)^1$$
$$= [(512)^{12}]^{31}*512$$

*Apply Fermat's Little Theorem On the Inside Exponent*

$$= (1)^{31}*512 \mod 13$$
$$=512 \mod 13$$
$$= 5 \mod 13$$

## Euler's Phi Function

```ad-summary
title: Definition
For any positive integer $n$, define $\phi (n)$ as the number of positve integers that are *less than* $n$ and are **relatively prime** to $n$
```

```ad-example
What is the $\phi (12)$?
```

**Write Out all Numbers that go up to 12, cross out those that are not relatively prime to 12**

$$\phi(12) \Rightarrow 1, \cancel{2}, \cancel3, \cancel4, 5, \cancel6, 7, \cancel8, \cancel9, \cancel{10}, 11, \cancel{12}$$

$$\phi (12) = 4$$


```ad-question
Write out the following:
$$\phi(2)$$
$$\phi(4)$$
$$\phi(5)$$
$$\phi(6)$$
$$\phi(7)$$
$$\phi(10)$$
$$\phi(P) = \space where \space p \space is \space prime$$
```

$$\phi(2) = 1$$
$$\phi(4) = 2$$
$$\phi(5) = 4$$
$$\phi(6) = 2$$
$$\phi(10) = 4$$
$$\phi(P) = (P-1)$$
### General Formula

If the prime factorization of $n$ is given by $n = p_1^{a_1}*p_2^{a_2}...p_k^{a_k}$, where $a_i > 0$ for $1 < i \le k$, then:

$$\phi (n) = n \prod_{p | n} (1 - \frac{1}{p}) = n(1- \frac{1}{p_1})(1- \frac{1}{p_2}) ... (1 - \frac{1}{p_k})$$

```ad-note
$$\prod_{n=1}^k \frac{1}{n} \Rightarrow (1*\frac{1}{2}*\frac{1}{3}*...* \frac{1}{k})$$
```

```ad-example
$$\phi(3*5)$$
$$(1, 2, 3, 4, 5), (6, 7, 8, 9, 10), (11, 12, 13, 14, 15)$$
$$(5-1)(5-1)(5-1)$$
$$\phi(3*5) = (5-1)(3-1)$$
```

```ad-important
$$\phi(pq) = (p-1)(q-1)$$
```

$$\phi(pq) = (p-1)(q-1)= p(1-\frac{1}{p})q(1- \frac{1}{q})$$
$$\phi(n) = pq(1- \frac{1}{p})(1-\frac{1}{q})$$
$$= n (1- \frac{1}{p})(1-\frac{1}{q})$$

```ad-note
This is for *every* prime factor of $n$
```

```ad-example
$$n = p^2*q^3 \Rightarrow \phi(n) = n(1- \frac{1}{p})(1- \frac{1}{q})$$
$$n = p^2*q^3*r \Rightarrow \phi(n) = n(1- \frac{1}{p})(1- \frac{1}{q})(1- \frac{1}{r})$$
```ad-important
Only the prime factors matter, *not* the powers
```

#### Example

```ad-question
Find $\phi(27)$$\phi(81), \space \& \space \phi(12)$
```

**For 27**

$$27 = 3^3$$
$$\phi(27) = 27(1- \frac{1}{3})$$
$$\phi(27) = 18$$

**For 81**

$$81 = 3^4$$
$$\phi(81) = 81(1- \frac{1}{3})$$
$$\phi(81) = 54$$

**For 12**

$$\phi(12) = \phi(2^2 * 3) = 12(1-\frac{1}{2})(1-\frac{1}{3})$$
## Euler's Theorem

```ad-summary
If $a$ and $n$ are intergers $\gcd(a, n) = 1$, then $a^{\phi(n)} \equiv 1 \mod n$
```

```ad-example
$$n = 27 \Rightarrow \phi(n) = 18$$
$$50^{18} \equiv 1 \mod 27$$
```

### Freshman's Dream Exercise

```ad-question
title: Exercise
A common algebra mistake made by some freshmen is (a+b)^3 = a^3+b^3 or (a+b)^n = a^n + b^n. In the world of Modular Arithemtic, their dream does come true.
$$\space$$
Let $p$ be a rpime number and let $a, b$ be any integers. Prove that:
$$(a+b)^p \equiv a^p + b^p \mod p$$
```

```ad-note
title: Hint
Utilize the following:
$$(a+b)^n = {n\choose0} a^n b^0 + {n\choose1} a^{n-1}b^1+...+{n\choose n} a^0 b^n$$
$${n \choose k} = \frac{n!}{k!(n-k)!}$$
```




