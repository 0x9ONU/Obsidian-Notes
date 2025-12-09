Date: 9th December 2025
Date Modified: 9th December 2025
File Folder: Exam Review
#diffeq
# Topic I: Solve Various Types of First Order Equations

## Integrand

### Notes

![[Diff EQ - Module 1.1#Solution of Differential Equation using Integrals]]

### Examples

## Separable
### Notes
![[Diff EQ - Module 1.2#Separation of Variables]]


### Examples
## Homogeneous First Order
### Notes
![[Diff Eq - Module 1.4#Homogeneous First-Order]]

### Examples
## Exact
### Notes
![[Diff Eq - Module 1.5]]

### Examples

# Topic II: Solve First Order Linear Equations By Using Integrating Factors
## Notes
![[Diff EQ - Module 1.3#Steps for Getting Solutions of Linear First-Order Differential Equations]]

## Examples
# Topic III: Solve Linear Systems
## Notes
![[Differential Equations - Module 2.1]]


## Examples
# Topic IV: Perform Matrix Operations

## Row Operations
### Notes
![[Differential Equations - Module 2.2]]


### Examples
## Basic Operations
### Notes
![[Differential Equations - Module 2.3]]


### Examples
## Inverse
### Notes
![[Differential Equations - Module 2.4]]
### Examples
# Topic V: Evaluate Determinants

## Notes

![[Differential Equations - Module 2.5]]



## Examples
# Topic VI: Determine if Given Vectors are Linearly Independent

## Notes

### Determinant

![[Diff EQ - Module 3#Linear Independence]]

### Wronskian

![[Diff EQ - Module 4.1#Linear Independence]]
## Examples

### Example 1

```ad-question
Find the Following Wronskian of $y_{1}=e^{2t}$ and $y_{2}=e^{-2t}$
```
# Topic VII: Solve Homogenous Linear Equations with Constant Coefficients



# Topic VIII: Solve Nonhomogenous Linear Equations with Constant Coefficients by Using Method of Undetermined Coefficients
## Notes

![[Diff EQ - Module 4.5]]

## Examples
# Topic IX: - Solve Nonhomogeneous linear equations with constant coefficients by using variation of parameters

## Notes

## Example

### Example 1

```ad-question
Find the following nonhomogenous equation using variation of parameters
$$y^{\prime \prime}+y = \sec t$$
```

**Associated homogeneous equation

$$
y^{\prime \prime}+y=0
$$
$$
r^2+1=0
$$
$$
r = \pm i
$$
$$
y_{c}= c_{1}\cos t + c_{2} \sin t
$$
**Get the Wronskian
$$
W = \left | \begin{matrix}
\cos t  & \sin t \\
-\sin t & \cos t
\end{matrix} \right | = \cos^2t+\sin^2t =1
$$
**The Required Particular Solution**

$$
y_{ p} = -y_{1} \int \frac{y_{2}f}{W}dt + y_{2} \int \frac{y_{1}f}{W}dt
$$
$$
y_{p}=-(\cos t)\int \frac{{\sin t \times \sec t}}{1} dt + (\sin t)\int \frac{{\cos t \sec t}}{1}dt
$$
$$
= -\cos t \int \tan t dt + \sin t \int 1 dt
$$
$$
y_{p}=-\cos t \ln|\sec t| +t\sin t
$$

# Topic X: Find Laplace Transforms of Various Functions

## Notes

![[Diff Eq - Module 5.1#Introduction to Laplace Transforms]]


## Examples

### Example 1

```ad-question
Find the laplace teransform of the following piecewise function
```

$$
f(t) = \left \{ \begin{matrix}
0 & 0 \le t < 3 \\
(t-3)^2 & t \ge 3
\end{matrix} \right \}
$$
$$
f(t) = 0+ u(t-3)[(t-3)^2-0]
$$
$$
= u(t-3)(t-3)^2
$$
$$
\laplace \{ f(t) \} = e^{-3s} \laplace \{ g(t+3) \}
$$
$$
\laplace \{ g(t+3)\} = (t+3-3)^2
$$
$$
= t^2
$$
$$
= \frac{2}{s^3}
$$
$$
F(s) = \frac{2e^{-3s}}{s^3}
$$
# Topic XI: Find Inverse Laplace Transforms

## Notes

![[Diff Eq - Module 5.1#Inverse Laplace Transforms]]

## Examples

### Example 1

$$
F(s) = \frac{2s+4}{s^2+4s+13}
$$
$$
f(t) = \laplace^{-1}\left\{  \frac{2s+4}{s^2+4s+13}  \right\}
$$
*Change to Perfect Square Form*

$$
s^2+4s+13 = (s^2 +4s+4)-4+13
$$
$$
(s+2)^2+9
$$
$$
2s+4 = 2(s+2)
$$
$$
f(t) = 2\laplace^{-1} \left\{  \frac{s+2}{(s+2^2)+3^2}  \right\}
$$
$$
f(t)= 2e^{-2t}\cos(3t)
$$
### Example 2

```ad-question
Compute the inverse laplace transform using convolution
```

$$
\laplace^{-1} \left\{  \frac{1}{s(s^2+1)}  \right\}
$$
$$
= \laplace^{-1} \left\{  \frac{1}{s} \times \frac{1}{s^2+1}  \right\}
$$
$$
= \laplace^{-1}\left\{\frac{1}{s} \right\} * \laplace^{-1}\left \{ \frac{1}{s^2+1} \right\}
$$
$$
=1 * \sin t
$$
$$
= \int_{0}^t 1\times \sin \tau d \tau
$$
$$
= \eval{-\cos \tau}{0}{t}
$$
$$
=-\cos t + \cos 0
$$
$$
f(t) = 1 - \cos t
$$

# Topic XII: Solve the Initial Value Problems Using Laplace Transforms

## Notes

![[Diff Eq - Module 5.2]]

## Examples

### Example 1

$$
y^{\prime \prime}-4y=0, \quad y(0)=1, \quad y^\prime(0)=2
$$
*Take Laplace*
$$
\laplace \{ y^{\prime \prime} \}-4 \laplace\{y\}=0
$$
$$
(s^2Y(s)-Sy(0)-y^\prime(0))-4Y(s) =0
$$
*Solve for $Y(s)$*
$$
s^2Y(s)-4Y(s) = s+2
$$
$$
Y(s) = \frac{{s+2}}{s^2-4}
$$
*Inverse*

$$
Y(s) = \frac{{s+2}}{(s+2)(s-2)} = \frac{1}{s-2}
$$
$$
y(t) = \laplace^{-1} \left\{  \frac{1}{s-2}  \right\}
$$
$$
\boxed{y(t) = e^{2t}}
$$

$$

$$


