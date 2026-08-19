Date: 13th December 2024
Date Modified: 13th December 2024
File Folder: Week 15
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Exam Practice

## Exercise 8.21

```ad-question
Consider a virtual memory system that can address a total of $2^{50}$ bytes. You have unlimited hard drive space but are limited to 2 GiB of physical memory. Assuem that virtual and physical pages are each 4 KiB in size.
1. How many bits is the physical address?
2. What is the maximum number of virtual pages in the system
3. How many phyiscal pages are in the system?
4. How many bits are the virtual and physical page numbers?
5. How many page table entries will the page table contain?
6. Assume that, in addition to the physical page number, each page table entry also contains some status information in the form of the valid bit ($V$) and a dirty bit ($D$). How many bytes long is each page table entry? (Round up to an integer number of bytes.)
7. Sketch the layout of the page table. What is the total size of the page table in bytes?
```

Virtual Memory: $2^{50}$ Bytes
Physical Memory: $2$ Gb → $2^{31}$ bytes
Page Size: 4 KiB → $2^{12}$ bytes

Va: 50 bits, # of virtual pages: $\frac{2^{50}}{2^{12}}=2^{38}$ pages → VPN = 38 bits
Pa: 31 bits, # of physical pages: $\frac{2^{31}}{2^{12}}=2^{19}$ pages → PPN = 19 bits

Since each entry uses 19 bits of physical page number and 2 bits for status information. **3 bytes** are needed for each entry (round 21 bits up to the nearest number of bytes)

The page table will contain one entry for each page. There will be $2^{38}$ entries that contain:

$$2^{38}\times(19+2) \approxeq 3\times 2^{38} \mbox{ bytes} $$

![[Computer Architecture - Week 15 Day 3 2024-12-13 11.12.12.excalidraw]]

## Exercise 8.23

```ad-question
You decide to speed up the virtual memory system of Exercise 8.21 by using a translation lookaside buffer (TLB) wiht 128 entries.
1. How big is the TLB? GIve numbers for data (PPN), tag (VPN), and valid bits of each entry.
2. Sketch the TLB. Clearly label all fields and dimensions.
3. What size SRAM would you need to build the TLB described in part (b)?Give your answer in terms of depth x width
```

The TLB is 128 entries long with 1 valid bit, 38 bits of tag, and 19 data bits

$$(1 + 19+38) \times 128 = 7424 \mbox{ bits}$$

![[Computer Architecture - Week 15 Day 3 2024-12-13 11.19.20.excalidraw]]

What hardware is needed?
- 128 comparators
- 128 to 7 encoder
- 128 input or gate
- 128-to-1 mux with each 

*How does it look from a top view?*

![[Computer Architecture - Week 15 Day 3 2024-12-13 11.23.25.excalidraw]]

```ad-note
title: Remember
If it is not found in the TLB, we must go to the translation table to find the memory. IF the valid bit is not high in the translation table, then it creates a **page fault**
```

## Exercise 8.25

```ad-question
The virtual memory system you are designing uses a single-level page built from dedicated hardware (SRAM and associated logic). It supports 25-bit virutal addresses, 220bit physical addresses, and $2^{16}$-byte (64 KB) pages. Each page table entry contains a PPN, a valid bit, and a dirty bit
1. What is the total size of the page table, in bits?
2. The operating system team proposes reducing the page size from 64 to 16 KB, but the hardware engineers on your team object on the gorudns of added hardware cost. Explain their objection.
3. The page table is to be integrated on the processor chip, along witht he on-chip cache. The on-chip cache deals only wiht physical addresses. Is it possible to access the appropriate set of the on-chip cache concurrently with the page table for given memory access? Explain briefly the relationshipo that is necessary for concurrent access to the cache set and page table entry.
4. Is it possible to perform the tag comparision in the on-chip cache concurrently with the page table access for a given memory access? Explain briefly.
```

### Part I

25-bit va → $2^{25}$ bytes: 32 GB → VPN = $25 - 16 = 9$ bits
22-bit pa → $2^{22}$ bytes : 4 GB → PPN = $22-16=6$ bits

Page Size: 64KB=$2^{16}$ bytes $\Rightarrow$ offset: $\boxed{16 \mbox{ bits}}$

![[Computer Architecture - Week 15 Day 3 2024-12-13 11.33.07.excalidraw]]

$$2^{9} \mbox{ bytes} = 512 \mbox{ bytes}$$

### Part II

Page Size: 16 Kb = $2^{14}$ bytes → page offset = 14 bits

VPN = $24-14= 11$ bits
PPN = $24-14=8$ bits

Translation table size:

$$2^{11} \times(8+1+1)= 10 \times 2^{11} \mbox{ bits} = 20,480 \mbox{ bits}$$
## Top-Down View

![[Computer Architecture - Week 15 Day 3 2024-12-13 11.45.18.excalidraw]]
