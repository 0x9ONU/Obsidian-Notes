Date: 25th October 2024
Date Modified: 25th October 2024
File Folder: Week 9
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Multicycle Performance

## Using SPECINT2000 Benchmark

```ad-note
title: Remember
The multicycle takes a different number of cycles:
- 3 cycles: `beq`
- 4 cycles: Rypte, `addi`, `sw`, `jal`
- 5 cycles: `lw`
```

CPI is weighted average based on the SPECINT2000 Benchmark:
- 25% loads
- 10% stores
- 13% branches
- 52% R-type

$$\mbox{Average CPI} = (0.13)(3) + (0.52+0.10)(4)+(0.25)(5) = 4.12$$

### Finding CPI Example

```ad-question
Given the code below, find the CPI assuming the multicycle processor
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

## Critical Path

![[Pasted image 20241025111703.png]]

**Assumption**:
- RF is faster than memory
- Writing memory is faster than reading memory
- *The memory ends up being slower in most cases*

$$T_{c\_multi}=t_{pcq} + t_{dec} + 2t_{mux}+\max(t_{ALU}, t_{mem})+t_{setup}$$

### Possible Critical Path Example


![[Pasted image 20241025111839.png]]

$$T_{c\_multi}=t_{pcq} + t_{dec} + 2t_{mux}+\max(t_{ALU}, t_{mem})+t_{setup}$$
$$=$$
