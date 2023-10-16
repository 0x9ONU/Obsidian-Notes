Date: 16th October 2023
Date Modified: 16th October 2023
File Folder: Week 9
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Growth Rate of Functions
- Funciton Classes

```

# Growth Rate of Functions

```ad-note
Focus on dominant term (fastest growing term)
```

```ad-important
Remove any multiplicative/constant factors
```
## Big Theta Notation

$$\Theta(n^k)$$

Describes the growth rate of the largest term to give a general sense of how fast a function will eventually grow

## Example



```ad-question
Given the running times below, determine the growth rate of each, using the big theta notation, and calcualte the running times for the input values of:
1. $n=10$
2. $n=100$
```

1. $T_1(n) = 2n^2+7n+5$

$$T_1(n) = \Theta(n^2)$$


$$T_1(10) = 2(10)^2+7(10)+5$$
$$T_1(10) = 275$$

$$T_1(100) = (100)^2+7(10)+5$$
$$T_1(100) = 20,705$$

1. $T_2(n) = 25n+35$

$$T_2 = \Theta(n)$$


$$T_2(10) = 25(10)+75$$
$$T_2(10) = 285$$



$$T_2(100) = 25(100)+75$$
$$T_2(100) = 2535$$


```ad-summary
The function with the higher growth rate *may* start out higher than a funciton with a lower growth rate, but a function with a higher growth rate will surpase the other funciton as $n$ increases.
```


# Class of Functions

## Polynomials

$$p(n) = a_kn^k + a_{k-1}n^{k-1}+...+a_2n^2+a_1n+a_0$$

- $k$th degree polynomial
- Growth rate = $\Theta(n^k)$
- **Larger degree has higher order of growth**
- Has terms with exponents, but $n$ is **in the base**, not exponent!
	-  Constants are in the exponents

## Exponentials

$$x(n) = Ab^n$$
- $b$ is the base (a constant) and $n$ is in the exponent
- Growth rate = $\Theta(b^n) > \Theta(n^k)$ for any $k$ and all $b>1$
- Larger base has higher order of growth

```ad-note
Exponentials grow faster than polynomials!
```

### Useful Relationships

$$x^0=1; \forall x \ne 0$$
$$x^1=x$$
$$x^-a = \frac{1}{x^a}$$
$$x^{n+m} = x^nx^m$$
$$x^{n-m} = \frac{x^n}{x^m}$$
$$(x^n)^m = x^{nm} = x^{mn} = (x^m)^n$$

## Factorial

$$n! = n * (n-1) * (n-2) * .. * 1$$

- Factorial grows even **faster** than exponentials

## Logarithms

$$\log_bn-k \leftrightarrow n = b^k$$

- $b>1$ is the base (a constant) of the logarithm
- Growth rate = $\Theta(\log n) < \Theta(n^k)$ for any $k>0$ 

```ad-note
Logarithms with different bases have the **same growth rate**
```

### Useful Relationships

$$\log_bb = 1$$
$$\log_b(a^y) = y\log_b(a)$$
$$\log_b(b^y) = y$$
$$\log_bx = \frac{\log_cx}{\log_cb}; c \ne 1$$
$$a^{\log_bn} = n^{\log_ba}$$
$$\log_b({\frac{1}{a}}) = -\log_b(a)$$
$$b^{\log_b(y)} = y$$
$$\log_b(ac) = \log_b(a)+\log_b(c)$$
$$\log_b(\frac{a}{c}) = \log_b(a) - \log_b(c)$$

## Summary of Growth Rate

- Focus on fastest growing function in a sum
- Multiplying function gets a faster growing function
- Exponentiating a function with a base that is greater than 1 makes it grow even faster.

## Growth Rate Examples

### Example 1

```ad-question
Compare the following growth rates of the fucntions below by writing them slowest to fastest. 
- Use $f(n) < g(n)$ to indicate the $f(n)$ has a slower growth rate than $g(n)$
- For functions with the same grwoth rate, write $f(n) = g(n)$
```

$$10 < \log_2 n < 5n+1  = 2^{\log_2n} < n\log_2 n < n^2 = 25n^2+n < 2^n + n^2 < 3^n < n!$$

```ad-note
Multiplying two types of functions together makes it faster than them alone, but will never beat out a function with a higher level growth rate.
```




