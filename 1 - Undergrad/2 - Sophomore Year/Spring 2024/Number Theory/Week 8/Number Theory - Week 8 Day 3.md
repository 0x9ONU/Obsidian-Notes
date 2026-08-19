Date: 22nd March 2024
Date Modified: 22nd March 2024
File Folder: Week 8
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

https://www.overleaf.com/project/65d2781f985eba46fc6f96aa
```

# Discrete Probabilities

## Random Variable

**Random Variable:** Function $X : \Omega \to \mathbb{R}, \space \Omega = \mbox{Sample Space}$

**Special Events**:

$$\{X \le x\} = \{ \omega \in \Omega : X(\omega) \le x \}$$
$$\{X = x\} = \{ \omega \in \Omega : X(\omega) = x \}$$
$$\{X > x\} = \{ \omega \in \Omega : X(\omega) > x \}$$
```ad-summary
The  collection of outcomes where the chosen variable is less than, equal to, or greater than the chosen $x$
```

```ad-example
Lets say you toss a coin three times and get the following:
- HHH
- HHT
- HTH
- THH
- HTT
- THT
- TTH
- TTT

If $x$ is the number of heads, then try to find getting less than or equal to one head such that ${X \le 1} = \{ HTT, THT, TTH, TTT \}$
```

Density: $f_x(x) = Pr(X = x)$

```ad-example
What is the density for flipping one heads out of three two tosses:
$$\{X = 1\} = \{HTT, THT, TTH \}$$
$$f_x(x) = Pr(X=x) = \frac{X=x}{\Omega} = \frac{3}{8}$$
```

Cumulative Distribution: $F_x(x) = Pr(X \le x)$

## Uniform Distribution/Equally Likeliness

```ad-summary
Let $S$ be a set of $N$ elements. As an example, let $S = \{0, 1, 2,...N-1 \}$.
$$\space$$
Let $X$ be a random variable such that:
$$f_x(j) = Pr(X = j) = \begin{bmatrix} \frac{1}{N} \mbox{ if } j \in S \\ 0 \mbox{ if } j \notin S \end{bmatrix}$$
```

$X$ is said to have uniform distribution, or we say that $X$ is uniformly distributed.

## Binomial Distribution

Given a Bernoulli experiment (two outcomes labelled as success and failure), let $p = Pr(\mbox{success})$.

let $X$ be the number of successes in $n$ trials.

The probability of getting $k$ successes in $n$ trials is:

$$f_x(k) = Pr(X=k) = {n \choose k}p^k(1-p)^{n -k}$$

### Why Does This Work

In ${n \choose k}$, in $n$ trials, you choose $k$ in every possible way.

For example, lets say that from $1 \to k$ are successes and $k \to n$ are failures, which would mean:

$$p*p*...*p*(1-p)*(1-p)*...$$

```ad-danger
DO GEOMETRIC AND HYPERGEOMETRIC DISTRIBUTIONS ON YOUR OWN
```

## Joint Density

Let $X$ and $Y$ be two random variables.

$$\mbox{Joint Density}:f_{X,Y}(x, y) = \mbox{Pr}(X = x, \mbox{ and } Y=y)$$
```ad-example
Lets say that $X = \begin{bmatrix} 1, H \\ 0, T\end{bmatrix}$ and $Y = \{1, 2, 3, 4, 5, 6\}$. What is:
$$f_{X, Y}(1, 3) = \mbox{PR}(X=1, Y=3)$$
They are independent so:
$$f_{X, Y}(1, 3) = \frac{1}{2} * \frac{1}{6}$$
```

### Conditional Joint Density

$$f_{X|Y}(x |y) = \mbox{Pr}(X=x|Y=y)$$

```ad-example
Lets say that $X = \begin{bmatrix} 1, H \\ 0, T\end{bmatrix}$ and $Y = \{1, 2, 3, 4, 5, 6\}$. What is:
$$f_{X|Y}(1|3) = \mbox{PR}(X=1|Y=3)$$
They are independent so:
$$= \frac{Pr(X=x \cap Y = y)}{Pr(Y = y)}$$
$$f_{X|Y}(1, 3) = \frac{\frac{1}{2} * \frac{1}{6}}{\frac{1}{6}} = \frac{1}{2}$$
```

$X$ and $Y$ are **independent**

$$f_{X, Y}(x, y) =f_X(x)f_Y(y)$$

This can be written as:

$$Pr(X = x, \mbox{ and } Y = y) = Pr(X=x)Pr(Y=y)$$

