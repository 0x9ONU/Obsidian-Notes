Date: 26th January 2024
Date Modified: 26th January 2024
File Folder: Week 1
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Divisibility

```

```ad-important
Slides Link:

https://www.overleaf.com/read/vgcnpcybmxhd#5a1951
```

```ad-note
Wendsday of next week will be an online class
```


# Divisibility

## Sets of Numbers

**Natural Numbers**
$$\mathbb{N} = \{1, 2, 3, ... \}$$
**Integers**

$$\mathbb{Z} = \{..., -2, -1, 0, 1, 2, 3, ...\}$$

**Rational Numbers**

$$\mathbb{Q} = \{ \frac{a}{b}:a, b \space \epsilon \space \mathbb{Z}, b \ne 0 \}$$
Rational numbers can either:
- Terminate after a set number of decimal expansions ($2.375 = \frac{2375}{1000}$)
- The decimal repeats at set intervals ($2.3\bar{3}$)


### Solve for Repeating Decimals

```ad-question
Find the fraction of the following rational number: $2.3\bar{3}$
```

**Step 1: Write Equation in terms of M**

$$M = 2.3\bar{3}$$
**Step 2: Multiply the Equation by the number of repeating decimals**

$$10M = 23.3\bar{3}$$
**Step 3: Subtract the Two Equaitons**

$$\begin{matrix} 10M = 23.3\bar{3} \\ M = 2.3\bar{3} \end{matrix}$$
$$9M = 21$$
$$M = \frac{21}{9}$$



**Real Numbers**

$$\mathbb{R} = the \space set \space of \space real \space numbers$$

**Complex Numbers**

$$\mathbb{C} = \{a + bi:a, b \space \epsilon \space \mathbb{R} \}$$

**For $a \space \epsilon \space \mathbb{Z}$**
- **The set of all multiples of $a$**
$$a \mathbb{Z} = \{m \space \epsilon \mathbb{Z}:m = aq, q \space \epsilon \space \mathbb{Z} \}$$
```ad-important
This set is closed under addition and subtraction
$$ma \pm na$$
$$= (m \pm n) a$$
```

# Well-Ordering Principle

Every nonempty subset of $\mathbb{N}$, the set of positive integers, contains a least element.

```ad-question
Does this principle work for the set of integers $\mathbb{Z}$

```ad-check
title: Answer
There is no least element in the set as negative even numbers make it not possible
```

# Divisibility

Let $a, b$ be integers. $a$ is called a multiple of $b$ if $a=bq$ for some $q \space \epsilon \space \mathbb{Z}$
- $b | a \leftrightarrow a = bq$
- $b \space divides \space a$ Also means $a$ is a multiple of $b$

```ad-important
title: Proposition
$$b|a \space if \space a \mathbb{Z} \subset b \mathbb{Z}$$
- Since every multiple of $a$ is a multiple of $b$, then $a$ must belong to the subset of $b$
```

```ad-example
$$3 | 6$$
$$6 \mathbb{Z} = \{6k: k \space \epsilon \space \mathbb{Z} \}$$
$$3 \mathbb{Z} = \{ 3k : k \space \epsilon \space \mathbb{Z} \}$$
```

## Division Algorithm

Let $a$ and $b > 0$ be integers. There exists unique integers $q$ (called *quotient*) and $r$ (called *remainder*) such that:
$$a = bq + r, \space where \space \space 0 \le r \le n-1$$

```ad-example
$$17 \div 3$$
$$\space$$
$$a = bq + r$$
$$\space$$
$$17 - 3*5 + 2$$
```



## What happens when the dividend is negative?

```ad-warning
The remainder $r$ CANNOT be negative
```


$$-17 \div 3$$
$$-17 = 3 (-6) + (1)$$

```ad-important
$$If \space a=bq+r$$
$$\space$$
$$Then \space -a = b(-q-1) + (b-r)$$
```

## Proof of the Division Algorithm: Existence

We first show the existence of $q$ and $r$:

Given: $b > 0, a$:

$$\exists q, r \space s.t \space a = bq+r,\space  0 \le r < b$$
$$r=a-bq$$
$$\mathbb{R} = \{ a-bq : q \space \epsilon \space \mathbb{Z} \}$$
- If $a$ is positive, then set $q=-1$  to make the whole number positive
- If $a$ is negative, then a positive $q$ must be chosen such that the answer will be positive

Set $r$ to the least positive element of $\mathbb{R}$

Because $r \space \epsilon \space \mathbb{R}$: 
$$r=a-bq$$
$$a=bq+r$$
Show that $r<b$:
- Assume that $r \ge b$
- Then $0\le r-b = a-bq-b = a-(q+1)b$
- $a-(q+1)b \space \epsilon \space \mathbb{R}$
- CONTRADICTION, $r$ cannot be positive when you subtract $r-b$ as $r$ is the least element in $\mathbb{R}$

## Proof of the Division Algorithm: Uniqueness

```ad-summary
$q$ and $r$ unique 
```


