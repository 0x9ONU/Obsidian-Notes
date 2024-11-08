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

| Vector                    | Number | IRQ | ISR name    | NVIC priority                                           | Priority                                                         |
| ------------------------- | ------ | --- | ----------- | ------------------------------------------------------- | ---------------------------------------------------------------- |
| Location of vector in ROM |        | ID  | Name of the | Points to which priority register has the correct value | Points to where in each priority register have the correct value |
**NVIC**: System prioritizing and handling interrupt requests

**IRQ**: Interrupt Request

**ISR**: Routine that performs requested service for a given interrupt.

