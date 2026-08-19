Date: 8th November 2023
Date Modified: 8th November 2023
File Folder: Week 12
#Physics1

# Topics on Exam

1. Collisions

# Collisions

![[Pasted image 20231108100200.png]]

![[Drawing 2023-11-08 10.02.14.excalidraw]]

**Create System of Equations**

$$2*3.5+0 = 2v_1\prime + 3v_2\prime$$
$$KE_{after} = 0.75*KE_{before}$$
$$\frac{1}{2} * 2 (v_1\prime)^2+\frac{1}{2}*3*(v_2\prime)^2 = 0.75* \frac{1}{2} * 2 * (3.5)^2$$

# Rotational

![[Pasted image 20231108100647.png]]

![[Drawing 2023-11-08 10.06.54.excalidraw]]

```ad-note
$$I = \frac{1}{2} MR^2$$
```

**Calculate Moment of Inertia**

$$I= \frac{1}{2} MR^2 = 759,500$$
**Write Down Known**
$$w_i = 0, w=0.72 \frac{rad}{s}, t = 34 s$$
**Find angular velocity**
$$w = w_i + \alpha t$$
$$\alpha = \frac{0.72}{34} = 0.021 \frac{rad}{s^2}$$
**Find Torque**
$$\tau = 759,500 * 0.0021 = 16083 (N * m)$$

![[Pasted image 20231108101450.png]]

![[Drawing 2023-11-08 10.14.59.excalidraw]]

**Given:**
$$R = 1.4 m, m = 0.35 kg$$

**Find Moment of Inertia**

$$I = mR^2$$
$$I = 0.35 * (1.4)^2 = 0.686 (kgm^2)$$

```ad-note
Since $w$ is constant, there is no angular acceleration such that $\alpha = 0$
```

$$T_{net} = I \alpha$$
$$\tau_{due \space to \space applied} - \tau_{due \space air \space resistance} = 0$$

**Find torque due to air**

$$\tau_{air} = R*F_{air} * \sin(90\degree)$$
$$\tau_{air} = 1.4 * 0.02 *1 = 0.028 (N*m)$$

**Thus, to keep it constant, the applied torque must be the same**

$$\tau_{applied} = 0.028 (N*m)$$
# Angular Momentum

![[Pasted image 20231108102316.png]]

![[Drawing 2023-11-08 10.25.09.excalidraw]]

**Given:**

$$f = 2.8 \frac{rev}{2} \Rightarrow w = 2\pi f = 17.59 \frac{rad}{s}$$
$$r = 0.15 m, m = 48 kg$$
$$\Delta t = 4s$$
**Calculate Moment of Inertia**

$$I = \frac{1}{2}*48*(0.15)^2 = 0.54 (kgm^2)$$
$$L = I w$$
**Calculate Angular Momentums**

$$L_i = 0.54 * 17.59 = 9.5 (kf \frac{m^2}{2})$$
$$L_f = 0$$
**Find Torque**

$$\tau = \frac{\Delta L}{\Delta t} = \frac{0-9.5}{4} = -2.375(N*m)$$

# Oscillatory Motion

![[Pasted image 20231108103115.png]]

1. **Period and Frequency**
$$w = \frac{2\pi}{4} = 2\pi f \Rightarrow f = \frac{5 \pi}{4 * 2\pi} = 0.625 (\frac{osc.}{s})$$
$$T = \frac{1}{f} = \frac{8}{5} = 1.6 (s)$$

2. **Position and Velocity at $t=0$

$$x = 3.8\cos(\frac{\pi}{6}) = 3.29 m$$

```ad-important
Take derivative of function to find velocity function
```

$$v = \frac{dx}{dt} = \frac{d}{dt}[3.8\cos(\frac{5 \pi}{4}+\frac{\pi}{6})]$$
$$v = 3.8[-\sin(\frac{5\pi}{4}t + \frac{\pi}{6})] * \frac{5 \pi}{4}$$
$$v = -14.92 \sin(\frac{5 \pi}{4}t + \frac{\pi}{6}) (\frac{m}{s})$$
$$v(0) = -14.92\sin(\frac{\pi}{6}) = -7.5 \frac{m}{s}$$
3. **Velocity and Acceleration at t = 2.5s**

$$v(2.5) = -14.92 \sin(\frac{5\pi}{4}(2.5) + \frac{\pi}{6})$$
$$v(2.5) = 11.84 \frac{m}{s}$$
```ad-note
Take second deriviate to find acceleration
```

$$a = \frac{dv}{dt} = \frac{d}{dt}[-14.92 \sin(\frac{5 \pi}{4}t + \frac{\pi}{6})]$$
$$-14.92*\cos(\frac{5 \pi}{4}t + \frac{\pi}{6}) * \frac{5\pi}{4} \Rightarrow a = -58.49 \cos(\frac{5 \pi}{4}t + \frac{\pi}{6})$$

$$a(2.5) = 35.67 \frac{m}{s^2}$$