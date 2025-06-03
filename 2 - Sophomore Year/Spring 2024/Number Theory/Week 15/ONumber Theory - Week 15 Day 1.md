Date: 6th May 2024
Date Modified: 6th May 2024
File Folder: Week 15
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

https://www.overleaf.com/read/hprhcywvbmdj#294a2e
```

# AES Continued

## Byte Substitution Layer (S-Box)

```ad-important
Finds the Inverse in $GF(2^8)$, and then take the affine map of it
```

$$a_0\cdot a_1\cdot a_2\cdot a_3 \cdot a_4 \cdot a_5 \cdot a_6 \cdot a_7
\xrightarrow[\text{In } GF(2^8)]{\text{Inverse}} b_0^\prime \cdot b_1^\prime \cdot b_2^\prime \cdot b_3^\prime \cdot b_4^\prime \cdot b_5^\prime \cdot b_6^\prime \cdot b_7^\prime \xrightarrow[\text{Mapping}]{\text{Affine}} b_1 \cdot b_2 \cdot b_3 \cdot b_4 \cdot b_5 \cdot b_6 \cdot b_7$$

```ad-note
$$(x^7+x^6+x)y \equiv 1 \mod (x^8...)$$
```

$$\begin{bmatrix}b_o \\ b_1 \\ b_2 \\ b_3 \\ b_4 \\ b_5 \\ b_6 \\ b_7 \end{bmatrix} \equiv \begin{bmatrix}1 & 0 & 0 & 0 & 1 &1&1&1 \\ 1&1&0&0&0&1&1&1 \\ 1 & 1&1&0&0&0&1&1 \\ 1&1&1&1&0&0&0&1 \\ 1 & 1 & 1 &1 &1 & 0 & 0 & 0 \\ 0 & 1 & 1 & 1 & 1 & 1 & 0 & 0 \\ 0 & 0 & 1 & 1 &1 & 1 &1 & 0 \\ 0 & 0 &0 & 1 & 1 & 1 & 1 & 1 \end{bmatrix} \begin{bmatrix} b_0^\prime  \\ b_1^\prime \\ b_2^\prime \\ b_3^\prime \\ b_4^\prime \\ b_5^\prime \\ b_6^\prime \\ b_7^\prime \end{bmatrix} + \begin{bmatrix} 1 \\ 1 \\ 0 \\0 \\0  \\ 1 \\ 1 \\ 0\end{bmatrix} \mod p$$
# Goldwasser-Micali Cryptosystem

## Quadratic Residue Review

**Quadratic Residue**: $$c^2 \equiv a \mod p$$
```ad-note
- $QR * QR = QR$
- $QR * NR = NR$
- $NR * NR = QR$
```

**Legendre's Symbol**

$$( \frac{a}{p}) = \begin{bmatrix} 1 \mbox{ if } a \mbox{ is  a QR} \mod p \\ -1  \mbox{ if } a \mbox{ is a NR} \mod p \\ 0 \mbox{ if } p |a\end{bmatrix}$$

$$(\frac{a \cdot b}{p}) = (\frac{a}{p})(\frac{b}{p})$$
$$a \equiv b \mod p \Rightarrow (\frac{a}{p}) = (\frac{b}{p})$$

**Reciprocity Law**

$$(\frac{-1}{p}) = \begin{bmatrix}1 \mbox{ if } p \equiv 1 \mod 4 \\ -1 \mbox{ if } p \equiv 3 \mod 4 \end{bmatrix}$$

$$(\frac{2}{p}) = \begin{bmatrix} 1 \mbox{ if } p \equiv 1, 7 \mod 8 \\ -1 \mbox{ if } p \equiv 3, 5 \mod 8\end{bmatrix}$$
$$(\frac{p}{q}) = \begin{bmatrix} (\frac{q}{p}) \mbox{ if } p \equiv 1 \mbox{ or } q \equiv 1 \mod p \\ -(\frac{q}{p}) \mbox{ if } p \equiv 3 \mbox{ AND } q \equiv 3 \mod p \end{bmatrix}$$
**Jacobi's Symbol:**

When $a$ is any integer, and $b$ is an odd integer:

$$b = p_1^{e_1}\cdot p_2^{e_2}\cdot\cdot \space  \cdot p_t^{e_t}$$
$$(\frac{a}{b}) = (\frac{a}{p_1})^{e_1} \cdot (\frac{a}{p_2})^{e_2} \cdot \cdot \space \cdot (\frac{a}{p_t})^{e_t}$$

```ad-example
$b = pq$, $p$ and $q$ are odd primes:
$$(\frac{a}{pq}) = (\frac{a}{p})(\frac{a}{q}) = 1$$
```

## Key Creation

![[Number Theory - Week 15 Day 1 2024-05-06 09.33.44.excalidraw]]

- Choose two secret primes ($p, q$)
- Choose $a$ such that the $(\frac{a}{p}) = \frac{a}{q} = -1$

```ad-note
This means $a$ is a non-residue modulo both $p$ and $q$
```

- **Public keys**: $(N, a)$ where $N = pq$

## Cipher Creation

- Choose a plaintext $m \in \{ 0, 1 \}$
- Choose a random $r$, $1 < r < N$
- $c = \begin{bmatrix} r^2 \mod N,  & m = 0 \\ ar^2 \mod N, & m = 1  \end{bmatrix}$

## Decryption

$$m = \begin{bmatrix} 0 & ( \frac{c}{p}) = 1 \\ 1 & (\frac{c}{p}) = -1 \end{bmatrix}$$
```ad-note
- $m=0$:
$$(\frac{c}{p}) = (\frac{r^2}{p}) = (\frac{r}{p})^2 = 1$$
- $m = 1$:
$$(\frac{c}{p}) = (\frac{ar^2}{p}) = (\frac{a}{p})(\frac{r^2}{p}) = (\frac{a}{p}) = -1$$
```

