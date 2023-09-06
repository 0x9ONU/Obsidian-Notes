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
- [ ] Do practice HW
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


