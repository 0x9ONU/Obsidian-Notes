Date: 11th October 2023
Date Modified: 11th October 2023
File Folder: Week 8
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] pg. 220 11, 13, 15, 17
```

# Review: Formulas for Energies

$$KE = \frac{1}{2}mv^2$$
$$U = mgh$$
$$U = \frac{1}{2}kx^2$$
$$E_i = E_f$$
```ad-important
The sum of Kinetic energy is equal to the sum of Potential energy is equal where there is **no friction**
```

# Examples

## Example 1: Roller Coaster with KE and GPE

![[Pasted image 20231011100435.png]]

```ad-note
Given:
- $V_1 = 0$ where $h = 32m$
- $V_2 = ?$ where $h = 0m$
- $V_3 = ?$ where $h = 26m$
- $V_4 = ?$ where $h = 14m$
- ***and*** $E_1 = E_2 = E_3 = E_4$
```

```ad-check
title: Solution
- FInd $V_2$ using $E_1 = E_2$
	- $mgh_1 = \frac{1}{2}mv^2+0$
	- $v_2 = \sqrt{2gh_1} = 25.04\frac{m}{s}$
- Find $V_3$ using $E_1 = E_3$
	- $mgh_1 = \frac{1}{2}mv_3^2 +mgh_3$ *masses cancel again*
	- $2gh_1 - 2gh_3 = V_3^2$
	- $v_3 = \sqrt{2g(h_1-h_3)}$
	- $v_3 = \sqrt{2* 9.8(32-26)} = 10.84 \frac{m}{s}$
- Find $V_4$ using $E_1=E_4$
	- $mgh_1 = \frac{1}{2}mv_4^2 + mgh_4$
	- $v_4 = \sqrt{2g(h_1-h_4)}$
	- $v_4 = \sqrt{2*9.8(32-14)} = 18.78 \frac{m}{s}$
```

## Example 2: Spring

#comebacklater ex. 1

```ad-question
1. What is the speed of the object when it is only $10cm$ from the equilibirum position
2. What is the speed of the object when it moves throught he equilibirum position
```

```ad-note
Given:
- $m = 2kg$
- $k = 500 \frac{N}{m}$
```

### Part 1:

```ad-important
$E_A = E_B$ due to conservation of energy
```

$$\frac{1}{2}kx_A^2 + 0  = \frac{1}{2}kx_B^2 + \frac{1}{2}mV_B^@$$
$$kx^2_A - kx_B^2 = mV_B^2$$
$$V_B = \sqrt{\frac{k(x_A^2)-x_B^2}{m}}$$
$$V_B = \sqrt{\frac{500((15*10^{-2})-(10 * 10^{-2})^2}{(2)}} = 1.77 \frac{m}{2}$$

### Part 2:


```ad-important
$E_A = E_C$ due to conservation of energy
```

$$\frac{1}{2}kx^2_A = \frac{1}{2}mv_C^2$$
$$v_C =\sqrt{\frac{kx^2_A}{m}} = 2.37 \frac{m}{s}$$

## Example 3: Two Objects on Slope + Pulley

![[Pasted image 20231011103009.png]]

```ad-note
Given:
$$m_1 = 3.5kg$$
$$m_2 = 5kg$$
$$angle = 32\degree$$
$$h = 0.75m$$
Find Velocity before $h = 0$
```

```ad-important
The velocities ($v_1$ and $v_2$) must be the same since there is no friction in the pulley or stretch in the string, THUS:
$$V_1 = V_2$$
```


```ad-check
title: Solution
- Find $E_i$
	- $E_i = 0_{KE1} + 0_{KE2} + m_1gh_{1i} + m_2gh_{2i}$
- Find $E_f$
	- $E_f = \frac{1}{2}m_1v^2 + \frac{1}{2}m_2v^2 + m_1gh_{1f} + 0_{mg2h_{2f}}$
- Find $d$
	- $\sin(32) = \frac{d}{0.75} = 0.75\sin(32) = 0.397m$
- Setup Equation
	- $m_1gh_{h1i} + m_2gh_{2i} = \frac{1}{2}m_1v^2+\frac{1}{2}m_2v^2+m_1g(h1i+d)$ Cancel out the first term with the expanded last term
	- $m_2gh_{2i} = \frac{1}{2}m_1v^2+\frac{1}{2}m_2v^2 + m_1gd$
	- $(5)(9.8)(0.75) = \frac{1}{2}(3.5)v^2+\frac{1}{2}(4)v^2 + (3.5)(9.8)(0.397)$
	- $36.75 = 4.25v^2 + 13.62$
	- $23.13 = 4.25v^2$
	- $v = 2.33 \frac{m}{s}$
```







