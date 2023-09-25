Date: 25th September 2023
Date Modified: 25th September 2023
File Folder: Week 6
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Operational Amplifier

```

# Operational Amplifier (OP-Amp)

#comebacklater ex. 1

```ad-summary
title: Pins Values
1. Offset Null
2. Inverting Input
3. Non-inverting Input
4. Negative Supply Voltage
5. Offset Null
6. Output
7. Positive Supply Voltage
8. NC (No Connection)
```

Minimized to the following:

#comebacklater ex. 2

```ad-warning
It must be excited with voltage in order to work, but its input and output voltage is not shown in the simplified form
- Assumed in circuit diagrams
```

**If it is put into the inverting voltage**: It flips the voltage sign and outputs

**If it is put into the non-inverting voltage:** It sends the voltage as is to the output.

```ad-important
The OP-Amp is used to change the level of the voltage in a circuit
```

## Types of OP-AMPS

**Inverting OP-AMP**: Inverts the voltage going out of the OP-AMP
#comebacklater ex. 3

**Non-Inverting OP-AMP**: Outputs the same voltage
#comebacklater ex. 4

**Difference OP-AMP:** Takes the difference of the two voltages
#comebacklater ex. 5

**Non-Inverting Summer OP-AMP**: Sums the voltage of the two 
#comebacklater ex. 6

**Inverting Summer OP-AMP:** Takes the summation of the voltage and makes it negative
#comebacklater ex. 7

**Cascading OP-AMP**: Uses two OP-AMPs to get the correct voltage
#comebacklater ex. 8
## Rules of OP-AMP

1. The currents getting into the inverting and non-inverting terminals are always **ZERO**
2. The voltages at the inverting and the non-inverting nodes are always equal.
3. **DO NOT** write a nodal equation at the output terminal

```ad-warning
Resistances with an OP-AMP **MUST** be in $k\Omega$ or *higher*
```

```ad-danger
MAX IS $32V$
```

## Examples
### Example 1: Inverting OP-AMP

Find $V_0$

#comebacklater ex. 9

```ad-check
title: Solution
- Assign Nodes
- Draw currents going into OP-AMP to zero
- Write Nodal Voltages
	- Node 1:
		- $\frac{V_1 - 6}{2k} + \frac{V_1-V_0}{4k} = 0$
		- $2V_1-12+V_1-V_0 = 0$
		- $3V_1-V_0=12$
	- Node 2:
		- $V_2 = 0$
		- $V_1 = V_2 = 0$ ==Node 1 and Node 2 Voltages are 0==
- Substitute
	- $3(0) - V_0 = 12$
	- $V_0 = -12V$
```

### Example 2: Difference OP-AMP

Find $V_0$

#comebacklater ex. 10

```ad-check
title: Solution
- Assign Nodes
- Draw currents going into OP-AMP to zero
- Write Nodal Votlages
	- Node 1:
		- $\frac{v_1-6}{12k} + \frac{v_1 -v_0}{4k}$
		- $v_1 -6 + 3V_1-3V_0 = 0$
		- $4V_1 - 3V_0 = 6$
	- Node 2: **super node**
		- $V_2 = 3$
	- Use Node 1 = Node 2:
		- $V_1 = V_2 = 3V$
- Solve for $V_0$
	- $4V_1 - 3V_0 = 6$
	- $4(3) - 3V_0 = 6$
	- $3V_0 = 12 - 6$
	- $V_0 = 2V$
 ```

### Example 3: Non-Inverting OP-AMP

Find $V_0$

#comebacklater ex. 11

```ad-check
title: Solution
- Assign Nodes
- Draw Current going into OP-AMP to zero
- Write Nodal Voltages
	- Node 1:
		- $\frac{V_1-3}{6k} + \frac{V_1}{12k} = 0$
		- $2V_1-6+V_1 = 0$
		- $3V_1 = 6$
		- $V_1 = 2V$
	- Node 2:
		- $\frac{V_2}{8k} + \frac{V_2-V_0}{40k} = 0$
		- $5V_2 + V_2 - V_0 = 0$
		- $6V_2 = V_0 = 0$
- Set $V_1 = V_2$
	- $V_1 = V_2 = 2$
- Solve for $V_0$
	- $6V_2 - V_0 = 0$
	- $6(2) - V_0 = 0$
	- $V_0 = 12V$
```

