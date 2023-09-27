Date: 27th September 2023
Date Modified: 27th September 2023
File Folder: Week 6
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- OP-AMP Cont.
- Exam Topics

```

# Example - OP-AMPS to find Voltage AND Current

Find $V_0$ and $I_x$

#comebacklater ex. 1

```ad-check
title: Solution
- Assign Nodes
- Write Equations
	- Node 1:
		- $\frac{v_1-6}{4k} + \frac{V_1-3}{1} + \frac{V_1-V_3}{2k} = 0$
		- $v_1 -6 + 4V_1-12 + 2V_2-2V_3=0$
		- $7V_1-2V_3=18$ Equation 1
	- Node 2:
		- $V_2=0$ Equation 2
	- Node 1 = Node 2:
		- $V_1 = V_2$
		- $V_1 = 0$ Equation 3
	- Node 4:
		- $\frac{V_4-V_3}{1k} + \frac{V_4-12}{2k} + \frac{V_4-V_0}{4k} = 0$
		- $4V_4-4V_3 + 2V_4-24 + V_4-V_0 = 0$
		- $7V_4-4V_3-V_0 = 24$ Equation 4
	- Node 5:
		- $V_5=0$ Equation 5
	- Node 4 = Node 5:
		- $V_4 = V_5 = 0$
		- $V_4 = 0$ Equation 6
- Make Matrix
	- $\begin{bmatrix} V_1 \\ V_2 \\ V_3 \\ V_4 \\ V_5 \\ V_0 \end{bmatrix} = \begin{bmatrix} 7 & 0 & -2 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 & 0 & 0 \\ 1 & 0 & 0 & 0 & 0 & 0 \\ 0 & 0 & -4 & 7 & 0 & -1 \\ 0 & 0 & 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 & 0 & 0 \end{bmatrix}^{-1} \begin{bmatrix} 18 \\ 0 \\ 0 \\ 24 \\ 0 \\ 0 \end{bmatrix}$
	- $V_1 = 0$
	- $V_2 = 0$
	- $V_3 = -9$
	- $V_4 = 0$
	- $V_5 = 0$
	- $V_0 = 12$
- Find $I_x$
	- $I_x=\frac{V_3-V_4}{1k}$
	- $=\frac{(-9)- 0}{1k}$
	- $-9mA$
```

# Exam Topics:

1. Power Supplied = Power Absorbed
2. Ohm's Law, KCL, KVL
3. Nodal, Loo, Superposition
4. Thevenin's, Max Power
5. Op-AMP