Date: 26th August 2024
Date Modified: 26th August 2024
File Folder: Week 1
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Syllabus
- Introduction to Embedded System
- Introduction to Microcontrollers

```

# Syllabus

```ad-important
If you are sick/stuck at home, there will be a Google Meet that runs along with the lecture.
```

## Grade Distribution

- Midterm 1 - *15%*
- Midterm 2 - *15%*
- Final Exam - *20%*
- Assignments/Quizzes - *15%*
- Labs - *20%*
- Presentation/Report - *15%*

```ad-warning
If there is a D average on **any** category, you will *not* pass the class
```

**Generative AI Policy**
- It is good for learning and coding and can be used for:
	- As a virtual tutor to clarify course concepts
	- As a code reviewer
	- Explaining code you do not understand

**Lat Policy**

```ad-important
On one assignment, you  get a single week extension for free. Otherwise, they *may* get more based on circumstances.
```

30% reduction every day past its due date.

## How to Succeed

- Attend as many classes as possible
- Do *all* of the homework assignments
- Do *all* of the labs
- Study actively
	- Make flash cards
	- Make a mind map
	- Talk to your peers
	- Draw comics

# Introduction to Embedded Systems

## What are Embedded Systems?

```ad-summary
title: Defintion
Specialized computing systems designed to perform specififc fucnitons within larger systems.
```

Real-time operation, dedicated functionality, resource-constrained, often without user interface.

```ad-example
- Automotive control units
- Medical Devices
- Microwaves
- Ovens
- Washing machines
- Automated home secuirty
- Pacemakers
- Health montiors
- FLigth management
- Target tracking
- Data recording
- Infotainment system
- Backup camera
```

They are in our everyday life and our everywhere
- Invisible
- Hidden computer inside
- Electrical, mechanical, or chemical devices attached
- Programmed for specific purposes

## Key Components

**Microcontrollers:** Integrated CPUs with memory and I/O ports on a single chip (MCU)

**Sensors:** Collect data from the environment.

**Actuators:** Control physical actions based on processed data.

**Memory:** Stores program code and data.

**Communication Interfaces:** Connect embedded systems to external devices or networks.


## Real Time Systems

A real time system
- A machine that promptly
	- Processes input
	- Performs calculation
	- Produces output
- … in response to external events

## Embedded Platform Components

![[ERTA - Week 1 Day 1 2024-08-26 13.28.56.excalidraw]]

- Clock provides synchronization
- R/W is true when reading (R/W is false when writing)
- Address is $a$-bit bundle of address lines (bus).
- Data is $n$-bit bundle of data lines.
- Data ready signals when $n$-bit data is ready.

#comebacklater for diagram

## Memory Structure

Several different types of memory:
- DRAM
- SRAM
- Flash
- EEPROM

Each type of memory comes in varying:
- Capacities
- Data widths (8-bit, 16-bit)
- Read/write abilities

![[4-5.webp]]

## Challenges

**Power Constraints:** Need for energy-efficient designs due to battery operation.

**Size Constraints:** Compact designs for integration into various devices.

**Performance Optimization:** Achieving desired functionality within limited resources.

**Reliability:** Continuous operation without failure is *critical*.

## Embedded Systems in Class

```ad-important
MSP432 is the microcontroller on board. It is made by TI
- The TM4C123 is used in the yellow book 
```

They all use the ARM Cortex-M Architecture Family 

# Introduction to Microcontrollers

```ad-summary
title: Definition
The main component of an embedded system
```

It is a microcomputer inside the embedded system

## Components

**Processor**: Fetches, decodes, and executes instructions stored into the memory

**Memory**: 
- *RAM*: Stores temporary information, volatile
- *ROM*: Stores software and constants, non-volatile

**I/O Ports**
- Ports: Physical connection between computer and outside world
- Interface: collection of I/O ports

## Role of ROM in MCU

- Microcontrollers don’t have dedicated programmming environments
- Thus, software is typically flashed onto a ROM chip
- This software is then ran on start on the MCU