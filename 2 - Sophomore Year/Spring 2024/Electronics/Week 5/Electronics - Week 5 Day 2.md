Date: 21st February 2024
Date Modified: 21st February 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Freqeuncy Dependance

```

# Frequency Dependence of Open Loop Gain

![[Electronics - Week 5 Day 2 2024-02-21 13.14.37.excalidraw]]

**In a non-ideal case, some of the gain will be lost**

![[Electronics - Week 5 Day 2 2024-02-21 13.17.32.excalidraw]]

```ad-note
title: Remember
$\omega = 2 \pi f$
```

$$A(j\omega) = \frac{A_o}{1 - \frac{j \omega}{\omega_b}}$$

```ad-note
$$\omega << \omega_b \Rightarrow A(j\omega) \approx A_o$$
$$\omega = 0 \Rightarrow A(j\omega) = A_o$$
$$\omega >> \omega_b \Rightarrow A(j \omega) \frac{A_o}{\frac{j \omega}{\omega_b}} = \frac{A_o \omega_b}{j \omega}$$
```


$$|A|=1, \space or \space  0  \space dB$$
$$|A(j \omega)| = 1 \Rightarrow \frac{A_o \omega_b}{\omega_t} \Rightarrow \omega_t = A_o \omega_b$$

Substitute this equation into the original equation
```ad-important
Unity Gain Bandwidth:

$$A(j \omega) = \frac{\omega_t}{j \omega}$$
```

## Frequency Response of Closed Loop Amplifiers

![[Electronics - Week 5 Day 2 2024-02-21 13.28.20.excalidraw]]

```ad-important
We want to capture the finite gain AND the frequency dependance. Start with finite gain
```

$$G = \frac{v_o}{v_i} = \frac{-\frac{R_2}{R_1}}{1 + \frac{(1+ \frac{R_2}{R_1})}{A}}$$

**Substitute**

$$\frac{v_o}{v_i} = \frac{-\frac{R_2}{R_1}}{1 + \frac{1}{A_o}(1 + \frac{R_2}{R_1}) + (\frac{j \omega}{\frac{\omega_t}{1+R_2/R_1}})}$$
**Since $A_o >> 1 + \frac{R_2}{R_1}, we can ignore it**

$$\frac{v_o}{v_i} = \frac{-\frac{R_2}{R_1}}{1+ \frac{j \omega}{\omega_t / (1+ R_2 / R_1)}}$$

```ad-note
When $\frac{j \omega}{\omega_t / (1+ R_2 / R_1)} << 1$, that would mean it was an ideal inverting $\Rightarrow G = -\frac{R_2}{R_1}$
$$\space$$
When $\omega << \frac{\omega_t}{1+R_2 / R_1}$, then $G = -\frac{R_2}{R_1}$

```ad-important
$$\omega_{3d} = \frac{\omega_t}{1 + R_2/R_1}$$
```

## Example

```ad-question
Consider an op-amp with $f = 1 MHz$. Find the $3db$ frequency of closed-loop amplifiers with nomina gains of +10 and -10. Sketch the magnitude frequency reponse for the amplifier.
```

### Case 1: Negative Gain

$$G = \frac{v_o}{v_i} = -10 \Rightarrow Inverting \Rightarrow \frac{-R_2}{R_1} = -10$$
$$\omega_{3d} = \frac{\omega_t}{1 + \frac{R_2}{R_1}}$$
**Find $\omega_t$

$$\omega_t = 2 \pi f_t$$
$$w_t = 2 \pi *10^6$$

**Substitute**

$$\omega_{3d} = \frac{(2 \pi * 10^6)}{1 + (-(-10))}$$
$$\omega_{3db} = 2\pi 90.9$$
$$f_{3db} = 90.9 KHz$$

**Sketch**

![[Electronics - Week 5 Day 2 2024-02-21 13.41.12.excalidraw]]


### Case 2: Positive Gain

$$G = \frac{v_o}{v_i} = 10 \Rightarrow non-inverting \Rightarrow (1+ \frac{R_2}{R_1})=10$$

**Find $\omega_t$**

$$\omega_t = 2 \pi *10^6$$

**Substitute**

$$\omega_{3d} = \frac{(2 \pi * 10^6)}{(10)}$$
$$w_{3d} = 2 \pi * 10^5$$
$$f_{3d} = 100 KHz$$


![[Electronics - Week 5 Day 2 2024-02-21 13.46.41.excalidraw]]



