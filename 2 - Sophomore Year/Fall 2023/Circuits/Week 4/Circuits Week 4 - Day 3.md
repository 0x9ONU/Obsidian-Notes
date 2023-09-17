Date: 15th September 2023
Date Modified: 15th September 2023
File Folder: Week 4
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Superposition Theorem 

```

# Superposition Theorem

The voltage across  (or the current through) an element in a linear circuit is the algebraic sum of the voltages across (or the current through) that element due to each independent source acting alone.

#comebacklater ex. 1

```ad-summary
title: Steps to Apply Superposition
1. Turn off all indepndent sources **except one**. Find the requirement using any method.
2. Repeat step 1 for each voltage/current source
3. Find the total contribution by adding algebriacally all the contributions due to the independent sources.
```

```ad-note
What does it mean to turn off each source?
- Voltage source -> short it (Voltage Source Becomes 0)
- Current source -> open it (Current Source Becomes 0)
```

```ad-warning
Make sure that the circuit is linear! (Anything done to the input will reflect the same in the output)
```

## Examples

```ad-example
Find $V_0$ using superposition

#comebacklater ex. 2
```ad-check
title: Solution
- Assign Sources Variables
	- Let V_{01} due to 12V source (blue)
	- Let V_{02} due to 6A source (yellow)
	- Let V_{03} due to 2A source (orange)
- Solve for $V_{01}$
	- Remove current sources
	- #comebacklater ex. 3
	- Using voltage division
		- $V_{01} = \frac{12}{12+12}(12)$
		- $V_{01} = 6V$
- Solve for $V_{02}$
	- Remove voltage source and other current source
	- #comebacklater ex. 4
	- Using Loop Analysis:
		- Loop 1:
			- $I_1 = -6$
		- Loop 2:
			- $12(I_2-I_1) + 12I_2 = 0$
			- $-12I_1 + 24I_2 = 0$
		- Solve for Variables
			- $\begin{bmatrix} I_1 \\ I_2 \end{bmatrix} = \begin{bmatrix} 1 & 0 \\ -12 & 24 \end{bmatrix}^{-1} \begin{bmatrix} -6 \\ 0 \end{bmatrix}$
			- $I_1 = -6$
			- $I_2 = -3$
	- $V_{02} = IR$
	- $V_{02} = (-3)(12)$
	- $V_{02} = -36V$
- Solve for $V_{03}$
	- Turn off voltage source and other current source with 2A remaining
	- #comebacklater ex. 5
	- Using Loop Analysis:
		- Loop 1:
			- $12I_1+ 12(I_1-I_2) = 0$
			- $24I_1 - 12I_2 = 0
		- Loop 2:
			- $I_2 = 2$
		- Solve for Variables
			- $\begin{bmatrix} I_1 \\ I_2 \end{bmatrix} = \begin{bmatrix} 24 & -12 \\ 0 & 1 \end{bmatrix}^{-1} \begin{bmatrix} 0 \\ 2 \end{bmatrix}$
			- $I_1 = 1$
			- $I_2 = 2$
	- $V_{03} = 12(I_1-I_2)$
	- $=12(1-2)$
	- $V_{03} = -12V$
- Find Total Voltage
	- $V_0 = V_{01}+V_{02}+V_{03}$
	- $V_0 = 6 + -36 + -12 = -42V$
```

```ad-example
Find $V_0$ using superposition
#comebacklater ex. 6

```ad-check
title: Solution
- Assign Sources
	- Let $V_{01} due to 12V source. (Yellow)
	- Let $V_{02} due to 8A source. (Orange)
- Find $V_{01}$
	- Open current source
	- #comebacklater ex. 7
	- Use Votlage Division
		- $V_{01} = \frac{4}{6+2+4}(12)$
		- $V_{01} = \frac{4}{12}(12)$
		- $V_{01} = 4V$
- Find $V_{02}$
	- Short voltage source
	- #comebacklater ex. 8
	- Use Current Division
		- $V_02$ = 4I$
		- $V02 = 4(\frac{(4+2)}{6+4+2}(8))$
		- $V_02 = 16V$
- Find Total Voltage
	- $V_0 = V_{01} + V_{02}$
	- $V_0 = 20V$
```



