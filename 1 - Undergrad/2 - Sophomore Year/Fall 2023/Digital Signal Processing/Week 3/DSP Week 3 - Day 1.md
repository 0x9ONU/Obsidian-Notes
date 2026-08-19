Date: 6th September 2023
Date Modified: 6th September 2023
File Folder: Week 3
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Discrete Time Signals in the Time Domain

```

# Discrete Time Signals

You can represent a discrete time signal as a sequence of numbers:

$$X[n] = \{1, 5, -2, 0, 3 \}$$

![[CamScanner 09-12-2023 13.58_1.jpg]]

OR as a function:

$$x[n] = \begin{bmatrix}1 & n=0\\5 & n=1, 3 \\ 0 & elsewhere\end{bmatrix}$$
$$X[n] = \{ ..., 0, 0, 1, 5, 0, 5, 0, ... \}$$
## Limiting Time Signals

Time signals can be limited to certain values using:
- $N_1 \le n \le N_2$
- OR
- $x[n] = 0$ for $n < N_1$
- $x[n] = 0$ for $n > N_2$

## Common Signals

### Unit Sample Sequence (Impulse Sequence)

$$\delta [n] =\begin{bmatrix}1 & n=0\\0 & n \ne 0\end{bmatrix}$$
![[CamScanner 09-12-2023 13.58_2.jpg]]


### Unit Step Sequence

$$ u[n] = \begin{bmatrix}1 & n \ge 0 \\0 & n < 0\end{bmatrix}$$
![[CamScanner 09-12-2023 13.58_3.jpg]]
# Discrete Time Signal Operations

## Shifting

```ad-important
Used to create/solve for a delay within a signal
```

```ad-summary
For $x[n]$ that was delayed by $n_0$ samples
$$y[n] = x[n - n_0]$$
```

$n_0 > 0$ => The signal is **Delayed**

$n_0 < 0$ => The signal is **Advanced**

```ad-note
The sample that was at $n=0$ is now shifted at $n=n_0$
```

```ad-example
$$x[n] = \{ 2, 3, 2_0, 1, 3 \}$$
$$y[n] = x[n-1]$$
Middle-point at $n = 2$
```ad-check
title: Solution
- Find $n_0$ is $1$ by looking at the second equation
- Drop $x[2]$ and add $x[3]$
- Shift all values over one place to the right
- $x[n-1] = \{2, 3_0, 2, 1, 3 \}$
![[CamScanner 09-12-2023 13.58_4.jpg]]
```

```ad-example
$$y[n] = x[n+2]$$

```ad-check
title: Solution
![[CamScanner 09-12-2023 13.58_5.jpg]]

```

### Exercise 1

![[CamScanner 09-12-2023 13.58_7.jpg]]

Show the graphical representation of $x(n-3)$ and $x(n+2)$

```ad-check
title:Solution
![[CamScanner 09-12-2023 13.58_8.jpg]]

![[CamScanner 09-12-2023 13.58_9.jpg]]
```

```ad-note
Values that are not included are considered 0 beyond the scope
```



## Folding

Reversal operation that adjusts the direction of the signal by mirroring it across the midpoint

$$ y[n] = x[-n]$$

```ad-example
$$x[n] = \{1, 2_0, 4, 5 \}$$
$$y[n] = x[-n]$$
Midpoint at $n = 1$
```ad-check
title: Solution
$$x[-n] = \{ 5, 4, 2_0, 1 \}$$
![[CamScanner 09-12-2023 13.58_6.jpg]]
```

## Scalar Multiplication

$$y[n] = cx[n]$$ 

```ad-summary
Each number of the sequence is multiplied by the scaler multiplier
```

```ad-example
$$x[n] = \{ 1, 1, 1, 1, 1 \}$$
$$y[n] = 3x[n]$$
![[CamScanner 09-12-2023 13.58_10.jpg]]
```

## Exponentiation 

Each element within the signal is raised to the power provided

$$ y[n] = (x[n])^l$$

```ad-example
$$x[n] = \{ 2, 1, 3, 2 \}$$
$$y[n] = (X[n])^2$$
```ad-check
title: Solution
$$y[n] = {4, 1, 9, 4}$$
```

## Sample Summation

$$\sum x(n_1) + x(N_{1+1}+... x(N_2))$$

```ad-example
$z[n]$ is the summation of the signal $x[n]$
$$x[n] = \{ 4, 1, 9, 4 \}$$
```ad-check
title: Solution
$$z[n] = 4 + 1 + 9 + 4$$
$$z[n] = 18$$
```

## Shifting & Folding

```ad-important
Shift first, THEN fold second
```

```ad-example
$$X[n] = \{ 7, 1, 2_o, 6, 3 \}$$
$$y[n] = x[-n-1]$$
```ad-check
title: Solution
- Shift
	- $X[n-1] = { 7, 1_o, 2, 6, 3}$
- Fold
	- $X[-n-1] = \{ 3, 6, 2, 1_o, 7 \}$
```
