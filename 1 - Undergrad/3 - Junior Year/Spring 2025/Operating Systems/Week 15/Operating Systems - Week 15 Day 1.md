Date: 5th May 2025
Date Modified: 5th May 2025
File Folder: Week 15
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Virtual Memory

## Objectives
1. Define virtual memory
2. Hardware to support virtual memory
3. OS structures and mechanisms to implement virtual memory

```ad-note
title: Review
- Static and dynamic partiioning schemes can be fixed by both paging and segmentation respectful (non-contingous memory)
```

## Beyond Paging and Segmentation

Principles of Paging and Segmentation
1. All memory references are logical addresses that are dynamically translated into physical addresses at run time
2. A process may be broken up into several pieces that don’t need to be contiguous in main memory during execution

```ad-important
If these two characeristics are present, it is not necessary that all the pages or segments of  aprocess be in *main memory* during execution
```

## How Does it Work in Practice?

1. Operating system brings into main memory a few *pieces* of the program at a time (called a **resident set**)
2. Process executes. If memory outside of resident set is need, jump to step 3
3. Interrupt generated and OS places the process in a blocked state
4. Load piece of data
5. Interrupt again to put process back in ready state
6. Jump to step 2

```ad-summary
title: Definition
**Pieces**: Pages or segments
```

## Implication of VM

For now, let’s assume the cost of the swapping routine is negligible

*Positive implications:*
1. More processes may be maintained in memory
	- Load only pieces of memory that are needed
	- With more processes in memory, more likely one of them is in the ready state
2. A process may be larger than all of the memory

## Support for VM

We need *two* main supports:
1. Hardware for paging and segmentation
2. Operating systems needs to have efficient algorithms to manage movement of pages and segments into and out of main memory
 
## Access Translation in a Paging System

![[Operating Systems - Week 15 Day 1 2025-05-05 08.21.27.excalidraw | center]]

## Page Table

### Where Do We Keep It?

```ad-important
We typically store the page table in virtual memory
```

### Who Pages the Page Table?

```ad-question
If process page tables are themselves in virtual memory, then how do we look up their location?
```

They use a **hierarchical scheme**:
- Upper portion in real memory referencing the pages storing the page table

![[Pasted image 20250505082619.png | center]]

## Two-Level Paging Scheme

![[Pasted image 20250505082750.png | center]]

## Translation Lookup Buffer (TLB)

Each virtual memory reference can cause two physical memory accesses:
- One to fetch the page table
- One to fetch teh data

To overcome the effect of doubling the memory access time, most virtual memory schemes make use of a special high-speed cache called a *translation lookaside buffer (TLB)*

![[Pasted image 20250505083101.png | center]]

![[Pasted image 20250505083148.png | center]]

```ad-note
If the page faults, the process is put into a blocked state and another process maybe dispatched
```

Most virtual memory references will bein locations in the recently used pages → page table entries in the cache.

## Page Size

The smaller the page size, the lesser the amount of internal fragmentation
- However, more pages are reuqired per processes
- More pages per process means larger page tables
- For large programs in a heavily multi-programmed environment, this means that some portion of the page tables of active processes must be in virtual memory instead of main memory
	- DOUBLE PAGE FAULT!!!
- The physical characteristics of most secondary memory devices favor a larger page size for more efficient block transfer of data

### Paging Behavior

![[Pasted image 20250505083830.png | center]]

### Page Size Examples

![[Pasted image 20250505083912.png | center]]

### Current Issues with Page Size Design

- Related to the size of physical memory and program size
- Main memory is getting larger and address space used by application is also growing → effect on TLB and page table
- Contemporary programming techniques used in large programs tend to decrease the locality of references within a program.

## Segmentation with VM

- Segments of varying size, unlike pages
- Memory reference consists of: $\mbox{Segment Number} + \mbox{Offset}$

**Advantages**:
1. Simplifies handling of growing data structures
2. Allows programs to be altered and recompiled independently
3. Lends itself to sharing and protection of specific data structures among processes

### Segment Organization

![[Pasted image 20250505084231.png | center]]


## Combing Paging and Segmentation

*Paging*:
1. Transparent to programmer
2. No external fragmentaiton
3. Equal size pieces allow for sophisticated management

*Segmentation*
1. Simplifies handling of growing data structures
2. No internal fragmentation

**Combined**
1. Address space is broken into segments, each of which consists of a number of pages
2. Programmer/complier sees only segments

![[Pasted image 20250505084413.png | center]]


![[Pasted image 20250505084451.png | center]]

## Virtual Memory Software

Memory management depends on:
1. Whether or not ot use virtual memory
2. The use of paging, segmentation, or both
3. Algorithms employed for memory management

Today…
- Most if not all oepraitng systems provide virtual memory
- Pure segmentation is rare
- Most OS design issues concern paging

![[Pasted image 20250505084812.png | center]]



