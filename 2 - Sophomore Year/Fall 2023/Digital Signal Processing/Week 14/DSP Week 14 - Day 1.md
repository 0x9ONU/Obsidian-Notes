Date: 27th November 2023
Date Modified: 27th November 2023
File Folder: Week 14
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Designing FIR Filters

```

# Window Method

Most common method for designing an FIR filter

1. Rectangular Window

$$w_R(n) = \begin{matrix}1 & 0 \le n \le M-1 \\ 0 & otherwise\end{matrix}$$

$$w_R(\Omega) = \frac{\sin(\frac{\Omega M}{2})}{\sin (\frac{\Omega}{2})}$$

2. Triangular Window:
$$w_T(n) = \begin{matrix} \frac{1-2|n- \frac{M-1}{2}|}{M-1} & 0 \le n \le M-1 \\ 0 & Otherwise\end{matrix}$$

3. Hamming Window

$$w_{Hm}(n) = \begin{matrix} 0.54 - 0.45 \cos (\frac{2\pi n}{M-1}) & 0 \le n \le M-1 \\ 0 & Otherwise\end{matrix}$$


3. Hanning Window

$$w_{Hn}(n) = \begin{matrix} 0.5 - 0.5 \cos (\frac{2\pi n}{M-1}) & 0 \le n \le M-1 \\ 0 & Otherwise\end{matrix}$$
## Procedure to Design FIR Filter Using Windows

The following values are needed:

1. Frequency Response: $H_d(\Omega)$
2. Impulse Reponse: $h_d(n)$

Since we know that $H_d(\Omega) \leftrightarrow^{DTFT} h_d[n]$:
$$H_d(\Omega) = \sum_{n=0}^\infty h_d[n]e^{-j \Omega n}$$

AND since we know $$h_d[n] \leftrightarrow^{IDTFT} H_d(\Omega)$$
$$h_d[n] = \frac{1}{2 \pi} \int H_d(\Omega) e^{-j\Omega n}$$
Knowing that:

```ad-important
$$h[n] = h_d[n] W[n]$$
$$H(\Omega) = f.T(h_d[n] ** w[n]) \Rightarrow H(\Omega) = h_d[n] w[n]$$
```

### Example

```ad-question
Design a Symmetric FIR low pass filter such that:

$$H_d(\Omega) = \begin{matrix} e^{-j\Omega \tau} & |\Omega| \le \Omega_c \Rightarrow |\Omega| \le 1 \\ 0 & Otherwise \Rightarrow -1 \le \Omega \le 1\end{matrix}$$
$$M=7 \& \Omega_c=1 \frac{rad}{s}$$
WITH **Rectangular Window**
```

**Use Integral Equation** (Equation 1):

$$h_d[n] = \frac{1}{2 \pi} \int H_d(\Omega)e^{j\Omega n} d \Omega$$

$$H_d(\Omega) = \begin{matrix} e^{-j\Omega \tau} & -1 \le \Omega \le 1 \\ 0 & Elsewhere \end{matrix}$$

Substitute 2 into 1:

$$h_d(n) = \frac{1}{2 \pi} \int_{-1}^1 e^{-j\Omega \tau} e^{j\Omega n} d \Omega$$
$$= \frac{1}{2 \pi} \int_{-1}^1 e^{j\Omega(n-\tau)}$$
$$= \frac{1}{2 \pi} [\frac{e^{j\Omega (n - \tau)}}{j(n-\tau)}]^1_{-1}$$

$$= \frac{1}{2 \pi} \frac{e^{j (n - \tau)} - e^{-j(n-\tau)}}{j(n-\tau)}$$

```ad-important
$$\frac{e^{j\Theta}-e^{-j \Theta}}{2j} = \sin\Theta \space for \space \Theta \ne 0$$
```

$$= \frac{1}{\pi (n- \tau)} [\frac{e^{j\Theta}-e^{-j \Theta}}{2j}]$$
$$h_d[n]=\frac{\sin(n-\tau)}{\pi(n-\tau)} \space n \ne \tau$$

**IF $n=\tau$**

$$h_d[n] = \frac{1}{2\pi} \int_{-1}^1 e^{j\Omega (n-\tau)} d \Omega$$
$$h_d[n] = \frac{1}{2\pi} \int_{-1}^1 1 d \Omega$$
$$h_d[n] = \frac{1}{\pi} \space for \space n = \tau$$

$$\therefore h_d[n] = \begin{matrix} \frac{\sin(n-\tau)}{\pi(n-\tau)} & n \ne \tau \\ \frac{1}{\pi} & n = \tau \end{matrix}$$

**Use Symmetric Filter to Solve for $\tau$**:

```ad-note
Remember:
$$-\sin\Theta = \sin(-\Theta)$$
```

#comebacklater 

**Substitute Tau for M**

$$h_d[n] = \begin{matrix} \frac{\sin(n-\frac{M-1}{2})}{\pi(n-\frac{M-1}{2})} & n \ne \frac{M-1}{2} \\ \frac{1}{\pi} & n = \frac{M-1}{2}\end{matrix}$$

