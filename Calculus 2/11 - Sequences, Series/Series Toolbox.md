## Definitions

```ad-abstract
title: Series
color: 0, 255, 255

$$\sum_{n=1}^{\infty} a_n= a_1 + a_2 + a_3 + ... a_n$$

- Series is convergent if the sum can be found
- It is divergent otherwise
```


```ad-summary
title: Sequence of Partial Sums
$$S_1=a_1$$
$$S_2=a_1+a_2$$
$$S_3=a_1+a_2+a_3$$
$$...$$
$$S_n=a_1+a_2+a_3...a_n$$

If $\lim_{n \to \infty} S_n = S$ and $S$ is a finite number, then the series ==convergent== and:
$$\sum_{n=1}^{\infty} a_n = S$$

```


## Geometric

```ad-summary
title: Geometric Series
color: 255, 255, 0
$$\sum_{n=1}^{\infty} ar^{n-1} = a + ar + ar^2 + ... ar^n$$
Where $a \ne 0$ and $r$ = Common Ratio
```


```ad-info
title: Geometric Series Convergence/Divergence
color: 255, 165, 0

A geometric series is ==convergent== when $0 < |r| < 1$ and is **divergent** otherwise.
```


```ad-important
title: Finding the Sum of a Geometric Series
$$\sum_{n=1}^{\infty} ar^{n-1} = \frac{a}{1-r}$$ where $0 < |r| < 1$
```

## Divergence Test

```ad-important
title: Divergence Test
color: 219,112,147
If $\lim_{n \to \infty} a_n \ne 0$ OR *does not exist*, then the series is **divergent**
```


```ad-warning
The Divergence Test is ***inconclusive*** when $lim_{n \to \infty} a_n = 0$
```


## Series Combination Theorems

```ad-note
If $\sum_{n=1}^{\infty} a_n$ and $\sum_{n=1}^{\infty} b_n$ are ==convergent series==, and $c$ is some constant 
```

```ad-summary
title: Theorems
color: 23, 234, 90
1. $$\sum_{n=1}^{\infty} ca_n = c \sum_{n=1}^{\infty} a_n$$
2. $$\sum_{n=1}^{\infty} (a_n + b_n) = \sum_{n=1}^{\infty} a_n + \sum_{n=1}^{\infty} b_n$$
3. $$\sum_{n=1}^{\infty} (a_n - b_n) = \sum_{n=1}^{\infty} a_n - \sum_{n=1}^{\infty} b_n$$
```

```ad-summary
Similar to both $\lim$ and Integral Theorems
```

## The Integral Test

```ad-warning
For $a_n = f(n)$, the function $f$ MUST be on the interval $[n=x, \infty)$:
- Continuous
- Positive
- Decreasing
```

```ad-summary
title: The Integral Test Setup
color: 169, 212, 90

A series $\sum_{n=x}^{\infty}$ ==converges== if and only if:
$\int_{1}^{\infty} f(x)dx$ ==converges== (aka the integral results in a finite number)
```

## P-Series Theorem

```ad-important
title: P-Series Theorem
The series of the type p-series is ==convergent== if $p > 1$ AND **divergent** otherwise.
$$\sum_{n=1}^{\infty} \frac{1}{n^p}$$
```

## Comparison Tests

### Direct Comparison Test

```ad-abstract
title: Direct Comparison Test Setup
color: 46, 78, 210
Suppose that $\sum a_n$ and $\sum b_n$ are series with **positive terms**
```

```ad-important
title: Direct Comparison Test
color: 146, 214, 83
1. If $\sum b_n$ is ==convergent== and $a_n \le b_n$ for all $n$, then $\sum a_n$ is ==also convergent==
2. If \sum b_n$ is **divergent** and $a_n \ge b_n$ for all $n$,, then $\sum a_n$ is **also divergent** 
```

### Limit Comparison Test

```ad-summary
title: Limit Comparison Test Setup
color: 196, 47, 69
Suppose that $\sum a_n$ and $\sum b_n$ are series with **positive terms**
```

```ad-important
title: Limit Comparison Test
color: 157, 103, 178
If $\lim_{n \to \infty} \frac{a_n}{b_n} = c$ where $c$ is a **finite** number and $c > 0$, then ***either*** both of these series ==converge== or **diverge**
```

```ad-note
Make $b_n$ a sequence that can be solved by other options in the toolbox
```

## Alternating Series

### Definition

```ad-summary
title: Alternating Series
color: 181, 128, 45

A series with a $a_n$ of type $(-1)^{n-1}$
- The series will swap signs indefinitely
```

### Alternating Series Test

```ad-important
title: Alternating Series Test
color: 85, 242, 244

If alternating series of type: $$\sum_{n=1}^{\infty} (-1)^{n-1} b_n$$
Satisfies the following conditions:
1. $b_{n+1} < b_n$ for all $n$ (The series is decreasing) 
2. $\lim_{n \to \infty} b_n = 0$
$$.$$
If **both of these** conditions are met, then the series is ==convergent==
```

## Absolute/Conditional Convergence

### Absolute Convergence

```ad-important
title:Absolute Convergence Defintion
If the series $\sum_{n=1}^{\infty} |a_n|$ ==converges==, then the series $\sum_{n=1}^{\infty} a_n$ ***converges absolutely***
```

```ad-note
color: 165, 104, 125
If a series is ***absolutely convergent***, then it is definitely ==convergent==
```

### Conditional Convergence

```ad-important
title: Conditional Convergence Definition
If the series $\sum_{n=1}^{\infty} |a_n|$ **diverges** AND $\sum_{n=1}^{\infty} a_n$ ==converges==, then $\sum_{n=1}^{\infty} a_n$ ***converges conditionally***
```

## Steps to Solving for Absolute Convergence

1. Test for ***absolute convergence*** by using $\sum |a_n|$
	1. If true, then the series is ***absolutely convergent*** AND ==convergent==
2. Test for ***conditional convergence*** by using  $\sum a_n$
	1. If this series is ==convergent== and the previous step was **divergent**, then the series is ***conditionally convergent***
	2. If both series are **divergent**, then the series is **divergent**

## The Ratio Test

```ad-important
Take the following limit: $$\lim_{n \to \infty} |\frac{a_{n+1}}{a_n}| = L$$ 
1. If $L < 1$, then the series $\sum_{n=1}^{\infty} a_n$ ***converges absolutely***
2. If $L > 1$ OR $L = \infty$, then the series is **divergent**
3. If $L = 1$, the test is *inconclusive*
```

## The Root Test

```ad-important
color: 105, 183, 100
Take the following limit:
$$\lim_{n \to \infty} \sqrt[n]{|a_n|}$$

1. If $\lim_{n \to \infty} \sqrt[n]{|a_n|} < 1$, then the series is ***absolutely convergent***
2. If $\lim_{n \to \infty} \sqrt[n]{|a_n|} > 1$ OR $=\infty$, then the series is **divergent**
3. If $\lim_{n \to \infty} \sqrt[n]{|a_n|} = 1$, the test is *inconclusive*
```
















