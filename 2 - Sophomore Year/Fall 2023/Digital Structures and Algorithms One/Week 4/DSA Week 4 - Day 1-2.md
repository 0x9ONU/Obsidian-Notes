Date: 11th September 2023
Date Modified: 11th September 2023
File Folder: Week 4
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Intro to Data Structures and Linked Lists Day 1
	- Describe what a data structure is
	- Describe waht an algorithm is and what makes a good algorithm

```
# Data Structure

```ad-summary
A way to organize, mangage, and store information  usable by a computer
```

- Basic data types
	- 'D' , -7, 3.14, 3.1415926535889
		- `char`, `int`, `float`, `double`
- Arrays
	- `int arr[5] = { -2, 7, -62, 45, 0 };`
	- Can randomly access elements
	- BUT, can't store different types of elements AND needs the heap to change its size
- Vectors
	- `vector<string> stringVec = {"cat", "dog"};`
	- More flexible than arrays
	- **can store strings**

# Mathematical Sets

A **set** is a collection of elements

```ad-summary
title: Types of Sets
- Finite sets:
	- Have a specific end
	- ex. ${1, 2, ..., n}$
- Infinite sets
	- $Z, R, C, Q$
	- Integers, real numbers, complex numbers, rationals
- Null set = $\emptyset$ = $\{ \}$
```

## Operations on Set Elements

**Unary operators** (Single element operators)
- NOT: NOT (TRUE) = FALSE
- Increment/decrement: 5++ = 6.
**Binary Operators** (two element operators)
- Multiplication
- Division
- Addition
- AND `&&` and OR ``||``

## Mathematical Functions

```ad-warning
Make sure that a single element in the input has only **ONE** output
```

# Dynamic Sets

Sets that change over time
- Primarily used in CS

**EXAMPLE**:

```c++
vector<string> stirngVec = {"cat", "dog"};
stringVec.push_back("goat");
//After: stringVec == {"cat", "dog", "goat"}
```

```ad-note
SHould include both the `<vector>` and `<string>` library
```

## Algorithms Talk

A good algorithm has the following:
- Incorporates time complexity
- Maximizes efficiency
- Organize the algorithm properly
- Maximize correctness
- Understanding memory/space complexity

# Dynamic Sets as Data Structures

Elements have attributes
- *Manipulated* (called **modifying operations**) or
- *Examined* (called **queries**)

```ad-important
title: Identifying attribute: **Key**

- **Total order** (notion of >, =, <, etc.)
	- Typcial >, =, < for integers or reals
	- Alphabetical order for word strings
- Unique (distinct) or not distinct (**multiset**)
	- {"cat", "dog"} vs. {"dog", "cat", "dog
- Sorting, min, max elements
	- Easy to get based on the keys following the 
```

```ad-note
**Satilite Data** - Data included witht he key
```

### Example of Circular Linked List

```c++
class StudentLL //Studnet Linked List class name, LL stands for Linked List
{
	private: //acess specifier for no user access outside of the class definition
	struct node {
		string keyItems; // key data member (used for sorting, searching, etc.)
		int numItems; // satellite data member (number of keyItems)
		float price; //satellite data member (price to sell keyItems)
		node* next; // linking member (pointer to the next student node)
	};
	node* head; // points to first node of the linked list
	node* tail; //points to the last node of the linked list
	public: //acess specifier so users can access them directly
	//member functions to come later
}
```

#comebacklater ex. 1
## Initial Linked List

**Head** is a pointer to the front of the list

**Tail** is the pointer to the end of the list

Using this, it creates a *circular linked list*, whose tail points to the head
- **singly linked list**
- Only has one linking member to the **next** student

```ad-warning
This is also **unsorted** due to the keys given out at random
```

## Operations on Dynamic Sets: 

### Search

```ad-note
title: Important identifiers
- $S$ = Dyanmic Set
- $k$ = key
- $x$ = element
- $x.key$ = key of element $x$
- $p_x$ = ptr to $x$
- `NIL` = nullptr
```

```ad-important
Query returns $p_x$ such that $x.key == k$, or NIL if no such $x$ exists in the set
```

```ad-note
- The worst case scenario of the search
	- Returns NIL
- Best case scenario
	- Head has the key
- Average-case
	- Halway thorugh the linked list
```
### Insert

Modifying operation that adds $x$ to the dynamic set $S$ using $P_x$. It is assumed $x$ has been initialized appropriately for the rules of the data structure.

```ad-note
The easiest ways to insert the new node into the linked list would be:
- Putting it as the head at the beginning
- Putting it as the tail at the end
```

```ad-important
title: Steps to Add a Tail
- Remove nullptr from the oirignal tail and point to newNode
- Have newNode point to nullptr
- Update tail to point to the newNode
```
