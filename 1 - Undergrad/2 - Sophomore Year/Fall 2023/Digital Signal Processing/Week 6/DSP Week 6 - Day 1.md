Date: 25th September 2023
Date Modified: 25th September 2023
File Folder: Week 6
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Discrete Time Signals
- Signal Classification

```

# Discrete Time Systems

An operation or a set of operations performed on the input signals $x[n]$ to produce the output signal $y[n]$
- For now, this is a black box that turns an input into an output

#comebacklater ex. 1

```ad-note
$\tau$ denotes the transformation operator of the processing performed by the system
```

```ad-example
Determine the response of the following system to the input signal
$$x[n] = \begin{matrix} |n|, -3 \le n \le 3 \\ 0, otherwise \end{matrix}$$ 
```ad-check
title: Solution
$$x[n] = \{ ...,0, 3, 2, 1, 0_{\_}, 1, 2, 3, 0, ... \}$$
```

## Types of Basic Systems

### Identity System

$$y[n] = x[n]$$

### Unit Delay System

Delays the input by one sample

$$y[n] = x[n-1]$$
$$y[n] = \{ ..., -, 3, 2, 1_{\_}, 0, 1, 2, 3, 0, ... \}$$

### Unit Advanced System

Advances the input by one ample

$$y[n] = x[n+1]$$
$$x(0) = x(1)$$
$$y[n] = \{ ..., 0, 3, 2, 1, 0, 1_{\_}, 2, 3, 0 \}$$

### Moving Average Filter

The output of the system at anytime is the mean value of the present, the immediate past and the immediate future sample.
- Mean to smooth the signal and reduce noise

$$y[n] = \frac{1}{3} [x(n+1) + x(n) + x(n-1)]$$

```ad-example
$$y[0] = \frac{1}{3}[1 + 0 + 1]$$
$$y[0] = \frac{2}{3}$$
- Combute for every value of $n$
$$y[n] = \{ ..., 0, 1, \frac{5}{3}, 2, 1, \frac{2}{3}, 1, 2, \frac{5}{3}, 1, 0, ... \}$$
```


### Median Filter

The output of the system is the **median** value of the present, the immediate past and the immediate future sample.
- Used in image processing techniques

$$y[n] = median(x[n+1], x[n], x[n-1])$$

```ad-example
$$y[0] = median(0, 1, 1)$$
$$y[0] = 1$$
- Compute for every value of $n$
$$y[n] = \{ ...,0, 2, 2, 1, 1_{\_}, 1, 2, 2, 0, ... \}$$
```

### Accumulator

Computes the running sum of all the input values up to **present time**

$$y[n] = \sum_{k= -\infty}^n x(k) = x(n) + x(n-1) + x(n-2)+...$$

```ad-example
Find $y(0) = \sum_{k= -\infty}^n x(k)$
```ad-check
title: Solution
$$y(0) = 0 + 1 + 2 + 3_{\_}$$
$$y(0) = 6$$
$$y[n] = \{ ..., 0, 3, 5, 6, 6, 7, 9, 7, 9, 12, 0, ... \}$$
```

## Block Diagram of Discrete Time Systems

### Adder

#comebacklater ex. 2

### Multiplier

#comebacklater ex. 3

### Constant Multiplier

#comebacklater ex. 4

### Unit Delay Element 

#comebacklater  ex. 5

### A Unit Advance Element

#comebacklater ex. 6

### Example

Draw the block diagram of the following system:

$$y[n] = \frac{1}{2}x[n] + \frac{1}{2}x[n-1]$$

```ad-check
title: Solution
#comebacklater ex. 7
```

# System Classifications

## Introduction

A discrete time system is an entity that process one or more discrete-time input sequence(s) to produce a discrete-time ouptut sequence. 

```ad-important
Systems can be calssified in several different ways. Tey can be linear or nonlinear, they can be time-invariant or time varing, they can be stable or unstable, they can be causal or non-casual.
```
## Various Types

#comebacklater ex. 8

### Present Input

$$y[n] = x[n]$$
$$y[1] = x[1]$$

### Past Input

$$y[n] = x[n-1]$$
$$y[0] = x[-1]$$

### Future Input

$$y[n] = x[n+1]$$
$$y[0] = x[1]$$

## Classifications

### Causality

```ad-summary
If $y[n_0]$ at some time $n_0$ **does not depend** on future inputs $x[n], n>n_o$
```

```ad-example
Test if $y[n] = x[n] + x[n-1]$ is a causal funciton or not
```ad-check
title: Solution

$$n = 0 => y[0] = x[0] + x[-1] \space -> \space casual$$
$$ n = 1 => y[1] = x[1] + x[0] \space -> \space casual$$
```


#### More Examples

A particular system is described by $I/0$ relationship. Determine if it is causal or non causal.

##### Example 1: $$y[n] = x[n] + x[n+1]$$
```ad-check
title: Solution
$$ n = 0 => y[0] = x[0] + x[1] \space -> \space non-casual$$
So the rest of the system is non causal
```

##### Example 2: $$y[n] = x[-n]$$
```ad-check
title: Solution
$$n = 0 => y[0] = x[-(0)] \space -> \space casual$$
$$n = 1 => y[1] = x[-1] \space -> \space casual$$
$$n = -1 => y[-1] = x[1] \space -> \space casual$$
One value of it is non-casual, so the rest of the funciton is non-casaul
```ad-warning
ALWAYS check 0, a positive number, and a negative number *at least*
```


##### Example 3: $$y[n] = \sum_{k=-\infty}^n x[-k]$$
```ad-check
title: Solution
$$y[n] = ..., x[-n]$$
$$y[0] = ... x[0]$$
$$y[1] = .... x[-1]$$
$$y[-1] = ....x[1]$$
Non-Causal
```




