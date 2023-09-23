Date: 22nd September 2023
Date Modified: 22nd September 2023
File Folder: Week 5
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Maximum Power Transfer

```

# Maximum Power Transfer

#comebacklater ex. 1

The load resistance $R_L$ will receive **maximum** power *if and only if* $R_L = R_{Th}$

#comebacklater ex. 2

```ad-important
To find the maximum pwoer value:
$$P_{max} = \frac{V^2{Th}}{4R_{Th}}$$
```

## Proof

Find current through Thevenin's Equivalent Circuit

$$I = \frac{V_{TH}}{R_{Th} + R_L}$$
$$P_L = I^2R_L$$
$$P_L = (\frac{V_{TH}}{R_{Th} + R_L})^2 R_L$$
$$P_L = \frac{V_{Th}^2R_L}{R_{Th}+R_L}$$

```ad-important
Take the derivative of the function and set it to zero to find the max
```

$$\frac{dP_L}{dR_L} = \frac{(R_{Th}+R_L)^2V^2{Th} - V^2{Th}R_L(2(R_{Th}+R_L))}{(R_{Th}+R_L)^4}$$
$$= \frac{(R_{Th}+R_L)V^2{Th}-2V^2{Th}R_L}{(R_{Th}+R-L)^3}$$
$$=\frac{V^2_{Th}(R_{Th}+R)L-2R_L}{(R_{Th}+R_L)^2}$$
$$\frac{dP_L}{dR_L} = 0$$
$$Set \space Top \space Equal \space to \space zero$$
$$V^2_{Th}(R_{Th}-R_L) = 0$$
$$R_{Th} - R_L = 0$$
$$R_L = R_{Th}$$

## Example

Find the maximum power transferred to $R_L$ in the circuit

#comebacklater ex. 3

```ad-check
title: Solution
- Use Thevenin's Thereom to find $R_{Th}$ and $R_{Th}$
	- Open Circuit over $R_L$
		- #comebacklater ex. 4
	- Use Nodal Analysis to find $V_{Th}$
		- Node 1:
			- $\frac{V_1-9}{2} + \frac{V_1-3V_x}{1}$ NOTE: $4 \Omega$ Resistor does not have current flowing through it
			- $V_1-9+2V_1-6V_x = 0$
			- $3V_1-6V_x=9$
		- Equation of $V_x$
			- $V_x = 9 - V_1$
			- $V_1+V_x = 9$
		- Create Matrices
			- $\begin{bmatrix} V_1 \\ V_x \end{bmatrix} = \begin{bmatrix} 3 & -6 \\ 1 & 1 \end{bmatrix}^{-1} \begin{bmatrix} 9 \\ 9 \end{bmatrix}$
			- $V_1 = 7$
			- $V_x = 2$
		- $V_{Th} = V_1 = 7V$
	- Use $I_{sc}$ and Loop Analysis due to independent and dependent sources
		- Draw New Circuit with Short 
			- #comebacklater ex. 5
		- Loop 1:
			- $-3V_x + 1(I_1-I_2) + 2I_1 + 9 = 0$
			- $3I_1-I_2-3V_x=-9$
		- Loop 2:
			- $1(I_2-I_1)+3V_x+4I_2 = 0$
			- $-I_1+5I_2 + 3V_x = 0$
		- Equation for $V_x$
			- $V_x = 2I_1$
			- $2I_1 - V_x = 0$
		- Create Matrices
			- $\begin{bmatrix} I_1 \\ I_2 \\ V_x \end{bmatrix} = \begin{bmatrix} 3 & -1 & -3\\ -1 & 5 & 3 \\ 2 & 0 & -1 \end{bmatrix}^{-1} \begin{bmatrix} -9 \\ 0 \\ 0 \end{bmatrix}$
			- $\begin{bmatrix} I_1 \\ I_2 \\ V_x \end{bmatrix} = \begin{bmatrix} 1.18 A \\ 1.66 A \\ 2.37 V \end{bmatrix}$
		- Find $I_{sc}$
			- $I_{sc} = I_2 = 1.66A$
		- Find $R_{Th}$
			- $R_{Th} = \frac{V_{Th}}{I_{sc}}$
			- $=\frac{7}{1.66}
			- $=4.22 \Omega$
- Find Max Power
	- $P_{max} = \frac{V_{Th}^2}{4R_{Th}} = \frac{7^2}{4(4.22)} = 2.9W$ 
```

## Example 2 

Find the max power transferred to $R_L$ in the circuit

#comebacklater ex. 6

```ad-check
title: Solution
- Use Nodal Analysis to find $V_{Th}$
	- Redraw Circuit:
		- #comebacklater ex. 7
	- Node 1:
		- $\frac{V_1-9}{2} + 2 = 0$
		- $V_1 - 9 + 4= 0$
		- $V_1 = 5V$
	- $V_1 = 5V$
	- $V_{Th} = V_1 = 5V$
- Use Resistance Reduction to find $R_{Th}$
	- Redraw Circuit
		- #comebacklater ex. 8
	- $R_{Th} = 2+1 = 3 \Omega$ **Ignores Short Circuit**
- Find Max Power
	- $P_{max} = \frac{V^2_{Th}}{4R_{Th}}$
	- $P_{max} = \frac{5^2}{4(3)} = 2.08W$
```

	

