Date: 11th September 2024
Date Modified: 11th September 2024
File Folder: Week 3
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Function Calls

```

# Function Calls

**Caller**: Calling a function (in this case, we are calling `main`)
- Passes *Arguments* to calleee
- jumps to calleee

**Callee**: Called function (in this case, `sum`)
- *Performs* the function
- *Returns* result to caller
- *Returns* to point of call
- *Must not overwrite* registers or memory needed by caller

```c
void main()
{
	int y;
	y = sum(42, 7);
}

int sum(int a, int b)
{
	return (a + b);
}
```

## Sample Function Call

**C Code**
```c
int main() {
	simple();
	a = b + c;
}

void simple() {
	return;
}
```

**RISC-V Assembly Code**

```
0x00000300     main:
0x00000304          jal simple # call
0x00000308			add s0, s1, s2
...
0x00000051c    simple:
0x000000520         jr  ra     # return
```

```ad-note
Void means that simple does not return a value
```

`jal simple`: 
- Jump and link `PC+4` to `ra`
- `ra` is equal to `PC` plus 4. This register will point to the next line in the instruction set.
- Jumps to `simple` label (`PC` = `0x0000051c`)

`jr ra:`
- Jump to the return address
- `PC` = `ra` = `0x00000308`

```ad-note
`jalr` is the more general form:
- jump&link the return address in a *chosen* register
```

## RISC-V Function Calling Conventions

- **Call Function**: Jump and link (`jal func`)
- **Return** from function: jump register (`jr ra`)
- **Arguments**: `a0-a7`
- **Return Value**: `a0`

## Preserved Registers

| Preserved (*Callee Saved*) | Non-preserved (*Caller-Saved*) |
| -------------------------- | ------------------------------ |
| `s0-s11`                   | `t0-t6`                        |
| `sp`                       | `a0-a7`                        |
| `ra`                       |                                |
| Stack above `sp`           | Stack below `sp`               |

## Input Arguments & Return Value

**C-Code**
```c
int main()
{
	int y;
	...
	y = diffofsums(2, 3, 4, 5) // 4 arguments
}

int diffofsums(int f, int g, int h, int i) 
{
	int result;
	result = (f + g) - (h + i);
	return result; //return value
}
```

**RISC-V assembly code**

```
main:
...
	addi a0, zero, 2     #argument 0 = 2
	addi a1, zero, 3     #argument 1 = 3
	addi a2, zero, 5     #arguemnt 2 = 4
	addi a3, zero, 5     #argument 3 = 5
	jal  differofsums    #call function
	add  s7, a0, zero    #y = returned value
...
# s3 = result
diffofsums:
	add  t0, a0, a1      # t0 = f + g
	add  t1, a2, a3      # t1 = h + i
	sub  s3, t0, t1      # result = (f + g) - (h + i)
	add  a0, s3, zero    # put return value in a0
	jr   ra              # return to caller
```

```ad-important
`diffofsums` overwrote 3 regisgers: `t0, t1, s3`
`diffofsums` can use `stack` to temporarily store registers
```

# The Stack

Memory used to temporarily save variables
- Like stack of dishes, last-in-first-out
- *Expands*: Uses more memory when more space is needed
- *Contracts*: Uses less memory when the space is no longer needed 

![[Pasted image 20240911113314.png]]

## How Functions use the Stack

- Called functions *must* have no unintended side effects
- But `diffofsums` overwrites 3 registers: `t0, t1, s3`
- We will utilize the stack instead of overwriting the registers

```
# s3 = result
diffof sums:
	addi sp, sp, -12     # make space for three reg.
	sw   s3, 8(sp)       # save s3 on stack
	sw   t0, 4(sp)       # save t0 on stack
	sw   t1, 0(sp)       # save t1 on stack
	add  t0, a0, a1      # t0 = f + g
	add  t1, a2, a3      # t1 = h + i
	sub  s3, t0, t1      # result = (f + g) - (h + i)
	add  a0, s3, zero    # put return value in a0
	lw   s3, 8(sp)       # restore s3 from stack
	lw   t0, 4(sp)       # restore t0 from stack
	lw   t1, 0(sp)       # restore t1 from stack
	addi sp, sp, 12      # deallocate stack space
	jr   ra              # return to caller
```

![[Pasted image 20240911113734.png]]

### Storing Saved Registers on the Stack

```
# s3 = result
diffofsums:
	addi sp, sp, -4     # make space on the stack (1 r.)
	sw   s3, 0(sp)      # save s3 on stack
	add  t0, a0, a1     # blah blah blah
	add  t1, a2, a3
	sub  s3, t0, t1
	add  a0, s3, zero
	lw   s3, 0(sp)      # restore s3 from stack
	addi sp, sp, 4      # deallocate stack space
	jr   ra             # return to caoller
```

## Non-Leaf Function Calls

```ad-summary
title: Defintion
A funciton that calls another function
```

```
func1:
	addi sp, sp, -4     # make space on stack
	sw   ra, 0(sp)      # save ra on stack
	jal  func2
	...
	lw   ra, 0(sp)      # restore ra from stack
	addi sp, sp, 4      #deallocate stack space
	jr   ra             # return to caller
```

```ad-important
`ra` MUST be preserved before another function call
```

### Example

```
# f1 (nl function) uses s4-s5 and needs a0-a1 after call to f2
f1:
	addi sp, sp, -20   # make space on stack for 5 words
	sw   a0, 16(sp)
	sw   a1, 12(sp)
	sw   ra, 8(sp)     # save ra on stack
	sw   s4, 4(sp)
	sw   s5, 0(sp)
	jal  func2
	...
	lw   ra, 8(sp)     # retore ra and regs from stack
	...
	addi sp, sp, 20    # deallocate stack space
	jr   ra
# f2 only uses s4 and calls no fucntions
f2:
	addi sp, sp, -4    # make space on stack for 1 word
	sw   s4, 0(sp)
	...
	lw   s4, 0(sp)
	addi sp, sp, 4     #deallocate stack space
	jr   ra
```

![[Pasted image 20240911114737.png]]





