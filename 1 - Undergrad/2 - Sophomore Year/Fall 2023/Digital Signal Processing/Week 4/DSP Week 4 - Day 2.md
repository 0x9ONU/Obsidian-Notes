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
![[CamScanner 09-20-2023 20.49_1.jpg]]
```ad-check
title: Solution
$$y[n] = \{ 0, 0, 2, 2, 1, 2 \}$$
![[CamScanner 09-20-2023 20.49_2.jpg]]
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
	- ![[CamScanner 09-20-2023 20.49_3.jpg]]
- Find $h[-k]$
	- ![[CamScanner 09-20-2023 20.49_4 1.jpg]]
- Shifting (The value that was a $k=0$) now at $n$
	- ![[CamScanner 09-20-2023 20.49_5.jpg]]
- Multiply and Sum
	- $\sum^{\infty}_{k=-\infty} x[k] *h[n-k]$
	- ![[CamScanner 09-20-2023 20.49_6.jpg]]
	- ![[CamScanner 09-20-2023 20.49_7.jpg]]
	- $n = 0 => y[0] = \sum x[k] * h[0-k] = \sum 0 = 0$
	- ![[CamScanner 09-20-2023 20.49_8.jpg]]
	- $n = 1 => y[1] = \sum x[k] * h[1-k] = 1*2 = 2$ Overlap begins
	- ![[CamScanner 09-20-2023 20.49_9.jpg]]
	- $n = 2 => y[2] = \sum x[k] * h[2-k] = 1*2 + (2*2) = 6$
	- ![[CamScanner 09-20-2023 20.49_10.jpg]]
	- $n = 3 => y[3] = \sum x[k] * h[3-k] = 12$
	- ![[CamScanner 09-20-2023 20.49_11.jpg]]
	- $n = 4 => y[4] = \sum x[k] * h[4-k] = 18$
	- #comebacklater ex. 12
	- $n = 5 => y[5] = \sum x[k] * h[5-k] = 14$
	- #comebacklater ex. 13
	- $n = 6 => y[6] = \sum x[k] * h[6-k] = 8$
	- $n = 7 => y[7] = \sum x[k] * h[7-k] = 0$ Overlap ends
	- #comebacklater ex. 14
```


