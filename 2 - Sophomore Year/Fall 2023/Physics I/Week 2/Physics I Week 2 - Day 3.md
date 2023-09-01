Date: 1st September 2023
Date Modified: 1st September 2023
File Folder: Week 2
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- The 1D Uniformly-Accelerated Kinematic Equations

```

```ad-note
title: Homework
- [ ] pg. 51: 26, 27, 78
- [ ] Finish Equation!!!
```

# Position Function Example

The position of an object is related to time by the following equation:

$$ x(t) = 8t^2-6t+4$$

```ad-note
$x$ is in $m$ and $t$ is in $s$
```

```ad-example
1. Where is the particle at $t=0$ and where is the particle at $t = 2$
2. What is the **average velocity** of the particle for the time interval $0 \le t \le 2s$
3. Find the instantaneous velocity ($v$) and acceleration ($a$) as a function of time ($t$)
4. At what moment is the particle momentarily at rest?
5. Where is the particle when the particle is at rest?
```ad-check
title: Solution
- at $t = 0$
	- $x(t) = 8(0)^2-6(0)+4m$
- at $t=2$
	- $x(t)=8(2)^2-6(2)+4=24m$
- at $t=2$
	- $x(t)=8(2)^2-6(2)+4=24m$
- Average velocity of the interval
	- $\bar{v} = \frac{\Delta x}{\Delta t} = \frac{x_f-x_i}{t_f-t_i}$
	- $\bar{v} = \frac{(24)-(4)}{(2)-(0)} = 10 \frac{m}{s}$
- Find the instantaneous Veloctity
	- $v = \frac{dx}{dt} = \frac{d}{dt}(8t^2-6t+4)$
	- $v = 16t - 6$
- Find the instantaneous Acceleration
	- $a = \frac{dv}{dt} = \frac{d}{dt}(16t-6) = 16(\frac{m}{s^2})$
- Find when the particle is at rest
	- $v = 0$
	- $16t-6 = 0$
	- $t = \frac{6}{16} = 0.375 (s)$
- Find where the particle is at rest
	- $x(t) = 8(0.375)^2-6(0.375)^2+4=2.875m$
```

```ad-summary
When the Instantaneous acceleration is constant for a given funciton,, it is called one-dimensional, uniformaly accelerated motion.
```

## Graph of Function

![[CamScanner 09-01-2023 13.18_1.jpg]]
# Derivates of the Three Kinematic Equations for 1D Uniformly-Accelerated Motion

**Acceleration to Velocity:**

$$a = \bar{a} = \frac{\Delta v}{\Delta t} = \frac{v_f-v_i}{t_f-t_i}$$
$$a(t_f-t_i) = v_f-v_i$$
$$ v_f = v_i +a(t_f-t_i)$$

```ad-important
- $t_i$ is dropped due to us assuming $t_i = 0$
- drop the $f$ subscript for the $v$
```

$$v = v_i +at$$
**Velocity to X(t):**

$$v=\frac{dx}{dt} = dx = vdt$$
$$dx = (v_i+at)dt$$
$$dx = v_idt + atdt$$
$$\int_{x_i}^x dx = \int_{t_i}^{t_f} v_i dt + \int_{t_i}^{t_f}  atdt$$
$$\int_{x_i}^x dx = \int_{0}^{t} v_i dt + \int_{0}^{t}  atdt$$
$$x[x_i - x] = v_it[0-t]+\frac{1}{2}at^2[0-t]$$
$$x - x_i = v_i(t-0)+\frac{1}{2}a(t^2-0)$$
$$ x = x_i v_i t + \frac{1}{2} a t^2$$
```ad-note
Because the acceleration **does not** depend on time here, it can be assumed to be a constant and CAN be integrated without multiple-variable integrals or other tricks
```

**Third Kinematic Equation**: 

$$v = v_i +at => t = \frac{v-v_i}{a}$$
$$x = x_i+v_i(\frac{v-v_i}{a})+\frac{1}{2}a( \frac{v-v_i}{a})^2$$

```ad-important
For 10 points on the test, derive the third kinematic equation where the answer is the following:
$$ v^2 = v_i^2 +2a(x-x_i)$$
```
