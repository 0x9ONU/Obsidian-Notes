Date: 20th September 2023
Date Modified: 20th September 2023
File Folder: Week 5
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Thevenin's Theorem for Dependent Sources
- Norton Theorem/Source Transformation

```

```ad-note
title: Homework
- [ ] test
```

# Thevenin's Theorem: Dependent Sources (SC)

If a circuit has **both impendent and dependent sources**, then:

$$R_{Th} = \frac{V_{Th}}{I_{Sc}}$$
where $I_{sc}$ is the current flowing through the terminals when they are shorted together.

```ad-summary
title: Steps:
1. Find $V_{Th}$ across the open terminals
2. Short the terminals and find $I_{sc}$
3. Find $R_{Th} = \frac{V_{Th}}{I_{sc}}$
```

#comebacklater ex. 1

## Example 1

Find $I_x$ using Thevenin's Theorem.

#comebacklater ex. 2

```ad-check
Title: Solution
- Remove Resistor from circuit
	- #comebacklater ex. 3
- Find $V_Th$
	- Assign Nodes
		- See yellow
	- Node 1:
		- $\frac{V_1-12}{8} + \frac{V_1}{4} = 0$
		- $V_1-12 + 2V_1 = 0$
		- $3V_1 = 12$
		- $V_1 = 4V$
	- Node 2:
		- $\frac{V_2}{4} + \frac{V_2-2V_x}{12}$
		- $3V_2 + V_2-2V_x = 0$
		- $4V_2 - 2V_x = 0$
	- Equation for $V_x$
		- $V_x = V_1$
	- Create Matrices
		- $\begin{bmatrix} V_1 \\ V_2 \\ V_x \end{bmatrix} = \begin{bmatrix} 3 & 0 & 0 \\ 0 & 4 & -2 \\ -1 & 0 & 1 \end{bmatrix}^{-1} \begin{bmatrix} 4 \\ 0 \\ 0 \end{bmatrix}$
		- $\begin{bmatrix} V_1 \\ V_2 \\ V_x \end{bmatrix} = \begin{bmatrix} 4 \\ 2 \\ 4 \end{bmatrix}$
	- $V_{Th} = V_1 + V_2$
	- $V_{Th} = 2V$
- Find $R_{Th}$
	- Redraw Circuit so it shorts
		- #comebacklater ex. 4
	- Find $I_{sc}$ Using Loop Analysis
		- Loop 1:
			- $8I_1-12 + 4(I_1-I_2) = 0$
			- $12I_1 - 4I_2 = 12$ Equation 1
		- Loop 2:
			- $4(I_2-I_1) + 4(I_2-I_3) = 0$
			- $-4I_1 + 8I_2-4I_3 = 0$ Equation 2
		- Loop 3:
			- 4(I_3-I_2) + 12I_3+2V_x = 0$
			- $-4I_2+16I_3+2V_x=0$
		- Equation for $V_x$
			- $V_x = 4(I_1-I_2)$
			- $4I_1 - 4I_2 - V_x = 0$
		- Use Matrices
			- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \\ V_x \end{bmatrix} = \begin{bmatrix} 12 & -4 & 0 & 0 \\ -4 & 8 & -4 & 0 \\ 0 & -4 & 16 & 2 \end{bmatrix}^{-1} \begin{bmatrix} 12 \\ 0 \\ 0 \\ 0 \end{bmatrix}$
			- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \\ V_x \end{bmatrix} = \begin{bmatrix} 1.15A \\ 0.46A \\ -0.23A \\ 2.77V \end{bmatrix}$
		- Find $I_{sc}$
			- $I_{sc} = I_2$
			- $I_{sc} = 0.46A$
	- Find $R_{Th}$
		- $R_{Th} = \frac{V_{Th}}{I_{sc}}$
		- $R_{Th} = 4.34 \Omega$
- Find $I_x$
	- Draw Thevenin Circuit
		- #comebacklater ex. 5
	- $I_x = \frac{2V}{4.34 + 2}$
	- $I_x = 0.315 A$
```

# Norton's Theorem

**Alternative to Thevenin Circuit that turns the Voltage Source in Series with two Resistors into the Current Source in Parallel with both resistors**

#comebacklater ex. 6

#comebacklater ex. 7