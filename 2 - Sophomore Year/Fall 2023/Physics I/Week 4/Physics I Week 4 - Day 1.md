Date: 11th September 2023
Date Modified: 11th September 2023
File Folder: Week 4
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- 2 Dimensional Motion Introduction

```
# 2-Dimensional Motion

```ad-summary
Gives the trajectory of the Motion in $x$,$y$ coordiantes rather than $x$ in terms of $t$
```

![[CamScanner 09-12-2023 14.13_1.jpg]]

## Position Vectors

A vector that points from the origin of the trajectory to a single point on the given trajectory 

$$ r^{->}_A, r^{->}_A = position \_vectors$$
$$\bar{v^{->}} = \frac{\Delta r^{->}}{\Delta t} = \frac{r^{->}_B - r^{->}_A}{\Delta t}$$
```ad-important
$\Delta r^{->}$ and $\bar{v^{->}}$ have the **SAME** orientation
```

### Instantaneous Velocity of  2D Vectors

```ad-note
Instanteanuous velocity vectors are always tangent to trajectory at *every* given point for a 2-dimensional motion
```

![[CamScanner 09-12-2023 14.13_2.jpg]]
### Average Acceleration of 2D Vectors

```ad-important
The acceleration always points towards the concave part of a 2D trajectory
```

$$ \bar{a^{->}} = \frac{\Delta v^{->}}{\Delta t} = \frac{V^{->}_B - V^{->}_A}{\Delta t}$$
 
![[CamScanner 09-12-2023 14.13_3.jpg]]

# Projectile Motion

A 2-Dimensional Motion within a gravitational field at a certain angle.

```ad-note
Usually given initial velocity ($v_i$) and the angle it was thrown at ($\alpha$)
```

```ad-warning
Make sure that the path the object takes is *tangent* to the initial velocity
```

$$ V_{ix} = V_i\cos{\alpha}$$
$$ V_{iy} = V_i \sin{\alpha}$$

![[CamScanner 09-12-2023 14.13_4.jpg]]


## Kinematic Equations Along Y-Axis

$$y = y_i + v_{iy}t + \frac{1}{2}a_yt^2$$
$$V_y = V_{iy} +a_yt$$
$$V_y^2 = V_{iy}^2+2a_y(y-y_i)$$
```ad-note
The acceleration of $y$ will *always* be $-9.8 \frac{m}{s}^2$ on Earth
```

```ad-danger
Make sure to use $y_{iy}$ and $a{y}$
```

## Kinematic Equations Along X-Axis

$$x = x_i + v_{ix}t$$
$$V_x = V_{ix}$$

```ad-important
The $a_x$ for projectile motion is nothing!!!
- Because of this, $V_x$ is CONSTANT with its initial velocity $V_{ix}$
```

## Example

![[Pasted image 20230911103707.png]]

![[CamScanner 09-12-2023 14.13_5.jpg]]

```ad-check
title: Solution
- Write what is given
	- $V_i = 18 \frac{m}{s}$
	- $\alpha = 31$
- Find $V_{ix}$
	- $V_{ix} = (18)\cos(31) = 15.43 \frac{m}{s}$
	- $V_{iy} = (18)\sin(31) = 9.27 \frac{m}{s}$
- Time to reach maximum height?
	- $V_y = V_{iy} + (-9.8)t$
	- $(0) = 9.27 + (-9.8)t$
	- $t = \frac{9.27}{9.8} = 0.95 s$
- What is the maximum height?
	- $V_y^2=V_{iy}^2+2a_y(y-y_i)$
	- $(0)^2 = (9.27)^2 + 2(-9.8)(Y_max - 0)$
	- $Y_max = \frac{(9.27)^2}{2(9.8)} = 4.38m$
- How long does it take to hit the ground?
	- Time to reach maximum height is equal to time to hits the ground
	- $y = y_i +v_{iy} + \frac{1}{2}a_yt^2$
	- $0 = 4.38 + 0 + \frac{1}{2}(-9.8)t^2$
	- $4.9t^2=4.38 = t^2 = \frac{4.38}{4.9}$
	- $t^2 = 0.89$
	- $t = +-\sqrt{0.89}$ TAKE THE POSITIVE BECAUSE $t$ MUST BE POSITIVE
	- $t = 0.95s$.
- Time spent in the air?
	- It would be twice as long as it took to make it reach its maximum height
	- $0.85 s * 2 = 1.9s$
- Where does it land?
	- $x = x_i + v_{ix}t$
	- $x = (0) + (15.43)(1.9)$
	- $x = 29.32 m$
```


```ad-important
Time to go up is equal to time to go down!!!
```

