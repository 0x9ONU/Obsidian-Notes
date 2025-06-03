Date: 5th April 2024
Date Modified: 5th April 2024
File Folder: Week 10
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

https://www.overleaf.com/read/mpbbxcrfxsgz#7ae27e
https://www.overleaf.com/read/qhcrdntngpqz#0304bo
```

# Legendre's Symbol

$$(\frac{a}{p}) = \begin{bmatrix} 1 \mbox{ if } a \le a \space QR \mod p  \\ -1 \mbox{ if } a \le a \space NR \mod p \\ 0 \mbox{ if } p|a \end{bmatrix}$$

**Multiplication Rule**:
$$(\frac{ab}{p}) = (\frac{a}{p})(\frac{b}{p})$$
**Congruence Rule**:

$$a \equiv b \mod p \Rightarrow (\frac{a}{p}) = (\frac{b}{p})$$
## Quadratic Reciprocity

Let $p, q$ be odd primes:

1. $$\frac{-1}{p} = \begin{bmatrix} 1, p \equiv 1 ]\mod 4 \\ -1, p \equiv 3 \mod 4 \end{bmatrix}$$
2. $$(\frac{2}{p}) = \begin{bmatrix} 1, p \equiv 1 \mbox{ or } 7 \mod 8 \\ -1, p \equiv 3 \mbox{ or } 5 \mod 8 \end{bmatrix}$$
3. $$(\frac{p}{q}) = \begin{bmatrix} (\frac{q}{p}), p \equiv 1 \mod 4 \mbox{ or } q \equiv 1 \mod 4 \\ -(\frac{q}{p}), p \equiv 3 \mod 4 \mbox{ AND } q \equiv 3 \mod 4\end{bmatrix}$$

## Example
```ad-question
Given that $a=-16750, p = 37907$, simplify down using Legendre's Symbol
```
$$(\frac{-15750}{37907}) = (\frac{-1}{37907})(\frac{15750}{37907}) \space (\mbox{Multiplication Rule})$$
$$5= - (\frac{15750}{37907}) \mbox{ (Q-Reciprocity)}$$
$$= -(\frac{2*3^2*5^3 * 7}{37907})$$
$$= -(\frac{2}{37907})(\frac{3}{37907})^2(\frac{5}{37907})^3(\frac{7}{37807}) \mbox{ (Mult. Rule)}$$
```ad-note
Cancel out even powers, including those within the powers
```

$$=- (\frac{2}{37907})(\frac{5}{37907})(\frac{7}{37907})$$
$$=-(-1)(\frac{5}{37907})(\frac{7}{37907}) \mbox{ (Use Quadratic Rec iprocity 2)}$$
$$= -(\frac{37907}{5})(\frac{37907}{7}) \mbox{ (Use Reciprocity 3)}$$
$$= -(\frac{2}{5})(\frac{2}{7}) \mbox{ (Congruence Rule)}$$
$$= -(-1)(1) = 1 \mbox{ (Reciprocity 2)}$$

# Jacobi's Symbol

Let $a, b \in \mathbb{Z}, b > 0 \space \& \space b\equiv 1 \mod 2$

Assume that $b$ has a factorization such that: $b = p_1^{e_1}p_2^{e_2}...p_t^{e_t}$
$$(\frac{a}{b}) = (\frac{a}{p_1})^{e_1}(\frac{a}{p_2})^{e_2}...(\frac{a}{p_t})^{e_t}$$
**Multiplication Rule**

$$(\frac{a_1a_2}{b}) = (\frac{a_1}{b})(\frac{a_2}{b})$$
$$(\frac{a}{b_1b_2}) =(\frac{a}{b_1})(\frac{a}{b_2})$$

**Congruence Rule**
$$a_1 \equiv a_2 \mod b \Rightarrow (\frac{a_1}{b}) = (\frac{a_2}{b})$$
## Quadratic Reciprocity

```ad-important
Everything stays the same other than the variable changes
```


1. $$(\frac{-1}{b}) = \begin{bmatrix} 1, b \equiv 1 \mod 4 \\ -1, b \equiv 3 \mod 4 \end{bmatrix}$$
2. $$(\frac{2}{b}) = \begin{bmatrix} 1, b \equiv 1 \mbox{ or } 7 \mod 8 \\ -1, b \equiv 3 \mbox{ or } 5 \mod 8 \end{bmatrix}$$
3. $$(\frac{a}{b}) = \begin{bmatrix} (\frac{a}{b}), b \equiv 1 \mod 4 \mbox{ or } a \equiv 1 \mod 4 \\ -(\frac{a}{b}), b \equiv 3 \mod 4 \mbox{ AND } a \equiv 3 \mod 4\end{bmatrix}$$

## Example

$$a = 123, b =323$$
$$(\frac{123}{323}) = (\frac{123}{17*19}) = (\frac{123}{17})(\frac{123}{19}) = (\frac{4}{17})(\frac{9}{19}) = 1 * 1 = 1$$

```ad-important
Since $4$ and $9$ are squares, they are automatically one in terms of quadratic residues
```

## Common Misconception

Knowing the base case for Jacobi's Symbol:

$(\frac{a}{b}) = 1$

$b = pq$
$(\frac{a}{b}) = (\frac{a}{pq}) = (\frac{a}{q})(\frac{a}{q})$
$\Rightarrow (\frac{a}{p})= (\frac{a}{q})=1 \mbox{ or } (\frac{a}{p})=(\frac{a}{q}) = -1$

*After using Chinese Remainder Theorem*
Either $a$ is a squared $\mod pq$, or $a$ is not a square $\mod pq$

```ad-warning
When Jacobi's symbol gives you a 1, it does not mean that $a$ is a square of $b \mod p$
```


