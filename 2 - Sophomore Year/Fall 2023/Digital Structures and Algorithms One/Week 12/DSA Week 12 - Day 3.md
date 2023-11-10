Date: 10th November 2023
Date Modified: 10th November 2023
File Folder: Week 12
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Geometric Sums

```

# Geometric Sums

When a sequence of values has a constant of proportionality factor between one term and the next, it is called a **geometric progression**
- Ratio of one term and previous $\frac{2^{i+1}}{2^i} =2$
- Constant proportionality factor = 2
 $$2^0+2^1+2^2+2^3+...+2^{k-1}+2^k= \sum_{i=0}^k 2^i = 2^k -1$$

## General Case

$$c(1+a+a^2+...+a^{n-1}+a^n) = \sum_{i=0}^n c(a^i) = c(\frac{1-a^{n-1}}{1-a}); \space \space \space a \ne 1$$

```ad-example
Let $a=10, c=9 \space \& \space n = k-1$:
$$9 * \sum_{i=0}^{k-1} 10^i = 9 * (\frac{1-10^{(k-1)+1}}{1-10}) = (\frac{1-10^k}{-1}) = 10^k-1$$
```

## Formula at Infinity

$$c(1+a+a^2+...+a^{n-1}+a^n+...) = \sum_{i=0}^\infty c(a^i)=c(\frac{1}{1-a})$$
```ad-important
The top term $(-a^{n+1})$ converges if $|a| < 1$ as $n \to \infty$
```

## Example 1: Geometric Progression Recurrence Equation via Substitution\

```ad-question
SOlve the recurrence equation below via substituion method using the geometric sum:
$$T(n) = 3T(n-1)+5; \space \space \space T(0) = 1$$
```

1. Write out a few cases of the equation
$$T(n-1)=3T(n-2)+5$$
$$T(n-2)=3T(n-3)+5$$
2. Sub the equations
$$T(n) = 3T(n-1)+5$$
$$=3[3T(n-2)+5]+5$$
$$=3[3[3T(n-3)+5]+5]+5$$
3. Decern a pattern
$$T(n) = 3^3T(n-3)+3^2*5+3^1*5+3^0*5$$
4. Write the pattern for general value $i$
$$T(n) = 3^iT(n-i)+3^{i-1}*5+3^{i-2}...*3^0*5$$
$$=3^iT(n-i) + 5\sum_{j=0}^{i-1}3^j$$
5. Apply the Geometric Sum Formula

$$With \space n=i-1, c=5, a=3$$
$$T(n) = 3^i(n-i)+5(\frac{1-3^i}{1-3})$$
$$=3^iT(n-i) + 5(\frac{1-3^i}{-2})$$
$$=3^iT(n-1)+2.5(3^i-1)$$

6. Get base case by solving for $i=n$

$$T(n) = 3^nT(n-n)+2.5(3^n-1)$$
$$=3^nT(0)+2.5(3^n-1)$$
$$=3^n(1)+2.5(3^n-1)$$
$$=3^n+2.5*3^n-2.5$$
$$T(n) = (3.5)3^n-2.5$$
$$\therefore T(n) = \Theta(3^n)$$

## Example 2: Division Within the Problem

$$T(n)=2T(\frac{n}{2})+n^2, \space \space \space T(1)=1$$
```ad-important
In general for divide-and-conquer such that $T(n) = aT(\frac{n}{b}) + f(n)$; Let $n=b^k$
```

1. Write out a few instances
$$T(2^k) = 2T(2^{k-1}) + (2^k)^2$$
$$T(2^{k-1}) = 2T(2^{k-2}) + (2^{k-1})^2$$
$$T(2^{k-2}) = 2T(2^{k-3}) + (2^{k-2})^2$$
2. Substitute
$$T(2^k) = 2[2T(2^k{-2})+ (2^{k-1})^2]+(2^k)^2$$
$$= 2[2[2T(2^{k-3})+(2^{k-2})^2]+(2^{k-1})^2] + (2^k)^2$$
3. Pattern:
$$T(2^k) = 2^3T(2^{k-3})+2^2(2^{k-2})^2+2^1(2^{k-1})^2+2^0(2^k)^2$$
$$2^3T(2^{k-3})+\sum_{j=0}^{3-1}2^j(2^{k-j})^2$$
4. In general for $i$
$$T(2^k) = 2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j(2^{k-j})^2$$
```ad-note
Since it is not in terms of the geometric sum, rewrite it for a better sum
```
$$T(2^k) = 2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j*4^{k-j}$$
$$=2^iT(2^{k-i})+\sum_{j=0}^{i-1}2^j+4^k(\frac{1}{4})^j *4^k-j$$
$$T(2^k) = 2^iT(n^{k-1})+4^k\sum_{j=0}^{i-1} (\frac{1}{2})^j$$
5. Geometric Sum
$$=2^iT(2^{k-i})+4^k(\frac{1-\frac{1}{2}^i}{1-\frac{1}{2}})$$
$$=2^i(2^{k-i})+2*4^k(1=1\frac{1}{2}^i)$$

6. For base case, let $i=k$ (since $k-i=0$  when $i=k$)

$$T(2^k) = 2^kT(2^0) +2*4^k(1-(\frac{1}{2})^k)$$
```ad-note
Use the following the simplify:
$$\frac{1^k}{2^k} = \frac{1}{n}$$
```
$$=n(1) +2 *(2^{k})^2(1-\frac{1}{n})$$
$$=n+2n^2(1-\frac{1}{n})$$
$$=n+2n^2-2n$$
$$=2n^2-n$$
$$\therefore T(n) = \Theta(n^2)$$
