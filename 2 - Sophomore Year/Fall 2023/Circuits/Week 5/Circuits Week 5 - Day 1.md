Date: 18th September 2023
Date Modified: 18th September 2023
File Folder: Week 5
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Thevenin's Theorem

```

# Thevenin's Theorem

Any linear circuit with two terminals can be represented by a voltage source called Thevenin's voltage ($V_{Th}$) connected *in series* with a resistance called Thevenin's resistance ($R_{Th}$)

![[CamScanner 09-20-2023 19.39_1.jpg]]


```ad-important
A linear circuit can be reduced down to single loop that has a voltage source and a resistance
![[CamScanner 09-20-2023 19.39_2.jpg]]
```

After the Thevenin's circuit is created, the original resistance that was removed is added back to the terminals.

```ad-note
Since the circuit contains only independent sources:
- Deactivate the soruces
- Use the resistance reduction methods to find the total resistance (equivalent) across the terminals
```

![[CamScanner 09-20-2023 19.39_3.jpg]]

## Example - How to Find Thevenin Circuit

Determine the Thevenin's Equivalent Circuit at the terminals $a-b$

![[CamScanner 09-20-2023 19.39_4.jpg]]

```ad-check
title: Solution
- Use nodal analysis to find $V_{Th}$
	- Node 1:
		- $\frac{V_1-6}{6} + \frac{V_1}{6} = 0$
		- $2V_1 = 6$
		- $V_1 = 3V$ Equation 1
	- Node 2:
		- $1 + \frac{V_2}{1} = 0$
		- $V_2 = -1V$
	- $V_{Th} = V_1-V_2$
	- $V_{Th} = (3) -(-1)$
	- $V_{Th} = 4V$
- Find $R_{Th}$ 
	- Turn off voltage and current source
		- ![[CamScanner 09-20-2023 19.39_5.jpg]]
	- Use resistance reduciton
		- $6 // 6$
			- $\frac{6*6}{6+6} = 3 \Omega$
		- $R_{Th} = 3 + 1 = 4 \Omega$
- Draw Thevenin equivalent circuit
	- ![[CamScanner 09-20-2023 19.39_6.jpg]]
```

## Example - How to Use Thevenin Circuit to Find Voltage

Find the voltage $V_x$ in the circuit using Thevenin's theorem

![[CamScanner 09-20-2023 19.39_7.jpg]]

```ad-check
title: Solution
- Open the part of the circuit that has the unknown resistance to create a two terminal circuit
	- ![[CamScanner 09-20-2023 19.39_8.jpg]]
- Create the Thevenin Circuit
	- Find $V_{Th} Using Nodal Analysis
		- Node 1:
			- $V_1 = 12v$
		- Node 2:
			- $\frac{V_2}{15} + \frac{V_2-V_3}{10} = 0$
			- $2V_2 + 3V_2 -3V_3 = 0$
			- $5V_2 - 3V_3 = 0$
		- Node 3:
			- $\frac{V_3-V_2}{10} + 3 + \frac{V_3-9}{20}$
			- $2V_3 - 2V_2 + 60 + V_3 - 9 = 0$
			- $-2V_2 + 3V_3 = -51$
		- Create Matrix
			- $\begin{bmatrix} V_1 \\ V_2 \\ V_3 \end{bmatrix} = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 5 & -3 \\ 0 & -2 & 3 \end{bmatrix}^{-1} \begin{bmatrix} 12 \\ 0 \\ -51 \end{bmatrix}$ 
			- $\begin{bmatrix} V_1 \\ V_2 \\ V_3 \end{bmatrix} = \begin{bmatrix} 12 \\ -17 \\ -28.33 \end{bmatrix}$
		- Solve for $V_{Th}$
			- $V_{Th} = V_1 - V_2$
			- $V_{Th} = 12-(-17)$
			- $V_{Th} = 29V$
	- Reduce Circuit by Removing Independent Sources
		- ![[CamScanner 09-20-2023 19.39_9.jpg]]
	- Find $R_{Th} Using Resistance Simplification
		- $R_{Th} = (10+20) // 15$
		- $R_{Th} = \frac{30(15)}{30+15} = 10 \Omega$
	- Draw Circuit
		- ![[CamScanner 09-20-2023 19.39_10.jpg]]
- Find $V_x$ using Voltage Division
	- $V_x = \frac{5}{5+10}(29)$
	- $V_x = 9.67V$
```



