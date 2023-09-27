Date: 27th September 2023
Date Modified: 27th September 2023
File Folder: Week 6
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- System Classifications

```

# Stability

If and **only if** every bounded input produces a bounded output

```ad-warning
It is unstable if the bounded input produces *unbounded* output
```

#comebacklater ex. 1

## Examples

Prove that $y[n] = (x[n])^2$ is stable or unstable

```ad-check
title: Solution
- Assume $x[n]$ is finite, then:
	- $y[n] = (finite)^2$
	- $y[n] = finite \space => \space stable$
- The amplitude does not become infinity, so finite
```

Prove that $y[n] = n *x[n]$ where $n \to \infty$ is stable or unstable

```ad-check
title: Solution
- Assuming $x[n]$ is finite, then:
	- $y[n] = (\infty)(finite)$
	- $y[n] = \infty$
- It is unstable since the signal goes to infity, which means it is no finite
```

Prove that $y[n] = \cos(n) * x[n]$ is stable or unstable

```ad-check
title: Solution
- Assuming that $x[n]$ is finite, then:
	- $\cos(n)$ will always be between 1 and -1
	- $y[n] = \cos(n) [finite]$
	- $y[n] = finite$
```

Prove that $y[n] = \frac{x[n]}{sin(n)}$ is stable or unstable

```ad-check
title: Solution
- Assume that $x[n]$ is finite, then:
	- $y[n] = \frac{finite}{sin(n)}$
	- Zero is included in the range of $sin(n)$
	- Thus, $y[n] = \frac{finite}{0}$
	- $y[n] = \infty$
- Because there is a point in the domain where the denominator is zero, there is a case where the signal would approach infinity
```

Prove that $y[n] = x[n]n^2$ stable or unstable

```ad-check
title: Solution
- $y[n] = finite * n^2$
- UNSTABLE
```

Prove that $y[n] = 2^n*x[n]$ stable or unstable

```ad-check
title: Solution
unstable
```
# Time-Invariance

A system is time-invariant or "shift invariant" if a **shift** in the *input* signal produces a **corresponding shift** in the output.
- Otherwise, the signal would be *time-variant* where $y[n]$ does not have the same shift as the input

#comebacklater ex. 2 in notes

```ad-important
If $x[n]$ is put through the system to get $y[n]$, THEN $x[n-k]$ is put thorugh the system to get $y[n, k]$. The signal is time-invariant WHEN $y[n] = y[n, k]$
```

```ad-note
For a system to be time invariant, it needs to satisfy the followng:
1. No time scaling
2. Coeff should be **constant**
3. ANy added or subtracted terms int eh system should be cosntant or zero
```
## Examples

Find if $y[n] = x[2n]$ is time-invariant or time-variant

```ad-check
title: Solution
- Find $y[n-n_0]$
	- $y[n-n_0] = x[2(n-n_0)]$
	- $y[n-n_0] = x[2n-2n_0]$
- Find $y[n, n_0]$ 
	- $y[n, n_0] = x[2n (- n_0)]$
	- $y[n, n_0] = x[2n - n_0]$
- $y[n-n_0] \ne y[n, n0]$ SO time-variant
```

Find if the signal $y[n] = 2+ x[n]$ is time-invariant or time-variant

```ad-check
title: Solution
- Find $y[n-n_0]$
	- $y[n-n_0] = 2 + x[n-n_0]$
- $Find $y[n, n_0]$
	- $y[n, n_0] = 2 + x[n (-n_0)]$
- $y[n-n_0] = y[n, n_0]$ SO time-invariant
```

Find if the signal described in the diagram is time-invariant or time-variant

#comebacklater ex. 3 in notes

```ad-check
title: Solution
- Find $y[n]$
	- $y[n] = x[n] + x[n-1]$
- Find $y[n - n_0]$
	- $y[n - n_0] = x[(n-n_0)] + x[(n-n_0)-1]$
- Find $y[n, n_0] = x[n(-n_0)] + x[n(-n_0)-1]$
- $y[n-n_0] = y[n, n_0]$ SO time-invariant
```

Find if the signal $y[n] = \cos(n) x[n-n_0]$ is time-invariant or time-variant

```ad-check
title: Solution
- Find $y[n-n_0]$
	- $y[n-n_0] = cos(n-n_0)xpn-n_0$
- Find $y[n, n_0]$
	- $y[n,n_0] = \cos(n) x[n-n_0]$
- $y[n-n_0] \ne y[n, n_0]$ SO time-variant
```

Find if the signal $y[n] = n * x[n]$

```ad-check
title: Solution
The coefficient is not constant, so time variant
```

