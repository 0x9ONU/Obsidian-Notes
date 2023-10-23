Date: 23rd October 2023
Date Modified: 23rd October 2023
File Folder: Week 10
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Complex Numbers (again...)
- Discrete Time Fourier Transform (DTFT)

```

# Complex Numbers

```ad-example
title: Types of COmplex Numbers
- Rectangle
$$C=a+jb$$
- Polar/Exponeital Form
$$C=|r|\angle\theta$$
$$C=re^{j\Theta}$$
```

## Conversions

### Rectangular to Polar

$$r = \sqrt{a^2+b^2}$$
$$\Theta = \arctan(\frac{b}{a})$$
### Polar to Rectangular

$$a = r\cos(\theta)$$
$$b = r\sin(\theta)$$

## Arithmetic

### Multiplication/Division

$$\frac{\textbf{A}}{\textbf{B}} = \frac{A}{B}\angle(\theta_a-\theta_b)$$
$$\textbf{AB}=AB\angle(\theta_a+\theta_b)$$

### Addition/Subtraction

$$C_1 +C_2 = (a_1+a_2) + j(b_1+b_2)$$
### Conjugate ($\star$)

$$C^\star = a-jb$$

$$C^\star = re^{-j\theta}$$

```ad-important
$$re^{j\theta} = r\cos(\theta) + rjsin(\theta)$$
```

# Discrete Time Fourier Transform (DTFT)

```ad-summary
Provides the freuqnecy specturm of a discrete-time signal $x[n]$
```

Given by the following equation:

$$x(\Omega) = \sum_{n=-\infty}^\infty x[n]e^{-j\Omega n}$$

The **Inverse** (IDFT) is given by:

$$x[n] = \frac{1}{2/pi} \int_{-\pi}^{\pi} x(\Omega)e^{jn\Omega}d\Omega$$

## Examples

### Example 1:

```ad-question
Compute the DTFT of the following equation:
$$x[n] = \delta[n-n_0]$$
```

- Setup Equation

$$x(\Omega) = \sum_{n=-\infty}^\infty x[n] e^{-j\omega n}$$
$$x(\Omega) = \sum_{n=-\infty}^\infty \delta[n-n_0] e^{-j\Omega n}$$
$$...+0 + 0 + 0 + \delta[n-n_0]e^{-j\Omega n_0} + 0 + 0 + 0+...$$
$$=\delta[n_0-n_0]e^{-j\Omega n_0} = e^{-j\Omega n_0}$$

### Example 2:

```ad-question
Compute the DTFT of the following discrete time signal:
$$x[n] = \{ 1_0, -1, 2, 2 \}$$
```

$$x(\Omega) = \sum_{0}^3 x[n] e^{-j\omega n}$$
$$x(\Omega) = x[0]e^0+x[1]e^{-j\Omega}+x[2]e^{-j\Omega2}+x[3]e^{-j\Omega3}$$

$$x(\Omega) = 1-e^{-j\Omega}+2e^{-j\Omega2}+2e^{-j\Omega3}$$


### Example 3:

```ad-question
$$x[n] = u[n-k]$$
```

$$x(\Omega) = \sum_{n=-\infty}^{\infty}u[n-k]e^{-j\Omega n}$$

$$x(\Omega) = \sum_{n=k}^\infty = (1)e^{-j\Omega n}$$

$$= e^{-j\Omega k} +  e^{-j\Omega (k+1)} + e^{-j\Omega (k+2)}+...$$
$$=e^{-j\Omega k} +e^{-j\Omega k-j\Omega} + e^{-j\Omega k - j \Omega 2}+... \infty$$
$$= e^{-j\Omega k} [1 + e^{-j\Omega} + e^{-2j\Omega}+... \infty]$$
$$x(\Omega) = \frac{e^{-j\Omega k}}{1-e^{-j\Omega}}$$

### Example 4:
```ad-question
$$x[n] = a^n * u[n]$$
```

$$x(\Omega) = \sum_{n=-\infty}^\infty a^n u[n] e^{-j \Omega n}$$
$$x(\Omega) = \sum_{n=0}^\infty a^n (1)e^{-j \Omega n}$$

$$x(\Omega) = \sum_{n=0}^\infty (ae^{-j \Omega})^n$$

$$(ae^{-j \Omega})^1+(ae^{-j \Omega})^2+...$$
$$1 + ae^{-j\Omega} + (ae^{-j \Omega})^2+...$$
$$x(\Omega) = \frac{1}{1-ae^{-j\Omega}}$$

## Inverse Fourier Transform (The Easy Way)

Expanding the summation:

$$-\infty+...+ x(-2)e^{-j\Omega(-2)} + x(-1)e^{-j\Omega(-1)} + x(0) + x(1)e^{-j\Omega} + x(2)e^{-j\Omega(2)}+... \infty$$

Based on this form:
1. When $n$ is negative, the exponent is positive
2. When $n$ is positive, exponent is negative
3. At $n=0$, It is a constant denoted by $x(0)$

## Exponential Rules$$

$$e^x e^y = e^{x+y}$$
$$(e^m)^n = e^{mn}$$
$$1 + x + x^2 + ... \infty = \frac{1}{1-x}$$


