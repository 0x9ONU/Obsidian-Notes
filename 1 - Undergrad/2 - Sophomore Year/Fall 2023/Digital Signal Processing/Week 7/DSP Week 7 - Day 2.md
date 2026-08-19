Date: 4th October 2023
Date Modified: 4th October 2023
File Folder: Week 7
#DSP

```ad-abstract
title: Today's Topics
collapse: open

- Linear Time Invariant Systems (LTI)

```

# Linear and Time Invariant Systems
Systems that are both linear and time invariant
- This means the systems can have either additivity *AND/OR* scale

```ad-note
Real worl systems are often modeled as LTI since
1. Often a good approximation
2. Analysis is very easy
```

#comebacklater ex. 1

Will return the same signal minus delays ***or*** scaling

#comebacklater ex. 2 notes

Which can be represented by:

$$a_0 (\delta[n]) + a_1(\delta[n-1]) + a_2 (\delta[n-2]) + ...$$

```ad-important
### $$x[n] \sum_{k=n_1}^{n^2} x[k] \space \space \space \delta[n-k]$$
```

## Example -  Linear Combination of Delayed Unit Sample Sequence

```ad-question
Turn the signal into a Linear combination fo delayed unit sample sqeunce
$$x_1[n] = \{ 2, -4_0, 1, -2 \}$$
```


$$x[n] \sum_{k=n_1}^{n^2} x[k] \space \space \space \delta[n-k]$$
$$x[n] = \sum_{k=-1}^{2} x[n] \space \space \space \delta[n-k]$$

$$x[n] = x[-1] \delta[n-(-1)] + x[0] \delta[n-0] + x[1] \delta[n-1] + x[2] \delta[n-2]$$

```ad-check
title: Solution
$$x[n] = 2\delta[n+1] - 4\delta[n] + \delta[n-1] - 2 \delta[n-2]$$
#comebacklater ex. 3 notebook
```

## Time Invariance and Convolution Sum

Given a known response to some input, the response to a linear combination of time shifted versions of $x[n]$ is just the same time linear combinaiton of time shifted versions of $y[n]$

```ad-important
Additionall, LTI systems are uniquely characterized by impusle reponses, denoted by $h[n]$, which means taht $y[n] = h[n]$ is true when the input is $x[n] = \delta[n]$
```

Thus, the output of any LTI system should be:

$$y[n] = \sum_{k=-\infty}^{\infty} x[n] \space \space h[n-k] \space OR \space y[n] = x[n] ** h[n]$$
### Example

```ad-question
Determine the response of the system to the input signal given the impulse response:
$$h[n] = \{ 1, 2_0, -1 \}$$
$$x[n] = \{ 4_0, 1, 2, 5 \}$$
```

## Convolution Array Method

```ad-warning
Works on only between two FINITE sequences
```

| h / x | 4   | 1   | 2   | 5   |
| ----- | --- | --- | --- | --- |
| 1     | 4   | 1   | 2   | 5   |
| 2     | 8   | 2   | 4   | 10  |
| -1    | -4  | -1  | -2  | -5    |

Given the table:

#comebacklater ex. 4

$$x[n] = \{ 4, 9_0, 0, 8, 8, -5 \}$$

