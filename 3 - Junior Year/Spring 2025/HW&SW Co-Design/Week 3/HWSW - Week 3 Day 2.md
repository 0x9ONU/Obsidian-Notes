Date: 5th February 2025
Date Modified: 5th February 2025
File Folder: Week 3
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Different Types of Sampling Maximums

**Nyquist Theorem**: To get an accurate signal, the sampling frequency should be half of the sampling rate.

**Angular Frequency**: The process of selecting discrete points in time from a continuous signal, where the frequency of the signal is measured in terms of angular frequency. You are taking samples at specific points within a rotating wave cycle, rather than just at regular intervals in time.

![[HWSW - Week 3 Day 2 2025-02-05 11.10.55.excalidraw]]

## FIR Filters

*General Transfer Function*

$$H(z)=\frac{Y(z)}{X(z)} = \frac{1+z^{-1}}{2}=\frac{z+1}{2z}$$

![[HWSW - Week 3 Day 2 2025-02-05 11.06.47.excalidraw]]

$$Y(z) = \frac{1+z^{-1}}{2}X(z)$$
$$y(n)=\frac{x(n)+x(n-1)}{2}$$

## IIR Filter

*Transfer Function for pole at -0.9*

$$H(z) = k\frac{1+z^{-1}}{1-0.9z^{-1}}=\frac{z+1}{z-0.9}$$

![[HWSW - Week 3 Day 2 2025-02-05 11.13.28.excalidraw]]

$$y(n)=x(n)+y(n-1)+0.9y(n-1)$$

*Transfer Function for pole at 0.9*

$$H(z) = k\frac{1+z^{-1}}{1+0.9z^{-1}}=\frac{z+1}{z+0.9}$$

![[HWSW - Week 3 Day 2 2025-02-05 11.17.40.excalidraw]]

$$y(n)=x(n)+y(n-1)-0.9y(n-1)$$

```ad-warning
- Can quickly become unstable
- Have non-linear phase
```

### Example

```ad-question
Wire the pseudo code for the FIR filter tow rite a C program that can implement the following FIR fitler {1, 2, 5,2,1}
```

This is a guassian-shaped low pass filter

```ad-hint
- In C you cannot index with 0.  
- The output should be normalized by dividing by the sum of all coefficients.
```

# IIR Filter In-Depth

## Example - Direct Form II

![[Pasted image 20250205113757.png]]

## Pseudocode

$$y(n) = b_ox(n)+b_1\frac{x(n-1)}{x_{prev1}}+b_2\frac{x(n-2)}{x_{prev2}}+b_3\frac{x(n-3)}{x_{prev3}}-a_1\frac{y(n-1)}{y_{prev1}}-a_2\frac{y(n-2)}{y_{prev2}}- a_3\frac{y(n-3)}{y_{prev3}}$$

```c
// Define fitler coefficients (example for a 3rd-order filter)
a1, a2, a3 = filter_coefficients_for_denominator
b0, b1, b2, b3 = filter_coefficients_for_numerator

//Initialize delay elemetns (previous input and output values)
x_prev_1, x-prev_2, x_prev_3, y_prev_1, y_prev_2, y_prev_3 = 0

//Initialize input stream
input_stream = get_input_stream()
output stream = []

//Start processing the input stream

while there are more samples in input_stream {
	x_n = next(input_stream) // Get the next input sample

	//Calcualte the new output y[n]
	y_n = b0*x_n+b1*x_prev_1+b2*x_prev_2 + b3* x_prev_3 - a1* y_prev_1 - a2 * y_prev_2 - a3 * y_prev_3
	
	//Store or output the result
	output_stream.append(y_n)
	
	//Update previous values for the next iteration
	x_prev_3 = x_prev_2
	x_prev_2 = x_prev_1
	x_prev_1 = x_n
	
	y_prev_3 = y_prev_2
	y_prev_2 = y_prev_1
	y_prev_1 = y_n
}
```







