Date: 4th November 2025
Date Modified: 4th November 2025
File Folder: Module 5
#diffeq

# Nonhomogeneous Linear Equations

## General Solution of Linear Equations

The general nonhomogeneous $n$th-order linear equation with constant coefficients has the form:

$$
a_{n}y^n+a_{n-1}y^{(n-1)}+\dots+a_{1}y^\prime+a_{0}y=f(x)
$$

A general solution of this equation has the form

$$
y = y_{c}+y_{p}
$$
where the complementary function $y_{c}(x)$ is a general solution of the associated homogeneous equation and $y_{p}(x)$ is a particular solution of the differential equation.

### Examples

#### Example 1

```ad-question
Find a particular solution of

$$y^{\prime \prime}+3y^{\prime} + 4y = 3x+2$$
```

To find the complementary solution, you need to solve it’s corresponding homogenous equation (making the right side equal to 0)

$$
y^{\prime \prime}+3y^{\prime}+4y=0
$$
$$
r^2+3r+4=0
$$
$$
r = \frac{-3 \pm \sqrt{ -7 }}{2}
$$
$$
r = -\frac{3}{2}\pm \frac{\sqrt{ 7 }i}{2}
$$

$$
y_{c}=e^{-3/2x}\left( c_{1}\cos \frac{\sqrt{ 7 }}{2}x+c_{2} \sin \frac{\sqrt{ 7 }}{2}x \right)
$$

To find the particular solution, you need to find/guess one out of the many particular solutions

Suppose:
$$
y_{p}(x)=  Ax+B
$$
$$
y^\prime =A
$$
$$
y^{\prime \prime}=0
$$
$$
(0)+3A+4(Ax+B)=3x+2
$$
$$
4Ax+4B+3A=3x+2
$$
$$
4A = 3
$$
$$
3A +4B = 2
$$
$$
A = \frac{3}{4}
$$
$$
3\left( \frac{3}{4} \right)+4B = 2
$$
$$
B = -\frac{1}{16}
$$
$$
y_{p}(x)= \frac{3}{4}x-\frac{1}{16}
$$

*Combine them*

$$
\boxed{y(x)= e^{-3/2}\left( c_{1}\cos \frac{\sqrt{ 7 }}{2}x + c_{2}\sin \frac{\sqrt{ 7 }}{2}x \right)+\frac{3}{4}x-\frac{1}{16}}
$$
#### Example 2

```ad-question
Find the particular solution for the equation below:
```

$$
y^{\prime \prime}+3y^\prime -4y=4t+8
$$
$$
y_{p}(t) = At+B
$$
$$
y^\prime_{p}(t)=A
$$
$$
y^{\prime \prime}_{p}(t)=0
$$
$$
(0)+3A - 4(At+B)=4t+8
$$
$$
-4A=4
$$
$$
A = -1
$$
$$
3A-4B=8
$$
$$
3(-1)-4B=8
$$
$$
-4B=11
$$
$$
B = -\frac{11}{4}
$$
$$
y_{p}(t)=-t-\frac{11}{4}
$$
### Example 3

```ad-question
Find the particular solution of $y^{\prime \prime}-4y=2e^{3x}$
```

Suppose the **trial function**:

$$
y_{p}(x)=Ae^{3x}
$$
$$
y^{\prime \prime}=9Ae^{3x}
$$
$$
9Ae^{3x}-4(Ae^{3x})=2e^{3x}
$$
$$
5Ae^{3x}=2e^{3x}
$$
$$
5A = 2
$$
$$
A = \frac{2}{5}
$$
$$
\boxed{y_{p}(x)=\frac{2}{5}e^{3x}}
$$
#### Example 4

```ad-question
Find the particualr soltuion of $$y^{\prime \prime}+4y^{\prime}+3y = 3e^{2t}$$
```

**Trial Function**:

$$
y_{p}(x)=Ae^{2t}
$$
$$
y^\prime_{p}(x)=2Ae^{2t}
$$
$$
y^{\prime \prime}_{p}(x)=4Ae^{2t}
$$

$$
(4Ae^{2t})+4(2Ae^{2t})+3(Ae^{2t})=3e^{2t}
$$
$$
15Ae^{2t}=3e^{2t}
$$
$$
15A = 3
$$
$$
A = \frac{1}{5}
$$
$$
\boxed{y_{p}(x)=\frac{1}{5}e^{2t}}
$$
#### Example 5

```ad-question
Find the particular solution of:

$$
y^{\prime \prime}-y^\prime-2y=-260\sin(3t)
$$
```

**Trial Function**

$$
y_{p}(x)=A\cos kx+B\sin kx
$$

$$
y_{p}(t)=A\cos 3t + B\sin 3t
$$
##### Example 6

What is the trial function for the following equation

$$
y^{\prime \prime}+9y = \sin 2x
$$
**Trial Function**
$$
y_{p}(x)=A\sin 2x + B \cos 2x
$$






