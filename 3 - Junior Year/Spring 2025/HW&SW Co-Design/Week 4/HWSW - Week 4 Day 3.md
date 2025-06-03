Date: 15th February 2025
Date Modified: 15th February 2025
File Folder: Week 4
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Operating Systems Day 2

## Reactive Systems

Respond to *external* events:

```ad-example
- Engine controller
- Seat Belt Monitor
```

Requires real-time reponse:
- System architecture
- Program Implementation

```ad-note
May require a chain reaction among multiple processors
```

## Tasks and Processes

**Task**: A functional description of a connected set of operations
- A collection of processes

![[Pasted image 20250215174619.png]]

**Process**: A *unique execution* of a program
- Several copies of a program might be running at the same time or at different times
- Has it’s own state
	- Registers
	- Memory
- OS *manages* processes


### Multiple Processes

Multiple tasks = multiple processes

Can help with **timing complexity**:
- Multi-Rate
- Asynchronous input

```ad-example
Multi-rate -> Multimedia and Automotive
Asynchronous input -> UI and Communication Systems
```

### Multi-Rate Systems

- Tasks can be either synchronous or asynchronous
- Synchronous tasks may *recur* at different rates
- Processes run at different rates based on the *computational needs* of the tasks.

## Examples

### Text Compression Engine

![[Pasted image 20250215175054.png]]

**Multi-Rate System**: Input is always 7-bits, but after characters are compressed their *size can vary*

Can include an **asynchronous input**: user can choose to not compress data

### Engine Controller

![[Pasted image 20250215175224.png]]

## Real-Time Systems

```ad-summary
title: Definition
A system that performs a computation to conform to *external* timing constraints.
```

**Release Time**: The time at which process becomes ready

**Deadline**: Time at which process must finish

![[Pasted image 20250215175459.png]]

**Deadline Frequency**: Either *Periodic* or *Aperiodic*

**Deadline Types**:
- *Hard*: Failure to meet deadline causes system failure
- *Soft*: Failure to meet deadline causes degraded response
- *Firm*: Late response is useless but some late responses can be tolerated.

### Rate Requirements on Processes

**Period** Interval between process activations

**Rate**: Reciprocal of Period

```ad-warning
Initiation rate may be *higher* than period. Several copies of the process might be running at once.
```

![[Pasted image 20250215175612.png]]

### Timing Violations

Happens when a process *doesn’t finish* by the deadline

**Hard Deadline**: System fails if missed.

**Soft Deadline**: User may notice, but system doesn’t necessarily fail

### Task Graphs

```ad-important
Tasks may have **data dependencies**, which means they must execute in a certian order
```

**Task Graph** shows data/control dependencies between processes

![[Pasted image 20250215180916.png]]

#### Communication Between Tasks

Task graphs assumes that **all processes** in each task run at the *same rate*, tasks do not communicate.

```ad-warning
In reality, some amount of inter-task communication is necessary. It is hard to require immediate response for multi-rate communication.
```

![[Pasted image 20250215181029.png]]






