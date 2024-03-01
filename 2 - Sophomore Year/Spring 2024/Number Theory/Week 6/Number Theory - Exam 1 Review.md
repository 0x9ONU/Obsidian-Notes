Date: 28th February 2024
Date Modified: 28th February 2024
File Folder: Week 6
#NumberTheory

# HW 1

- Keep in mind that the remainders should **NEVER** be negative. Ignore the negative sign.

## Number 7
###  Part (b)

$$d = \gcd(a,b)$$
$$a = dh, b = dk$$
$$Show: \space \gcd(h, k) = 1$$

$$let \space g = \gcd(h, k)$$
$$h = gm, k = gn$$
$$a = dh = dgm$$
$$b = dk=dgn$$
**$dg$ is a common divisor of $a$ and $b$**

So, $dg |d$, and $g = 1$

If not $dg > d$, and then $dg \nmid d$

### Part (b)

$$a \mathbb{Z} \cap b \mathbb{Z} = [a,b]\mathbb{Z}$$
SHOW: $a \mathbb{Z}  \cap b \mathbb{Z} \subseteq [a,b] \mathbb{Z}$, $[a,b] \mathbb{Z} \subseteq a \mathbb{Z} \cap b \mathbb{Z}$

*Prove the First Part*

Let $x \in a \mathbb{Z} \cap b \mathbb{Z}$
Then, $x$ is a multiple of both $a \space \& \space b$

By definition of LCM, the $[a, b]$ divides $x$.
So, $x \in [a, b] \mathbb{Z}$

*Prove Second Part*

Let $y \in [a, b] \mathbb{Z}$

$[a,b]$ is a multiple of both $a \space \& \space b$
Since $y$ is a multiple of $[a, b]$, we have $y$ is a multiple of $a \space \& \space b$

$y \in a\mathbb{Z} \cap y \in b\mathbb{Z}$

```ad-important
This works because multiples are transitive
```
 ALTERNATIVELY:
$[a, b] = ak = bk$

$y = [a, b] N$
$y = akN$
$y=bk^\prime N$

## Number 8

### Part (a)

```ad-question
Prove if $b | ac$, then $b|\gcd(a, b) * c$
```

Assume $b |ac$. 

Let $d = \gcd(a,b)$. Then we have to show that $b|dc$.

By EEA, there exists $x$ and $y$ such that $ax + by = d$. 

*Multiply both sides by c*. $acx + bcy = dc$

Since $b | ac$ and $b | bc$, we have $b |(axc + bcy)$ (left hand side). So, $b|dc$ (the right hand side)                   $\square$

### Part (b)

```ad-question
Prove if $b|ac$ and $(a,b) = 1$, then $b |c$
```

By part (a), $b | (a,b) * c$

Since, $(a, b) = 1$, we conclude that $b |c$
### Part (c)



### Part (d)

# HW 2

## Concerns

- You are not applying the EEA the way that was done in the class (by table). Just make sure you can do it during the exam.


## Problem 1

### Part (a)

```ad-question
If $6 | n$, then $3 | n$
```

If $6 |n$, then $n = 6k$ for some value of $k \in \mathbb{Z}$.

$n = 3*(2k)$, so, $3 | n$

### Part (b)

```ad-question
If $k \equiv 7 \mod 2$, then $k \equiv 3 \mod 2$
```

Assume that $k \equiv 7 \mod 2$

Then, $k =7+2a$ for some $a \in \mathbb{Z}$

By rewriting the equation, $k = 3 + 4 + 2a = 3 + 2(2+2k)$

So, $k \equiv 3 \mod 2$

## Problem 2

### Part B

$$37 \equiv -3 \mod 5$$
$$5|(37-(-3))$$

### Problem 3

```ad-question
Characterize the following:
- $m \equiv 2 \mod 3$
```

$$m = 2 + 3k$$
## Problem 4


Assume $a \equiv b \mod n$. Then, $n | (a -b)$. 
Prove that $a^3 \equiv b^3 \mod n$

$$a^3 -b^3= (a-b)(a^2+ab+b^2)$$
Since $n | (a-b)(a^2+ab+b^2)$, we get 
$$n |(a^3-b^3)$$

$$\therefore a^3 \equiv b^3 \mod n$$
## Problem 6
### Part A
```ad-question
Solve $26x = \equiv 14 \mod 3$
```

$$\gcd(26, 3) = 1$$
```ad-important
Since the modulo is so small, you can plug and chug $0 \le x \le 2$
```
$$x = 1$$
### Part B
```ad-question
Solve $24x \equiv 123 \mod 213$
```

Use EEA

