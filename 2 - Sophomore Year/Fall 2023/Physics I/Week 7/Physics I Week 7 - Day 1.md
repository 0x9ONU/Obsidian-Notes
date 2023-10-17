	n Date: 2nd October 2023
Date Modified: 2nd October 2023
File Folder: Week 7
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Elastic Force
- Work
- Dot Product

```

```ad-note
title: Homework
- pg. 187 1, 3, 5, 18, 20, 23
```
# Elastic Force

#comebacklater ex. 1

```ad-important
The spring that does not have any force on it will have a length denoted by $l_0$
- Its deformation is measured in vectors called $x^{->}$ and is the change in size with either a stretch or compression
```

```ad-warning
The elongation $x$ IS NOT the same as the directional $x$
```

```ad-summary
The elastic force ($F_e$) is the restoring force that points *away* from the $x$ that wants to move the spring back to its $l_0$
- Proportional to the elongation of $x$
```

$$F_e^{->} = -kx^{->}$$
$$F_e = kx$$
$$k=\frac{F_e}{x}$$
```ad-note
The $k$ represents the spring constant. 
- Reflects the stiffness of the spring
- Measured in $\frac{N}{m}$
```

## Example

Find the spring constant $k$ in the spring at equilibrium

#comebacklater ex. 2

```ad-check
title: Solution
- Add forces
- Sum of all forces
	- $F_l^{->} + mg^{->} = ma^{->}$
- NOTE: in equilibrium, so $a=0$
- Write for component of x
	- $F_e - mg = 0
	- $kx = mg$
- Find spring constant
	- $k =\frac{mg}{x}$
	- $k = \frac{(4) * (9.8)}{2.5 * 10^{-2}}$
	- $k = 1568 \frac{N}{m}$
```

# Work

Force, under certain circumstances, do **work**:
1. The force must cause a displacement on its point of application
2. The force has to be **NOT** perpendicular to the displacement

#comebacklater ex. 3

$$W_{done \space by \space F} = F*d$$

#comebacklater ex. 4

$$W_{done \space by \space F} = (F\cos(\alpha))d = Fd\cos(F^{->}, d^{->})$$

```ad-important
Only the x/y component of the force will do work
- Thus, the magnitude of the $F$ times the displacement multiplided by the cosine of the angle between x and the force is the work done by the force
```

```ad-note
$$[W]_{si} = N*m = J (joules)$$
```

```ad-warning
Can ONLY be used for constant forces over the displacement
```
## Example

Find $W$ of each force AND the net work given the following values:
- $d = 5m$
- $F = 20 N$
- $F_k = 13 N$
- $N = mg = 19.6N$

#comebacklater ex. 5

```ad-check
title: Solution
- Work done by $F$
	- $W_F = (20) * 5 * \cos(0)$
	- $W_F = 100 J$
- Work done by weight
	- $W_{mg} = 19.6 * 5 * \cos(270)$
	- $W_{mg} = 0 J$
- Work done by Normal Force
	- $W_{N} = 19.6 * 5 * \cos(90)$
	- $W_{N} = 0 J$
- Work done by Kinetic Force
	- $W_{F_k} = 13 * 5 * \cos(180)$
	- $W_{F_k} = -65 J$
- Find net work
	- $W_{net} = W_F + W_{mg} + W_N + W_{F_k}$
	- $W_{net} = 100 + 0 + 0 + -65$
	- $W_{net} = 35 J$
```

```ad-note
The force of friciton will ALWAYS be negative as it opposes the motion
```

# Dot/Scalar Product

An operation between two vectors that outputs the **scalar** of the two vectors combined

$$ W = F^{->} \bullet d^{->} = Fd\cos(F^{->}, d^{->})$$
$$a^{->} \bullet b^{->} = a * b \cos(a^{->}, b^{->})$$

```ad-note
The Dot Product is Commutative AND distributative AND can combine constants
$$a^{->} \bullet b^{->} = b^{->} \bullet a^{->}$$
$$a^{->} ( b^{->} \bullet c^{->}) = a^{->} \bullet c^{->} + a^{->} \bullet b^{->}$$
$$c_1a^{->} \bullet c_2b^{->} = c_1c_2a^{->}b^{->}$$
```

## Example

Calculate the Work done by $F^{->}$ using Dot Product
- Calculate the angle between force and displacement

$$F^{->} = 2\hat{i} - 3\hat{j}$$
$$d^{->} = 5\hat{i} + 7 \hat{j}$$
```ad-check
title: Solution
- Find Work
	- Setup Dot Produc t
		- $W = (2\hat{i} - 3\hat{j}) \bullet 5\hat{i} + 7 \hat{j}$
	- Use distribution
		- $W = 2\hat{i} \bullet 5 \hat{i} + 2 \hat{i} \bullet 7 \hat{j} + -3\hat{j} \bullet 5 \hat{i} -3 \hat{j} \bullet 7 \hat{j}$
	- Use constant multiplication
		- $=10\hat{i}\hat{i} + 14 \hat{i}\hat{j} - 15\hat{j}\hat{i} - 21 \hat{j} \hat{j} = 10 -21 = -11 J$
- Find angle
	- $W = Fd \cos(F^{->}, d^{->})$
	- $-11 = \sqrt{(2)^2 + (-3)^2} * \sqrt{(5)^2+(7)^2} * \cos(F^{->}, d^{->})$
	- $\cos(F^{->}, d^{->}) = \frac{-11}{3.61 * 8.6}$
	- $\alpha = 111{\degree}$
```

```ad-important
$$\hat{i}^2 = 1$$
$$\hat{j}^2 = 1$$
$$\hat{i}\hat{j} = 0$$
```



