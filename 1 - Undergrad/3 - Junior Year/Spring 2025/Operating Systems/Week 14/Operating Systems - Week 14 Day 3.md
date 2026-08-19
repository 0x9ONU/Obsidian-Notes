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

# Segmentation

## Introduction

```ad-note
title: Review

Paging offers a non-contiguous *equal-sized fixed-width* partitioning scheme
```

**Segmentation** is a non-contiguous *dynamic-sized* partitioning scheme
- Provided as a convenience for organizing programs and data

## How Does it Work?

A program can be subdivided into segments
- May vary in length
- With a maximum length

Addressing consists of *two parts*:
- Segment number
- An offset

```ad-note
Similar to dynamic paritioning
```

```ad-important
- Eliminates internal fragmentation
- The principal inconvenience of this service is that the programmer must be aware of the maximum segemnt size limitation
```

![[Pasted image 20250502082624.png | center]]

## Translating Segment Addressing

1. Extract the segment number as the leftmost $n$ bits of the logical address
2. Use the segment number as an index into the process segment table to find the starting physical address of the segment
3. Compare the offset, expressed int eh rightmost $m$ bits, to the length of the segment. If the offset is greater than or equal to the length, the address is invalid
4. The desired physical address is the *sum of* the starting physical address of the segment plus the offset.

![[Pasted image 20250502082909.png]]

### Example

![[Operating Systems - Week 14 Day 3 2025-05-02 08.29.36.excalidraw | center]]

### Exercise

```ad-question
Consider a simple segmentation system that has a table seen below.

For each of the folliwng logical addresses (segmentation number, offset), determine the phyiscal address or indicate if a segment fault occurs
1. 0, 198
2. 2, 156
3. 1, 530
4. 3, 444
5. 0, 222
```


| Segment Number | Starting Address | Length (bytes) |
| -------------- | ---------------- | -------------- |
| 0              | 660              | 248            |
| 1              | 1752             | 422            |
| 2              | 222              | 198            |
| 3              | 996              | 604            |

1. *No Segmentation Fault* ($198 \le 248$): $660 + 198 = 858$
2. *No Segmentation Fault* ($156 \le 198$): $222+156 = 378$
3. **Segmentation Fault** ($530 \not \le 422$)
4. *No Segmentation Fault* ($444 \le 604$): $996 + 444 =  1440$
5. *No Segmentation Fault* ($222 \le 248$): $660 + 222 = 882$


