Date: 11th September 2023
Date Modified: 11th September 2023
File Folder: Week 4
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Even and Odd Signals
- Periodic Signal

```

# Even and Odd Signals

A signal is *even* when:
$$X[-n] = X[n]$$

```ad-example
#comebacklater ex. 1
#comebacklater ex. 2
#comebacklater ex. 3
```ad-check
Because $X[n] = X[-n]$ aka. the signal is the same after folding, the signal is even in all of these cases.
```

A signal is *odd* when:
$$X[n] = -X[-n]$$
$$-X[n] = X[-n]$$

```ad-example
#comebacklater ex. 4
```ad-check
title: Solution
Because X[n] = -X[n] aka. the signal is folded and is on the opposite side of the axis, the signal is odd in all of these cases.
```

## Exercise 1

Is the following signal even or odd?

#comebacklater ex. 5

**EVEN**

#comebacklater ex. 6 
**ODD**

## Composing Neither Even or Odd Functions

```ad-important
All signals can be decomposed into a sum of even and odd components
```

#comebacklater ex. 7

Neither even or odd, but it will be composed of odd and even functions

### Find Even Part of the Signal

```ad-note
title: Equation 1
$$X[n] = X_e[n] + X_o[n]$$ 
$$When$$
$$X[n] = X[-n] \space and \space X_o[n]=0 $$
```

$$ repalce \space n \space with -n$$
$$X[-n] = X_e[-n] + X_o[-n]$$
```ad-note
title: Equation 2
$$X[-n] = X_e[n] = X_o[n]$$
```

Add Equation 1 and Equation 2:

$$X[n] + X[-n] = X_e[n] + X_e[n] + Xo[n]-X_o[n]$$
$$X_e[n] = \frac{1}{2}(x[n]+x[-n])$$

### Find Odd Part of Signal

Subtract Equation 1 and Equation 2:

$$X[n] - X[-n] = X_e[n] - X_e[n] + X_o[n] + X_o[n]$$
$$X_o[n] = \frac{1}{2} (X[n] - X[-n])$$

```ad-note
The difference between the two equations for even and odd is the sign between $X[n]$ and $X[-n]$
```

### Example 

Find $X_e[n]$ and $X_o[n]$

#comebacklater ex. 8

```ad-check
title: Solution
- Find $X[-n]$
	- #comebacklater ex. 9
- Find even component:
	- $X_e[n] = \frac{1}{2}(X[n]+X[-n])$
	- $X_e[n] = \{ 1, 1, 1, 1, 1 \}$
	- #comebacklater ex. 10
- Find odd component:
	- $X_o[n] = \frac{1}{2}(X[n]-X[-n])$
	- $X_o[n] = \{ 1, 0.5, 0, -0.5, -1 \}$
	- #comebacklater ex. 11
```

# Periodic Signal

Signals that repeats itself based on the interval $N$

$$x[n] = X[n + N]$$

#comebacklater ex. 12

```ad-note
The $N$ will be set to the number of values it takes until the signal repeats from the origin
```

```ad-example
Find $X[3]$
```ad-check
title: Solution
$$X[3] = X[3+5]$$
$$-2 = X[8]$$
```

# Energy of a Signal

$$\epsilon_x = \sum_{n=n_1}^{N_2} |X[n]|^2 $$

```ad-example
$$X[n] = \{ 1, 2, 3, 4, 5 \}$$
$$= |1|^2 + |2|^2 + |3|^2 + |4|^2 + |5|^2
$$\epsilon_x = 55$$
```


# Power of a Signal

$$\frac{\epsilon_x}{N_2-N_1+1}$$
