Date: 11th October 2023
Date Modified: 11th October 2023
File Folder: Week 8
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- RC Circuits

```

# RC Circuits

**First Order Circuit**:
- Response can be represented as a 1st-order differential equation

It takes 5 $\tau$ (5 time constants) for the circuits to reach 99% of the final value of the voltage or current.

```ad-summary
title: Definition: Time Constant

$$\tau = R_{Th}C$$
```ad-note
This is taken at the **opening of the capacitor**
```

## Transient vs. Steady-State

**Transient** happens before $5\tau$ and is where the voltage and current is actively changing
**Steady State** happens *after* $5\tau$ and is where the voltage and current gets close to equilibrium

Charging vs. Discharging
#comebacklater ex. 1

## Switches

Can either *short* or *open* a circuit over a time period

```ad-note
Will not be manual and will be controlled by diodes and transistors
```

#comebacklater ex. 2

```ad-summary
title: Definition
- The instant *before* the switch actuates is called $t = 0^-$
- The instant *after* the switch actuates is called $t = 0^+$
```ad-important
- The voltage of a capacitor is equal at $t = 0^-$ and $t = 0^+$
- The current of an inductor is equal at $t = 0^-$ and $t = 0^+$
```

### Examples

#comebacklater ex. 3

1. Moving form position A to position C
2. Moving from position B to position C

## Step-By-Step Approach

1. Assume a solution of the form:
 $$x(t) = x(\infty) + [x(0^+) -x(\infty)]e^{\frac{t}{\tau}}$$
2. Draw the circuit *before* switch action with $C$ as open circuit. Find $V_c(0^-)$ using **any method**
3. Draw the circuit *after* switch action with $C$ as a voltage source with a value equal to $V_c(0^-)$. Find $x(0^+)$ 
4. Draw the circuit in **step 3** where $C$ as an open circuit. Find $x(\infty)$
5. Find $R_{Th}$
6. Find $\tau = R_{Th}C$
7. Substitute all values into **step 1**

### Example

```ad-question
Find $v(t)$ for $t > 0$

#comebacklater ex. 4
```

1. Assume:
$$v(t) = v(\infty) + [v(0^+)-v(\infty)]e^{\frac{t}{\tau}}$$
2. Draw circuit before switch action and find $V_C(o^-)$

	#comebacklater ex. 5
	
	$V_c(0^-) = 12V$ because the whole circuit becomes open

3. Draw the circuit after sw action with C as a voltage source to find $x(0^+)$

	#comebacklater ex. 6
	
	$V(0^+) = 12V$ because it is the voltage across the capacitor

4. Draw the circuit after sw action with an open capacitor. Find $x(\infty)$

	#comebacklater ex. 7
	
	Use nodal analysis:
	- $v(\infty) = 2I_x$
	- $I_x = \frac{v(\infty)-12}{6}$
	
	Substitute:
	- $v(\infty) = 2\frac{(v(\infty)-12}{6}$
	- $v(\infty) = \frac{2v(\infty) -24}{6}$$
	- $v(\infty) = -6v$

1. Find $R_{Th}$ using $I_Sc$
	
	#comebacklater ex. 8
	
	In this case, $V_{Th} = V(\infty) = -6V$ as we are finding the votlage across the capaictor
	
	Use Loop Analysis:
	- Equation 1: $6I_2+ 2I_x=12$
	- Equation 2: $3I_2-2I_x=0$
	- Equation 3: $I_x = -I_1 -> I_1+I_x=0$
	- $I_sc = I_2 = -2A$
	
	Find $R_{Th}$
	- $R_{Th} = \frac{V_{Th}}{I_{Sc}}$
	- $=\frac{-6}{-2}$
	- $R_{Th} = 3 \Omega$

6. Find $\tau$

$$\tau = R_{Th}C = 0.15 s$$

7. Substitute

$$V(t) = (-6) + [12-(-6)]e^{\frac{-t}{0.15}}$$
$$V(t) = -6 + 18e^{-6.67t}$$

