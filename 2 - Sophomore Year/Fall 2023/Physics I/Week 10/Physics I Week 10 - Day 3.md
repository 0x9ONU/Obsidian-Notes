Date: 27th October 2023
Date Modified: 27th October 2023
File Folder: Week 10
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Revolutionary Motion

## More Terms

### Period

$T = period$ which is the time to complete one revolution
- $[T]_{si} = s$

### Frequency

$F = frequency$ which is the number of times an object revolves pers second
- $[f]_{si} = \frac{1}{s} = Hz$

### Example

```ad-question
Given the period of $T = 0.2 (s)$, calculate the frequency:
$$f = \frac{1}{T} = \frac{1}{0.2} = 5 \frac{1}{s}$$
```

### Finding the Angular Velocity Based on Frequency/Period

$$ w = \frac{\Delta \Theta}{\Delta t} \space when \space \Delta \Theta = 2\pi \space \& \space \Delta t = T$$
$$w = 2 \pi f$$

## Equations for Rotating Rigid Solids

```ad-note
Remember the Kinematic Euqations for the 1D motion, uniformally acceleration. They are in parallel with rotational motion
$$v = v_1 + at$$
$$x = x_i + v_it + \frac{1}{2} at^2$$
$$v^2 = v^2_i + 2a(x-x_i)$$
```

***Rotational Motion with a Constant Angular Acceleration***

$$w = w_i + \alpha t$$
$$\Theta = \Theta_i + w_i t + \frac{1}{2} \alpha t^2$$
$$w^2 = w_i^2+2\alpha(\Theta - \Theta_i)$$

# Examples

## Example 1:

![[Pasted image 20231027102141.png]]

#comebacklater ex. 1

```ad-warning
DO NOT interpret the 26 revolutions do not happen at the constant $\alpha$
```

```ad-check
title: Solution
- Interpret the following:
	- $w_i = 0$
	- $w_f = ?$
	- $w_f$ was reached in $60 s$
	- Angle swept is $26 * 2 \pi rad$
- What is the angular acceleration?
	- Use the second equation
	- $\Theta = \Theta_i = w_it + \frac{1}{2}\alpha t^2$
	- $\Theta - \Theta_i = w_it + \frac{1}{2}\alpha t^2$
		- Theta initial minus Theta final is the angle swept
	- $52 \pi = \frac{1}{2}\alpha (60)^2 = 0.091 (\frac{rad}{s^2}$
- What was the final angular speed in rpm?
	- Find agular velocity IS NOT CORRECT
		- Asking for frequency, NOT speed
	- Calculate angular velocity
		- $w=w_i + \alpha t$
		- $w = 0 + (0.091)(60)$
		- $w = 5.45 \frac{rad}{s}$
	- Find Frequency
		- $w = 2 \pi f$
		- $f = \frac{w}{2 pi} = 0.87 \frac{rev}{s}$
	- Go from RPS to RPM
		- $f = 0.87 \frac{rev}{s} * 60 = 52 rpm$
```

## Example 2:

![[Pasted image 20231027103448.png]]

```ad-check
title: Solution
- Find proper dimensions
	- Change rpm to rev/s
	- Change diameter to radius and $cm$ to $m$
	- $r = 17cm = 0.17m$
	- $f_i = 240 rpm = 4 \frac{rev}{s}$
	- $f = 360 rpm = 6 \frac{rev}{s}$
- Find angular velocities
	- $w_i = 2 \pi f_i = 2\pi (4) = 25.13 \frac{rad}{s}$
	- $w = w \pi f = 2 \pi (6) = 37.70 \frac{rad}{s}$
- Find angular acceleration
	- $w = w_i + \alpha t$
	- $37.7 = 25.13 + \alpha (6.8)$
	- $\alpha = 1.85 \frac{rad}{s^2}$
- Find angle swept
	- $\Theta - \Theta_i = w_i t \frac{1}{2} \alpha t^2$
	- $\Delta \Theta = 213.7 rad$
	- $\Delta \Theta = \frac{\Delta R}{R} = \Delta S = \Delta \Theta R$
	- $\Delta S - 0.17 * 213.7$
	- $\Delta S = 36.32 (m)$
```







