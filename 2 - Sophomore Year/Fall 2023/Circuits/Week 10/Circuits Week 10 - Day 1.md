Date: 23rd October 2023
Date Modified: 23rd October 2023
File Folder: Week 10
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Relationship Between Time Domain and Frequency Domain

```

# Relationship Between Time Domain and Frequency Domain

**Time Domain for Voltage and Current:**
$$v(t) = V_m\cos(wt+\Theta_v)$$
$$i(t) = I_m\cos(wt+\Theta_i)$$
**Frequency Domain:**

$$\textbf{V} = V_m \angle{\Theta_v}$$
$$\textbf{I} = I_m \angle{\Theta_i}$$

```ad-summary
title: Differences
- You are able to find the exact voltage at a certain time **ONLY** with time domain.
- You know the frequency for time domain, but frequency domain needs a given frequency
- The time domain is a funciton while the frequency domain is a complex number
```

## Time-Domain $\leftrightarrow$ Frequency Domain

```ad-warning
The time-domain MUST be in cosine in order to do the conversions
```

| Time-Domain                   | Frequency-Domain       |
| ----------------------------- | ---------------------- |
| $v(t) = V_m\cos(wt+\Theta_v)$ | $V_m \angle{\Theta_v}$ |
| $v(t) = V_m\sin(wt+\Theta_v)$ | $V_m \angle{\Theta_v-90\degree}$                       |

## Examples

### Example 1:

```ad-question
Determine the time-domain expression for the current:
$$\textbf{I} = 2 \angle{36\degree} A$$
The operating frequency is $60Hz$
```

**Convert $f$ to $w$

$$w = 2\pi f = 2\pi (60) = 377 \frac{rad}{s}$$

**Plug in numbers**
$$i(t) = 2\cos(377t +36)A$$

### Example 2:

```ad-question
Transform the following time-domain into freqeuncy domain:
$$v(t) = 12\sin(377t+60\degree)$$
```

**Transform sine to cosine**

```ad-note
Since the $v(t)$ is in sine, convert to cosine
```

$$v(t) = 12\cos(377t + 60 - 90) = 12\cos(377t-30\degree)$$

**Plug**

$$\textbf{V} = 12 \angle{-30\degree} V$$

