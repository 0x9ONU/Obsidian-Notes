Date: 23rd August 2023
Date Modified: 23rd August 2023
File Folder: Digital Signal Processing
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Recall many C++ detials learned from Programming 1 (more to be reviewed in HW)
- Identify syntactic and sematic errors druing compilation

```

```ad-note
title: Homework
- [ ] 
```

# Debugging Exercises

## Exercise 1: Welcome to DSA

**Original Syntax**
```c++
#incldue <iostream>
using namespace std;

void main() {
	cout << "\n\n Print a welcome text in a separate line \n";
	cout << "----------------------------------------------\n";
	cout << " Welcome to"
	cout << " Data Structures and Algorithms 1 Class. " << endl;
}
```

**Fixed Syntax**:
- Make `main` return `int` rather than `void`
- add `;` to the seventh line

```c++
#incldue <iostream>
using namespace std;

int main() {
	cout << "\n\n Print a welcome text in a separate line \n";
	cout << "----------------------------------------------\n";
	cout << " Welcome to";
	cout << " Data Structures and Algorithms 1 Class. " << endl;
}
```

```ad-note 
title: Review: Preprocessor directive
- Preprocessor directive (#)
	- Preprocessed by complier
	- Do not need semicolon
- Adds code form pre-exisitn gsystem header file
	- iostream.h
	- Use angle brackets <> for pre-existing system header files
	- Use double quotes " " for user-defined header files
- Input streams (cin) and output streams (cout)
```

```ad-note
title: Review: Namespace
color: 180, 20, 190
- Using namespace directive
	- Asserts standard namespade (std) is used
		- includes cin, cout, endl, etc.
- Namespaces
	- Provide scope for indetifiers
	- Avoid naming collisions (meaning repeats)
	- ***Analogy***: Like a surname (last name) when first name is repeated (collision)
- Without this line, would need resolution operator ('::)
```ad-example
- 'std::cout'
- 'std::endl'
```

```ad-note
title: Note: 'main' function
- 'main' is the first funciton called in C++
- Should return an 'int'
- When finsied executing ti returns contorl to the oeprating system
	- Generally, returning 0 means successful execution
	- Returns any tother number otherwise
	- 'return 0;' is added automatically
- Other fucnitons are called form 'main'
```

```ad-abstract
title: Review: Curly Braces
- Define the ***scope*** of variables delcared within them
	- Variables defined iwthin curly braces cannot be used outside of curly braces.
	- Can overwrite a variable identifier withint he scope of the curly braces. 
	- Could reuse a variable identifier, but avoid when possible
```

```ad-important
title: Review: 'cout'
- Output stream object cout
	- **Insertion operator** (<<) transfers bytes tot he outpout stream object
- Newline character "'\n'" causes cursor to move to the beginning of the next line
- 'endl' is similar, but it also flushes the stream
```

### Variable Declaration in C++

- C++ is a **strongly typed language**
- ***Data Type*** of variables must be declared before being used
- Compiler is used to convert to machine language that is directly executable on a target processor.
	- Opposed ot an **interpreted language**
		- Not complied, but is read and executed by another program.
- Variable **datatype, identifier,** and **value**
	- Given value using assignment operator (=)
	- Variable **initialization** (not required, but the value would be unknown)

## Exercise 2: Increment & Decrement

**Increment**: means to increase the value by a discrete amount. In this case by 1.

**Decreemnt means to decrease the value by a discrete amount. In this case by 1.

**Pre-**: adjusts the value oft he variable ***BEFORE*** it is used int he current statement

**Post-** adjusts the value of the variable ***AFTER*** it is sued in the current statement

```ad-example
```c++
int testVal = 2;
int testVal2 = 4;
int result;
result = (testVal2++) * (++testVal);

//This comes out to 4 * (2+1) While testVal2 = 5 AFTER the result is printed
```

```ad-note
color: 100, 250, 150
title: Shorthand Assignmetn Operators
- Combiens assignemtn oporator (=) with arithmetic oeprator
```ad-example
```c++
int a=2, b=3, c=4;
c *=b; //like c = c*b
c /= a; // like c = c/a
```



