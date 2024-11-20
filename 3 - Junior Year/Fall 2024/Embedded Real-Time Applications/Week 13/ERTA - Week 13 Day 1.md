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

| 15-12           | 11-8                                             | 7                        | 6-5      | 4      | 3-2      | 1                                     | 0   |
| --------------- | ------------------------------------------------ | ------------------------ | -------- | ------ | -------- | ------------------------------------- | --- |
| SHT1x           | SHT0x                                            | MSC                      | Reserved | ON     | Reserved | ENC                                   | SC  |
| Sampling Length | Sampling Length (How  long the sensor works for) | Single Sample<br>OR Many |          | ON/OFF |          | ENABLE<br>(For selecting<br>settings) |     |

Control Register One (`ADC14->CTL1`)

| 31-28    | 27-24                                     | 22      | 21       | 20-16     |
| -------- | ----------------------------------------- | ------- | -------- | --------- |
| Reserved | CH3MAP-CH0MAP                             | BATtmap | Reserved | CStartAdr |
|          | Points to Memory Location of Sampled Data |         |          |           |

| 15-6     | 5-4                  | 3      | 2        | 1-0        |
| -------- | -------------------- | ------ | -------- | ---------- |
| Reserved | RES                  | DF     | REFBURST | PWRMD      |
|          | Resolution of Sample | Signal |          | Power Mode |

Interrupt Register Zero (`ADC14->IFGR0`)

| 31    | …   | 5    | 4    | 3    | 2    | 1    | 0    |
| ----- | --- | ---- | ---- | ---- | ---- | ---- | ---- |
| IFG31 | …   | IFG5 | IFG4 | IFG3 | IFG2 | IFG1 | IFG0 |

Mode Control (`ADC14->MCTL[n]`)

| 31-16    | 15     | 14   | 13  | 12        | 11-8                          |
| -------- | ------ | ---- | --- | --------- | ----------------------------- |
| Reserved | WINCTH | WINC | DIF | Reserrved | VRSEL                         |
|          |        |      |     |           | Max Volt Reference (3.3 or 5) |
#comebacklater 

### ADCs on the MSP432 Software Conversion

**Steps**:
1. Wait for BUSY to be zero
2. Start conversion
3. Wait for completion
4. Read result

```c++
uint31_t ADC_IN6(void) {
	while(ADC14->CTRL0&0x00010000) {}; //Wait for Busy to be Zero
	ADC14->CTRL0 |= 0x00000001;        //Start Conversion
	while((ADC->IFGR0&0x01) == 0) {};  // Waiting for Completion
	return ADC14->MEM[0];              // Pulling the actual data out 
}
```

### Periodic Interrupt Mailbox

**Steps**:
1. Sample ADC
2. Run Digital Filter
3. Save in Global
4. Set Semaphore

```c++
void SysTick_Handler(void) {
	uint32_t RawADC;
	P1OUT ^= 0x01;   //Profiling Code
	P1OUT ^= 0x01;
	RawADC = ADC_In6(); // Function from Last Slide
	ADCvalue = LPF_Calc(RawADC); //Low-Pass Filter
	ADCflag = 1;     // Semaphore (Global Flag)
	P1OUT ^= 0x01;
}
```

```ad-note
**Semaphore**: Flag for coordinating!
```

## Processing Sensor Data

```ad-question

How do we clean up sensor data?

```

Ideal input/output response curve:
- *Monotonic*: If the analog input increases, the digital output always increases (or vise-versa)
- *Linear*

![[DI213Fig01.gif]]

**However**, actual IR sensor readings do not follow these rules:

![[GP2Y0A710K0F-Output-Characteristics-e1561051332554.png]]

```ad-example
When the sensor reads in 3 volts, the distance can be either 40 or 80 cm without any processing!
```

The first step is to remove the left-hand part of the graph to remove the inaccuracies and set anything lower to 100.

![[ERTA - Week 13 Day 1 2024-11-20 13.27.50.excalidraw]]

![[linearizing-sharp-ranger_01.jpg]]

$$\mbox{Distance} = \frac{1195172}{n-1058}\Rightarrow \mbox{Linear-Like Signal}$$

### Signals & Noise

Typically, a signal will have noise depending on where it is. We want to *remove* it.

![[1_DRzYXwbhALcHedBCgqxTrQ.png]]

![[FrequencyAnalysisExample_07.png]]
#### Low Pass Filter

![[6.webp]]

$$|\frac{V_{out}}{V_{in}}|= \sqrt{\frac{1}{1+(f/f_{c})^4}}$$

#### Digital Filtering

```ad-summary
Take a rolling average of all the inputs we are getting to smooth it out and improve the SNR of the signal.
```

$$y(n)=(x(n)+x(n-1)+x(n-2)+x(n-3))/4$$

```c++
x[3] = x[2];
x[2] = x[1];
x[1] = x[0];
x[0] = ADC_In6();

y = (x[0]+x[1]+x[2]+x[3])/4
```



