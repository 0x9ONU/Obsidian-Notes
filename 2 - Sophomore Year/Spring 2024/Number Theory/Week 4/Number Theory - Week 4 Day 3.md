Date: 16th February 2024
Date Modified: 16th February 2024
File Folder: Week 4
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

https://www.overleaf.com/read/bkdjqzrmggtp#1d0b20
```

# Integers Modulo $n$

**Equivalence Relation modulo $n$**
$$\mathbb{Z}_n \space when \space n > 0$$
$$a \sim b \space if \space n | (a-b)$$
```ad-note
$$a \sim b \equiv (a,b) \in \mathbb{R}$$
```

**Equivalence Classes**

$$[0], [1],..., [n-1]$$
$$nk, 1+nk, ..., (n-1)+nk$$

*Denoted by:* $\mathbb{Z}_n \space or \space \mathbb{Z} /n\mathbb{Z}$

## Examples

### Example 1

```ad-question
If $n=10$, how would you add $5+7 \mod 10$. Multiply them?
```

**Add them as usual and take the modulo**:

$$5+7 \mod 10 = 12 \mod 10 = 2 \mod 10$$

**Multiply them as usual and take the modulo:**
$$5 * 7 = 35 = 5 \mod 10$$
### Example 2

```ad-question
Write down the addition and multiplication table for $\mathbb{Z}_4$
```

| + | 0 | 1 | 2 | 3 |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 1 | 2 | 3 |
| 1 | 1 | 2 | 3 | 0 |
| 2 | 2 | 3 | 0 | 1 |
| 3 | 3 | 0 | 1 | 2 |

| X | 0 | 1 | 2 | 3 |
| ---- | ---- | ---- | ---- | ---- |
| 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 2 | 3 |
| 2 | 0 | 2 | 0 | 2 |
| 3 | 0 | 3 | 2 | 1 |

## Additive Inverse

```ad-summary
title: Definition
An element $a \in \mathbb{Z}_n$ is called the additive inverse of $b \in \mathbb{Z}_n$ if a+b = 0.
```

```ad-question
Find the additive inverse of $-9 \in \mathbb{Z}_{18}$
- How about generally with $-k \mod n$?
```

**Find the following**:

$$-9 + a = 0 \mod 18$$
$$9+9 =0 \mod 18$$
$$9-9=0 \mod 18$$

**Generally...**

$$-k + a = 0 \mod n$$
$$k+(n-k)=0 \mod n$$

```ad-important
You add the modulos value minus the number to the number to get the addative inverse
```

## Multiplicative Inverse

```ad-summary
title: Theroem
An element $a \in \mathbb{Z}_n$ is called a unit or invertible (that is, $a$ has a multiplicative inverse) iff $\gcd(a,n) = 1$. Conseuqenlty, the number of units in $\mathbb{Z}_n$ is given by $\phi(n)$
```

```ad-note
Multiplicative identity
$$a \in \mathbb{Z}_n$$
$$a*1 = a$$
```

**Inverse**

$$a*b = 1 \mod n$$
$$a^{-1} = b \mod n$$

```ad-example
Find $5^{-1} \in \mathbb{Z}_8$
```

$$5*5 = 25 = 1 \mod 8$$
$$5^{-1} = 5 \mod 8$$

```ad-warning
Sometimes, a number ONLY has a inverse in $\mathbb{Z}_n$ **if and only if** the number is relatively prime to the modulos.
- ex. $2^{-1} \space DNE \space in \space \mathbb{Z}_8$
```

```ad-question
Which numbers have multiplicative inverses in $\mathbb{Z}_{10}$?
```

$$\mathbb{Z}_{10} \Rightarrow \cancel 0, 1, \cancel 2, 3, \cancel 4, \cancel 5, \cancel 6, 7, \cancel 8, 9$$
$1,3, 7, 9$ have a multiplicative inverse in $\mathbb{Z}_{10}$

*Example*: $2 * 5 = 0 \mod 10$

$$25^{-1} \mod 83$$
$$25X \equiv 1 \mod 83$$

## Notation

Unit $\leftrightarrow$ Invertible
Unity = 1

## Modulus as a Prime Number

```ad-important
If the modulos is a prime number, every element within the set has a multiplicative inverse. This is because $n$ is relatively prime to every number within it.
- All numbers in $\mathbb{Z}_{p}$ (from $1$ to $(p-1)$) are invertible
```









