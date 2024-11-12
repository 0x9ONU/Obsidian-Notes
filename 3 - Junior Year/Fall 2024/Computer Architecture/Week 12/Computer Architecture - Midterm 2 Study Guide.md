Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Question Bank
collapse: open

1. Multicycle question to calculate CPI (for loops, DSA) Find number of instructions, type of instructions (R-Type vs. Branch vs. LW). Total # of clocks/ Total # of instructions $\star$
2. Stuck-at-zero and stuck-at-one (Single Cycle)
3. Critical Path for Single Cycle
4. Find Average CPI with changes in SPECINT2000 benchmark
5. Pipeline Hazards with diagram (Exercise 7.32)

```

## Problem Type 1 (Multicycle CPI)

### Notes

**Control Hazards**: If a branch is taken: Scratch the previous two instruction F and D THEN IF and jump to the next instruction and fetch them. If not, continue as is:

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.31.41.excalidraw]]

### Exercise 7.32

```ad-question
In a diagram similar to Figure 7.57, show the forwarding and stalls needed to execute the following instrucitons
```

```
addi s1, zero, 11 # s1 = 11
lw s2, 25(s1) # s2 = memory[36]
lw s5, 16(s2) # s5 = memory[s2+16]
add s3, s2, s5 # s3 = s2 + s5
or s4, s3, t4 # s4 = s3 | t4
and s2, s3, s4 # s2 = s3 & s4
```

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.14.11.excalidraw]]

### Exercise 7.33

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.31 on the pipelined RISC-V Processor.
```

```
addi s1, zero, 52
addi s0, s1, -4
lw  s3, 16(s0)
sw  s3, 20(s0)
xor s2, s0, s3
or  s2, s2, s3
```

![[Ethan Berei - Computer Architecture Homework 6 2024-11-04 12.55.31.excalidraw]]

