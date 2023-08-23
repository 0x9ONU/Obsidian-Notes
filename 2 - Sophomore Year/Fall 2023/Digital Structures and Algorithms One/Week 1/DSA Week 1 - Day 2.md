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

# Debugging Excercises

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


