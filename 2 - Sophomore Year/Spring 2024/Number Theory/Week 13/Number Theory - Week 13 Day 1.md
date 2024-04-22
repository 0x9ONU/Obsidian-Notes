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

