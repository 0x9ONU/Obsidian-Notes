Date: 31st March 2025
Date Modified: 31st March 2025
File Folder: Week 10
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Deadlock and Starvation

## Objectives
1. Define and understand the condition of deadlock
2. Deadlock prevention
3. Deadlock avoidance (and its difference to deadlock prevention)
4. Deadlock detection
5. Integrated approach deadlock strategy
6. Analyze the dining philosophers’ problem

## Deadlocks

```ad-summary
title: Definition
The permanent blocking of a set of processes that eiher compete for system resocures or communicate wih each other. A set of processes is deadlocked when each process in the set is blocked awaiting an even that can only be triggered by another blocked process in the set
```

![[F6-1.jpg]]

## Scenario 1: Deadlocks Probable 

We are running on a uniprocessor system. Two processes are running ($P$ and $Q$), and require two resources; $A$ and $B$


| Process $P$ | Process $Q$ |
| ----------- | ----------- |
| …           | …           |
| Get $A$     | Get $B$     |
| …           | …           |
| Get $B$     | Get $A$     |
| …           | …           |
| Release $A$ | Release $B$ |
| …           | …           |
| Release $B$ | Release $A$ |



![[PXL_20250328_123455824.jpg]]

*Deadlock*

P Gets A → Q Gets B → P Gets B → Q Gets A

![[Operating Systems - Week 9 Day 3 2025-03-28 08.44.35.excalidraw | center]]
## Scenario 2: Deadlock Avoidance

| Process $P$     | Process $Q$ |
| --------------- | ----------- |
| …               | …           |
| Get $A$         | Get $B$     |
| …               | …           |
| **Release $A$** | Get $A$     |
| …               | …           |
| **Get $B$**     | Release $B$ |
| …               | …           |
| Release $B$     | Release $A$ |

![[Pasted image 20250331081442.png | center]]

![[Pasted image 20250331081508.png | center]]

## Resource Types

*Reusable*:
- Can safely be used by only one process at a time
- Once used, the resource can be reused

```ad-example
- Processors
- I/O
- Main Memory
- Secondary Memory
- Files
```


*Consumable*:
- Resources that can be created and destroyed

```ad-example
- Interrupts
- Signals
- Messages, Data in I/O buffers
```

## Deadlock with Reusable Resources

```ad-important
Resuable resources can be sued by one process at a time and not depleted by use
```

**Example**: two processes accessing a disk drive $D$ and a tape drive $T$
- Imagine the sequence of events: $p_0, p_1, q_0, q_1, p_2, q_2$

![[Operating Systems - Week 10 Day 1 2025-03-31 08.19.16.excalidraw | center]]

```ad-warning
DEADLOCK OCCURS
```

**Example**: Space is available for allocation of a maximum of 200KB, and the following sequence of events occur:

![[Operating Systems - Week 10 Day 1 2025-03-31 08.20.58.excalidraw | center]]

## Deadlock with Consumable Resources

Consider a pair of processes ($P1$ and $P2$). Each process attempts to receive a message from the other process and then sends a message to the other process:

![[Operating Systems - Week 10 Day 1 2025-03-31 08.23.12.excalidraw | center]]

## Resource Allocation Graph

![[Operating Systems - Week 10 Day 1 2025-03-31 08.25.47.excalidraw | center]]

**Key**:
- $\square$ → A resource
- Circle → A process
- Dot → An instance of a resource 

### Example 1: Deadlock and No Deadlock

![[Operating Systems - Week 10 Day 1 2025-03-31 08.27.11.excalidraw]]

### Example 2: Traffic Deadlock as a Allocation Graph

![[Operating Systems - Week 10 Day 1 2025-03-31 08.30.39.excalidraw]]

```ad-note
You still have that circular relationship that can be found in deadlocks
```

## Conditions for Deadlocks

*Conditions Leading to Deadlock*:
- Mutual Exclusion
	- Only one process may use a resource at a time
	- No process may access a resource until that has been allocated to antoher process
- Hold-and-wait
	- A process may hold allocated resources while awaiting assignment of other resources
- No Preemption
	- No resource can be forcibly removed form a process holding it

*These factors lead to*:
- Circular Wait
	- A closed chain of processes exists, such that each process holds at least one resource needed by the next process in the chain

## What Can We Do about Deadlocks?

1. **Prevent Deadlock**
	- Adopt a policy that eliminates one of the conditions
	- Can be: *direct* or *indirect*
2. **Avoid Deadlock**
	- Deny access to a resource if it leads to deadlock
3. **Detect Deadlock**
	- Attempt to detect the presence of deadlock and take action to recover

### *Indirect* Deadlock Prevention

**Option 1**: Disable mutual exclusion. *NO* you cannot disable it

**Option 2**: Disable hold-and-wait?
- Requires that process request all of its needed resources at one time and blocking the processes until all requests can be granted simultaneously
- *Drawbacks*:
	- Process may be blocked for a long time
	- Resources allocated to a process any remain unused for a considerable time while being denied to other processes
	- Would take a great deal of planning

**Option 3**: Allow preemption?
- If a process holding certain resources is denied a further request, that process must release its original resources and request them again
- OR if a resource is held by another process, the OS may preempt the other process and require it to release its resource
- *Drawback*:
	- Preemption can be applied only to processes of *different* priorities

### *Direct* Deadlock Prevention

**Option 4**: Circular Wait
- Define a linear ordering of resource types
- Deny resources when heir ordering in not linearly increasing or decreasing

