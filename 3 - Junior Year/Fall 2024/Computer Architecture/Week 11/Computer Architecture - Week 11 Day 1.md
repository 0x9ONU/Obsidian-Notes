Date: 4th November 2024
Date Modified: 4th November 2024
File Folder: Week 11
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Review of Homework 6

## Exercise 7.32

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

**Detailed Version**
![[Pasted image 20241104110615.png]]

**Simplified Version**

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.14.11.excalidraw]]

**Control Hazards**:
- If a branch is taken: Scratch the previous two instructions IF and ID THEN IF and jump to the next instruction and fetch them
- If not, continue as is

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.31.41.excalidraw]]

### Extra Example

```
lw s1, 0(s5)
sw s1, 0(s6)
```

![[Computer Architecture - Week 11 Day 1 2024-11-04 11.34.12.excalidraw]]

## Exercise 7.30

```ad-question
The pipelined RISC-V processor is running the following code 
snippet. Which registers are being written and which are being read on the fifth cycle? Recall that the pipelined RISC-V processor has a Hazard Unit. You may assume a memory system that returns the result within one cycle
```

![[Pasted image 20241104110731.png]]

In cycle 4, the `lw` instruction in the Decode stage detects that it needs the result of the `lw` that is in the Execute stage (and that result won’t be available until the end of the Memory stage),s o the second `lw` instruction (`lw, s5, 16(s2)`) and the next instruction (`add s3, s2, s5`) stall - that is, remain in the Decode and Fetch stages. So, in Cycle 5 `s1` is written (by `addi`) during the first half of the cycle. `s2` is read (by the second `lw` instruction) during the second half of the Cycle 5.

## Exercise 7.34

```ad-question
How many cycles are required for the pipelined RISC-V processor to issue all of the instructions for the program in Exercise 7.30? What is the CPI of the processor on this program?
```

```ad-important
When caring about CPI, we do not care about latency, but when the last instruciton was fetched
```

It takes **eight** clock cycles to issue all the instructions. Number of instructions = 6

$$\mbox{CPI} = 8 \mbox{ clks} / 6 \mbox{ instructions} = 1.33 \mbox{ CPI}$$
## Exercise 7.40

```ad-question
Consider the delay table. Now, suppose that the ALU were 20% faster. Would the cycle itme of the pipelined RISC-V processor change? What if the ALU were 20% slower? Explain your answers and show your work.
```

The Execute stage represents the criticla path. The cycle time of the pipelined processor before any changes to the ALU is 350ps. THis means:

*For Faster*

The cycle time for the processor would *decrease* by 24ps. The new cycle time would then be $(350-24)ps = 326ps$

*For Slower*

The cycle time for the pipelined processor would *increase* by $24ps$. The new cycle time would then be $(350+24)ps = 374 ps$

```ad-danger
For the pipelined processor, you must consider the critical path for *all* instructions. Depending on how the hardware changes, the critical path may change
```

# Midterm 2

Questions:
1. Multicycle question to calculate CPI (for loops, DSA) Find number of instructions, type of instructions (R-Type vs. Branch vs. LW). Total # of clocks/ Total # of instructions $\star$
2. Stuck-at-zero and stuck-at-one (Single Cycle)
3. Critical Path for Single Cycle
4. Find Average CPI with changes in SPECINT2000 benchmark
5. Pipeline Hazards with diagram (Exercise 7.32)


