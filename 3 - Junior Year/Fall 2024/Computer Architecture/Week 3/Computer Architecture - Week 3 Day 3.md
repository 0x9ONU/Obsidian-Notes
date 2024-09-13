Date: 13th September 2024
Date Modified: 13th September 2024
File Folder: Week 3
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Recursive Function

```

# Recursive Function

A function that **calls itself**

When converting to *assembly*
- In the first pass, threat recursive calls as if it’s calling a different function and ignore overwritten registers
- Then save/store registers on the stack as needed

## Examples of Recursive Function

**Factorial Function**:

`factorial(n)` $= n! = n * (n-1)*(n-2)*(n-3)*1$

```ad-example
`factorial(6)` $= 6! = 6 * 5 * 4 * 3 * 2 * 1 = 720$
```

## Code Example

**C Code**
```c
int factorial(int n) {
	if (n <= 1)
		return 1;
	else
		return (n*factorial(n-1));
}
```
**RISC-V Assembly**

```
factorial:
	addi sp, sp, -8     # Save Regs
	sw   a0, 4(sp)
	sw   ra, 0(sp)
	addi t0, zero, 1    # temp = 1
	bgt  a0, t0, else   # if n>1, go to else
	addi a0, zero, 1    # otherwise, return 1
	addi sp, sp, 8      # restore sp
	jr   ra
else:
	addi a0, a0, -1     # n = n -1
	jal  factorial      # recursive call
	lw   t1, 4(sp)      # restore n into t1
	lw   ra, 0(sp)      # restore ra
	addi sp, sp, 8      # restore sp
	mul  a0, t1, a0     # a0 = n*factorial(n-1)
	jr   ra             # return
```
```ad-note
$n$ is restored from the stack into `t1` so it doesn't overwrite the reutrn value in `a0`
```

![[Computer Architecture - Week 3 Day 3 2024-09-13 11.13.24.excalidraw]]

# More Jumps & Pseudoinstructions

```ad-note
title: Remember
- Complier takes High Level Language and turns it into assembly
- Assembler will take the assembly to machine language
```

**Pseudoinstructions** are not actual RISC-V instructions, but they are often more conveinent for the programmer
- The *assembler* converts them into *real* RISC-V instructions
## Jumps

```ad-warning
- `jal label` is a pseudoinstruction
- `jr` is also one
```

RISC-V has two types of unconditional jumps
- Jump and link (`jal rd, imm`)$_{20:0}$
	- `rd` = PC + 4
	- `PC` = PC + `imm`
- Jump and link register (`jalr rd, rs, imm`)$_{11:0}$
	- `rd` = PC +4
	- `PC` = \[ *RS* \] + SignExt(`Imm`)
	- Typically, the immediate in this number is typically zero if we are using it as `jr`

```ad-important
Labels DO NOT exist in machine language. Labels are turned into numbers
```

```ad-warning
This means that there is a 21-bit number on how far a label can be called
```

```ad-example
`jr ra` $\equiv$ `jalr zero, ra, 0x00`
`j label` $\equiv$ `jal zero, imm`$_{\mbox{label}}$
```

