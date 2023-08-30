Date: 28th August 2023
Date Modified: 28th August 2023
File Folder: Week 2
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Kirchhoff's Current Law (KCL)
- Kirchhoff's Voltage Law (KVL)

```

```ad-note
title: Homework
- [x] 3.4, 3.14, 3.18
```

# Ohm's Law Extra

```ad-important
There is a linear relationship between the current $i$ and the voltage $V$
- Power is NOT linearly related to the voltage and the current
```

# Kirchhoff's Current Law (KCL)

**KCL** states that the algebraic sum of all currents at at a given node is equal to ***zero***.
$$\sum i = 0$$
$$or$$
$$\sum I_{in} = \sum I_{out}$$

```ad-summary
title: Definition
**Node**: A junction wehre two or more elements meet
#comebacklater ex 1
```

```ad-important
If current out is assumed out to be *positive*, the current in would be **NEGATIVE**
```

```ad-example
#comebacklater ex 2
$$-2A -2A + 4A = 0A$$
$$ $$
$$or$$
$$ $$
$$2A+2A=4A$$
```

```ad-example
color: 255, 255, 0
Find $I_1, I_2, I_3, I_4$
#comebacklater ex 3
```ad-check
title: Solution
- Find $I_1$ with Node A
	- $\sum I_{in} = \sum I_{out}$
	- $5 + 6 = I_1$
	- $I_1 = 11A$
- Find $I_4$ with Node B
	- $\sum I_{in} = \sum I_{out}$
	- $I_4 + 5 = 10$
	- $I_4 = 5A$
- Find $I_2$ with Node C
	- $\sum I_{in} = \sum I_{out}$
	- $11 = 5 + 5 + I_2$
	- $I_2 = 1A$
- Find $I_3$ with Node D
	- $\sum I_{in} = \sum I_{out}$
	- $1 + 10 = I_3$
	- $I_3 = 11A$
```

# Kirchhoff's Voltage Law (KVL)

**KVL** states that the algebraic sum of all voltages around any *closed loop* is equal to ***zero***
$$\sum V = 0$$
$$ or $$ $$\sum V_{rise} = \sum V_{drop}$$
```ad-summary
title: Definition
**Closed Loop**: Any closed contour that starts at a point, trace elements only once and return to the same point it started
#comebacklater ex 4
```

```ad-note
The direction of the loop is up to your discression, but it must be the same direction for each loop within the same circuit
```

```ad-example
Find $V_1, V_2, V_3$
#comebacklater ex 5
```ad-check
title: Solution
- Use Loop 1 to find $V_1$
	- $\sum V = 0$
	- $-12+4+2+V_1=0$
	- $V_1=6V$
- Use Loop 2 to find $V_2$
	- $\sum V = 0$
	- $-6+V_2=0$
	- $V_2=6V$
- Use Loop 3 to find $V_3$
	- $\sum V = 0$
	- $-2+1+V_3=0$
	- $V_3=1V$
```

# Combining Concepts Example

Find the power absorbed or supplied by each element and show that $Power_{absorbed} = Power_{supplied}$

#comebacklater ex 6

```ad-check
title: Solution
- Find unknown voltages
	- Find $V_s$ using outer loop:
		- $\sum V = 0$
		- $ 24 + 6 - V_s - 8 - 4 = 0$
		- $V_s=18V$
	- Find $V_x$ using inner loop:
		- $\sum V = 0$
		- $-V_s-8-4+V_x=0$
		- $-18-8-4+V_x=0$
		- $V_x=30V$
- Find unknown current
	- Use node A to find $i$ for $I$
		- $\sum I_{in} = \sum I_{out}$
		- $4+6 = I$
		- $I = 10A$
- Get Powers
	- $P_1= vi = 24(4) = 196W$ Absorbed
	- $P_2 = vi = 6(4) = 24W$ Absorbed
	- $P_3 = vi = 30(-10) = -300W$ Supplied
	- $P_4 = vi = 18(6) = 108W$ Absorbed
	- $P_5 = vi = 8(6) = 48W$ Absorbed
	- $P_6 = vi = 4(6) = 24W$ Absorbed
- Check power balance
	- $\sum P_{abs} = \sum P_{sup}$
	- $96 + 24 + 108 + 48 + 24 = 300$
```


