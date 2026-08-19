Date: 18th October 2023
Date Modified: 18th October 2023
File Folder: Week 9
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Introduction to AC

```

# Alternating Current (AC)

A current waveform that alternates between two values with one being positive and the other being negative. This is over a set period of time such that direction of current periodically **reverses direction**.

```ad-summary
There are three common AC waveforms:
- Square wave
	- #comebacklater ex. 1
- Triangle Wave
	- #comebacklater ex. 2
- Sinusoid Wave
	- #comebacklater ex. 3
	- Most common
	- Generators generate this 
```

```ad-important
AC is necessary as DC **cannot** travel long distances without wasting due to heat
```

## Characteristics of the Sinusoid Wave

$$v(t) = A\sin(wt+\Theta) [V]$$

```ad-example
title: Values
- $A$ = Amplitude (Also known as $V_{max}$ or $I_{max}$)
- $w$ = Angular Frequency ($w = 2 \pi f \frac{rad}{s}$)
- $\Theta$ = Phase shift (in degrees)
- $t$ = Time (in seconds)
```

**When $\Theta = 0$

#comebacklater ex. 4

```ad-note
- The peak-to-peak value is the distance between the top and bottom peaks of the wave. Can be calcualted using $Peak = 2A$
- The duration of the cycle is denoted by the time period ($T$). Calcualted using $T = \frac{2\pi}{w}$
- The frequency is equal to the inverse of the time period. SO: $f = \frac{1}{T} [Hz]$
```

```ad-warning
The highest value of the IS NOT ALWAYS amplitude.
```

## Examples

### Example 1 - Simple Wave: 

```ad-question
Determine the amplitude, phase, angular frequency, period, and frequency (in $Hz$) of the sinsoid wave denoted by:
$$7\cos(100t-20\degree)$$
```

1. $A = 7$
2. $w = 100$
3. $\Theta = -20 \degree$
4. $T = \frac{2\pi}{w} = \frac{2\pi}{100} = 62.8 ms$
5. $f = \frac{1}{T} = \frac{1}{62.8} = 15.92 Hz$
6. $Peak = A = 7$
7. $Peak-to-Peak = 2A = 14$

### Example 2 - Upward Shifted Wave:

$$2 + 7 \cos(100t-20)$$
```ad-important
In an upward shift, the only thing that changes is the peak value. Such that
$$average \space value + amplitude = peak \space value$$
$$(2) + (7) = peak$$
$$peak = 9$$
```

### Example 3 - Delayed Wave Form

```ad-question
Determine:
1. Period
2. Frequency
3. Amplitude
4. Peak Value
5. Peak-To-Peak
```

#comebacklater ex. 5

1. $T = 25 - 5 =20 ms$
2. $f = \frac{1}{T} = \frac{1}{20ms} = 50Hz$
3. $A = 1 [A]$ (distance from the maximum to the average value)
4. $Peak = 1 [A]$ (there is no DC components so the peak is equal to the amplitude)
5. $Peak-to-Peak = 2A = 2 [A]$ 









