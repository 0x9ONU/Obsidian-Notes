Date: 8th November 2024
Date Modified: 8th November 2024
File Folder: Week 11
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Real-Time Systems Day 2

```

# Real-Time System Day 2

## Interrupt Vectors for I/O Ports

**Layout**

| Vector                    | Number | IRQ | ISR name                             | NVIC priority                                                 | Priority                                                                  |
| ------------------------- | ------ | --- | ------------------------------------ | ------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Location of vector in ROM |        | ID  | Name of the Interrupt service called | Points to which priority register has the correct value (row) | Points to where in each priority register have the correct value (column) |
**NVIC**: System prioritizing and handling interrupt requests

**IRQ**: Interrupt Request

**ISR**: Routine that performs requested service for a given interrupt.

```ad-important
Check paper handout for more information
```

## Single Switch Interface

```ad-question
How would you set port 1 to priority 2 using C code?
```

We know that the PORT1 handler is on the NVIC_IPR8 and has the priority bits of 31→29.
```c++
NVIC->IP[8]=(NVIC->IP[8]&0x00FFFFFF)|0x40000000;
```
`IP[8]` Dereferences the correct row/register out of the NVIC

`&0x00FFFFFF` keeps the rest of the bits alone, but sets the bits we want to change (bits 31 through 29 plus its *padding*) low!

`|0x40000000` sets the the the second to highest bit high, which becomes `010x`, and makes a priority of two!

```ad-important
The spaces in-between are used to store other things in the register. the bit befor the priority numbers is a throw-away bit.
```



