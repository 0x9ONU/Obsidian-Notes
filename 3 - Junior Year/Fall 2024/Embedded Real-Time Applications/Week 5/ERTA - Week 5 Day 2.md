Date: 25th September 2024
Date Modified: 25th September 2024
File Folder: Week 5
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Midterm One Study Guide

```ad-danger
Anything in the Slides or Notes is fair game, particularly the following:
```

```ad-important
All exercises must be redone, as they will most likely be on the EXAM
```

## Format
- Short answer questions on concepts
- Simple Problems from Class Exercises

## Overview

### Introduction

1. Definition and application of an embedded systems
2. Challenges of embedded system design
3. Basic architecture of embedded systems
	- Ram
	- Rom
	- CPU
	- IO etc.
4. Microcontroller definition
5. How to program a microcontroller
6. Interrupts
7. Harvard vs Von Neumann Architecture
8. ISAs
9. Registers
	- How they are used in assembly commands
	- How they are used in architecture
10. Program status register overview
11. Memory mapping
12. Big versus little endian
13. Assembly
	- Relationship between:
		- High level languages
		- Assembly
		- Machine code
	- How is assembly different and similar to a high level programming language
	- Critical assembly commands:
		- LDR
		- STR
		- MOV
		- ADD
		- SUB
		- UDIV
		- SDIV
		- CMP
		- B
		- BGT
		- BLT
		- BEQ
		- BNQ
		- BX
	- Understand assembly labels

```ad-note
You will *not* need to know how to write assembly or C from scratch.
- Know what the commands do
- Fill-in-the-blank
```

### Digital Logic Refresher

1. Binary Numbers
2. Hex Values
3. Overflow
	- Carry, Borrow, Zero, and Negative Flags
	- `NZVC` flags
	- https://developer.arm.com/documentation/100076/0100/A64-Instruction-Set-Reference/Condition-Codes/Condition-flags
4. Logical Operations (AND, OR, XOR, NOT)
5. Signed vs. Unsigned integer representation
6. *Manipulating and reading bitstreams with DL $\star$*
7. Bit Shifts
	- Logical and Arithmetic

### I/O

1. Different types of digital I/O on the MSP432
	- GPIO
	- UART
	- SPI
	- I2C
2. Analog inputs versus digital inputs
3. I/O within the memory map
4. Why are Pullup/Pulldown resistors are necessary?
5. Ports vs. Pins
6. *Manipulating and reading bitstreams through I/O using DL*
	- Binary masks
7. Port Types
	- Input only ports
	- Output only ports
	- Bi-directional ports
8. Initializing I/O (no programming)

### Finite State Machines

1. Definition of FSM
2. Main components
	- States
	- Inputs
	- Outputs
	- Transitions
3. Mealy versus Moore machine
4. Create a FSM in:
	- Graph Form
	- Table Form
5. Line Tracker Example
	- What are the inputs?
	- What are the outputs?

```ad-important
Go through traffic light & **line tracker example**. *Nothing that complicated will be on the exam.*
```




