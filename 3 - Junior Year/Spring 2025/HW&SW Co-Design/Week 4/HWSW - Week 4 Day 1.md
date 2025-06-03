Date: 10th February 2025
Date Modified: 10th February 2025
File Folder: Week 4
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Assemblers & Compliers

## Linking

Combines several object modules into a single executable module.
1. Put modules in order
2. Resolve labels across modules

![[Pasted image 20250210110754.png]]

```
label1    LDR r0, [r1]
		  ADR a
		  B label2
var1      %1

label2    ADR var1
		  B label3
x         % 1
y         % 1
a         % 10
```

![[Pasted image 20250210111115.png]]

![[Pasted image 20250210111121.png]]

### Module Ordering

Code modules must be placed in absolute positions in the memory space. 

**Load Map** or **Linker Flags** control the order of modules

### Dynamic Linking

Some operating systems link modules dynamically at *run time*:
- Shares one copy of library among all existing programs
- Allows programs to be updated with new versions of libraries.

## Compliers

![[Pasted image 20250210111338.png]]

### Compilation Methods

Support of functions or procedures

As we have seen in computer architecture, sometimes you need to use the stack to backup register files before using them

Use *Stack Pointer* and *Frame Pointers*
- Frames are loaded into the stack in order
- The stack pointer should not exceed the frame pointer

### Example: Arithmetic Expressions

$$x = a*b + 5*(c-d)$$

![[Pasted image 20250210111755.png]]

```arm-asm
: Operation 1 (*)
ADR r5, a
MOV r1, [r4]
ADR r4, b
MOV r2, [r4]
: Operation 2 (-)
ADR r4, c
MOV r4, [r4]
ADR r4, d
MOV r5, [r4]
SUB r6, r4, r5
: Operation 3 (*)
MUL r7, r6, #5
: Operation 4 (+)
ADD r8, r7, r3
: Assign to x
ADR r1, x
STR r8, [r1]
```

### Conditional Operations


![[Pasted image 20250210112234.png]]

```arm-asm
	ADR r5, a
	LDR r1, [r5]
	ADR r5, b
	LDR r2, b
	ADD r3, r1, r2
	BLE L3
: true case
	LDR r3, #5
	ADR r5, x
	STR r3, [r5]
	B stmend
: false case
L3  LDR r3, #7
	ADR r5, x
	STR r3, [r5]
stmend
```

### Arrays

![[Pasted image 20250210112701.png]]

```ad-warning
We must worry about if the array is byte or word addressable, which changes your offset in the array.
```
### Optimization

**Function Inlining:**
- Substitute subroutine call to a function with an equivalent call to the function body
- Eliminate the subroutine overhead

**Function Outlining:**
- Replace similar sections of the code with a call to an equivalent function
- Reduce code size

**Loop Unrolling**:
- May expand the size of the code
- Sometimes compliers can do partial loop unrolling

```c
for (i = 0; i < N; i++) {
	a[i]=b[i]*c[i]
}

...

a[0]=b[0]+c[0]
a[1]=b[1]+c[1]
a[2]=b[2]+c[2]
a[3]=b[3]+c[3]
```

```ad-example
title: Other Examples
- Loop Fusion
- Dead Code Elimination
- Regsiter Allocation
- Operator Scheduling for Register Allocation
```

#### Register Allocation Examples

##### Example 1

![[Pasted image 20250210114555.png]]

![[Pasted image 20250210114602.png]]


```
LDR r0, [p_a]     ; load a inot r0 using pointer to a
LDR r1, [p_b]     ; Load b into r1
ADD r3, r0, r1    ; Compute a+b
STR r3, [p_w]     ; w = a + b
LDR r2, [p_c]     ; Load c into r2
ADD r0, r2, r3    ; Compute c + w, reusing r0 for x
STR r0, [p_x]     ; x = c + w
LDR r0, [p_d]     ; load d into r0
ADD r3, r2, r0    ; compute c + d, reusing r3 for y
STR r3, [p_y]     ; y = c + d
```

## Compiler Summary

*Can?*
- You should always when you can

*Why?*
- Reduce number of Registers
- Pipelining & Parallel Processing
- Utilize the Resources
- Power

*Limitations?*
- Data Dependences: (RAW, WAW, WAR)
- Control Hazards





