Date: 7th February 2025
Date Modified: 7th February 2025
File Folder: Week 3
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Model of Programs

Source code is not a good representation for programs:
- Clumsy
- Leaves much information implicit

Compilers derive intermediate representations to manipulate and optimize the program.

A lot of details are present in the source code. Sometimes it is not the format that can help in optimizing the machine code generation.

## Data Flow Graph (DFG)

- Does *not* represent control
- Models basic block: code with no entry or exit.
- Describes the minimal ordering requirements on operations
- Mdoels the sequenital flow of the program code.
- Does *not* account for the repetition and conditional structures seen in the code.


### Single Assignment Form

```ad-summary
Avoids the unnecessary generation of loops or cyclic graphs when the code is converted into intermediate form for optimization
```

```c
x = a + b;
y = c - d;
z = x * y;
y1 = b + d; //Use another variable instead of y again
```

### Example

![[Pasted image 20250207110837.png]]

### DFGs and Partial orders

![[Pasted image 20250207111219.png]]

```c
a+b, c-d;
b+d, x*y
```

Partial ordering helps in identifying which parts of the code can be run independently as their dependences are eliminated. This facilitates the complier to take advantage of the hardware resources of the target processing system. For example, running the instruction in parallel on available execution units and/or processing cores.

## Control-Data Flow Graph

Uses *data flow graphs* as **components**. It has two types of nodes:
- Decision
- Dataflow

![[Pasted image 20250207111440.png]]

### Example

```c
if (cond1) bb1();
else bb2();
bb3();
switch(test1) {
	case c1: bb4(); break;
	case c2: bb5(); break;
	case c3: bb6(); break;
}
```

![[Pasted image 20250207111646.png]]

```ad-warning
Some students will get confused with a Control-Data Flow Graph and Block Diagrams
- Block Diagrams break down a system into small parts with both input(s) and output(s)
- CDFG represents data flow graphs that are put together. Not all of them have to have inputs and outputs
```

### For Loop

```c
for (i=0; i<N; i++) {
	loop_body();
}

i=0;
while(i < N) {
	loop_body();
	i++;
}
```

![[Pasted image 20250207111952.png]]

# Assembly and Linking

The embedded software is typically written in HLL and need to be executed on the embedded hardware platform. To accomplish this, the following intermediate steps are performed.

![[Pasted image 20250207112526.png]]

## Multiple-Module Programs

Programs may be composed of several files.

Addressing can change during processing:
1. **Relative Addresses** are measured relative to the start of a module
2. **Absolute Addresses** are measured relative to the start of the CPU address space.

To make it easy, the programs are developed in multiple files. SOme of these fiels may be executable code purchased as libraries.


## Assembler

**Main Tasks**:
- generate binary for symbolic instructions
- Translates labels into addresses
- Handle Pseudo-operations (data, etc.)

### Two-Pass Assembly

**Pass 1:** Generates Symbol Table
- Turns labels into real addresses
**Pass 2**: Generate Binary Instructions

### Symbol Table

```ad-summary
title: Definition
Contains the addresses of the symbols relative to te start of the object module.
```

MIPS and ARM instructions take 4 bytes of storage for each instruction. Intel instructions are of variable length that can take anywhere from 1 to more than 20 bytes of storage.

#### Table Generation

1. Use Program Location COunter (PLC) to determine address of each location
2. Scan program, keeeping ocunt of pLC
3. Addresses are generated at assembly time, not execution time.

### Pseudo-Operations

Pesudo-Operations do not generate instructions, but are instead turned into multiple instructions at assembly time:
- **ORG** sets program location
- **EQU** generates symbol table entry without advancing PLC
- **Data Statements** define data blocks

## Example

![[Pasted image 20250207113512.png]]