Date: 2nd May 2025
Date Modified: 2nd May 2025
File Folder: Week 14
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Linking/Loading

## Addresses for Relocation

**Logical**: Reference to memory location independent of the current assignment of data to memory

**Relative**: A particular example of logical address, in which the address is expressed as a location relative to some known point

**Physical or Absolute**: Actual location in main memory

## Loading

First step in creating an active process:
- Create a process image
- Load a program into main memory

![[Pasted image 20250502080639.png | center]]

![[Pasted image 20250502080645.png | center]]

![[Pasted image 20250502080653.png | center]]

## Types of Load Modules

### Object Module

Modules are loaded via symbols like “X”, or “Y". Abstraction layer for the user

![[Pasted image 20250502080802.png | center]]

### Absolute Load Module

Physical addressing of modules
- Translates logical module to an absolute address
- Contiguous because of the linking step

![[Pasted image 20250502080846.png | center]]

### Relative Load Address

All memory locations are represented as an offset from the beginning of the file

![[Pasted image 20250502080921.png | center]]
### Relative Load Module at an Arbitrary Position

Represent the start of the program as any memory location “$x$”

![[Pasted image 20250502081001.png | center]]

# Paging

## Introduction

```ad-summary
title: Key Idea
- Partition memory into equal fixed-size chunks that are relatively small
- Process is also divided into small fixed-size chunks of the same size
```

Turns out we can have very little fragmentation under paging

![[Pasted image 20250502081101.png | center]]

## Assignment of Process Pages to Free Frames

1. Picture a section of memory with 15 *frames* of free memory

![[Pasted image 20250502081211.png | center]]

2. Process A is loaded from secondary memory into primary memory

![[Pasted image 20250502081248.png | center]]

3. Process B is loaded from secondary memory into primary memory

![[Pasted image 20250502081309.png | center]]

4. Process C is loaded from secondary memory into primary memory

![[Pasted image 20250502081343.png | center]]

5. Process B is suspended and swapped out of main memory. What if we wanted to load Process D, which is five pages long?

![[Pasted image 20250502081429.png | center]]

How does page size affect internal fragmentation?
- Let’s say we ahve a process iamge that is 517MB
- If the page size is 20MB:
	- $517 \% 20 = 17$
	- leads to internal fragmentation of 3
- If page is 2MB
	- $517 \mod 2 = 1$
	- Leads to internal fragmentation of 1

![[Pasted image 20250502081446.png | center]]

## Page Table

- Maintained by operating system for each process
- Contains the frame location for each page in the process 
- Used by processor to produce a physical address

![[Pasted image 20250502081721.png|center]]
![[Pasted image 20250502081732.png | center]]

### Notes on Page Tables

Notice that this is essentially a fixed-width partitioning scheme

Differences from typical fixed-width partitioning:
- Partitions are every small

```ad-important
Process iamges do not need tob e contiguous partiions of memory
```

## Relative to Physical Addresses with Paging

```ad-note
Under a non-paging partiioning shceme, a relative address is just *an offset* from the beginning of the process image
```

A paging system uses a *two part* address:
- *Part One* is the page of the address
- *Part Two* is the offset form the beginning of the page

![[Pasted image 20250502082000.png | center]]

The whole paging address would be broken down into:
- $n$ bits for the page number
- $m$ bits for the offset

The page number is the left $n$ bits of the relative address

### Page Translation Example


![[Pasted image 20250502082154.png| center]]