```ad-example
At a four-way intersection, car 4 is denied access to quadrant (d,a) because the order si not lienarly increasing
```

![[Pasted image 20250331084446.png | center]]

### Prevention Vs. *Avoidance*

Deadlock *prevention* often works, but makes the system very inefficient

Deadlock *avoidance* instead allows the four conditions to happen, but does so carefully to avoid deadlocks

*Two types of avoidance*:
1. Don’t start a process if its demand might lead to a deadlock
2. Don’t allow a given incremental resource request to a process if this allocation might lead to deadlock

#### Process/Resource States

$n$ is the number of processes, $m$ is the number of resources

The *resource vector* $R$ contains the overall number of instances per resource on a system:

$$R=R(R_1, R_2, ..., R_m)$$

The *availability vector* $V$ contains the number of available instances per resource on a system

$$V=(V_1, V_2,...,V_m)$$

**Claim Matrix** (the maximum claim for each process of each resource)

$$\begin{bmatrix} C_{11} & ... & C_{1m} \\ C_{n1} & ... & C_{nm} \end{bmatrix}$$
```ad-note
$C_{ij}$ is the maximum requirement of process $i$ for resource $j$
```

**Allocation Matrix**

$$\begin{bmatrix} A_{11} & ... & A_{1m} \\ A_{n1} & ... & A_{nm} \end{bmatrix}$$

```ad-note
$A_{ij}$ is the current allocation of process $i$ for reosurce $j$
```

#### Process Initiation Denial

In general, the following must hold:
1. $R_j = V_j + \sum_{i=1}^n \quad \forall j$ (All resources must be either allocated or available)
2. $C_{ij} \le R_j \quad \forall i, j$ (No process can claim more than the total amount of resources in the system)
3. $A_{ij} \le C_{ij} \quad \forall i, j$ (No process is allocated more resources of any type than the process original claimed to need)

So, how can we tell if we can safely spawn a process? The following must hold:
- The *proposed amount* of claimed resources must be less than or equal to the total available
- In our math speak, $R_j \ge C_{(n+1)j} + \sum_{i=1}^n C_{ij} \quad \forall j$

```ad-note
- Works well
- Assumes the worst case scenario
- Very restrictive
```

#### Resource Allocation Denial

```ad-important
Also known as the Banker's algorithm
```

The current state of the system can be represented with our $R$ and $V$ vectors, and our $c$ and $A$ matrices

**Safe State**: When there is at least one sequence of resource allocations to processes that does not result in a deadlock

**Unsafe State**: When there is no sequence of resource allocations

```ad-question
*How does safe/unsafe state help us avoid deadlocks?*:
1. If a process asks for a resource, grant it
2. But before continuing, check if the process is in a safe state
3. If not, block the process until the state is safe
```

![[Pasted image 20250407082049.png]]

##### Resource Allocation Denial Example 1

![[Pasted image 20250407082302.png]]

![[Pasted image 20250407082429.png]]

![[Pasted image 20250407082436.png]]

![[Pasted image 20250407082450.png]]

![[Pasted image 20250407082458.png]]

##### Resource Allocation Denial Example 2

![[Pasted image 20250407082700.png]]

![[Pasted image 20250407082708.png]]

#### Deadlock Avoidance Advantages and Restrictions

**Advantages**:
- It is not necessary to preempt and rollback processes (as in detection)
- It is less restrictive than deadlock prevention

*Disadvantages and Restrictions*
- Max resource requirements for each process must be stated in advance
- Processes under consideration must be independent with no synchronization
- There must be a fixed number of resources
- No process may exit while holding resources

### Deadlock Detection

```ad-summary
title: Definition
A check for deadlock can be made as freuqently as each resource request, or less frequently, depending on how likely a deadlock is to occur.
```

**Advantages**:
- Leads to early detection
- Algorithm is simple

*Disadvantages*: Frequent checks consume processor time

#### Detection Algorithm

**Strategy**: Iterate through the processes and determine if they can terminate given the available competing processes.
- If so, mark them as good
- If not, leave unmarked

```ad-important
Those unmarked processes at the end of the algorithm are in a deadlock.
```

*Define*: 
- Request Matrix $Q$ such that $Q_{ij}$ represents the amount of resources of type $j$ requested by process $i$
- Same Availability Vector $V$ as previous algorihtms
- $W$ is a scratch variable

**Step 0**: Initially all processes are unmarked and are in the deadlock set

Processes are progressively marked from the deadlock set as follows:
1. Mark each process that has a row in the Allocation matrix as all zeros
2. Initialize a temp vector $W$ to $V$
3. Find process row in the $Q$ matrix for which resources are $\le W$, if no such row is found, terminate the algorithm
4. If such a process row is found, mark that process and add its Allocation row from $A$ to the $W$ vector

#### Detection Example

![[Pasted image 20250407083609.png]]

1. Initial $W = V = (0,0,0,0,1)$
2. $P_4$ has no allocation, so mark it
3. $P_3$ requests $\le W$, so mark $P_3$ as not in the deadlock set

$$W = (0,0,0,0,1) + (0,0,0,1,0) = (0,0,0,1,1)$$

Terminate the algorithm if $P_1$ or $P_2$ are still unmarked (i.e. we have a deadlock)

#### Deadlock Recovery Strategies

1. Abort all deadlock processes
2. Back up each deadlocked process to some previously defined checkpoint and restart all processes
3. Successively abort deadlocked processes until deadlock no longer exists
4. Successively preempt resources until deadlock no longer exists

