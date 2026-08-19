 Date: 4th December 2023
Date Modified: 4th December 2023
File Folder: Week 15
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Discrete Fourier Transform (DFT)

```

# Discrete Fourier Transform (DFT)

-  Only for sequences with finite length
- Computes $N$ equally spaced frequency samples for DTFT by sampling one period of DTFT

![[DSP Week 15 - Day 3 2023-12-04 12.05.19.excalidraw]]

$$DFT\{ x[n]\} = X(k)$$
$$X(k) = \sum_{n=0}^{N-1} X[n] e^{-j \frac{2 \pi kn}{N}}$$
$$0 \le n \le N-1$$
$$0 \le K \le N-1$$
![[DSP Week 15 - Day 3 2023-12-04 12.10.31.excalidraw]]


## Examples

### Example 1

```ad-question
Compute the N-point DFT of $x[n] = \delta [n]$
```

$$X[k] \sum_{n=0}^{N-1} \delta [n] e^{-j\frac{-2\pi k n}{N}}$$
$$X[k] = \delta[0] e^{-j\frac{-2 \pi k(0)}{N}}$$
$$X[k] = 1$$
### Example 2

```ad-question
Compute the N-Point DFT of the signal:
$$$x[n] = \delta[n-n_0]; \space 0 < n_0 < N$
```

```ad-note
$$\delta[n-n_0] = 1; \space n=n_0$$
```

$$x(k) = \sum_{n=0}^{N-1} \delta[n-n_0] e^{-j\frac{2\pi n}{N}}$$
$$x(k) = e^{-j \frac{2\pi n_0}{N}}$$

### Example 3:

```ad-question
Compute the 4-point DFT of the sequence:
$$x[n] = \{ 1_0, 2, 1, 2 \}$$
```

$$x(k) = \sum_{n=0}^{3} x[n] e^{-j \frac{2 \pi k n}{4}}$$
$$x(k) = \{ x(0), x(1), x(2), x(3) \}$$
**For $k = 0$**

$$x(0) = \sum_{n=0}^{3} x(n) e^{(0)}$$
$$x(0)=x(0)+x(1)+x(2)+x(3) = 6$$

**For $k=1$

$$x(1) = \sum_{n=0}^{3} x[n] e^{-j \frac{2 \pi n}{4}}$$
$$x(1) = x(0)e^{-j \frac{2 \pi (0)}{4}} + x(1)e^{-j \frac{2 \pi (1)}{4}} + x(2)e^{-j \frac{2 \pi (0)}{2}} + x(3)e^{-j \frac{2 \pi (3)}{4}}$$

$$x(1) = x(0)+ x(1) e^{-j \frac{\pi}{2}} + x(2) e^{-j \pi} + x(3) e^{-j \frac{3 \pi}{2}}$$
```ad-note
Use the rule: $$e^{\pm} = \cos \Theta \pm j \sin\Theta$$
```

$$x(1) = x[0] + x[1](\cos \frac{\pi}{2} - j \sin \frac{\pi}{2}) + x[2](\cos \pi - j \sin \pi) + x[3](\cos \frac{3\pi}{2} - j \sin \frac{3\pi}{2})$$
$$x(1) = 1 + 2(0-j) + 1(-1-0) 2(0 + j) = 6$$
CHECK PAPER NOTES FOR REST... CONTINUE THE PATTERN FOR $k=2, k=3$

$$x(k) = \{6_0, 0, -2, 0 \}$$

