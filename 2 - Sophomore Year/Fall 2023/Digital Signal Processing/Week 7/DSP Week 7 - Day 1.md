Date: 2nd October 2023
Date Modified: 2nd October 2023
File Folder: Week 7
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Linear vs. Non-linear Systems

```

# Linear vs. Non-Linear

A linear system needs to satisfies the **superposition** principle:
- The response of the system to a weighted sum of signals is equal to the corresponding weighted sum of the responses (outputs) of the system to each of the individual input system

$$\tau [a_1x_1[n] + a_2x_2[n]] = a_1\tau x_1[n] + a_2 \tau x_2[n]$$
#comebacklater ex. 1

```ad-important
If both of these systems are equal, then $\tau$ is **linear**
```

```ad-important
To meet linearality, a system **must** folow the rules of Scalars and Additivity
```

## Property of Scaling

When setting $a_2 = 0$

$$\tau[a_1x_1[n]] = a_1\tau x_1[n] = a_1 y_1[n]$$

#comebacklater ex. 2

```ad-note
title: Scalar System
$$\tau [a_1x_1[n]] = a y_1[n]$$
```

## Property of Additivity

When setting $a_1=a_2=1$

$$\tau [x_1[n] +x_2[n]] = \tau x_1[n] + \tau x_2[n] = y_1[n] + y_2[n]$$

#comebacklater ex. 3

## Generalization of Linear Systems

$$x[n] = \sum_{k=1}^{M-1} a_k \space x_k[n] \to^{\tau} = y[n] \sum_{k=1}^{M-1} a_k \space y_k[n]$$
$$ y_k[n] = \tau [x_l[n]], k= \{ 1, 2, ..., m-1 \}$$


## Example

Find if the following systems are linear systems:

1. $$y[n] = nx[n]$$
```ad-check
title: Solution
- Plug in numbers to equation
	- $\tau [ a_1 x_2[n] + a_2 x_2 [n]] = a_1 \tau x_1[n] + a_2 \tau x_2[n]$
- Replace $\tau$ with system where $\tau = n$
	- $n [ a_1 x_2[n] + a_2 x_2 [n]] = a_1 nx_1[n] + a_2 nx_2[n]$
- Distribute
	- $na_1x_2[n]+na_2x_2[n] =  a_1 nx_1[n] + a_2 nx_2[n]$
- They are the same so they are **linear**
```


2. $$y[n] = x[n^2]$$
```ad-check
title: Solution
- Plug in numbers to equation
	- $\tau [ a_1 x_2[n] + a_2 x_2 [n]] = a_1 \tau x_1[n] + a_2 \tau x_2[n]$
- Replace $\tau$ with system where $\tau = 1$ and $n = n^2$
	- $ a_1 x_2[n^2] + a_2 x_2 [n^2] = a_1 x_1[n^2] + a_2 x_2[n^2]$
- They are the same so they are **linear**
```

3. $$y[n] = x^2[n]$$
```ad-check
title: Solution
- Get formula
	- $\tau [ a_1 x_2[n] + a_2 x_2 [n]] = a_1 \tau x_1[n] + a_2 \tau x_2[n]$
- Replace $\tau$ with system where $system^2$
	- $[ a_1 x_2[n] + a_2 x_2 [n]]^2 = a_1 (x_1[n])^2 + a_2 (x_2[n])^2$
- Expand the square using FOIL
	- $a_1^2 x_1^2[n] = 2a_1s_2x_1^2[n]x_2^2[n] a^2_2x_2^2[n] \ne  a_1 (x_1[n])^2 + a_2 (x_2[n])^2$
- They are ***NOT*** equal, so non-linear
```

4. $$y[n] = Ax[n] + B$$
#comebacklater ex. 4

# Conclusion

A system is linear or non-linear in the following cases where $k, A, B,$ are constants:

## Time Scaling

$$x[kn] => \space linear$$

## Coefficient

$$ Ax[n] => \space linear$$
## Added/Subtracted Terms

$$ x[n] \pm B => \space non-linear$$

## Exp, Power, Roots, etc.

**Non-Linear**

## Odd-Even Component

$$y[n] = oddx[n] \space OR \space evenx[n] => \space linear$$


