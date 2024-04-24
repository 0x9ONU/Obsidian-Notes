Date: 24th April 2024
Date Modified: 24th April 2024
File Folder: Week 13
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

https://www.overleaf.com/read/tzmrjycvvrgv#01c035
```

# Final Grade Computations

**Compared to the highest score** This will be considered 100%

# Primitive Roots

Let $p$ be prime number.

A primitive root $g$ modulo $p$ is an integer $1 < g < p$ such that $g$ generates $\mathbb{Z}_p=GF(p)$.

This means $g^0, g^1, g^2,...,g^{p-1}$ modulo $p$ are the same as the numbers $1, 2,...p-1$ that is:

$$\mathbb{Z}_p^\star = \{ g^0, g^1, g^2,...g^{p-1} \}$$

```ad-important
This would make $<g> = (\mathbb{Z}_p^\star, \cdot$ and $g^{p-1}=1 \mod p$, and $g = (1)^{\frac{1}{p-1}}$
```

```ad-example
In $\mathbb{Z}_5$, $2$ is a primative root as it generates it.
```

# Diffie-Hellman Exchange

Alice and Bob who may not know each other want to agree on a shared secret key. they must exchange the key without meeting face to face and over an insecure channel.

1. Alice and Bob communicate and agree on a large prime number $p$ and a primitive root $g$ modulo $p$. $g$ and $p$ are public.
2. Alice picks up a random secret key $a$ with $1 < a < p$, and calculates $A=g^a \mod p$. She sends $A$ to Bob.
3. Bob picks up a random secret key $b$ with $1 < b < p$, and calculates $B =g^b \mod p$. He sends $B$ to Alice.
4. Alice uses her secret key $a$ to calculate $k_A=B^a \mod p$ and Bob uses his secret key $b$ to calculate $k_B =A^b \mod p$
5. $k_A=k_B=g^{ab} \mod p$

**For the Attacker to Find a Key**
- Given $A=g^a \mod p$ and $B = g^b \mod p$, find the key $g^{ab} \mod p$
- This is a difficult problem that can only be solved with discrete logarithms, which does not have a fast solution.

![[Pasted image 20240424093137.png]]

# Digital Signature

![[Pasted image 20240424093439.png]]








