Date: 29th November 2023
Date Modified: 29th November 2023
File Folder: Week 14
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- FIFO Queues

```

# FIFO Queues

## What is a Queue?

A linear data structure that operates based on the First-In-First-Out (FIFO) principle

**Main Operations**
- Enqueue
	- Add to Rear
- Dequeue
	- Remove from Front

```ad-example
title: Applications
- Printing
- Web servers handling incoming requests
```

## Implementation

In `std` library, queue is an adaptor class:

Uses the following members:
- Public Members
	- `Queue(int capacity=10)`
	- `void/bool enqueue(int x)`
	- `int dequeue()`
	- `int peek()`
	- `bool isFull()`
	- `bool isEmpty()`
	- IF DYNAMIC, A DESTRUCTOR IS NEEDED: `~Queue()`
- Private Members
	- STATIC: `int arr[capacity]`
	- VARIABLE: `int* arr`
	- `int front`
	- `int rear`
	- `int capacity`

```ad-note
For the constructor, the `10` is the defualt value of the capacity if nothing is given
```
## Linear vs. Circular

```ad-important
Values for front and rear could be different based on whether it is a:
1. Linear Queue
2. Circular Queue
```

**Linear**: Dequeuing Requires Shifting Values Leftward
- Use `front = 0` (keep it) and `rear=-1` for empty queue (initalization)
- Enqueue an element by first incrementing the rear and then inserting the new value at `arr[rear]`
	- Deque the value at `arr[front]`; shift the values to fill the missing value

```ad-warning
$\Theta(n)$ run-time for dequeue because it needs to shift all the values over by one 
```

**Circular**: Move both the front and rear indices in the array, allowing  the queue to "wrap around"
- Use `front = 0` and `rear = 0` for initialization, later `front==rear` means the queue is empty
- In this case, rear references the first open spot rather than the last element. *Loses one spot* in the array for the queue
- Enqueue an element by first inserting the new value at `arr[rear]` and then increment the rear (modulo `n`). The front points to the first element in the queue.
- Dequeue the value at `arr[front]` and increment the front index (modulo `n`)
	- $\Theta(1)$ because it does not need to shift, only change two indexes

```ad-note
title: Incrementing the Front and Rear of the Circular Queue
1. Make sure **NOT** full/empty
2. Increment as follows (wrapping around)
- `front=(front + 1) % capacity`
- `rear = (rear +1) % capacity`
```

```ad-important
title: Indicating the "full" Condition
`front == (rear + 1) % capacity`
```
## Algorithm for Enqueue

1. Check if the queue is full or not.
2. If the queue is full, print queue is full and can either exit the program or return false.
3. If the queue is not full, add the element (increment rear when appropriate) and return true (if applicable).

## Algorithm for Dequeue
1. Check if the queue is empty or not
2. If so, print queue is empty and exit
3. Otherwise, return the element (increment front when appropriate)

```ad-question
If implemented on a static array or linked list, what would the asymptotic run-time and space complexity be for eqnquee, dequeue, and peek?
```

| ***Circular & Linked List*** | Enqueue     | Dequeue     | Peek        |
| -------------- | ----------- | ----------- | ----------- |
| **Run-Time**   | $\Theta(1)$  | $\Theta(1)$ | $\Theta(1)$            |
| **Space**      | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |

| ***Linear*** | Enqueue     | Dequeue     | Peek        |
| ------------ | ----------- | ----------- | ----------- |
| **Run-Time** | $\Theta(1)$ | $\Theta(n)$ | $\Theta(1)$ |
| **Space**    | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |

