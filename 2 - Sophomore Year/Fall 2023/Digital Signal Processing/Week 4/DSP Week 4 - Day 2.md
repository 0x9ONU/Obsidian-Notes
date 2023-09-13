	Date: 13th September 2023
Date Modified: 13th September 2023
File Folder: Week 4
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Discrete Time Convolution

```

# Discrete Time Convolution

## Addition

$$y[n] = x_1[n] + x_2[n]$$

```ad-important
- Align each midpoint with each other
- Add the values point by point to create $y[n]$
```

```ad-example
$$x_1[n] = \{ 1, -1, 0.5, 1_{-}, 2, 1.5 \}$$
$$x_2[n] = \{ -1, 1, 1.5, 1_{-}, -1, 0.5 \}$$
#comebacklater ex. 1
```ad-check
title: Solution
$$y[n] = \{ 0, 0, 2, 2, 1, 2 \}$$
#comebacklater ex. 2
```

## Convolution

A mathematical tool that expresses the amount of overlap of one function when it is shifted over another function.

$$y[n] = x[n] * h[n]$$$$y[n] = \sum^{\infty}_{k=-\infty} x[k] *h[n-k]$$

### Steps to Convolution

1. Change the variable from $n \to k$
$$ x[k] \space h[k]$$
2. Perform folding $h[k]$
$$ h[-k]$$
3. Perform shifting by n
$$h[-k + n] = h[-(k-n)] = h[n-k]$$
4. Multiply & Sum 

$$\sum^{\infty}_{k=-\infty} x[k] *h[n-k]$$

```ad-example
Find $y[n] = \sum^{\infty}_{k=-\infty} x[k] *h[n-k]$
$$x[n] = \{ 1_{-}, 2, 3, 4 \}$$
$$h[n] = \{ 0, 2, 2, 2 \}$$
```ad-check
title: Solution
- Find $x[k]$ and $h[k]$
	- $x[k] = \{ -\infty, ... 1_{-}, 2, 3, 4, ... \infty \}$
	- $h[k] = \{ -\infty, ... 0, 2, 2, 2, \infty \}$
	- #comebacklater ex. 3
- Find $h[-k]$
	- #comebacklater ex. 4
- Shifting (The value that was a $k=0$) now at $n$
	- #comebacklater ex. 5
- Multiply and Sum
	- $\sum^{\infty}_{k=-\infty} x[k] *h[n-k]$
	- #comebacklater ex. 6
	- #comebacklater ex. 7
	- $n = 0 => y[0] = \sum x[k] * h[0-k] = \sum 0 = 0$
	- #comebacklater ex. 8
	- $n = 1 => y[1] = \sum x[k] * h[1-k] = 1*2 = 2$ Overlap begins
	- #comebacklater ex. 9
	- $n = 2 => y[2] = \sum x[k] * h[2-k] = 1*2 + (2*2) = 6$
	- #comebacklater ex. 10
	- $n = 3 => y[3] = \sum x[k] * h[3-k] = 12$
	- #comebacklater ex. 11
	- $n = 4 => y[4] = \sum x[k] * h[4-k] = 18$
	- #comebacklater ex. 12
	- $n = 5 => y[5] = \sum x[k] * h[5-k] = 14$
	- #comebacklater ex. 13
	- $n = 6 => y[6] = \sum x[k] * h[6-k] = 8$
	- $n = 7 => y[7] = \sum x[k] * h[7-k] = 0$ Overlap ends
	- #comebacklater ex. 14
```


