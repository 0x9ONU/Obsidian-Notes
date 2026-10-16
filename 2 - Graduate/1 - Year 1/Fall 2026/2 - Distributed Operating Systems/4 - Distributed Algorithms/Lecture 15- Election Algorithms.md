---
creation_date: 2026-09-28 10:11
last_modified: 2026-09-28 10:11
folder: Lectures
tags:
  - type/lecture
  - field/distributed-operating-systems
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Global State

```ad-summary
Many applications need to know the state of the whole system, rather than its own local state.
```

Used for:
1. Failure recovery
2. Distributed deadlock detection

```ad-question
How can you ifgure out the state of a distributed system?
- Each process is inependent
- No global clock or synchronization
```

**Distributed snapshot**: A consistent global state

### Distributed Snapshot Algorithm

![[Pasted image 20260928101901.png]]

### Election Algorithms

```ad-summary
Technique to picka  unique coordinator (aka *election leader*)
```

```ad-example
The *berekely algorithm*: Take over the role of a failed process in order to keep the system moving along.
```

### Bully Algorithm

- Each process has a unique numerical ID
- Processes know the IDs and address of every other process
- Communication is assumed reliable

```ad-important
Select process with the highest ID to run next
```

- Process initiates election if it just recovered from failure or if coordinator failed

**Three Message Types**;
1. `election`
2. `OK`
3. `I won`

Several processes can initiate an election *simultaneously*
- Need consistent results

```ad-warning
$O(n^2)$ messages required for $n$ processes
```

#### More Details

- Any process $P$ can initiate an election
- $P$ sends `Election` messages to all process with higher IDs and awaits `OK` messages
- If no `OK` messages, $P$ becomes coordinator and sends `I won` messages to all process with lower IDs
- If it receives `OK`, it drops out and waits for an `I won`
- If a process receives an `Election` message, it returns an `OK` and starts an election
- If a process receives a `I won`, it treats sender as a coordinator

#### Bully Algorithm Example

![[Pasted image 20260928103820.png]]

![[Pasted image 20260928104018.png]]

**Steps**:
1. Process 4 holds an election
2. Process 5 and 6 respond, telling 4 to stop
3. Now 5 and 6 each hold an election
4. Process 6 tells 5 to stop
5. Process 6 wins and tells everyone

```ad-note
The processes only send election messages to processes that have a *higher ID* than itself.
```
### Ring-Based Election

```ad-summary
Processes have unique IDs and are arranged in a logical ring. Each process knows its neighbors and selects the process with highest ID
```

- Begin election if just recovered or coordinator has failed.
- Send `Election` to closet downstream node that is alive.
	- **Sequentially pool each successor until a live node is found**
- Each process tags its ID on the message
- Initiator picks node with highest ID and sends a coordinator emssage

```ad-important
Multiple elections can take place at once. Allowed to use network bandwidth without much harm to the network's quality.
```

#### Example

![[Pasted image 20260928105620.png]]

- Both 5 and 2 decide on failure of the coordinator, about the same time.
- Both messages make a full round-trip around the network
### Comparison Between Ring and Bully

| Bully    | Ring             |
| -------- | ---------------- |
| $O(n^2)$ | $\Theta(2(n-1)$) |


```embed
title: "Difference Between Ring and Bully Algorithm - GeeksforGeeks"
image: "https://media.geeksforgeeks.org/wp-content/cdn-uploads/gfg_200x200-min.png"
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
url: "https://www.geeksforgeeks.org/dsa/difference-between-ring-and-bully-algorithm/"
favicon: ""
aspectRatio: "100"
```




# 3. Action Items & Follow-Up
- [x] Review lecture 15 for D-OS 📅 2026-09-30 ✅ 2026-09-30