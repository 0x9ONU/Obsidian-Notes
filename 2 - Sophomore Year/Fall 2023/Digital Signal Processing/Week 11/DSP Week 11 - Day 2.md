Date: 1st November 2023
Date Modified: 1st November 2023
File Folder: Week 11
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Z-Transform Day 2

```

# Z-Transform Representation

```ad-important
$$x(z) = \frac{N(z)}{D(z)} = \frac{b_0 +b_1z^{-1}+b_2z^{-2}+...+bmz^{-m}}{1 + a_1 z^{-1} + a_2 z^{-2} +...+a_mz^{-m}}$$
```

## Zeros

Roots of the numerator polynomial for which $x(z) = 0$
$$n(z) = 0 \Rightarrow x(z) = 0$$
```ad-example
$$s^2 + 5s + 4 = (S+Q)(S-Q)$$
```

## Poles

Roots of the denominator polynomial for which $x(z) is infinity

$$D(z) = 0 \Rightarrow x(z) = \infty$$

## Relationship Between DTFT and Z-Transform

DTFT is a special form of a z-transform where $r=1$

**Remember:**
$$z = re^{j\Omega}$$

Because of this, the z-transform is able to converge in places where DTFT does not exist.
- Notation is easier
- Helps when designing filters

```ad-example
$$x[n] = u[n]$$
- For z-transform
$$x(z) = \sum_{n=-\infty}^\infty x(n) z^{-n}$$
$$= \sum_{n=0}^\infty z^{-n} = \sum_{n=0}^\infty (z^{-1})^n = \frac{1}{1-z^{-1}}, |z^{-1}| < 1$$
$$|\frac{1}{z}| < 1$$
$$|Z|>1$$
Converges everything on the outside of the circle created by the magnitude of the radius (in this case 1)
- For DTFT
$$x(\Omega) = \sum_{n=-\infty}^\infty x[n]e^{-j\Omega n}$$
$$=\sum_{n=0}^\infty e^{-j\Omega n} = \frac{1}{1-e^{- j\Omega}}$$
However, $|e^{-j\Omega}| = 1$, so the DTFT does not converge.
```

## Poles and Zeros 