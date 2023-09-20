Date: 20th September 2023
Date Modified: 20th September 2023
File Folder: Week 5
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Solving for Mechanical Motions

```

```ad-note
title: Homework
- [ ] pg. 107 36, 38, 42, 45, 58
```

# Solving for Mechanical Motions

```ad-summary
title: Steps
1. Apply Newton's Second Law
2. Calculate the acceleration of the object
```

## Example 1: Horizontal Surface

Find $a$ and Normal Force $N$

#comebacklater ex. 1

$$m = 5kg$$
$$F_{pull} = 20N$$

```ad-check
title: Solution
- Draw Forces
	- #comebacklater ex. 2
- Find acceleration by using sum of forces
	- $N^{->} + F^{->}_{pull} + mg^{->} = ma^{->}$
- Think of forces in terms of x and y
	- #comebacklater ex. 3
- Components of the Vectors along x-axis
	- $(0) + (F_{pull}) + 0 = ma_x$
- Components of the Vectors ALong y-axis
	- $N + (0) + (-mg) = ma_y$
- Count Unknowns
	- Acceleration along y, normal force, and acceleration along x
	- $a_y = 0$ **BECAUSE IT WONT MOVE UPWARD DUE TO THE FORCE**
- Find acceleration
	- $20N = 5kg * a_x => a_x = 4 \frac{m}{s^2} = a$
- Find Normal Force
	- $N - 5kg * 9.8 \frac{m}{s^2} => N = 5kg * 9.8 \frac{m}{s^2} = 49 N$
```


## Example 2: Horizontal Surface with Diagonal Force

Find $a$ and Normal Force $N$

#comebacklater ex. 4

$$m = 5kg$$
$$F_{pull} = 20N$$

```ad-check
title: Solution
- Draw Forces
- Find Main Equation for Sum of Forces
	- $N^{->} + F^{->}_{pull} + mg^{->} = ma^{->}$
- Draw x and y axis
- Find x component
	- $(0) + (F_{pull}\cos(30)) + (0_ = ma_x$
- Find y component
	- $(N) + (F_{pull} *\sin(30)) + (- mg) = ma_y$
- Assume the acceleration of $a_y = 0$ as it does not lift from the ground
- Find $a$
	- $a_x = a = \frac{F_{pull}*\cos(30)}{m}$
	- $a_x = 3.46 \frac{m}{s^2}$
- Find $N$
	- $N = mg - F_{pull}*\sin(30)$
	- $N = 5 * 9.8 - 20 * \sin(30)$
	- $N = 39N$
```

```ad-note
If the object lifts from the ground due to a high pull force, the $a_y$ would have a value, but the $N$ normal force would become zero.
```

```ad-warning
$N = mg$ ONLY when there are not other y components of the sum of forces
```

# Example 3: Object on an Inclined Plane

Find $a$ and $N$

#comebacklater ex. 5

$$m = 5kg$$
$$\alpha = 20$$

```ad-check
title: Solution
- Draw Forces
	- #comebacklater ex. 6
- Sum of All Forces
	- $N^{->} + mg^{->} = ma^{->}$
- Draw x and y axis
	- #comebacklater ex. 7
- Find angle of force of gravity
	- The angle perpendicular to the slope
	- See pink above
- Find x component 
	- $(0) + mg\sin(\alpha) = ma_x$
- Find y component
	- $N + (-mg\cos(\alpha)) = ma_y$
- Assume that $a_y$ is zero due to it sliding along the slope
- Find $N$
	- $N = mg\cos(\alpha)$
	- $N = 5 * 9.8 * \cos(20) = 46 N$
- Find $a$
	- $mgs\sin(\alpha) = a_x$ Cross out m
	- $a_x = a = g\sin(\alpha)$
	- $a = 9.8 * \sin(20) = 3.35 \frac{m}{s^2}$
```

```ad-important
X is ALWAYS the direction of motion
- Y would then be perpendicular to the y axis
```

## Example 4: Two Objects on a Pull with a String

Find $a$ and tension on the string $T$

#comebacklater ex. 8

$$m_11 = 3kg$$
$$m_2 = 4kg$$

```ad-check
title: Solution
- Draw Forces
	- In Yellow and Blue
- Create Sum of Forces for $m_1$
	- $T^{->} + m_1g^{->} = m_1a^{->}$
- Create Sum of Forces for $m_2$
	- $T^{->} + m_2g^{->} = m_2a^{->}$
- Project along x and y
	- #comebacklater ex. 9
- NO X Component
- Y components
	- $T - m_1g = m_1a$
	- $-T + m_2g = m_2a$
- Find $a$
	- Add equaitons together
		- $T - m_1g - T + m_2g = m_1a + m_2a$
	- $m_2g - m_1g = a(m_1+m_2)$
	- $a = \frac{m_2g - m_1g}{m_1+m_2}$
	- $a = \frac{4 * 9.8 - 3*3.8}{3+4} = 1.4 \frac{m}{s^2}$
- Find $T$
	- $T = m_1a + m_1g$
	- $T - 33.6 N$
```

```ad-important
Chose one mass to be positve, choose the other to move negative
```