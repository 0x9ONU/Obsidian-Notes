Date: 16th September 2024
Date Modified: 16th September 2024
File Folder: Week 4
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Graph 101

```ad-summary
title: Defintion
A collection of verticies/nodes connected together using edges/lines
```

```ad-example
![[ERTA - Week 4 Day 1 2024-09-16 13.07.30.excalidraw]]
```

Graph theory is important in the fields of:
- Networking
- Pathfinding (specifically in *weighted* graph theory)

# Finite State Machine

```ad-summary
title: Definition
Set of inputs, ouputs, states and transitions
- State graph defines input/ouput relationship
```

**State**: Description of current conditions what you believe to be true

**What is a state transition graph (or table)**: Graphical interconnection between states

**What is a controller?**: Software that inputs, outputs, and changes states.
- Accesses the state graph
- Implements the Finite State Machine

![[Mealy.png]]

```ad-example
**Schedule to State Machine**
- 7:30am: Come to office $\rightarrow$ Class Prep
- 9:00am: Web Development $\rightarrow$ class prep
- 1:00pm: ERTA
- 2:00pm: Office
![[ERTA - Week 4 Day 1 2024-09-16 13.13.08.excalidraw]]
```

## Anatomy of a FSM

A Finite State Machine Has:
- Inputs (sensors)
- Outputs (actuators)
- Controller
- State (transition) graph/table

## Types of Finite State Machines

**Moore**:
1. Perform output, which depends on the current state
2. Wait a prescribed amount of time (*optional*)
3. Input (when to change state)
4. Go to next state, which depends on the input and the current state

![[3-s2.0-B9780750683975000064-f06-80-9780750683975 1.gif]]

```ad-important
The output is determined by which state it is currently in
```

**Mealy**
1. Wait a prescribed amount of time (*optional*)
2. Input (when to change state)
3. Perform output, which depends on the input and the current state
4. Got to next state, which depends on the input and the current state

![[Figure-1.png]]

```ad-important
The output is determined on which branch it takes
```

## Moore Examples

```ad-example
Make a system where we wish to detect if an input stream has an odd number of 1s so far
```

- Input, 1 bit stream
- Output, 1 bit stream
- 1 if odd number of 1s
- 0 if even number of 1s

![[ERTA - Week 4 Day 1 2024-09-16 13.31.44.excalidraw]]

```c++
struct State{
	unsigned char out;
	unsigned long wait;
	unsigned char next[2]; //index of the state
}

typedef const struct State SType;
#define Even 0
#define Odd  1

SType Fsm [2]= {
	{0,100, {Even, Odd}}  // Even State (output, wait time, zero stay even, 1 go to odd)
	{1, 100, {Odd, Even}} // Odd State (output, wait, zero stay odd, 1 go to even)
}
```
# Exercise Demo

```ad-question
Make a Moore FSM of your class schedule of a typical class day
```

![[ERTA - Week 4 Day 1 2024-09-16 13.42.48.excalidraw]]





