Date: 30th August 2023
Date Modified: 30th August 2023
File Folder: Week 2
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Review Day #4
	- Nested Loops
	- SizeOf() Function
- Pointer Review

```

```ad-note
title: Homework
- [ ] HW #1 hard submission + github 📅 2023-09-01 
```

# `Sizeof()` function

Returns the total amount of memory storage (in bytes) needed to store the variable/object passed to it as an input argument
- If the identifier for an array is given as input, will return the overall number of bytes needed to store the array
- Used to determine the number of elements in an array (assuming `arr[]` is initialized above)

The following gets the number of elements within an array:
```c++
int n = sizeof(arr) / sizeof(arr[0])
```

# Pointers

## Pointer Analogy - Index Page in a Book

- Every keyword in the index page is a pointer
- It points at the actual page that has the content
- Stores references where to go get the data/information
- For real pointers, it stores addresses rather than page numbers

## Memory Structure

Memory is an addressable space and every byte has an address
- An array of bytes
- Each memory cell is 1 **byte**
- Addresses at a max of *$2^{64}$ bytes

```ad-note
`0x` means Hexadecimal Representation (ex. `0x2A38`)
```
### Hex vs. Decimal vs. Binary

| Decimal (10 symbols) | Hexadecimal (16 symbols) | Binary (2 symbols) |
| -------------------- | ------------------------ | ------------------ |
| 0                    | 0x0                      | 00000                  |
| 1                    | 0x1                      | 00001                  |
| 2                    | 0x2                      | 00010                 |
| 3                    | 0x3                      | 00011                 |
| 4                    | 0x4                      | 00100                |
| 5                    | 0x5                      | 00101                |
| 6                    | 0x6                      | 00110                |
| 7                    | 0x7                      | 00111                |
| 8                    | 0x8                      | 01000               |
| 9                    | 0x9                      | 01001               |
| 10                   | 0xA                      | 01010               |
| 11                   | 0xB                      | 01011               |
| 12                   | 0xC                      | 01100               |
| 13                   | 0xD                      | 01101               |
| 14                   | 0xE                      | 01110               |
| 15                   | 0xF                      | 01111               |
| 16                   | 0x10                     | 10000                   |

### How a program is executed?

After successful compilation of a source code, it is loaded into the memory to be executed
- Every program has its own separate space.
- The memory space is divided into several parts

```ad-important
- The **Stack** containes all variables that are created during compile time. 
- The **Heap** contains all variables that were created *dynamically*
```