Date: 13th September 2023
Date Modified: 13th September 2023
File Folder: Week 4
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Loop Analysis with Super Meshes

```

```ad-note
title: Homework
- [ ] 7.4, 7.10, 7.17
```

# Loop Analysis Example 2 - NEW CASE

Find $V_a$ using loop analysis:

![[CamScanner 09-20-2023 19.32_1.jpg]]

```ad-check
title: Solution
- Assign Loops
- Loop 1:
	- $6(I_1) + 6(I_1-I_2)-6=0$
	- $12I_1 + 6I_2 = 6$ **Equation 1**
- Loop 2 + 3 NEW CASE **SUPER MESH**:
	- $I_2 - I_3 = 1$ **Equation 2**
	- $6(I_2-I_1) + 3I_2 + I_3 + 2I_x=0$
	- $-6I_1 + 9I_2+I_3+2I_x = 0$ **Equation 3**
- **Equation 4**
	- $I_x = I_1-I_2$
	- $I_1-I_2-I_x = 0$
- Use Matrix
	- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \\ I_x \end{bmatrix} = \begin{bmatrix} 12 & -6 & -0 & 0 \\ 0 & 1 & -1 & 1 \\ -6 & 9 & 1 & 2 \\ 1 & -1 & 0 & -1 \end{bmatrix}^{-1} \begin{bmatrix} 0 \\ 1 \\ 0 \\ 0 \end{bmatrix}$
	- $\begin{bmatrix} I_1 \\ I_2 \\ I_3 \\ I_x \end{bmatrix} = \begin{bmatrix} 0.75A \\ 0.5A \\ -0.5A \\ 0.25A \end{bmatrix}$
- Find $V_A$
	- $V = IR$
	- $V_A = (I_2)(3)$
	- $V_A = (0.5)(3)$
	- $V_A = 1.5v$
```


```ad-important
title: Super Mesh
Happens when there is a current source between two loops
- Create two equations where:
- Equation one relates the loops in terms of the current ($I_a - I_b = I$)
- Equation two that combines the rest fo the loops' components aroudn the larger loop it creates
```ad-note
If there are any resistors on the branch with the current source, ignore it
```

# Loop Analysis Example 3

Find $I_0$

![[CamScanner 09-20-2023 19.32_2.jpg]]
```ad-check
- Assign Loops
- Loop 1:
	- $I_1 = 15$ (current source at edge of curcuit)
- Loop 2:
	- $I_2 = -48 + 2I_2 + 3I_0 + 22(I_2-I_1) + 12I_2 + 25$
```

