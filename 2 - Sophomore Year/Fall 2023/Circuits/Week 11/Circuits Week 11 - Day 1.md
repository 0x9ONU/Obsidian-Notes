Date: 30th October 2023
Date Modified: 30th October 2023
File Folder: Week 11
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Nodal, Loop, and Superposition with AC Circuits

```

# Nodal Analysis in AC

```ad-question
Find $\textbf{V}_0$ using nodal analysis
```

#comebacklater ex. 1 

Write Equation at **Node 1**:

$$ \frac{V_1 -12 \angle 0 \degree}{3+j2} + \frac{V_1}{6-j1} + \frac{V_1}{4_j6} = 0$$
 
Either divide each term by its denominator or multiply by the conjugate to simplify:

$$(0.231 - j0.154)V_1 - 2.77 + j1.84 + (0.162 + j0.27)V_1 + (0.077-j0.12)V_1 = 0 $$

Collect Terms:

$$(0.47 -j0.247)V_1 = 2.77 - j1.84$$
Solve for $V_1$

$$V_1 = \frac{2.77 - j1.84}{0.47-j0.247}$$
$$V_1 = 6.23 - j0.64$$
$$V_0 = V_1 = 6.26 \angle -5.87 \degree$$

# Superposition

```ad-question
FInd $I_0$ using superposition:
```

#comebacklater ex. 2

State possible sources:
- Let $I_{01}$ due to $12 \angle 0 \degree$ V source.

#comebacklater ex. 3

- Use loop analysis to find $I_{01}$
	- Loop 1:
		- $-12 \angle 0 \degree + 4 I_{01} - j4I_{01} + j8I_{01}+10I_{01} =0$
		- $(15 + j4)I_{01} = 12 \angle 0 \degree$
		- $I_{01} = \frac{12 \angle 0 \degree}{15+j4}$
		- $= 0.747 - j0.199 = 0.773 \angle -14.93 \angle A$

- Let $I_{02}$ due to $2\angle0\degree A$ source. 

#comebacklater ex. 4

- Use current division

$$I_{02} - \frac{5}{5-j4 + j8+10}(2 \angle 0 \degree)$$
$$I_{02} = \frac{5}{15+j4}(2\angle 0 \degree)$$
$$I_{02} = 0.623 - j0.166$$
$$I_{02} = 0.644 \angle -14.93 \degree A$$
- Sum the partial currents
$$I_0 = I_{01} + I_{02}$$
$$=(0.747-j0.199)+(0.623-j0.166)$$
$$=1.369-j-0.365$$
$$=1.417 \angle -14.93 \degree A$$
