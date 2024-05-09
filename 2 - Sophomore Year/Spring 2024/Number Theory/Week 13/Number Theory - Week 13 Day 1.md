Date: 22nd April 2024
Date Modified: 22nd April 2024
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

# Computational Security 

## Scheme

```ad-summary
title: Definition
A scheme is $(t, \epsilon)$ secure if an adversary running in time $t$ (measured in CPU cycles) can break the scheme with probability of at most $\epsilon$
```

### Example 1 - Brute Force of Key with Length $n$

```ad-question
Assume that that the best known attack against a scheme is exhaustive key search (brute force attack) and the key length is $n$. Let's suppose that testing a single key takes $c$ CPU cycles and in total $N$ CPU cycles are executed.
```

**Then** $\frac{N}{c}$ keys can be tested. So, the probability of success is approximately:

$$\frac{\mbox{Number of keys that can be tested}}{\mbox{Total Number of Keys}} = \frac{\frac{N}{c}}{2^n} = \frac{N}{c2^n}$$

$\therefore$ This scheme is $(N, \frac{N}{c2^n})$ secure for a brute force attack.

### Example 2 - 

```ad-question
Assume that the adversary has a computer that has a $2 \space GHz$ CPU. By using the same brute force attack as *Example 1*, assuming $c$ is 1, and it takes a year's time. How many keys can you test? What is the probability of success if the key length is $n=128$?
```

```ad-note
2 GHz means that the adversary can run at 2 billion clock cycles per second.
```

$$\mbox{Seconds in a Year} \approxeq 2^{25} s$$
$$c*N$$
$$(1)(2GHz)(2^{25}) \approxeq 2^{55}$$

The computer can check $2^{55}$ keys over a year.

$$\boxed{Pr(s) = \frac{2^{55}}{2^{128}} = 2^{-73}}$$

## Computational Security

```ad-summary
title: Definition
An encryption sheme is called computationally secure if every probabiilistic algorithm with poly running time can only break the scheme with negligible probability in the security parameter $n$.
```

# Rivest, Shamir, Adleman (RSA)

## Public Key Cryptography

![[Pasted image 20240422093032.png]]

## Plain RSA

A public-key cryptosystem, where the acronym is made of the first letters of the last names of Ron Rivest, Adi Shamir, and Leonard Adleman. It was created in 1977.

Let's assume that Alice is the sender and Bob is the receiver. To generate keys, Bob will have to do the following:
- Pick two large prime numbers which he will keep secret and compute the number $N = pq$
- Compute $\varphi(N) = (p-1)(q-1)$ (where $\varphi(N)$ is the number of integers from $1 \to N$ that are relatively prime to $N$)
- Pick an integer $e$ which is invertible modulo $\varphi(N)$ ($d  = e^{-1} \mod \varphi (N)$)
- $N$ and $e$ constitute Bob's public key.
- Calculate $d = e^{-1} \mod \varphi(N)$
- $d$ constitute Bob's secret key.

If Alice wants to send a message to Bob, she will do the following:
- Represent her message $m$ as an element of $\mathbb{Z}_n$. If her message is too big, then she will break it into pieces with each piece belonging to $\mathbb{Z}_n$
- Look up in the public directory to Bob's public key ($N, e$)
- Encrypt his message $c  = m^e \mod N$
- Send $c$ to Bob over a wire.

To decipher Alice's message, Bob will do the following:
- Use his secret key $d$ to compute $c^d \mod N$
- Recovers the original message $m$ that is equal to $c^d \mod N$

```ad-note
This works because:
$$c^d = (m^e)^d= m^{ed} = m^{1 \mod \varphi(N)}$$
```

![[Pasted image 20240422094645.png]]

![[Pasted image 20240422094655.png]]

```ad-important
This works because there is no efficient way to calculate the prime factors of $N$ when $p$ and $q$ are sufficiently large
```



