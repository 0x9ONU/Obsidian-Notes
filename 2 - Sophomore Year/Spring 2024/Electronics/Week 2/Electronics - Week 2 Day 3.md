Date: 5th February 2024
Date Modified: 5th February 2024
File Folder: Week 2
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Amplifier

```

# Amplifiers

**Signal Amplification**: A fundamental signal processing function, that is employed in almost every electronic system.
- Transducers provide weak signals in $\micro v$ or $mv$ range. Reliable processing requires larger magnitude

**Gain** - The ratio of the output signal to the input signal.

```ad-important
An emplifier is **linear**. The gain of the ampliifier must be the same independent of the amplitude of the input signal and the frequency of the input signal.
$$V_o(t) = AV_i (t)$$
- $v_i$ is the input signal
- $v_o$ is the output signal
- $A$ is the amplifier gain
```

![[Electronics - Week 2 Day 3 2024-02-05 16.57.23.excalidraw]]

```ad-note
The amplifer has inputs which may be voltage or current and produces an output as shown. One of the two input and output terminals is often ground, which can be omitted. When omitted, the amplifer acts on a isngle input and produces a single terminal output.
```

## Voltage Gain
![[PXL_20240205_220722231.jpg]]

A **voltage amplifier** amplifies voltage signals where:
- $V_I$ is the input voltage signal
- $V_o$ is the output voltage signal 
- $A$ is the voltage gain

$$v_o(t) = A_v V_I(t)$$
$$A_v = \frac{V_o}{V_I}$$

## Current Gain and Power Gain

**Current amplifiers** amplifies current signals.
- $i_I$ is the input current signal
- $i_o$ is the output current signal

$$A_i = \frac{i_o}{i_I}$$

**Power amplifier** amplifies power:
$$A_p = \frac{P_o}{P_i} = \frac{v_o i_o}{v_I i_I}$$
$$A_p = A_v A_i$$

## Expressing Gain in Decibels

- **Voltage**: $20\log{|A_v|}$
- **Current**: $20\log{|A_i|}$
- **Power**: $10 \log{A_p}$
# Amplifier Power Supplies
When amplifiers provide voltage, current, and power gain, the added power comes from the DC power supplies which are connected to the amplifier.

![[PXL_20240205_221839284.jpg]]

**DC power delivered to the amplifier:**

$$P_{dc} = V_{cc}I_{cc}+V_{ee}I_{ee}$$

**Power balance:**
- $P_I$ is the source signal
- $P_L$ is the power delivered to the load.
$$P_{dc} + P_I = P_L + P_{dissipated}$$

**Power Efficiency**

$$\mu = \frac{P_L}{P_{dc}} * 100\%$$

## Amplifier Saturation:

DC power supplies ($V_{cc}$ and $V_{ee}$) that provide power to the amplifier need to provide gain, but also need to place limits on the max and min voltage that the amplifiers can produce at its output.
- It is constrained by some upper limit $L_+$ and lower limit $L_-$ such that:

$$L_- < v_o < L_+$$
$$\frac{L_-}{A_v} < v_i < \frac{L_+}{A_v}$$
```ad-warning
If these limits are not folowed, as going outside of them will break the linear relationship of the amplifier
```

# Example

```ad-question
Consider an amplifier operation from $\pm 10 V$ power supplies. It is fed with a sinusoidal votlage having $1V$ peak and delivers a sinusoidal votlage output of $9v$ peak to a $1k \Omega$ load. The amplifier draws a current of $9.5 mA$ from each of its two power supplies. the input current of the amplifier is found to be sinusoidal with $0.1 mA$ peak. Find:
1. The voltage gain
2. The current gain
3. The power gain
4. the power drawn from the dc supplies
5. The power drawn dissipated in the amplifier
6. The amplifier efficiency.
```

**Voltage Gain**

$$A_v = \frac{V_o}{V_I} = \frac{9}{1} = 9$$
**Current gain**

$$A_i = \frac{I_o}{I_i} = \frac{9.0mA}{0.1mA} = 90$$

**Power Gain**

$$A_p = A_v * A_i = 810$$

**Power Drawn from DC Supplies**


$$P_{dc} = V_{cc}I_{cc} + V_{ee}I_{ee} = 190mW$$

**Power dissipated**:

$$P_I = v_i * i_i = 0.1 mW$$
$$P_L = 9mA * 9V = 81mW$$

$$P_{dc} + P_I = P_L +P_D$$
$$(0.19) +(0.0001) = (0.081) + P_D$$
$$P_D = 109 mW$$

**Power Efficiency**

$$\mu = \frac{P_L}{P_{dc}} * 100$$
$$\mu = 42.6\%$$
