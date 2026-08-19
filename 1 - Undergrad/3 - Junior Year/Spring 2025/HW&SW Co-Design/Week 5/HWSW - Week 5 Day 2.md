Date: 19th February 2025
Date Modified: 19th February 2025
File Folder: Week 5
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Preemptive Operating Systems

## Review: What are they?


```ad-important
Solves the fundamental problems of a cooperative multitasking system.
```

- It executes processes based upon timing requirements provided by the system designer.
- The most reliable way to meet timing requirements accurately is to build a preemptive operating system and to use priorities to control what process runs at any given time.

## Preemptive Scheduling

We want to share the CPU across two processes. The **kernel** is the part of the operating system that determines what process is running.
- Activated periodically by the timer
- Length of the timer period is known as the **time quantum** because it is the *smallest increment* in which we can *control CPU* activity.
- Determines what process will run next and causes that process to run.
- On the next timer interrupt, the kernel may pick the same process or another process to run.

![[Pasted image 20250219110603.png]]

## Context Switching

Uses set of registers that define a process’s state is its context (stored in a record)
- Moves the CPU from one process’s context to another
- *Context switching code is usually assembly*

### `freeRTOS.org` Context Switch

```ad-note
Used with ESP32 (RISC-V) and some ARM microcontrollers
```

Steps:
1. `PreemptiveTick()` is called when the timer tick.
2. `SIG_OUTPUT_COMPARE1A` responds to the timer interrupt and uses `portSAVE_CONTEXT()` to swap out the current task context.
3. `TaskIncrementTick()` updates the time and `vTaskSwtichContext` chooses a new task
4. `portRESTORE_CONTEXT()` swaps in the new content

![[Pasted image 20250219111117.png]]

## Priority-Driven Scheduling

Each process has a *priority*
- CPU goes to highest-priority process that is ready

They determine scheduling policy:
- Fixed priority
- Time-varying priorities.

### Example

Rules:
- Each process has a fixed priority (1 = highest)
- Highest-priority ready process gets CPU
- process continues until done

*Processes*:
- P1: priority 1, execution time 10
- P2: priority 2, execution time 30
- P3: priority 3, execution time 20

```ad-note
Not a complete scenario since we are *not* including periods.
```

![[Pasted image 20250219111438.png]]

```ad-summary
When the system begins execution, P2 is the only ready process, so it is selected for execution. At time 15, P1 becomes ready; it preempts P2 and begins execution because it has a higher priority. Because P1 is the highest-priority process in the system, it is guaranteed to execute until it finishes. P3's data arrive at time 18, but it cannot preempt P1. Even when P1 finishes, P3 is not allowed to run. P2 is still ready and has higher priority than P3. Only after both P1 and P2 finish can P3 execute.
```

## The Scheduling Problem

Can we meet all deadlines? We **MUST** meet deadlines in *all cases*

How much CPU horsepower do we need to meet our deadlines?

- **Periodic process**: executes on (almost) every period.
- **Aperiodic process**: executes on demand.
	- Analyzing aperiodic process sets is harder---must consider worst-case combinations of process activations. 

## Scheduling Metrics

1. Ability to satisfy all deadlines
2. CPU utilization - percentage of time devoted to useful work
3. Scheduling overhead - time required to make scheduling decision

### Rate Monotonic Scheduling (RMS)

**RMS** (*Liu and Leyland*): Widely-used, analyzable scheduling policy. 

```ad-important
Proved that you should give the *highest priority* to a process with the **shortest period**.
```

*Assumptions*:
1. All processes run on a single CPU
2. Zero context switch time
3. No data dependencies between processes Process execution time is constant
4. Deadline is at end of period
5. Highest-priority ready process runs.

**Priorities**
1. Optimal (fixed) priority assignment:
	- *Shortest*-period processes gets *highest* priority
	- Priority inversely proportional to period
	- Break ties arbitrarily
- No fixed-priority scheme does better

#### Rate-Monotonic Analysis (RMA)

**Response Time**: Time required to finish process

**Critical Instant**: Scheduling state that gives worst response time.
- Occurs when all higher-priority processes are ready to execute
- Worst-case
- The process is delayed as much as possible

#### Symbols for RMA

$T_i$ is computation time of process $i$; $\tau_i$ is the period of process $i$

![[Pasted image 20250219112709.png]]

#### Equations

Consider two processes $P_1$ and $P_2$
- $P_1$ has a period $\tau_1$ and an execution time $T_1$
- $P_2$ has a period $\tau_2$ and an execution time $T_2$
- $\tau_1 < \tau_2$

If we give higher priority to $P_1$, then:

$$\lfloor \frac{\tau_2}{\tau_1}\rfloor T_1 + T_2 \le \tau_2$$
If we give higher priority for $P_2$, then:

$$T_1+T_2 \le \tau_1$$

Clearly the *first* constraint is easier to satisfy

#### RMS CPU Utilization

$$U = \sum_0^i T_i/\tau_i$$

Given $m$ tasks and ratio between any two periods less than *two*:

$$U = m(2^{1/m}-1)$$

```ad-warning
This is the upper-bound for tasks. As the amount of tasks approches infinity ($\lim_{m \to \infty}$), you loose **30%** of your CPU usage
```

RMS may not be able to use 100% of CPU, even with zero context switch overhead.
- Must keep idle cycles available to handle *worst-case scenarios*
- RMS guarantees all processes do not exceed CPU cycle itme.

Efficient implementation:
- Scan processes
- Choose highest-priority active process.

#### Working Example: Utilization < 100%

![[Pasted image 20250219114154.png]]

#### Non-Working Example: Utilization > 100%

![[Pasted image 20250219114751.png]]

Hyperperiod = 12
- P1 needs to be executed 3 times → 3x2 = 6
- P2 needs to be executed 2 times → 2x3 = 6
- P3 needs to be executed once → 1x3 = 3

$$12 - 6-6-3 = -3$$
```ad-warning
there is not enough time in the hyperperiod to execute all the tasks amount of times that they need to execute. The scheduler would then fail
```











