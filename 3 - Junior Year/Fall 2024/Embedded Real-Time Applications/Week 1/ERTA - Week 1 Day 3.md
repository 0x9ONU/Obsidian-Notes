Date: 30th August 2024
Date Modified: 30th August 2024
File Folder: Week 1
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Introduction to ARM Cortex-M Assembly Language

![[ERTA - Week 1 Day 3 2024-08-30 13.15.41.excalidraw]]

## How is Assembly like C++?

```ad-note
Very similar to C++
```

**C++ Example**
```c++
int a = b + 5
```
- Has an operation (what is happening?)
	- $+$
- Has operands (What is the operation happening to?)
	- `b, 5`
- Has memory location to store the result
	- `a`

**Assembly Example**
```arm-asm
ADD R0, R1, #5
```
- Operation: `ADD`
- Operands: `R1` and #5
- Memory location: `R0`

### How are they different?

**Looping**

```c++
for(int i = 0; i < 20; i++) {
	someFunc();
}
```

```arm-asm
	MOV R4, #0      ; R4 = 0
loop CMP R4, #20    ; index >= 20
	BHS done        ; if so, skip to done
	BL someFunc     ; someFunc function
	ADD R4, R4, #1  ; R4 = R4 + 1
	B loop
done
```

```ad-note
`#x` is a literal constant
```

