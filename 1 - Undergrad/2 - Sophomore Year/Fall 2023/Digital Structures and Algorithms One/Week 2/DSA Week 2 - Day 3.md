 Date: 1st September 2023
Date Modified: 1st September 2023
File Folder: Week 2
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-note
title: Homework
- [ ] Add picture to canvas
```

# Memory Structure Continued

```ad-note
There are 4 bits *per* hex digit.
- In 32-bit architecutre, there ar e8 total hex digits
```

## Computer Memory

Each variable is assigned a memory cell (where the size depends on the data type) and the variable's data is stored there.

# Pointers

A reference to another variable/memory location in a program
- Used to change variable s inside a function (reference parameters)
- Used to remember a particular member of a group (such as an array)
- Used in dynamic (on-the-fly) memory allocation (especially of arrays)
- Used in build complex data structures (linked lists, stacks, queues, trees, etc.)

```c++
#include <iostream>
using namespace std;
int main() {
	int number = 0;
	int number = 1;
	int numptr = &number;
	int numptr2 = &number2;
	// get the input - convert if it is negative
	cout << "Address of number: " << numptr << endl;
	cout << "Value of number: " << *numptr << endl;
	cout << "Address of number2: " << numptr2 << endl;
	cout << "Value of number2: " << *numptr2 << endl;
}
```

## Strength of Pointers vs. Java

A pointer is a **variable** that holds the *address* of some other variable.

```ad-important
In Java, you cannot directly access the memeory of such object! Only by **reference**. **C++ can access them directly**. It can point to anything and has access to every memory location.
```

```ad-note

The **null** value in C++ is the number 0 (memory address 0)
```

## Pointer Variable Definition

Basic syntax: *`Type *Name`*

```ad-example
- int *P
- flaot *Q
- char *R
```

int (AP[5])

## Pointer Exercise

```ad-question
Create a program that declares and initalizes a `char` variable & and a `char` pointer, and then prints to the console:
1. The value of the `char` using the variable
2. The value of the `char` using the pointer (dereference it using `*`)
3. Print the address of the `char` using the variable (address operator `&`)
4. Print the address using the pointer.
```

```c++
#include <iostream>
using namespace std;

int main() {
	char character = 'h';
	char* charPnt = &character;
	
	cout << "The value of the character using the variable is: " << character << endl;
	cout << "The value of the character using the pointer is: " << *charPnt << endl;
	cout << "The address of the character using the variable is: " << (void*)&character << endl;
	cout << "The address of the character using the pointer is " << (void*)charPnt << endl;
}
```
 
## Address Operator `&`

Returns the memory address of the variable it is placed in front of

```ad-note
`address = &variableName`
```

## Dereferencing Operator `*`

We cna access the value store din the variable pointed to by using the dereferencing operator (`*`)

### Assigning a value to a dereferenced pointer

A pointer *must* have a value before you can dereference it (follow the pointer)

```c++
//NOT GOOD
int *x;
*x = 3;

//GOOD
int foo;
int* x;
x = &foo;
*x = 3;
```

## Points of Confusion

- Declaring a pointer means only that it is a pointer: `int* p`
- Don't be confused with the dereferencing operator, which is also written with an asterisk `*`

```ad-important
They are simply tow different tasks represented with the same sign
```

```c++
int a = 100, b = 88, c = 8;

int *p1 = &a, *p2, *p3 = &c;

p2 = &b;
p2 = p1;
b = *p3;
*p2 = *p3;
cout << a << b << c;

//Result is 8, 8, 8
```





