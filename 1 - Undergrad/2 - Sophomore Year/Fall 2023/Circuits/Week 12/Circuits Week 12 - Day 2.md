Date: 8th November 2023
Date Modified: 8th November 2023
File Folder: Week 12
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Power in AC Circuits
- Instantaneous Power

```

# Instantaneous Power

The product of the time-domain voltage multiplied by the time-domain current.

$$P(t) = v(t)*i(t)$$

```ad-note
- $P(t)$ Instantaneous Power ($W$)
- $v(t)$ Time-Domain Voltage ($V$)
- $i(t)$ Time-Domain Current ($I$)
```

## Expanded Form

**Let:**
$$v(t) = V_m \cos(wt + \Theta_v)$$
$$i(t) = I_m \cos(wt + \Theta_{i})$$

Then,

$$P(t) = V_mI_m(wt+\Theta_v)*\cos(wt + \Theta_i)$$

```ad-important
Utilize the following trig identity:
$$\cos A\cos B = \frac{1}{2}[\cos(A-B)+\cos(A+B)]$$
```

$$\Rightarrow P(t) = V_mI_m * \frac{1}{2}[\cos(wt + \Theta_v - wt - \Theta_i)+\cos(wt + \Theta_v + wt+\Theta_i)$$

**FINALLY:**
$$P(t)=\frac{1}{2} V_mI_m\cos(\Theta_v-\Theta_i) + \frac{1}{2}V_mI_m\cos(2wt + \Theta_v + \Theta_i)$$

```ad-note
This means that the instantaneous power is a constant plus a sinesoidal wave operating at **twice** the frquency of the voltage and current.
```

# Average/Real/True/Active Power

Is the average of the instantaneous power such that:

$$P = \frac{1}{2} V_mI_m \cos(\Theta_v-\Theta_i) \space (W)$$

```ad-important
- The constant from the instanteous stays itself
- The Average of the sinusoid is just 0 (the summation of a sinusoidal wave will be 0)
```

# Examples

## Example 1

```ad-question
Derive the Equations for voltage & instantaneous power in the circuit shown
```

![[Drawing 2023-11-08 11.18.10.excalidraw]]

**Find $V$

$$V = Iz $$
$$V = 2 \angle 25 \degree (4 + j4)$$
$$=11.3 \angle 70 \degree V$$
**Write $v(t)$ and $i(t)$
$$v(t) = 11.3 \cos(wt + 70 \degree) V$$

$$i(t) = 2\cos(wt + 25 \degree) A$$

**Solve For Instantaneous Power**

$$P(t)=\frac{1}{2} V_mI_m\cos(\Theta_v-\Theta_i) + \frac{1}{2}V_mI_m(2wt + \Theta_v + \Theta_i)$$
$$= \frac{1}{2}(11.3)(2)\cos(70\degree - 25 \degree) + \frac{1}{2}(113)(2) \cos(2wt + 70\degree + 25\degree)$$
$$P(t) =  8 + 11.3 \cos(2wt + 95\degree) \space W$$

