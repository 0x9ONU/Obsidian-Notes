Date: 6th November 2023
Date Modified: 6th November 2023
File Folder: Week 12
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Oscillatory  Motion

```

# Oscillatory  Motion

## Spring-Mass System

```ad-important
The goal is to get a function to find the enlongation in terms of time such that:
$$x(t) = ?$$
```

#comebacklater ex. 1

```ad-check
title: Solution
- Write Sum of Force Vectors
	- $mg^\to + N^\to + F_e^\to = ma^\to$
- Write in terms of magnitude along x-axis
	- Remember that: $a= \frac{dv}{dt} = \frac{d}{dt}(\frac{dx}{dt}) = \frac{d^2x}{dt^2}$
	- $0 + 0 + -kx = m \frac{d^2x}{dt^2}$
	- $m \frac{d^2x}{dt^2} + kx = 0$
	- $\frac{1}{m} \Rightarrow \frac{d^2x}{dt^2} +\frac{k}{m}x = 0$
	- $\frac{d^2x}{dt^2} + w^2x=0$
- Write solution to equation:
	- $x = A \cos(wt + \phi)$
	- $A$ is the amplitude, which is the maximum enlongation
	- $\phi$ is the intial phase which represents where the mass is it is started to be measured at $t=0$
		- CAN BE ANY VALUE WITHIN THE OSCILLATION
		- If the inital phase is zero, then it is **at the amplitude**
- Solve derivative number one
	- $\frac{dx}{dt} = \frac{d}{dt}[A\cos(wt + \phi)]$
	- $-A\sin(wt+\phi)(w)$
	- $-Aw\sin(wt+\phi)$
- Solve Derivative number two
	- $\frac{d^2x}{dt^2} = \frac{d}{dt}[-A\sin(wt+\phi)] = -Aw^2\cos(wt+\phi)$
- Replace 2nd derivative in equation
	- $-Aw^2 \cos(wt+\phi) + w^2A\cos(wt+\phi) = 0 \checkmark$
	- IT WORKS
- 
```

```ad-note
$$[A]_{si} = [x]_{si} = m$$
$$[\phi]_{si} = radians$$
$$[w]_{si} = \frac{rad}{s}$$
```

```ad-important
The ratio of the spring constant over the mass can be rewritten as:
$$\frac{k}{m} = w^2$$
```

```ad-example
title: Observation
Since the resorting force ($F_e^\to = -kx^\to$) is proportinal to the dispalcement ($x^\to$), the motion is called **simple harmonic motion**
```

## Examples

### Example 1:

```ad-question
A mass oscillates according to the relation:
$$x = 0.03\cos(5t + \frac{\pi}{4})$$
$$where \space x = (m) \space \& \space t = (s)$$
1. Where is the mass at $t=0s$?
2. Where is the mass at $t = 1s$
3. Obtain an expression of the velocity of the particle as a function of time
4. What is the maximum $v$ of the object
5. How much is $w$, and how much si the period and the frequency?
```

1. $x$ when $t=0$
$$x = 0.03\cos(\frac{\pi}{4})$$
$$x = 0.02 m$$
2. Where is the mass at $t=1s?$
$$x = 0.03\cos(5(1) + \frac{\pi}{4})$$
$$x= 0.026(m)$$
3. Find $v(t)$

$$v = \frac{dx}{dt} = \frac{d}{dt}(0.03 \cos(5t+\frac{\pi}{4})$$
$$= 0.03 * (-\sin(5t+\frac{\pi}{4})*5$$
$$v= -0.15 \sin(5t+\frac{\pi}{4}) (\frac{m}{s})$$
4. Find $v_{max}$

**The maximum velocity is when it passes thorough its midpoint, so:**

$$v_{max} = -0.15(-1) = 0.15 \frac{m}{s}$$
5. Find $w$, $T$, and $f$

$w = 5 \frac{rad}{s}$ based on the formula

$$w = 2\pi f \Rightarrow f = \frac{w}{2\pi} \Rightarrow f = \frac{5}{2\pi}$$
$$f = 0.796 \frac{osc.}{s}$$
$$T = \frac{1}{f} = 1.26 s$$
## Period Relation

Because the Motion is periodic in time:

$$x(t) = x(t + T)$$
Where $T$ is the period which is the time for it to complete one oscillation:

$$A\cos(wt + \phi) = A\cos[w(t+T) + \phi]$$
$$= A\cos(wt + wT + \phi)$$

```ad-important
For both of the functions to be true:
$$wT = 2 \pi$$
$$T=\frac{2\pi}{w} = \frac{2\pi}{\sqrt{\frac{k}{m}}}$$
$$T = 2 \pi \sqrt{\frac{m}{k}}$$
```

## Frequency

$$w = 2 \pi f$$
```ad-note
Frequency is the number of oscillations per second
```

