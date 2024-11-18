Date: 18th November 2024
Date Modified: 18th November 2024
File Folder: Week 13
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Data Acquistion Systems Day 2

## ADC vs. DAC

**DAC**:
- Digital to ANalog
- Signal Generation

**ADC**:
- Analog to Digital
- Measurements

### MSP 432 ADC14

Has 14-bit resolution. Much better than before

$$D_{out} = \lfloor16,383 \frac{V_{in}}{3.3}\rfloor$$

```ad-question
What would be $D_{out}$ for a 1 volt input?
```

$$D_{out}= \lfloor 16,383 \frac{(1)}{3.3} \rfloor$$
$$D_{out}= \lfloor4964.545 \rfloor$$
$$\boxed{D_{out} = 4964}$$
## Sampling: Conversion from Analog to Digital

```ad-summary
title: Definition
**Sampling Rate**: How many samples should we make to reconstruct a signal accurately
```

*Nyquist Theorem*: Twice the target maximum frequency must be sampled to get the signal back later

```ad-example
Human hearing ranges from $$31Hz \rightarrow 19kHz$$
```

So, we need to sample roughly $19 \times 2 = 38kHz$ to capture human audio. Therefore, CDs sample at $44 kHz$ 

```ad-warning
**Aliasing:** Whent he digital signal appears to have a different frequency than the original analog signal
```

### Why Do We Always NOT Choose the Max $f_s$?

There is a trade off between:
- Sampling rate
- Power consumption
- Processor TIme

For low powered systems, we are often *limited* by power consumption

## Analog-To-Digital Conversion on the MSP432 (ADC14)

Control Register Zero (`ADC14->CTRL0`)

| 31-30                                | 29-27    | 26       | 25   | 24-22                               | 21-19      | 18-17 | 16                                     |
| ------------------------------------ | -------- | -------- | ---- | ----------------------------------- | ---------- | ----- | -------------------------------------- |
| PDIV                                 | SHSx     | SHP      | ISSh | DIVx                                | SSELx      | CONSx | BUSY                                   |
| Coarse Clock Divider<br>1, 4, 32, 64 | S&H Mode | S&H Mode |      | Fine Clock Divider<br>(1, 2, $2^3$) | CLK Source |       | Protects<br>module<br>while<br>reading |
|                                      |          |          |      |                                     |            |       |                                        |

| 15-12           | 11-8            | 7                        | 6-5      | 4      | 3-2      | 1                                     | 0   |
| --------------- | --------------- | ------------------------ | -------- | ------ | -------- | ------------------------------------- | --- |
| SHT1x           | SHT0x           | MSC                      | Reserved | ON     | Reserved | ENC                                   | SC  |
| Sampling Length | Sampling Length | Single Sample<br>OR Many |          | ON/OFF |          | ENABLE<br>(For selecting<br>settings) |     |
