Date: 9th October 2024
Date Modified: 9th October 2024
File Folder: Week 7
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Debugging

## Debugging Theory

Every programmer is faced wit the need to debug and verify the correctness of his or her software

```ad-summary
A debugging instrument is hardware or software used for the purpose of debugging
```

**Hardware**:
- Logic Analyzer
- Oscilloscope

**Software-Level Tools**:
- Simulators
- Monitors
- Debuggers
- Manual tools like inspection and print statements.

## Testing Method

**Black Box**: Simply observing the inputs and outputs without looking inside.
- Debugs the functionality

**White Box**: Allows you to control and observe the internal workings of a system
- A common mistake is to just do black box testing
- Effective debugging uses both. One must always start with black-box testing by subjecting a hardware or software module to appropriate test-cases

![[images 2.png]]

## Stabilization

The *first* step in debugging

```ad-summary
Stabilized by creating a *test rotuine that fixes* all the inputs. In this way, we cna reproduce the exact inputs over and over again.
```

Allows precise measurements on the effects the inputs have on the outputs.

```ad-important
Prevents irrelevant input fluctuating uncontrollably.
```

### Modular Programming

Define a fixed set of inputs to test, run the system on these inputs, and record the outputs.

**Advantages**:
- Allows for modular debugging

## Intrusiveness

Most users use manual methods for locating and correcting program errors:
- Desk-checking
- Print statements

```ad-warning
A real-time system cannot be debugged with simple print statements
- Requires too much time to execute for embedded systems
- This is *too intrusive*
```

```ad-summary
The measure to which the debugging itself affects the system being measured
```

Try to be as negligible as possible to minimize intrusiveness

**Measure of Intrusiveness**: $t/\Delta t$
- The fraction of the time consumed by the process of debugging itself
- $t$: Time to execute the debugging instrument
- $\Delta t$: Average time between execution of the debugging tool
- Try to *minimize*


