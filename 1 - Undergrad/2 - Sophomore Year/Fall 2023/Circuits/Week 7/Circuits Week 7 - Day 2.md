Date: 6th October 2023
Date Modified: 6th October 2023
File Folder: Week 7
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Inductors

```

# Inductors

```ad-summary
title: Definition
A device that has an ability to store energy in its *magnetic* field. It is usually a coil of wire.
- Measured in Henry ($H$)
```

**Inductance**: The ratio of the **voltage** across the inductor to the **current change rate** with respect to time.

## Inductor Voltage-Current Relationship

The voltage across an inductor is:

$$v = L\frac{di}{dt}$$
```ad-note
$$L = \space inductance$$
```

$$i = \frac{1}{L} \int_{t_0}^t v(t)dt + i(t_0)$$
```ad-summary
title: Note
$i(t_0)$ is the initial condition
```

```ad-warning
- For DC, the inductor acts as a **short circuit**
- Current in an inductor can't change **instantaneously**
	- It takes time to change from one value to another
```

### Energy

$$ W = \frac{1}{2} L i^2$$

## Example

```ad-question
Find the voltage waveform across a $3 mH$ inductor given the current waveform:
#comebacklater ex. 1
```

$$v=L \frac{di}{dt}$$

$$i = \begin{bmatrix} 0.6t & 0< t< 10 \\ 6 & 10 < t < 20 \\ -0.6t+18 & 20 < t < 40 \\ 0.6t - 30 & 40 < t < 50 \end{bmatrix}$$

$$v = 3mH \begin{bmatrix} 0.6 & 0< t< 10 \\ 0 & 10 < t < 20 \\ -0.6 & 20 < t < 40 \\ 0.6& 40 < t < 50 \end{bmatrix}$$

#comebacklater ex. 2

## Inductor Connections

```ad-important
EXACTLY the same as resistors
```

### Series Connection

#comebacklater ex. 3

$$L_{eq} = L_1 + L_2 + L_3$$
### Parallel Connection

#comebacklater ex. 4

$$\frac{1}{L_{eq}} = \frac{1}{L_1} + \frac{1}{L_2} + \frac{1}{L_3}$$

```ad-note
For two inductors in parallel:
$$L_{eq} = \frac{L_1L_2}{L_1+L_2}$$ 
```




