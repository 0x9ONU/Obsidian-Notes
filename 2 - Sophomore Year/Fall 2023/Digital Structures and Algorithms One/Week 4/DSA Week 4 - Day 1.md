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

```ad-note
title: Homework
- [ ] Add picture to canvas
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