| r   | q   | x   | y   |
| --- | --- | --- | --- |
| 213 | -   | 1   | 0   |
| 24  | -   | 0   | 1   |
| 21  | 8   | 1   | -8  |
| ***3***   | ***1***   | ***-1***  | ***9***   |
| 0   | 7   | -   | -   |
$$\gcd(213, 24) = 3$$
$$213x + 24y = 3$$
$$24(9) + 213(-1) = 3$$
$$24(9) = 3 - 213(-1)$$$$24(9) \equiv 3 \mod 213$$
$$24(9)(41) = 3(41) \mod 213$$
$$24(369) \equiv 123 \mod 213$$
$$x = 369 \equiv 156 \mod 213$$
$$x = 156 + \frac{n}{\gcd(a,b)}k, \space \space \space 0 \le k \le (n-1) \in \mathbb{Z}$$
$$x = 156 + \frac{213}{3} k, \space \space \space 0 \le k \le 2 \in \mathbb{Z}$$
$$156 + 71 = 227 = 14$$
$$156 + 71(2)=...$$
## Problem 7

```ad-question
Does the following have a solution: 
$$ax \equiv 0 \mod n$$
```

Trick Question. If $x=0$, then there is always a solution regardless of $a$.

## Problem 8

```ad-question
Prove that if $m$ and $n$ are odd integers, then $m^2-n^2\equiv 0 \mod 8$ 
```

### Method 1

```ad-note
If you take the mod of an odd number $\mod 8$, it will still be an odd number
- $even \mod 8 \Rightarrow 2 + 8k$
- $odd \mod 8 \Rightarrow 1 + 8k$
```

First observe that $m, n$ are congruent to $1, 3, 5, or 7 \mod 8$

Then, if you square them, $m^2, n^2$ are congruent to $1, 9, 25, \space or \space 49 \mod 8$

Any pair of the four numbers $1, 9, 25, 49$ has a difference that is $0 \mod 8$ (Multiple of $8$)

### Method 2

Let $m = 2a + 1$ and $n = 2b + 1, \space \space \space a, b \in \mathbb{Z}$

$m^2 - n^2 = (2a+1)^2 - (2b+1)^2$

$=(2a - 2b)(2a+2b + 2)$

$=2(a-b) * 2(a+b+1)$

$= 4(a-b)(a+b+1)$

```ad-note
Look at the different cases to make sure that it is still 
```

**Case 1: $a, b$ have the same parity (even or odd)**

Then, $a-b$ is even, regardless if they are both odd or even.

So, $m^2-n^2$ is a multiple of $8$

**Case 2: $a, b$ have the opposite parity**

Then, $a+b+1$ is even, as adding two even and odd numbers is odd, and then adding one is even.

So, $m^2-n^2$ is a multiple of $8$


## Question 10

### Part 1

Find $(123)^{456} = \mod 23$

```ad-warning
Always check for relatively prime, or else we can't apply it
```
$$\gcd (123, 23) = 1$$
$$456 = 22(20) + 16$$
$$123^{22}\equiv 1 \mod 23$$
$$(123)^{456} = (123)^{22(20) + 16} = ((123)^{22})^{20} * (123)^{16}$$
$$= 1^{20} * (123)^{16} \mod 23$$
$$= 8^{16} \mod 23$$
$$(8^4)^4 \mod 23$$
$$(4096)^4 \mod 23$$
$$(2)^4 \mod 23$$
$$123^{456} \equiv 16 \mod 23$$

## Question 11

```ad-note
Look at HW to check the other two parts. You got them right
```

### Part C

$$\phi(1) = 1$$
$$\phi(p) = p-1$$
$$\phi(p^2) = p^2 -p$$
$$\phi(p^3) = p^3 -p^2$$
$$...$$
$$\phi(p^{\alpha -1}) = p^{\alpha - 1} - p^{\alpha -2}$$
$$\phi(p) = p^\alpha -p^{\alpha -1}$$
```ad-important
Everything cancels down
```


$$\phi(1) = \cancel1$$
$$\phi(p) = \cancel p \cancel{-1}$$
$$\phi(p^2) = \cancel p^2 \cancel{-p}$$
$$\phi(p^3) = \cancel p^3 \cancel{-p^2}$$
$$...$$
$$\phi(p^{\alpha -1}) = \cancel{p^{\alpha - 1}} \cancel{- p^{\alpha -2}}$$
$$\phi(p^\alpha) = p^\alpha - \cancel{p^{\alpha -1}}$$
$$\therefore \phi(1) + \phi (p) + \phi(p^2) +...+ \phi(p^\alpha) = p^\alpha$$

## Question 13

Chinese remainder theorem:

$$\begin{bmatrix}x \equiv 1 \mod 5 \\ x \equiv 4 \mod 7 \\ x \equiv 8 \mod 11 \end{bmatrix}$$
$$x \equiv (7 * 11 * ((7*11^{-1}) \mod 5) * 1)+ (5*11 * ((5*11)^{-1} \mod 7)  * 1) + (5 * 7 * ((5*7)^{-1} \mod 11) * 8) \mod (5*7*11)$$
$$x \equiv (7*11*3*1) + (5*11*6*4) + (5*7*6*8) \mod (385)$$
$$x \equiv 151 \mod 385$$

