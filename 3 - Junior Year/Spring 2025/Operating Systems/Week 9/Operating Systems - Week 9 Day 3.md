Date: 28th March 2025
Date Modified: 28th March 2025
File Folder: Week 9
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Concurrency Day 4

## Message Passing

```ad-note
Another case study in synchronization
```

When processes interact with one another, *two* fundamental requirements must be satisfied:
1. **Synchronization**: To enforce mutual exclusion
2. **Communication**: To exchange information

### Message Passing Primaitives

Two atomic primatives:
- `Send(dest, m)`
- `Receive(s, m)`

The send can be *blocking* or *non-blocking*

**Three Combinations**:
1. *blocking send, blocking receive*: Sometime referred to as rendezvous. It has tight synchronization
2. *non-blocking send, blocking receive*: Most common type. Sender can quickly send messages to different receivers, but the receiver must receive message before doing useful work
3. *non-blocking send, non-blocking receive*

### Direct versus Indirect Addressing

#### Direct Addressing

Sent primitive specifies destination

Receive primitive specifies source, which can be:
- *Explicit*
- *Implicit*

#### Indirect

Messages are sent to mailboxes

Sender sends a message to a mailbox (*queue*)

Receiver picks up message from the mailbox
- Sender → Mailbox → Receiver

```ad-important
Decouples the sender and the receiver
```

![[mailboxport.gif | center]]

### Message Passing with Mutual Exclusion (Indirect)

*Assumptions*:
- Blocking receive
- Nonblocking send
- Messages sent are only received by only one receiver
- If the message queue is empty, hen all receivers are blocked

```c
const int n = // Number of processes
void P(int i) {
	message msg;
	while (true) {
		receive(box, msg);
		// Critical Section
		send(box, msg);
		// Remainder
	}
}
```