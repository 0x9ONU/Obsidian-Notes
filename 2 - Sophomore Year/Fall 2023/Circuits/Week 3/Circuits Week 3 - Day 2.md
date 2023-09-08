Date: 8th September 2023
Date Modified: 8th September 2023
File Folder: Week 3
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Dependent Sources for Nodal Analysis

```

```ad-example
Find the current $I_0$ in the circuit using nodal analysis.
![[CamScanner 09-08-2023 12.50.jpg]]
```ad-check
- Node 1:
	- Super Node!
	- $V_1 = 9$
- Node 2:
	- $(\frac{V_2-V_1}{3})+(-2V_x)+(\frac{V_2-V_3}{4}) = 0$
	- $4V_2 - 4v_1 -24Vx_ + 3V_2 - 3V_3 = 0$
	- $-4V_1+7V_2-3V_3-24V_x$
- Node 3 + 4: **NEW CASE** (see below)
	- $V_4-V_3 = 12$
	- $(\frac{V_3-V_2}{4}) + (\frac{V_3}{2}) + (\frac{V_4}{3}) + 2 = 0
	- $3V_3 -3V_2+6V_3+4V_4+24 = 0$
	- $-3V_2+9V_3+4V_4 = -24$
- Extra Equation to find $V_x$
	- $V_1-V_2=V_x$
- Put Equations into matrix form
	- $\begin{bmatrix}1 & 0 & 0 & 0 \\-4 & 7 & -3 & 0 & -24 \\ 0 & 0 & -1 & 1 & 0 \\ 0 & -3 & 9 & 4 & 0 \\ 1 & -1 & 0 & 0 & -1 \end{bmatrix}^{-1}  \begin{bmatrix}9 \\ 0 \\ 12 \\ -24 \\ 0 \end{bmatrix} = \begin{bmatrix} V_1 \\ V_2 \\ V_3 \\ V_4 \\ V_x\end{bmatrix}$
- Voltages
	- $V_1 = 9$
	- $V_2 = 7.77$
	- $V_3 = -3.75$
	- $V_4 = 8.25$
	- $V_x = 1.23$
- Find $I_0$
	- $I_0 = \frac{V_2 - V_3}{4}$
	- $= \frac{7.77 - (-3.75)}{4}$
	- $=2.88A$
```


```ad-important
title: New Case
If there is a super node **between** two nodes, the subtraction of the positive voltage minus the negative voltage would equal the voltage source. Then, write the extra branches on one side and add them to the extra branches on the other side. That would create **TWO** equations.
```

```ad-summary
For nodes that have a dependent current source, create *another* equation that could be used to solve for the missing value. 
```
