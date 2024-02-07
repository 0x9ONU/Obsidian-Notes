Date: 5th February 2024
Date Modified: 5th February 2024
File Folder: Week 3
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Primes Continued
- LCM Continued
- Finding Prime Numbers

```

```ad-important
Slides Link:

https://www.overleaf.com/read/vgcnpcybmxhd#5a1951
```

# Quick Example

$$4116 = 2^2*3*7^3 = 2^2*3^1*5^0*7^3$$
$$945 = 3^3 * 5 * 7 = 2^0 * 3^3 * 5^1 * 7^1$$
```ad-important
The GCD cannot have prime factors other than these prime numbers
```

$$gcd = 2^0 *3^1*5^0*7^1 = 21$$

```ad-warning
You are looking for the opposite. Take the highest numbers
```
$$LCM = 2^2 * 3^3 * 5^1 * 7^ 3 = 185,220$$
# Finding Prime Numbers
## Ad Hoc Method

```ad-question
How do we determine if a given integer, say 253, is prime?
```

**Ad Hoc Method**: To see $n$ is a prime, keep dividing $n$ by integers $1$ up to $\sqrt{n}$. If no divisors are found, then $n$ is a prime. Why is it enough to check divisors up to $\sqrt{n}$
- $n = a * b, a > 1, b > 1$
- $a > \sqrt{n}, b > \sqrt{n} \Rightarrow n = ab > n$
- Either $a$ or $b$ is *less than* $\sqrt{n}$

## Finding Multiple Primes Up to $x$ - Sieve of Eratosthenes
```ad-question
How do we find primes up to, say, 120?
```

- Directly check if each number is prime
- Use **Sieve of Eratosthenes** (Sieve out by primes $2, 3, 5,...$)
	- Removes the composite numbers out of the list




