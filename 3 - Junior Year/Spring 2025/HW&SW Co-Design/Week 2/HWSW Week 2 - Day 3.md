Date: 4th February 2025
Date Modified: 4th February 2025
File Folder: Week 2
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- 

```

# Review

Direct Memory Access (DMA) performs data transfers without executing instructions.
- CPU setups up transfer
- DMA engine fetches and writes

```ad-note
The DMA controller is a separate unit from the CPU
```

![[Pasted image 20250204185005.png]]

# DMA & Bus Operations

## Bus Grant

By default, CPU is the bus mater and initiates tranfers.

However, the DMA must become the bus master to perform its work.
- CPU can’t use bus while DMA operates

Bus mastership protocol:
- Bus Request
- Bus Grant

## DMA Operation

**Order of Operations**
1. CPU sets DMA registers for start address + length
2. DMA status register controls the unit.
3. Once DMA is bus mater, it transfer *automatically*
	- May run continuously until complete
	- May use every $n$th bus cycle

![[Pasted image 20250204200512.png]]

### Sequence Diagram

![[Pasted image 20250204200532.png]]

## Bus Configurations

Multiple busses can be used to create **parallelism**
- Slow devices on one bus
- Fast devices on separate bus

**A Bridge** connects the two busses together

![[Pasted image 20250204200635.png]]

### Bridge State Diagram

![[Pasted image 20250204200700.png]]

### ARM Bus Architecture – AMBA

Comes in two varieties:
- **AHB** is high-performance
- **APB** is slower-speed, lower cost

AHB supports:
- pipelining
- burst transfers
- split transactions
- multiple bus masters

*All* devices are slaves on APB

![[Pasted image 20250204201057.png]]

## Platform-Level Performance

```ad-note
Can be more complicated to calculate performance when compared to CPUs
```

Can also affect total system performance if not considered.

To move data from memory to the CPU to process it, we must:
1. Read from the memory
2. Transfer over the bus to the cache
3. Transfer from the cache to the CPU

### System-Level Performance Analysis

Multipole components contribute to overall performance of an embedded or a computer system.

Depends on:
- CPU
- Cache
- Main Memory
- I/O Devices
- Bus

![[Pasted image 20250204201520.png]]

### Bandwidth as Performance

```ad-summary
title: Definition
The rate at which was can move data. The most basic measure of performance.
```

If we are interested in real-time performance, we are interested in real-time performance **measured in seconds**

Might have to consider multiple different clock rates for each part of the system when we convert clock cycles into seconds

Applies to:
- Memory
- Bus
- CPU Fetches

#### Example

Consider an image of 320x240 pixel video frame
- Each pixel has 3 byes of information
- This gives a video frame: $320*340*3 = 230,400$ bytes
- We want to check if we can push one frame through the system within $1/30$ of a second

If the transfer rate is $1$ Mbps, it can transfer $1$ byte/$\micro$sec, which makes a transfer speed of $0.23$ seconds per frame, which is too slow

```ad-check
title: Solution
Increase the bandwidth
- Increase bus width
- Increase bus clock rate
```

#### Bus Bandwidth Equations

![[Pasted image 20250204202656.png]]

$$T_{basic}(N) = (D+O)N/W$$
$$t=TP$$
- $T$: # bus cycles for transfer
- $P$: time/bus cycle or bus clock period
- $D$: Data Payload time [measured in (clock cyles - waits)/clock cycles]
- $O1 + O2 = O$ (Overhead)
- $W$ is the width of the bus
- $N$ words
- $D$ is the number of clock cycles needed to transfer the data. 

#### Bus Burst Transfer Equations

![[Pasted image 20250204202956.png]]

$$T_{burst}(N)=(BD+O_B)N/(BW)$$
- $B$: Brust Transaction length

```ad-important
Considering that the burst transfer allows more than one bus clock cycle per data transfer, the overhead occurs once *per* burst transaction
```

### Bottlenecks

![[Pasted image 20250204203351.png]]

#### Solution

If bus is the bottleneck
- Increase bus clock rate
- Increase bus width

If memory is the bottleneck:
- Increase memory banks (*parallelism*)
- Use faster memory chips and/or technologies
## Memory

### Memory Aspect Ratios

![[Pasted image 20250204203233.png]]

### Memory Access Times

Comes from chip datasheet
- Page modes allow faster access for successive transfer on same page

## Parallelism

Allows for Speed-Ups by running several units at once

Provides parallism if the CPU doesn’t need the bus:
- DMA + Bus
- CPU

![[Pasted image 20250204203535.png]]