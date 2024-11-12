Date: 11th November 2024
Date Modified: 11th November 2024
File Folder: Week 12
#Circuits

```ad-abstract
title: Question Bank
collapse: open

1. Multicycle question to calculate CPI (for loops, DSA) Find number of instructions, type of instructions (R-Type vs. Branch vs. LW). Total # of clocks/ Total # of instructions $\star$
2. Stuck-at-zero and stuck-at-one
3. Critical Path
4. Find Average CPI with changes in SPECINT2000 benchmark
5. Pipeline Hazards with diagram (Exercise 7.32)

```

## Problem Type 1 (Multicycle CPI)

### Exercise 7.23

```ad-question
How many cycles are required to run the following porgram on the multicycle RISC-V processor? What is the CPI of this program?
```

```
	addi s0, zero, 5
L1:
	bge  zero, z0, Done
	addi s0, s0, -1
	j    L1
Done:
```
### Exercise 7.24

```ad-question
How many cycles are required to run the following porgram on the multicycle RISC-V processor? What is the CPI of this program?
```

```
addi s0, zero, 0   # 1 run
addi s1, zero, 0   # 1 run
addi t3, zero, 10  # 1 run

loop:
	beq s0, t3, L2 # 11 runs
	add s1, s1, s0 # 10 runs
	addi s0, s0, 1 # 10 runs
	j loop         # 10 runs
L2:
```


```ad-warning
Make sure you know how many times the for loop loops. The first instructions will run only once, and the loop will run 10 times
```

This makes **44 instructions**

