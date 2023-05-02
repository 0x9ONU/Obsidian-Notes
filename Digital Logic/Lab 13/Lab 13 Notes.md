Date: 2nd May 2023
Date Modified: 2nd May 2023
File Folder: Lab 13
#DigitalLogic

```ad-abstract
title: Today's Topics
collapse: open

- Lecture 29
- Lab 13

```

# Lecture 29 - Signed Serial Multiplier

## Review: Signed Array Multipler

```ad-summary
- Utilizes the generation of partial products for each bit by ANDing them together
- NOTE: Because it is signed, the first PP needs to be extended by 2 bits and the rest has to be extended by 1.
- Then, on the final partial product, if the multiplier is negative, then the two's complement is taken instead.
- Then, the sums are added one at a time:
	- The LSB is sent out and the sums are added with the next set of PP.
```


```ad-warning
It is **very expensive**:
- It requires a ton of ripple carray adders, AND gates, and inverters
- Consumes a lot of power, BUT is *fast*
```

## Concept: Signed Serial Multiplier

Utilizes multiple flip-flops that allows for much cheaper hardware

```ad-important
- Uses only one ripple carry adder
- Will not have partial products
```

```ad-note
title: Needed hardware
- Two n-bit shift registers
	- Will accumulate 
```

### Defintions:

**Throughtput**: How much time should I wait before being able to *change the input* (in clks)
**Latency**: How much time should I wait *between* providing the input and getting the output (in clks)

### Inputs to the Controller

```ad-note
color: 255, 255, 0
This example is ran for:
- **Multiplicand**: 0100
- **Multiplier**: 1101
```

#### Steps
1. The start signal needs to get started
2. Load the accumulator with 0s for $A$ and the multipler for $B$
3. The controller will go to a state that will check the LSB of $B$ (aka $B_0$)
	1. If the LSB is 1, it is called $M$
	2. If the LSB is 0, it is called $M'$
4. Add Shift or normal shift based on the value of $M$
	1. **Add Shift** for $M$: 
		1. Add the two values of $A$ and the *Multiplicand* together then **shift** it to $A_2 - B_3$
		2. The MSB of the *Multiplicand* become $A_3$
		3. Then $B$ is shifted to $B_2-B_0$ and the original $B_0$ is discarded
	2. **Shift** for $M'$
		1. All the values of $A$ and $B$ are shifted
		2. $A_3$ ***KEEPS ITS PREVIOUS VALUE***
5. Repeat Step 3-4 until the final bit of the multiplier
6. Based on the sign of the mutliplier:
	1. If the LSB of $B$ is 1, $Cm$ happens
		1. Two's Complement the Multiplicand and add it to the contents $A$ to it
		2. The MSB of the *multiplicand* INVERTED becomes $A_3$ 
	2. If the sign of the LSB of $B$ is 0, $Cm$ does not happen
		1. Repeat step 3-4
7. Take the values of $A_3 - B_0$ as the output
	1. **note**: Sign extensions exist so $11110100$ would become $10100$
| Inputs to the controller | Outputs for the controller | $A_3$ | $A_2$ | $A_1$ | $A_0$ | $B_3$ | $B_2$ | $B_1$ | $B_0$ |
| ------------------------ | -------------------------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| $st$                     | $Load$                     | 0     | 0     | 0     | 0     | 1     | 1     | 0     | 1     |
| $M$                      | $Adsh$                     | 0     | 0     | 1     | 0     | 0     | 1     | 1     | 0     |
| $M'$                     | $sh$                       | 0     | 0     | 0     | 1     | 0     | 0     | 1     | 1     |
| $M$                      | $Adsh$                     | 0     | 0     | 1     | 0     | 1     | 0     | 0     | 1     |
| $M$                      | $Cm$ $Adsh$                | 1     | 1     | 1     | 1     | 0     | 1     | 0     | 0     |
| -                        | $done$                     | 1     | 1     | 1     | 1     | 0     | 1     | 0     | 0      |

```ad-important
title: Boolean Logic
- $C_i = Cm*M'd'_i + Cm'Md_i$
- $A_{3}^{t+1} = Load'(Sh_{3}^{t})
```

#comebacklater 

### State Machine using Mealy

![[Drawing 2023-05-02 12.48.11.excalidraw]]

### State Machine using Moore

GET PHOTO FROM BOARD
#comebacklater 

```ad-warning
This mutliplier works for all cases **except** when the multiplier is negative and the multiplicand is 0.
- It fails when $A_3$ is inverted in the last step of the problem
- Can be fixed by taking the extra sign as magnitude OR understanding that values below -240 are out of the range.
```

![[PXL_20230502_170640364~2.jpg]]