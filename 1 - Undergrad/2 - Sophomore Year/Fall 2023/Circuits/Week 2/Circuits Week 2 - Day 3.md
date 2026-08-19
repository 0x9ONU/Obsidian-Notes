Date: 1st September 2023
Date Modified: 1st September 2023
File Folder: Week 2
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Voltage Division
- Current 
- Division

```
# Voltage Division 
![[CamScanner 09-01-2023 13.13_1.jpg]]

- Applies to resistors that are connected in **series**
- Use ohm's Law to find voltage of a single resistor($V_1=IR_1$)
- Use the following to find current
	- $\frac{V_s}{R_1+R_2+R_3}$
- Combine the two equations to get:

$$V_1 = \frac{R_1}{R_1+R_2+R_3}(V_s)$$
```ad-important
title: Voltage Divider Rule
In general, for a resistor $R_x$ in a series of connected resistors, the voltage $V_x$, which is the voltage dropped across the $R_x$ is the following:
```

$$V_x = \frac{R_x}{R_T}V_s$$

```ad-example
Find the voltage across each resistor in the circuit shown:
![[CamScanner 09-01-2023 13.13_2.jpg]]

```ad-check
title: Solution
- Find the $V_1$
	- $V_1 = \frac{2 \Omega}{2+4+6+8}(12) = 1.2V$
	- $V_2 = \frac{4 \Omega}{2+4+6+8}(12) = 2.4V$
	- $V_3 = \frac{6 \Omega}{2+4+6+8}(12) = 3.6V$
	- $V_4 = \frac{8 \Omega}{2+4+6+8}(12) = 4.8V$
- Check answer
	- $V_1+V_2+V_3+V_4 = V_s$
	- $(1.2)+(2.4)+(3.6)+(4.8) = 12$
	- $12V = 12V$
```

```ad-example
color: 180, 100, 180
Find $V_x$
![CamScanner 09-01-2023 13.13_3.jpg](file:///C:%5CUsers%5Cjavva%5CDownloads%5CCamScanner%2009-01-2023%2013.13_3.jpg)
```ad-check
title: Solution
- Combine the parallel resistors to make them in series
	- 16 // 16
		- $\frac{16(16)}{16+16} = 8 \Omega$
	- ![[CamScanner 09-01-2023 13.13_4.jpg]]
- Find $V_x$
	- $V_x = \frac{8}{4+8}(12) = 8V$
```

```ad-note
Resistors that are in parallel **ALSO** have the same voltage
```
# Current Division

Applies to resistors that are connected in **parallel**:
![[CamScanner 09-01-2023 13.13_5.jpg]]

- $I_1 = \frac{\frac{1}{R_1}}{\frac{1}{R_1}+ \frac{1}{R_2} + \frac{1}{R_3}}$
- Replace with *conductance*:

$$ \frac{G_1}{G_1+G_2+G_3}$$

```ad-important
In general, for a resisotr $R_x$ in a parallel connected resistors, the current flowing through them is the following:
```

$$I_x = \frac{G_x}{G_T}(I_s)$$
$$ where G_x = \frac{1}{R_x}$$

```ad-note
title: For two Resistors in parallel
![[CamScanner 09-01-2023 13.13_6.jpg]]
$$I_1 = \frac{R_2}{R_1+R_2}I_s$$
$$I_2 = \frac{R_1}{R_1+R_2}I_s$$
```ad-important
YOU TAKE THE OPPOSITE RESISTOR's RESISTANCE
```


```ad-example
Find the current in each resistor in the circuit shown:
![[CamScanner 09-01-2023 13.13_7.jpg]]
```ad-check
title: Solution
- Find $I_1$
	- $I_1 = \frac{\frac{1}{4}}{\frac{1}{4}+\frac{1}{6}+\frac{1}{10}}(8) = 3.87A$
- Find $I_2$
	- $I_2 = \frac{\frac{1}{6}}{\frac{1}{4}+\frac{1}{6}+\frac{1}{10}}(8) = 2.58A$
- Find $I_3$
	- $I_3 = \frac{\frac{1}{10}}{\frac{1}{4}+\frac{1}{6}+\frac{1}{10}}(8) = 1.55A$
- Check Answers
	- $I_s = I_1 + I_2 + I_3$
	- $(8) = (3.87) + (2.58) + (1.55)$
	- $8A = 8A$
```

```ad-warning
title: Short Circuit
color: 255, 255, 0
The current will always take the path of least resistance. A short circuit will bypass any resistances in parallel!
- They would have $0 A$ going through them
![[CamScanner 09-01-2023 13.13_8.jpg]]
```







