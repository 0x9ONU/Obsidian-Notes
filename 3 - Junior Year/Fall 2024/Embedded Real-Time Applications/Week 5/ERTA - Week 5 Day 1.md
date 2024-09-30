Date: 23rd September 2024
Date Modified: 23rd September 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Timers

```

# Timers Concepts

## Objectives

- Fundamentals of SysTick Timer
- Measure elapsed time
	- Precision
	- Range
	- Resolution
- Software Delay

```ad-note
title: remember
Interrupts are mechanism by which other modlules may interrupt the normal sequencing of the processor, which can mess with the timing on a MCU.
```

## Timer Fundamentals

SysTick is a simple counter on *all* Cortex-M that we can use to **create** time **delays** and generate **periodic interrupts**.

Use of SysTick = your system will easily port to other Cortex-M microcontrollers.

24-bit down counter decrements at bus clock frequency
- Switch a 48 MHz bus clock, decrements every *20.83 ns*

The counter, known as VAL, goes form $n \rightarrow 0$
- $n, n-1, n-2, n-3, 2, 1, 0, n, n-1…$

$$\mbox{VAL} = (\mbox{VAL}-1) \mod{(n+1)}$$

## How Counting Occurs

![[ERTA - Week 5 Day 1 2024-09-23 13.32.12.excalidraw]]

## Relevant Counting Registers

### SysTick_CTRL

![[Pasted image 20240923133530.png]]

| Register     | Role                                              |
| ------------ | ------------------------------------------------- |
| ENABLE       | Turns SysTick on (1) or off (0)                   |
| Clock source | What core clock will be used (1 for system clock) |
| INTEN        | Turns interrupts on (1) or off (0)                |
| COUNTFLAG    | Goes to 1 when VAL goes to 0                      |

### SysTick_LOAD

![[Pasted image 20240923133547.png]]

| Register | Role                                       |
| -------- | ------------------------------------------ |
| Reload   | What is the VAL reset to when we hit zero? |

### SysTick_VAL

![[Pasted image 20240923133617.png]]

| Register | Role            |
| -------- | --------------- |
| CURRENT  | The Current VAL |

## Initializing SysTick Timer

1. Clear **ENABLE** bit in SysTick_CTRL to turn off SysTick during initialization.
2. Specify the 24-bit **LOAD** value in `SysTick_LOAD` register
3. Clear the counter via `SysTick_VAL` (write any value to it)
4. Set `SysTick_CTRL` values as follows:
	- `CLK_SRC` = 1 (bus clock is the only option)
	- `INTEN` = 0 for *no* interrupts
	- `ENABLE` = 1 to enable the counter

![[Systick-timer-configuration-and-control-register-TM4C123.webp]]

### IN Assembly

```arm-asm
SysTick_Init
; disable SysTick during setup
	LDR R1, =SysTick_CTRL
	MOV R0, #0                ; Clear ENABLE bit
	STR R0, [R1]
; set reload to maximum relaod value
	LDR R1, =SysTick_LOAD
	LDR R0, = 0x00FFFFFF;     ; Specify RELOAD
	STR R0, [R1]
; writing any value to CURRENT clears it
	LDR R1, =SysTick_VAL
	MOV R0, #0 
	STR R0, [R1]              ; Clear ocunter
; enable SysTick with core clock but no interrupts (for now!)
	LDR R1, =SysTick_CTRL
	MOV R0, #0x0005
	STR R0, [R1]
	BX  LR
```

### IN C

```c
#define SysTick_CTRL (*((volatile unsigned long *)0xE000E010))
#define SysTick_LOAD (*((volatile unsigned long *)0xE000E014))
#define SysTick_LOAD (*((volatile unsigned long *)0xE000E018))

void SysTick_Init(void) {
	SysTick_CTRL = 0;
	SysTick_LOAD = 0x00FFFFFF;
	SysTick_VAL = 0;
	SysTick_CTRL = 0x00000005;
}
```
## Functionalities

### Measure Elapsed Time

```c
Start = SysTick->VAL;
SystemUnderTest();
Stop = SysTick->VAL;
Delta = 0x00FFFFFF&(Start-Stop);
```
```ad-note
title: Remember
Masking with `0x00FFFFFF`, you are taking in *only* the least significant 24 bits
```

This is limited by the max clock cycle.

**At 48 MHZ**:
- 24-bit percision
- 20.83ns resolution
- 349ms range

### SysTick Short Timer Wait

```c
void SysTick_Wait(uint32_t n) {
	SysTick->LOAD = n-1;
	SysTick->VAL = 0;    //clear count
	while((SysTick->CTRL&0x00010000) == 0) {};
}
```
![[ERTA - Week 5 Day 1 2024-09-30 13.22.26.excalidraw]]

### Long Timer Wait

```c
void SysTick_Wait10ms(uint32_t delay) {
	for(uint32_t = 0; i < delay; i++) {
		SysTick_Wait(480000);
	}
}
```

- 48 cycles is 1us
- 48,000 cycles 1ms
- 480,000 cycles is 10ms

## Pulse Width Modulation (PWM)

```ad-summary
A method of representing an analog symbol as a series of regular waves
```

**Application**:
- Controlling motors, LEDs
- Can be use for digital to analog conversion (DAC)

```ad-note
Use SysTick to generate a waveform to modulate power delivery
```

### Duty Cycle

The ratio to high to low voltages in a PWM device:

$$\mbox{Duty Cycle} = \frac{\mbox{High Period}}{\mbox{High Period} + \mbox{Low period}} = \frac{\mbox{High Period}}{\mbox{Cycle Period}}$$

```ad-example
A duty cycle of 60% would mean the signal is on for 60% of the time!
```

### Input and Output Voltage of a Duty Cycle

Changes in the input ovltage *does not* translate into exact voltage output

Depends on the following equaiton

$$\mbox{Out}(t) = A + Be^{\frac{-t}{\tau}}$$

Each load time has a $\tau$:
- $\tau$ is the time to reach 63.2% of the final voltage
- Example: HLMP-4700 LED: $\tau = 90ns$
- Example: DC motor: $\tau = 100ms$

### Using SysTick to code a PWM

```c
while(1) {
	P1->OUT |= 0x01;  // Red LED on
	SysTick_Wait(High);
	#comebacklater
}
```
### DAC with PWM

#### Low pass filter

![[PXL_20240930_174005262~2.jpg]]
