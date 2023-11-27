Date: 27th November 2023
Date Modified: 27th November 2023
File Folder: Week 14
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Stacks

## What is a Stack

A linear data structure that operates based on the Last-In-First-Out (LIFO) principle

**Main Operations**:
- Push
- Pop

![[Pasted image 20231127081805.png]]

```ad-important
title: Stack Terms
- Underflow state= empty stack
- Overflow state = completely full stack
- Push
- Pop
- Peek
![[Pasted image 20231127081828.png]]
```

## Different Ways of Accessing Data Members

- **Random Access**
	- Accessed Directly (Constant Time)
	- Arrays
- **Sequential Access**
	- Elements accessed in a specific order
	- Linked Lists
- **Limited Access**
	- Special ways of accessing sequentially
	- Aka a special case of sequential access

## Applications of a Stack

**Undo** operation in text editors

![[Pasted image 20231127081846.png]]

Browser **back** button

![[Pasted image 20231127081920.png]]

**Call Stack**

![[Pasted image 20231127081912.png]]

## Stack Implementations

In the standard library, stack is an **adaptor class**:
- Built on another data structure
	- I.e.
		- Arrays
			- Quick but limited size
		- Linked List
			- Extra overhead to allocate, link, unlink, deallocate, but not limited in size
		- Other Collection Structures

## Creating a Stack with Limited Access Using Arrays

**Public Member Functions**:
- `void push(int val)`
- `int pop()` 
- `int peek()`
- `bool isFull()`
- `bool isEmpty()`

**Private Data Members**:
- Array (`int[] A`)
- Index of The Current Top (`int i`)
- Max Size (`int n`)

```ad-question
What does a full and empty stack look like?
- Case 1: Top is the top element 
	- `top = -1` (empty)
	- `top = n-1` (full)
- Case 2: Top is the next empty spot
	- `top = 0` (empty)
	- `top = n` (full)
```

```ad-note
title: Other Considerations
- Check status of stack before pushing/popping elements or peeking
- Cannot rely on users to perform necessary checks
```

### Algorithm for Push

```ad-summary
title: Steps
1. Check if the stack is full or not
2. If the stack is full, then print error of overflow and exit the program
3. If the stack is not full, add it to the top and increment top
```

### Algorithm for Pop

```ad-summary
title: Steps
1. Check if the stack is empty or not.
2. If the stack is empty, then print error of underflow and exit the program.
3. If the stack is not empty, then reutrn the element at the top (decrementing top when appropriate)
```

### Time and Space Complexity for Main Functions

**Static**

|       | Push        | Pop         | Peek        |
| ----- | ----------- | ----------- | ----------- |
| **Time**  | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$ |
| **Space** | $\Theta(1)$ | $\Theta(1)$ | $\Theta(1)$            |

**Dynamic

|          | Push                              | Pop         | Peek        |
| -------- | --------------------------------- | ----------- | ----------- |
| **Time** | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(1)$ |
|  **Space**  | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(1)$ |         |                                   |             |             |

```ad-note
**Pop** has a different run time depending on implementation
- Can shrink the dynamic array as needed
- The above assumes that it **does not** shrink
```

## Implementation

```ad-question
Write the C++ cdoe to implement a simple integer stack class with 5 elements, and using -1 for the top index to implement empty
```

```c++
class Stack {

private:
	int top; //to mark the top element of the stack (-1 indicates empty)
	int arr[5]; //5-int static array as the stack container
public:
	Stack(); //Initialize with top = -1, no destructor needed since no dynamic memory
	void push(int x);
	int pop();
	int peek();
	bool isEmpty();
	bool isFull();
};

Stack::Stack() {
	
}

bool Stack::isEmpty() {

}

bool Stack::isFull() {

}

void Stack::push(int x) {
	if(isFull()) {
	
	} else {
	
	}
}
```
#comebacklater 

