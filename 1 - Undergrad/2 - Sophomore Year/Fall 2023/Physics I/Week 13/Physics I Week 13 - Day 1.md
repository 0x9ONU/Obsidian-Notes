Date: 13th November 2023
Date Modified: 13th November 2023
File Folder: Week 13
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Conservation of Energy within Oscillatory Motion

```

```ad-note
Remember:
For oscillatory motion of the following type
![[Drawing 2023-11-13 10.01.12.excalidraw]]
$$x = A \cos(wt + \phi)$$
$$w = \sqrt{\frac{k}{m}}$$
$$w = \frac{2 \pi}{T} = 2\pi f$$
$$T = 2 \pi \sqrt{\frac{m}{k}}$$
```

# Energy Considerations for Oscillatory Motion

![[Drawing 2023-11-13 10.03.56.excalidraw]]

$$E_1 = \frac{1}{2} k A^2$$

![[Drawing 2023-11-13 10.05.34.excalidraw]]

$$E_2 = \frac{1}{2}mV^2+\frac{1}{2}kx^2$$

![[Drawing 2023-11-13 10.07.47.excalidraw]]

$$E_3 = \frac{1}{2}mV_{max}^2$$

```ad-important
In the absense of opposing forces, each form of the equation is equal to each other such that:
$$E_1 = E_2 = E_3$$
```

## Example: 32/423

![[Pasted image 20231113101026.png]]

**Given:**
- $A = 0.15m$
- $m=0.25 kg$
- $f = 3.2 \frac{osc}{s}$

**Find $V_{max}$**

$$\frac{1}{2}kA^2 = \frac{1}{2}mV_{max}^2$$
$$\frac{k}{m}A^2=V_{max}^2$$
$$w^2A^2=V_{max}^2$$
$$V_{max} = wA$$
$$V_{max} = 2\pi f *A \Rightarrow 2 \pi * 3.2 *0.15 = 3.02(\frac{m}{s})$$

**Find Velocity when the Displacement is $0.10m$**

$$\frac{1}{2}kA^2=\frac{1}{2}mV^2 + \frac{1}{2}kx^2$$
$$\frac{k}{m}A^2=V^2+\frac{k}{m}x^2$$
$$w^2A^2=v^2+w^2x^2$$
$$v^2=w^2(A^2-x^2)$$
$$v = w\sqrt{A^2-x^2}$$
$$v = 2 \pi (3.2) \sqrt{(0.15)^2 - (0.1)^2}$$
$$v = 2.25 \frac{m}{s}$$
**Find Total Energy of the System**

$$E = \frac{1}{2}mV_{max}^2$$
$$E = \frac{1}{2}*0.25*(3.02)^2=1.14 \dot{J}$$

**Find Equation of the Motion**

$$x = A\cos(wt + \phi)$$

```ad-note
There is no anglar change $\phi$ because it is going in only one direction
```

$$x=0.15\cos(20.1t) \space \space \space (m)$$
# Simple Pendulum Oscillatory System

![[Drawing 2023-11-13 10.21.41.excalidraw]]

**Along the String**:

$$T-mg\cos(\theta) = ma$$
$$T-mgcos(\theta) = 0$$
$$T = mgcos(\theta)$$

**Along a direction tangent to the arc**

$$-mg\sin(\theta) = m * \frac{d^2 s}{dt^2}$$

```ad-note
The arc of the ball represents the same thing as the angle between the equilibrium point and the string. Convert the arc to angle using:
$$s = l \theta$$
```

$$-g\sin(\theta) = l \frac{d^2\theta}{dt^2}$$
$$l \frac{d^2\theta}{dt^2} + g\sin(\theta) = 0$$
$$\frac{d^2 \theta}{dt^2} + \frac{g}{l} \sin(\theta) = 0$$

```ad-note
Utilize the notation and abuse it:
$$w^2 = \frac{g}{l}$$
```

**PERIOD FORMULA**:
$$T = 2 \pi \sqrt{\frac{l}{g}}$$

```ad-note
Under the approximation $\sin \theta = \theta$ (true for when $\theta \ge 5 \degree)$, then the simple harmonic motion describes a pedulum.
```

$$\frac{d^2 \theta}{dt^2} +w^2 \theta = 0$$
$$\theta = \theta_{max}\cos(wt + \phi)$$

## Example pg 424 / 45

![[Pasted image 20231113103938.png]]

**Given**:
- $l = 0.3m$
- $\theta_{max} = 15 \degree$

**Find $\theta$ at $t=0.35s$

**Find $w$
$$\theta = \theta_{max} \cos(wt + \phi)$$

$$w = \sqrt{\frac{g}{l}}\Rightarrow 5.72 (\frac{rad}{s})$$

**Find $\theta$

$$\theta = (\frac{15 * \pi}{180})\cos(5.72t)$$
$$\theta_{t=0.35} = 0.26\cos(5.72(0.35))$$
$$\theta_{t=0.35s} = -0.11 \space (rad) \Rightarrow -6.22 \degree$$