$$\mbox{\# of clocks} = (4*1)+(4*1)+(4*1)+(3*11)+(4*10)+(4*10)+(4*10) = 165$$

$$CPI = \frac{165}{44} = 3.75$$

```ad-important
$$\mbox{ex}_{time} = 165* clk_{period}$$
$$= \mbox{\# of instructions} * CPI * T_{period}$$
```

## Problem Type 2 (Stuck-at-zero/one)

### Exercise 7.1

```ad-question
Suppose that one of the following control signals in the single-cycle 
RISC-V processor has a stuck-at-0 fault, meaning that the signal is always 0 regardless of its intended value. What instructions would malfunction? Why? Use the extended version of the single-cycle processor shown in Figures 7.15 and 7.16.
1. $RegWrite$
2. $ALUOP_1$
3. $ALUOP_0$
4. $MemWrite$
5. $ImmSrc_1$
6. $ImmSrc_0$
7. $PCSrc$
8. $ALUSrc$
```

### Exercise 7.2

```ad-question
Suppose that one of the following control signals in the single-cycle 
RISC-V processor has a stuck-at-1 fault, meaning that the signal is always 1 regardless of its intended value. What instructions would malfunction? Why? Use the extended version of the single-cycle processor shown in Figures 7.15 and 7.16.
1. $RegWrite$
2. $ALUOP_1$
3. $ALUOP_0$
4. $MemWrite$
5. $ImmSrc_1$
6. $ImmSrc_0$
7. $PCSrc$
8. $ALUSrc$
```

### Exercise 7.11

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-0 fault, meaning that the signal is always 0 regardless of its intended value. What instructions would malfunction? Why? Refer to the multicycle datapath and control shown in Figures 7.27 and 7.45.
1. $ResultSrc_1$
2. $ResultSrc_0$
3. $ALUSrcB_1$
4. $ALUSrcB_0$
5. $ALUSrcA_1$
6. $ALUSrcA_0$
7. $ImmSrc_1$
8. $ImmSrc_0$
9. $RegWrite$
10. $PCUpdate$
11. $Branch$
12. $AdrSrc$
13. $MemWrite$
14. $IRWrite$
```

### Exercise 7.12

```ad-question
Suppose one of the following control signals in the multicycle RISC-V processor has a stuck-at-1 fault, meaning that the signal is always 1 regardless of its intended value. What instructions would malfunction? Why? Refer to the multicycle datapath and control shown in Figures 7.27 and 7.45.
1. $ResultSrc_1$
2. $ResultSrc_0$
3. $ALUSrcB_1$
4. $ALUSrcB_0$
5. $ALUSrcA_1$
6. $ALUSrcA_0$
7. $ImmSrc_1$
8. $ImmSrc_0$
9. $RegWrite$
10. $PCUpdate$
11. $Branch$
12. $AdrSrc$
13. $MemWrite$
14. $IRWrite$
```

## Problem Type 3 (Critical Path)

### Notes

$$T_{c\_single} = t_{pcq\_PC}+t_{mem}+\max[t_{RFread} + t_{cntrl} + t_{ext} + t_{mux}]+t_{ALU} + t_{mem}+t_{mux} + t_{RFsetup}$$

$$T_{c\_multi}=t_{pcq} + t_{dec} + 2t_{mux}+\max(t_{ALU}, t_{mem})+t_{setup}$$

$$T_{c\_pipelined}= \max \begin{bmatrix} t_{pcq}+t_{mem} +t_{setup} \\ 2(t_{RFread}+t_{setup}) \\ t_{pcq} + 4t_{mux} + t_{ALU} + t{ALU} + t_{AND-OR} + t_{setup} \\ t_{pcq} + t_{mem} + t_{setup} \\ 2(t_{pcq} + t_{mux}+t_{RFwrite}) \end{bmatrix}$$

### Exercise 7.7

```ad-question
Your friend is a crack circuit designer. She has offered to redesign one of the units in the single-cycle RISC-V processor to have half the delay. Using the delays from Table 7.7 on page 415, which unit should she work on to obtain the greatest speedup of teh overall processor, and what would the cycle time of the improved machine be? Explain why.
```

### Exercise 7.8

```ad-question
Consider the delays given in Table 7.7 on page 415. Ben Bitdiddle builds a prefix adder that reduces the ALU delay by 20ps. If the other element elays stay the same, find the new cycle itme of the single-cycle RISC-V processor and determine how long it takes to execute a benchmark with 100 billion instructions
```

### Exercise 7.19

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the multicycle RISC-V processor to be much faster. Using the delays from Table 7.7 on page 415, which unit should jshe work on to obtain the greatest speedup of the overall processor? How fast should it be? (Making ti faster than necessary is a waste of your friend's effort.) What is the cycle time of the improved processor? Explain and show your work.
```

### Exercise 7.21

```ad-question
Suppose the multicycle RISC-V processor has the component delays given in Table 7.7 on page 415. Alyssa P. Hacker designs a new register file that has 40% less power but twice as much delay. Should she switch to the slower but lower power register file for her multicycle processor design? Explain why.
```

### Exercise 7.39

```ad-question
Your friend, the crack circuit designer, has offered to redesign one of the units in the pipelined RISC-V processor to be much faster. Using the delays from Table 7.7 on page 415, which unit should she work on to obtain the greatest speedup of the overall processor? How fast should it be? (Making it faster than necessary is a waste of your friend's effort.) What is the cycle time of the improved processor? Explain your answers and show your work.
```

### Exercise 7.40

```ad-question
Consider the delays from Table 7.7 on page 415. Now, suppose that the ALU were 20% faster. Would the cycle time of teh pipelined RISC-V processor changed? What if the ALU were 20% slower? Explain your answers and show your work.
```

## Problem Type 4 (Average CPI with Changes to Benchmark)

### Exercise 7.35

```ad-question
How many cycles are required for all pipelined RISC-V Processor to issue all of the instructions for the program in Exercise 7.31? What is the CPI of the processor on this program
```

It takes **eight** clocks to run *six* instructions:

$$\mbox{CPI} = \mbox{\# of clock cycles} / \mbox{\# of Instructions}$$
$$\mbox{CPI} = (8)/(6) = 1.33 \mbox{ CPI}$$

### Exercise 7.34

```ad-question
How many cycles are required for the pipelined RISC-V processor to issue all of the instructions for the program in Exercise 7.30? What is the CPI of the processor on this program?
```

```ad-important
When caring about CPI, we do not care about latency, but when the last instruciton was fetched
```

It takes **eight** clock cycles to issue all the instructions. Number of instructions = 6

$$\mbox{CPI} = 8 \mbox{ clks} / 6 \mbox{ instructions} = 1.33 \mbox{ CPI}$$

## Problem Type 5 (Pipeline Hazard Diagrams)

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

### Exercise 7.33a

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.29 on the pipelined RISC-V Processor
```

```
xor s1, s2, s3
addi s0, s3, -4
lw s3, 16(s7)
sw s4, 20(s1)
or t2, s0, s1
```

### Exercise 7.33b

```ad-question
Using a diagram, show the forwarding and stalls needed to execute the instructions from Exercise 7.29 on the pipelined RISC-V Processor
```

```
addi s1, zero, 11
lw s2, 25(s0)
add s3, s3, s4
or s4, s1, s2
lw s5, 16(s2)
```
