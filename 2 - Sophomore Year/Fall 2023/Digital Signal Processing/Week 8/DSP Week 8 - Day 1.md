Date: 11th October 2023
Date Modified: 11th October 2023
File Folder: Week 8
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Convolution Properties

```

# Convolution Examples

## Convolution when given $\delta[n]$ but no $h[n]$

```ad-question
Find convolution when $y[n] = x[n] = 2x[n-1]+3x[n-2]$
```

The delta sequence will only be $1$ at only one point at a certain time of $n$

```ad-check
title: Solution
- Find every value of the convolution by replacing $x[n]$ with $\delta[n]$
	- $h[0] = \delta[0] - 2\delta[1] + 3\delta[2] = 1 + 0 + 0 = 1$
	- $h[1] = \delta[1] - 2\delta[0] + 3\delta[1] = 0 - 2 + 0 = -2$
	- $h[2] = \delta[2] - 2\delta[1] + 3\delta[0] = 0 + 0 + 3 = 3$
	- $h[3] = \delta[3] - 2\delta[2] + 3\delta[1] = 0 + 0 + 0 = 0$
- $y[n] = \{ 1_0, -1, 2, 1, 3 \}$
```

## Convolution When Both Time Signals Go Towards Infinity

```ad-warning
**Must** use long method
```

```ad-question
Given $x[n] = \alpha^n u[n]$ AND $h[n] = u[n]$, Find their convolution
```

1. Draw Both time signals

#comebacklater ex. 2

2. Flip and convert $h[n]$ to $h[n-k]$

#comebacklater ex. 3

1. Find all values of $y[n]$
 - $y[0] = 1$
 - $y[1] = 1 + (\alpha * 1)$
 - $y[2] = 1 + (\alpha) + \alpha^2$
 - $y[3] = 1+ \alpha + \alpha^2 + \alpha^3$

4. Because there is a pattern, a definition *must* be made

$$y[n] = \begin{bmatrix} 0 & n<0 \\ \sum^n_{k=0} \alpha^2  & n \ge 0\end{bmatrix}$$
$$ OR$$
$$y[n] = (\sum_{k=0}^n \alpha^k) * u[n]$$

# Properties of Convolution

## LTI System Definition

An LTI system is entirely determined by its impulse response
- This is not true for Non LTI systems.

## Identity and Shifting Properties:

$$y[n] = x[n] ** \delta[n] = x[n]$$
$$ THEN$$
$$y[n] ** \delta[n-k] = y[n-k] = x[n-k]$$
## Commutative Property

$$ x[n] ** h[n] = h[n] ** x[n]$$
$$ Where$$
$$\sum_{k=-\infty}^\infty x[k] * h[n-k] = \sum_{k=-\infty}^\infty x[n-k]*h[k]$$

## Distributive Property

$$X[n] ** (h_1[n] + h_2[n] = x[n] ** h_1[n] + x[n] ** h_2[n]$$

#comebacklater ex. 4 handout


## Associative Property:

$$x_1[n] ** (h_1[n]**h_2[n]) = (x_1[n] ** h_1[n]) ** h_2[n]$$

## Causality

```ad-important
- $y[n]$ doesn't depend on $x[n+k]$ for $k>0$
- An LTI System with impulse reponse $h[n]$ is causal if and only if **$h[k] = 0$ for all $k < 0$**
```

## Stability

An LTI System with impulse response $h[n]$ is stable if and only if its impulse response is **absolutely summable**:

$$\sum_{n=-\infty}^{\infty} | h[n] | < \infty$$


# Example:

```ad-question
Consider the following sequences:
$$x[n] = 3\delta[n-2] - 2\delta[n+1]$$
$$h[n] = -\delta[n+2]+ 4\delta[n] - 2\delta[n-1]$$
Determine $y[n] = x[n] ** h[n]$
```

```ad-hint
1. Distributive Property
2. Shifting Property
```







