Date: 6th September 2024
Date Modified: 6th September 2024
File Folder: Week 2
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Multiplication and Division
- Branching
	- If/Else
	- For Loops

```

# Multiplication

```ad-warning
The output will be approximately **DOUBLE** the size. This can lead to issues:
$$y = x * z$$
$$(\mbox{64 bits}) = (\mbox{32 bits}) * (\mbox{32 bits})$$
```

```
mul s3, s1, s2
mulh s4, s1, s2
```

```ad-important
`s3` is the lower 32 bits of the result
`s4` is the upper 32 bits of the result, and treats the oeprands as signed
```

```ad-example

```

```
#s1 = 0x40000000 = 2^30; s2 = 0x80000000 = -2^31
#s1 x s2 = -2^61 = 0xE0000000 00000000
#s4 = 0xE0000000; s3 = 0x00000000
```

# Division

```ad-warning
Is written in the form of:
$$x = Q*z +R$$
```

32-bit division $\rightarrow$ 32-bit quotient & remainder

```
div s3, s1, s2 #s3 = s1/s2
rem s4, s1, s2 #s4 = s1%s2
```

```ad-example
```

`s1 = 0x00000011 = 17` AND `s2 = 0x00000003 = 3`

$s1/s2 = 5$
$s1 \% s2 = 2$

`s3 = 0x00000005` AND `s4 = 0x00000002`

# Branches & Jumps

## Branching

```ad-summary
title: Definition
Executes instructions out of sequence
```

**Types of Branches**:
- *Conditional*
	- Branch if equal (`beq`)
	- Branch if not equal (`bne`)
	- Branch if less than (`blt`)
	- Branch if greater than or equal (`bge`)
- *Unconditional*
	- jump (`j`)
	- jump register (`jr`)
	- jump and link (`jal`)
	- jump and link register (`jalr`)

```ad-note
The last three instructions are important for funtions and will be brought up again later
```

## Conditional Branching

### Branch is Taken `beq`

**RISC-V Assembly**

```
	addi s0, zero, 4   #s0 = 0 + 4 = 4
	addi s1, zero, 1   #s1 = 0 + 1 = 1
	beq s0, s1, target #branch is taken
	addi s1, s1, 1     #NOT executed
	sub s1, s1, s0     #NOT executed

target:            #label
	add a1, s1, s0 #s1 = 4 + 4 = 8
```
**Labels** indicate instruction location. They *cannot* be reserved words and must be followed by a *colon (:)*

```ad-warning
The code under target will *ALWAYS* run regardless if the conditon is true or not.
```

### Branch Is Not Taken `bne`

```
	addi s0, zero, 4   #s0 = 0 + 4 = 4
	addi s1, zero, 1   #s1 = 0 + 1 = 1
	bne s0, s1, target #branch is NOT taken
	addi s1, s1, 1     #s1 = 4 + 1 = 5
	sub s1, s1, s0     #s1 = 5 - 4 = 1

target:            #label
	add a1, s1, s0 #s1 = 1 + 4 = 5
```

## Unconditional Branching (`j`)

### Skipping all Instructions

```
	j target         #jumps to the target
	blah blah blah   #not executed
	---
target:
	add s1, s1, s0   #s1 = 1 + 4 = 5



```
# If Statements & Loops

## If Statement

**C Code**
```c
if (i == j)
	f = g + h;

f = f - i;
```

**RISC-V Assembly Code**

```
#s0 = f, s1 = g, s2 = h
#s3 = i, s4 = j
	bne s3, s4, L1   # Check if they are =. Branch otherwise
	add s0, s1, s2   # Inside the Loop

L1:                  # Jumps here if the statement is false
	sub s0, s0, s3   # Outside the loop
```

```ad-important
Assembly tests *opposite case* (`i != j`) of high-level code (`i == j`)
```

## If-Else Statement

**C-Code
```c
if (i == j)
	f = g + h;
else
	f = f - i;
```

```
#s0 = f, s1 = g, s2 = h
#s3 = i, s4 = j
	bne s3, s4, L1   # Branches to the else statement if false
	add s0, s1, s2   # Inside the IF statement
	j   done         # Jumps to the end

L1:                  # Jumps here if the statement is false
	sub s0, s0, s3   # Inside the else statment
done:                #Jumps here to *avoid* the code in L1
```


## While Loop

**C-Code
```c
// Determines the power of x such that 2^x = 128

int pow = 1;
int x = 0;

while (pow != 128) {
	pow = pow * 2;
	x = x + 1;
}
```

**RISCV-V Assembly Code**

```
#s0 = pow, s1 = x

	addi s0, zero, 1
	add s1, zero, zero
	addi t0, zero, 128
while:
	beq s0, t0, done
	slli s0, s0, 1
	addi s1, s1, 1
	j while
done:
```
## For Loops
```c
for (initinalization; condition; loop operation)
	statement
```

- `initialization`: Executes *before* the loop begins
- `condition`: Is tested *at the beginning* of each iteration
- `loop operation`: Executes at the *end* of each iteration
- `statement`: Executes each time the condition is true

### Equal to Comparison

**C-Code**
```c
// Add the numbers from 0 to 9
int sum = 0;
int i;

for (i = 0; i != 10; i = i +1)
	sum = sum + i;
```

**RISC-V Assembly Code**

```
#s0 = i; s1 = sum
	addi s1, zero, 0
	add  s0, zero, zero
	addi t0, zero, 10
for:
	beq  s0, t0, done
	add  s1, s1, s0
	addi s0, s0, 1
	j    for
done:
```

### Less Than Comparison
**C-Code**
```c
//add the powers of 2 from 1 to 100

int sum = 0;
int i;

for (i = 1; i < 101; i = i*2)
	sum = sum + i;
```

**RISC-V assembly code**

```
#s0 = i, s1 = sum

	addi s1, zero, 0
	addi s0, zero, 1
	addi t0, zero, 101
loop:
	bge  s0, t0, done
	add  s1, s1, s0
	slli s0, s0, 1
	j    loop
done:
```

### Less Than Comparison: V2

**C-Code**
```c
//add the powers of 2 from 1 to 100

int sum = 0;
int i;

for (i = 1; i < 101; i = i*2)
	sum = sum + i;
```

**RISC-V Assembly Code**

```
#s0 = i, s1 = sum
	addi s1, zero, 0
	addi s0, zero, 1
	addi t0, zero, 101
loop:
	slt  t2, s0, t0     # important
	beq  t2, zero, done # important
	add  s1, s1, s0
	slli s0, s0, 1
	j    jump
done:
```

```ad-summary
`slt`: Set if less than instruction
```ad-example
`slt t2, s0, t0 # if s0 < t0, t2 = 1, otherwise t2 = 0`
```

This instruction subtracts the two numbers and takes the MSB (the signed bit) and is used to determine which register is less than the other.

```ad-important
The `slt` instruction allows use to use the `beq` instruction for less than comparisons
```







