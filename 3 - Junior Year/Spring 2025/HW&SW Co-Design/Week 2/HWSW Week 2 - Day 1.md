Date: 27th January 2025
Date Modified: 27th January 2025
File Folder: Week 2
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Embedded Platform
- Memory Interfacing

```

# Embedded Platform

## Embedded Platform Components

![[Pasted image 20250127111329.png]]
```ad-note
DMA -> Direct Memory Access
```

## Simpler Representation of Embedded Platform

![[Pasted image 20250127111842.png]]

**Signals**:
- *Clock*: Provides Synchronization
- *R/W*: True when reading; false when writing
- *Address*: $a$-bit bundle of address lines (bus)
- *Data*: $n$-bit bundle of data lines
- *Data Ready*: Signals when $n$-bit data is ready 
# Memory Structure

## Important Distinctions

**Caches** are made of  **SRAM**.
- Stored in latches


**Physical Memory** is made of DRAM.
- Stored in capacitors
- This memory needs to be refreshed consistently, and must be refreshed for every read
- Needs continuous power
- Capacitors can be smaller than latches, which allows for more storage density
- Cheaper

## Introduction

Several types of memory:
- DRAM
- SRAM
- Flash
- EEPROM

Each memory comes in varying:
- Capacities
- Widths

![[Pasted image 20250127112120.png]]

On a basic level, an address contains a *row* $r$ and a *column* $c$
- The row determines how the memory array is dumped
- the column determines which part of the data you want
- The enable signal then puts the data onto the line

## Memory Organization

Memory consists of a large number of 1-bit sotrage devices organized into words
- Typically a power of 2
- Specified by the  number of bits in a word, and the number of words

**In General**:
- For words that are $n$-bits long, there needs to be $n$ data lines
- If a memory contains $2^k$ words, then $k$ address lines are required.

### 16x32 Memory Example

![[Pasted image 20250127112841.png]]
- 16-bit word length, and 32 words
- For each bit position in the word, a data line connects the memory to the Memory Data Register in the CPU

## Memory in Practice: Banks

```ad-important
Physical memory usually consists of more than one RAM chip, where access becomes more effficient if it is organized into **banks** of chips with addresses interleaved accross the chips
```

**Banks**:
- Used to organize memory
- *Low-Order Interleaving* means it focuses on the lower order bits
- *High-Level Interleaving* Focuses on the high bits the specify the memory bank

![[Pasted image 20250127113520.png]]
### Banks Example

```ad-question
Suppose we have memory consisting of 16 2K x 8 bit chips
```

![[Pasted image 20250127113424.png]]

Memory is $32k = 2^5*2^{10}=2^{15}$
- $15$ bits are needed for each address
- We need 4 bits to select the chip, and 11 bits for the offset into the chip

## Random-Access Memory

**DRAM**: Dense and requires refresh:
- SDRAM
- EDO DRAM
- FPM DRAM
- DDR DRAM

**Static RAM**: Faster, less dense, consumes more power

**Flash Memory**:
- Non-volatile memory
- Read operations are fast and byte/word addressable
- Write operations takes time. Typically done in blocks.

### SDRAM Read Operation

![[Pasted image 20250127113717.png]]

**RAS&CAS:** Row and Column Address Strobes

```ad-note
**Burst Mode**: Allows for *multiple sequential* accesses to a memory from only one initial address.
```

## Memory Systems and Memory Controllers

Memory has a complex internal organization

```ad-summary
**Memory Controller**: Hides detials of memory interfaces, schedules transfers to maximize performance
```

![[Pasted image 20250127114238.png]]

## Channels and Banks

![[Pasted image 20250127114310.png]]

**Channels** provide separate connections to parts of memory

**Banks** are separate memory arrays

