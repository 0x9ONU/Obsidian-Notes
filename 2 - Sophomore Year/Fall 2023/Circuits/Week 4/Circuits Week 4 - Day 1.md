Date: 11th September 2023
Date Modified: 11th September 2023
File Folder: Week 4
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Loop Analysis

```
# Loop Analysis 

```ad-note
- Also known as *mesh* analysis
- Relies on KVL
- Each term in a loop equation is a voltage term.
- Each loop must be assumed to be either clockwise OR counterclockwise for the whole circuit
```

## Loop Analysis Example

Find $I_o$ using loop analysis:

#comebacklater ex. 1


```ad-check
title: Solution
- Assign Loops
- Loop 1:
	- $-6 +4I_1+4(I_1-I_2) = 0$
	- $8I_1 - 4I_2 = 6$ - Equation 1
- Loop 2:
	- $4(I_2-I_1)+2I_2+2(I_2-I_3) = 0$
	- $-4I_1+8I_2-2I_3 = 0$ - Equation 2
	- 
- Loop 3:
	- $I_3 = 2$
- Create Matrix
	- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \end{bmatrix} = \begin{bmatrix} 8 & -4 & 0 \\ -4 & 8 & -2 \\ 0 & 0 & 1 \end{bmatrix}$^{-1} \begin{bmatrix} 6 \\ 0 \\ 2 \end{bmatrix}$
	- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \end{bmatrix} = \begin{bmatrix} 1.33 A \\ 1.167A \\ 2A \end{bmatrix}$
- $I_0$ = I_2 = 1.167 A$
```

```ad-important
If a current source is not shared by two or more loops, it will be 
```



