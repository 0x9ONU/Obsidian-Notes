 Date: 7th February 2024
Date Modified: 7th February 2024
File Folder: Week 3
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

# Modular Arithmetic

## Congruent Modulo

```ad-summary
title: Definition
Suppose $a, b$ and $n > 0$ are integers ($a, b \in \mathbb{Z}$ & $n>0, n \in \mathbb{Z}$). Then we say that $a$ and $b$ are congruent modulo $n$ *if and only if* $n | (a-b)$. We denote this by $a \equiv b (mod n)$
```

$$a \equiv b (\mod n) \Rightarrow a = b+nk$$
- Where $k$ is some integer

```ad-important
When $a$ and $b$ are divided by $n$, we will get the same remainder.
```


```ad-example
$$22 \equiv 4 \mod{9} since 9 | (22 - 4)$$
$$3 \equiv -6 \mod{9} since 9 |(3-(-6)$$
```

### Exercise Hints

#### Slide 1
1. Show that since 6 is a multiple of 3, then $6|n$ and $3|n$
2. Since 7 is odd mod 2, then 3 should be odd mod 2
	1. ex. $k \equiv 5(\mod 3) \rightarrow k -5=3k \Rightarrow k = 5+3k$
	2. $x \equiv -3 (\mod 4) \Rightarrow x = -3+4k$

#### Slide 3

```ad-question
Characterize all integers $m$ that satisfy the congruence:
1. $m \equiv 0 (\mod 3)$
2. $m \equiv 1 (\mod 3)$
3. $m \equiv 2 (\mod 3)$
4. $m \equiv 3 (\mod 3)$
5. $m \equiv 4 (\mod 3)$
```

```ad-example
$$k = 5 + 3k \Rightarrow k=2+3+3k \Rightarrow k =2+3k \prime$$
```

### As an Equivalence Relation

```ad-summary
title: Theorem
Let $a$ and $n>0$ be itnergers.
1. Then $a \equiv a$
2. If $a \equiv b (\mod n)$, then $b \equiv a (\mod n)$
3. If $a \equiv b (\mod n)$ and $b \equiv c (\mod n)$, then $a \equiv c (\mod n)$.
$$\space$$
In other words, congruence modulo $n$ is **an equivalence relation**.
```

### As in Addition/Multiplicative Relations

```ad-summary
title: Theorem
Let $a, b, c, d$ and $n>0$ be integers. If $a \equiv b \mod n$ and $c \equiv d \mod n$, then:
1. $a + c \equiv b + d \mod n$
2. $a -c \equiv b - d \mod n$
3. $ac \equiv bd \mod n$
```

#### Proving Three

**Setup Equations**
$$a \equiv b \mod n \Rightarrow a = b + nk$$
$$c \equiv d \mod n \Rightarrow c = d+nk^\prime$$
**Foil**
$$ac = (b+nk)(c+nk^\prime)$$
$$ac = bd + nm$$
$$\therefore ac \equiv bd \mod n$$
### Exercise Hints Part 2

#### Slide 9

```ad-question
Let $a, b$ and $n >0$ be itnergers. If $a \equiv b \mod n$
1. $a^2 \equiv b^2 \mod n$
2. $a^3 \equiv b^3 \mod n$
3. For a positive integer $k$, $a^k \equiv b^k \mod n$
4. Illustrate the above statements with example susing acutal numbers
```

```ad-question
Let $a, b, c$ and $n>0$ be integers. If $ac \equiv bc \mod n$, then can we say that $a \equiv b \mod n$
```

```ad-note
$ac = bc \Rightarrow a=b$ when $c \ne 0$
You can pick numbers such that $a$ and $b$ are not congruent on their own
- Ex $a=2, b=3, n = 6, c = 1$ does not work
```

### As in Remainders of $a$ and $b$

```ad-summary
title: Theorem
Let $a, b$ and $n >0$ be itnegers. Then $a \equiv b \mod n$ iff $a$ and $b$ have the smae remainder when divided by $n$
```

$$a = n q_a r_a, 0 \le r_a < n$$
$$b = nq_b +r_b, 0 \le r_b < n$$
$$a-b = (q_a-q_b)n + (r_a-r_b)$$
```ad-important
$$ a \equiv b \mod n \Leftrightarrow r_a = r_b$$
```

```ad-note
This works since if both remainders are the same, then $a-b = (q_a-q_b)n$, WHICH is the definition of congruency $(n | (a-b))$
```

### Congruent Classes

$$[a] = \{ n \in \mathbb{Z}: n \equiv a \mod n \}$$

```ad-example
Every integer is congruent modulo $4$ to one of the itnegers $0,1,2,3$ which are called **residues** modulo $n$. The four congruence classes modulo 4 are given by:

$$[0]: \space ... \equiv -8 \equiv -4 \equiv 0 \equiv 4 \equiv 8... \mod 4$$
$$[1]: \space ...\equiv -7 \equiv -3 \equiv 1 \equiv 5 \equiv 9... \mod 4$$
$$[2]: \space ...\equiv -6 \equiv -2 \equiv 2 \equiv 6 \equiv 10... \mod 4$$
$$[3]: \space ... \equiv -5 \equiv -1 \equiv 3 \equiv 7 \equiv 11... \mod 4$$
```

```ad-important
Starting from congruent class 0, add a one to the next row unitl you hit $n - 1$
```

```ad-note
These class representative (ex. $0-3$) are the possible remainders when dividing by $n$
```

#### Definition

Suppose $m$ is a positive integer. Given an inter $a$ by division algorithm, we have $a =bm+r$ where $0 \le r \le m-1$

**Then** $$a \equiv r \mod n$$
```ad-important
So, every integer is congruent modulo $m$ to one of the numbers $0 \le r \le m-1$
```

```ad-note
Also known as the **complete set of residues mod m**
```
























