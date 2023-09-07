Date: 6th September 2023
Date Modified: 6th September 2023
File Folder: Week 3
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Command-Line Applications
- Pointers Revew

```

```ad-note
title: Homework
- [x] Do practice HW
- [ ] Take practice Exam
- [ ] STUDY
```

# Command-Line Applications

```c++
int main(int argc, const char* argv[])
```

**`int argc`**: The amount of arguments that were input into the program

`const char* argv[]` = Argument vector
- Read-only strings or C-string literals
	- **USE `const` QUALIFIER**

```ad-note
`argv[0]` is the name of the program. The passed arguments begin at `argv[1]` 
- This also applies to `argc`
```

**Command Line Syntax**:
`./my-program arg1 arg2 arg3 ...`

```ad-note
color: 255, 255, 0
Use atoi to convert string to int and atod to convert string to double
- Must have \<cstdlib\> and \<string\> to work
```
# Pass-By-Pointer

```c++
void doubleIt(int x, int *p) //Give an int pointer
{
	*p = 2 * x; //Dereferences. It changes the value `a` OUTSIDE of the funtction
}

int main() {
	int a=16;
	doubleIt(9, &a); //Give the memory address that will pass the value from the function
	return 0;
}
```

```ad-important
Because it is passed an address and dereferenced and assigned, it is able to change the value at the address **without** returning any value
```

```ad-warning
Make sure to dereference the pointer within the Function!!
```
# Reference Variables

A reference is an additional name to an existing memory location:
- Servers as an alternative name for an object

```ad-example
```c++
int x = 9
int *ref;
ref = &x; //Assigns the address of x to the pointer

int x = 9;
int& ref = x; //Assigns the address of ref to the address of x
```

```c++
int m = 10;
int& j = m; //j is a reference variable

cout << "value of m = " << m << endl; //prints 10

j = 18;
cout << "value of m = " << m << endl; //prints 18
```

## Pass-By-Pointer Example

```c++
void IndirectSwap(char *Ptr1, char *Ptr2) {
	char temp = *Ptr1;
	*Ptr1 = *Ptr2;
	*Ptr2 - temp;
}

int main() {
	char a = 'y';
	char b = 'n';
	IndirectSwap(&a, &b); //The addresses of the pointers MUST be passed in rather than their actual values
	cout << a << b << endl;
	return 0;
}
```
## Pass-By-Reference Example

```c++
void IndirectSwap(char& y, char& z) { 
	char temp = y;
	y = z;
	z = temp;
}

int main() {
	char a= 'y';
	char b = 'n';
	IndirectSwap(a, b); //The pass-by-reference is able to take in the variables just like a pass-by-value function
	cout << a << b << endl;
	return 0;
}
```

```ad-important
- No dereferencing is needed
- Uses less memory overall
```

# Pointers and Arrays

The name of an array points only to the first element not the whole array.

```c++
int arr[5] = {1, 2, 3, 4, 5}; 
int* p = arr;
cout << "First element is " << arr[0] << endl;
cout << "Address of the 1st element is " << arr; 
cout << "First element is: " << p[0] << endl; //Same as the 3rd line. The pointer becomes a reference to the array
```

```ad-summary
The name of the array is a static reference to the address of the whole array
```

## Array of Pointers vs. Pointers to Array

A pointer to an array points to the first element of the array
- Right next to each other 
- Increments by using the size of the data type used in bytes (ex. an int would go up by 4 bytes)

An array of pointers can point to various different elements across many different memory locations to make up an array.

# NULL Pointer vs. nullptr

- NULL is special value that indicates an empty pointer
- If youtry to access a NULL pointer,  the program will throw an error

```c++
int *p;
p = 0; // NULL is 0 address
cout << p << endl; //pirnts -
cout << &p << endl; //pritns address of p
cout << *p << endl; // ERROR
```

Use `nullptr` instead to avoid errors

# Memory Management

- Static Memory Allocation
	- Memory is allocated at complication time
	- Memory is acquired automatically
	- Memory is returned automatically when object goes out of scope


- Dynamic Memory Allocation
	- Done during run time
	- Memory is acquired by program with an allocation request
		- `new` operation
	- Dynamic objects can exist beyond the function in which they were allocated
	- Object memory is returned by an **deallocation request**
		- `delete` operation

## Examples

```c++
//Static

int a[200];
int b;
// ...

//Dynamic
int* ptr = nullptr;
ptr = new int[200]; //`new` returns the address of the first element of the array
int* ptr2 = new int; //Returns the address of the new integer
//...
delete [] ptr;
delete ptr2;
```

```ad-warning
Make sure that you do not do the following for dynamic memory allocation:
- Delete old references to avoid memory leaks
- Do not delete them too early, as it will grab garbage if it tries to dereference *after* deletion
```

## Memory Leak Problem

```c++
int *A = new int[5];
for (int i =0; i < 5; i++) A[i] = i;
A = new int[5]; //The original memory is lost with this code
```

## Dangling Pointer Problem

```c++
int *A = new int[5];
for (int i = 0; i < 5, i++) A[i] = i;
int *B = A;
delete [] A
int test = B[0] //ERROR: The array does not exist anymore and points to garbage
```






