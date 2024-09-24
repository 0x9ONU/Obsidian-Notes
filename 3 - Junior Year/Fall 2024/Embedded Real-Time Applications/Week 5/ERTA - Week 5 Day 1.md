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
Interrupts are mechanism by which other modlules may interrupt the normal sequencing of the processor, which can mess witht he timing on a MCU.
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

void 
```
#comebacklater 


