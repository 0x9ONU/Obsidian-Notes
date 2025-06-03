Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 11
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Real Time Systems Introduction

```

# Real Time Systems

## Objectives

- Types of events to handle
- Type of Response
- Performance Measures
- I/O Edge Triggered Methods

## Real-Time System Overview

### Simple Example: *Airbag Deployment*

![[Pasted image 20241111104430.png]]

## Event Types

**Periodic**: Sampling data, digital controller

**Aperiodic**: Expected to happen
- I/O Events for communications:
	- UART (Serial)
	- Bluetooth

**Sporadic**: Unexpected but serious
- faults: collision detection and response

![[Pasted image 20241111104627.png]]

**Hard Real-Time Limit Systems**: Guaranteed bounded, latency/response time


**Firm Real-Time Limit Systems**: 
- Missed deadline → Loss of Quality
- Not time critical

**Soft Real-Time Limit Systems**: Delayed repsonse reduces value

**Non Real-Time Systems**:
- Still needed in robotic systems
- Best effort
- No deadlines:

```ad-example
Non Real-Time Systems:
- Display
- LED Lighting
```

## Real-Time Behavior and Best Practices

**Factors that affect latency**:
- Time to finish instruction (General Time)
- Running with interrupt disabled ($I=1$)
- Running higher priority interrupts

**Factors that affect response time**
- Latency Time
- Performing the Service

```ad-important
title: Best Pratices
- Assign priority appropriately
- Take advantage of interrupts
- Make the time to execute an ISR small
	- Avoid Loops
```

## Interrupt Processing 

![[Pasted image 20241111105817.png]]



