Date: 3rd November 2025
Date Modified: 3rd November 2025
File Folder: Module 5
#diffeq

# Mechanical Vibrations

## Mass-Spring Dashpot

We consider a body of mass $m$ attached to one end of an ordinary spring that resists compression as well as stretching
- The other end of the spring is attached to a fixed wall, as shown in the figure
- Assume that the body rests on a frictionless horizontal plane, so that it may only move back and forth

![[Pasted image 20251103110612.png | center]]

If, in addition to the forces on the spring ($F_{s}$) and the force of the return ($F_{R}$), the mass is subjected to a given *external force* $F_{E}=F(t)$, then the total force acting on the mass is $F = F_{S}+F_{R}+F_{E}$

Newton’s Law will state:

$$
F = ma = m \frac{d^2x}{dt^2} = mx^{\prime \prime}
$$

We obtain the second-order linear differential equation:

$$
mx^{\prime \prime}+cx^\prime + kx = F(t)
$$
### Damped vs. Undamped

If there are no dashpot (and we ignore all friectional forces), then we set $c=0$ to create the following differential equation:

$$
mx^{\prime \prime}+kx=F(t)
$$
and it is damped if $c > 0$

### Free vs. Unfree

If the equation is equal to $0$, then it is a free motion
## Simple Harmonic Motion

General Solution:

$$
x(t)+A\cos \omega_{o}t+B\sin \omega_{o}t
$$
Standard Form:

$$
x(t)=ce^{-pt}\cos(\omega t- \alpha), \quad 0 \le \alpha \le 2 \pi
$$
## Examples

### Example 1

```ad-question
Solve the equation for free damped vibrations:

$$
x^{\prime \prime}+6x^\prime+34x=0, \quad x(0)=-1, v(0)=-5
$$

and write the solution in standard form
```

*Characteristic Equation*

$$
r^2+6r+34 = 0
$$
$$
r= -\frac{-6 \pm \sqrt{ (6)^2-4*34 }}{2}
$$
$$
r = -\frac{6\pm \sqrt{ -100 }}{2}
$$
$$
r = \frac{-6 \pm 10i}{2}
$$
$$
r = -3 \pm 5i
$$
$$
r = e^{-3t}\cos5t, e^{-3t}\sin5t
$$
*General Solution*

$$
x(t)=c_{1}e^{-3t}\cos 5t+c_{2}e^{3t} \sin 5t
$$
$$
x(t)=e^{-3t}(c_{1}\cos 5t + c_{2} \sin 5t)
$$
*IVP*

$$
x(0)=-1
$$
$$
(-1)=e^{-3(0)}(c_{1}\cos 5(0) + c_{2}\sin(5(0)))
$$
$$
c_{1}=-1
$$
$$
v(0)=-5
$$
$$
x^\prime(t)=-3e^{-3t}[c_{1}\cos 5t + c_{2}\sin 5t]+ e^{-3t}[-5c_{1}\sin 5t + 5c_{2}\cos 5t]
$$
$$
(-5)=-3e^{-3(0)}[c_{1}\cos5 (0)+c_{2} \sin(5(0))]+e^{-3(0)}[-5c_{1}\sin (5(0))+5c_{2}\cos 5(0)]
$$
$$
-3c_{1}+5c_{2}=-5
$$
$$
-3(-1)+5c_{2}=-5
$$
$$
5c_{2}=-8
$$
$$
c_{2}=-\frac{8}{5}
$$

$$
x(t)=e^{-3t}\left[ -\cos 5t -\frac{8}{5} \sin 5t \right]
$$
*Standard Form*

$$
x(t)=Ce^{-pt}\cos(\omega t-\alpha)
$$
$$
C = \sqrt{ (-1)^2+\left( -\frac{8}{5} \right)^2 }
$$
$$
C = \frac{\sqrt{89 }}{5}
$$

$$
\omega = 5 \quad \text{(Look at the terms in cos and sin)}
$$
$$
\alpha = \tan^{-1}\left( -\frac{\frac{8}{5}}{-1} \right) + \pi
$$
$$
\alpha = \tan^{-1}\left( -\frac{8}{5} \right)+ \pi
$$
$$
\boxed{x(t)=\frac{\sqrt{ 89 }}{5}e^{-3t}\cos\left[ 5t-\left( \pi+\tan^{-1}\left( -\frac{8}{5} \right) \right) \right]}
$$
![[Pasted image 20251103114140.png | center]]

### Example 2

$$
x^{\prime \prime}+9x=0, \quad x(0)=2, \quad x^\prime(0)=5
$$
*Characteristic*

$$
r^2+9 = 0
$$
$$
r = 3i, -3i
$$
$$
r = \cos 3t, \sin 3t
$$
*General Solution*

$$
x(t)=c_{1}\cos 3t + c_{2} \sin 3t
$$
*IVP*

$$
x(0)=2
$$
$$
(2)=c_{1}\cos(3*0)+c_{2}\sin (3* 0)
$$
$$
c_{1} = 2
$$
$$
x^{\prime}(0)=5
$$
$$
5 = -3c_{1}\sin 3(0) + 3c_{2} \cos (3(0))
$$
$$
5 = 3c_{2}
$$
$$
c_{2} = \frac{5}{3}
$$
$$
x(t) = 2\cos 3t + \frac{5}{3}\sin3t
$$
*Standard Form*

$$
C = \sqrt{ (2)^2 + \left( \frac{5}{3} \right)^2 }
$$
$$
C = \frac{\sqrt{ 61 }}{3}
$$
$$
\omega = 3
$$
$$
\alpha = \tan^{-1}\left( \frac{\frac{5}{3}}{2} \right)
$$
$$
x(t)=\frac{\sqrt{ 61 }}{3}\cos\left( 3t + \tan^{-1} \frac{5}{6} \right)
$$

