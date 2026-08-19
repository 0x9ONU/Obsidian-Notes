Date: 24th March 2025
Date Modified: 24th March 2025
File Folder: Week 9
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Software Security Day 4

## Writing Safe Program Code

Second component is processing of data by some algorithm to solve required problem

High-level languages are typically complied and linked into machine code which is then directly executed by the target processor.

```ad-warning
title: Security Issues
- Incorrect algoirhtm implementation
- Incorrect machine insutrctions for algorithm
- Invalid manipulation of data
```

### Correct Algorithm Implementation

Algorithms may no correctly handle all problem variant.
- Causes a bug in the program that could be *exploited*

TCP/IP implementation with initial sequence number:
-  Combination of sequence number as an identifier and authenticator of packets and failure to make them sufficiently unpredictable enables the attack to occur

Debug/test code left behind in the program
- Could be inappropriately in the release build
- May permit a user to bypass security checks and perform actions they would not otherwise be allowed to perform

```ad-example
The Morris Internet Wrom used leftover debug code, causing massive damage across the world
```

### Ensuring Machine Language Corresponds to Algorithm

```ad-warning
Ignored by mos programmers. They assume that the complier and interpreter generates and executes code perfectly
```

Requires comparing machine code with original source, which can be time consuming


Computer systems that have a high assurance level in a critical area could help to prevent these types of attacks in the future.

### Correct Data Interpretation

Data stored in bits/bytes in multiple ways
- Grouped as words or longwords
- Accessed and manipulated in memory or copied into processor registers before being used
- Interpretation depends on machine instruction executed

Different languages provide different capabilities for restricting and validating interpretation of data in variables
- Strongly typed languages are more limited/safer (C++, Java, etc.)
- Other languages allow more liberal interpretation of data and permit program code to explicitly change their interpretation
 
### Correct Use of Memory

Issues caused by dynamic memory allocation
- Unknown amounts of data
- Allocated when needed, released when done
- Can be exploited and create a memory leak
- Steady reduction in memory available on the heap to the point where it is completely exhausted.

Many older languages have no support for dynamic memory allocation, while modern languages handle it automatically

### Preventing Race Conditions

Without synchronization of accesses, i is possible that values may be corrupted or changes lost due to overlapping access, use, and replacement of shared values
- Arise when writing concurrent code whose solution required the correct selection and use of appropriate synchronization primitives

**Deadlock**: Processes or threads wait on a resource held by the other
- One or more programs might have to terminate to fix this issue

Might use the *lockfile* technique:
- Process must create and own the *lockfile* in order to gain access to the shared resource
- However, a program might ignore the lockfile so synchronization and implementation must be enforce

#### File Locking Example

![[Pasted image 20250324144944.png]]

```ad-important
Saves the processes from havinng a race condition.
```

## Operating Systems Interactions

Programs execute on systems under the control of an *operating system*:
- Mediates and shares access to resources
- Constructs execution environment
- Process includes info such as variables and command-line arguments as external input
- Need validation before use

Systems have a concept of multiple users:
- Resources are owned by a user and have permissions granting access with various rights to different categories of users
- Programs need access to various resources, however excessive levels of access are dangerous
- Concerns when multiple programs access shared resources such as a common file

![[Pasted image 20250324143256.png]]

### Environment Variables

![[Pasted image 20250324143410.png]]

### Vulnerable Compiled Programs

Programs can be vulnerable to `PATH` variable manipulation.

If dynamically linked, may be vulnerable to manipulation of `LD_LIBRARY_PATH
- Used to locate suitable dynamic library
- Must either statically link privileged programs or prevent use of this variable

### Use of Least Privilege

**Privilege Escalation**:
- Exploit of flaws may give attacker greater privileges

**Least Privilege**
- Run programs with least privilege needed to complete their funcition

**Determine appropriate user and group privileges required**:
- Decide whether to grant extra user or just group privileges

```ad-important
Ensure that privioleged program can modify only those files and directories that are necessary
```

### Root/Admin Privileges

![[Pasted image 20250324144202.png]]

### System Calls and Standard Library Functions

Used for common operations

However, programmers make incorrect assumptions about their operation:
- If incorrect, behavior is not what is expected
- May be caused by the system optimizing access to shared resources
- Results in requests for services being buffered, re-sequenced, or otherwise modified
- Optimizations can conflict with a program’s goals

### **Example**: Global Data Overflow Attack

![[Pasted image 20250324144539.png]]

### Safe Temporary Files

Many programs might use temp files:
- often in a common, shared system area
- Must be unique, not accessed by others
- Named after the process ID

```ad-warning
These unique names can be predictable and an attacker might guess and attempt to create it's own file between program checking and creating
```

**Secure temporary file creation** requires the use of random names, atomic system primatives, secure `C` file tmp creation functions, minimum access, closed and unlinked once execution complete.

![[Pasted image 20250326141201.png]]

### Other Program Interactions

1. Programs may use functionality and services of other programs:
	- Vulnerabilities can result unless care is taken
	- When the program did not adequately identify all the security concerns that might arise can be concerning
	- Occurs with the current trend of providing Web interfaces to program

2. Issue of data confidentiality/integrity

3. Detection and handling of exceptions and errors generated by program interaction is also important from a security perspective.

### Handling Program Output

Final component is program output
- May store output for future use, sent over net, or displayed
- May be text or binary

Output must conform to the expected form and interpretation

Programs must identify what is permissible output content and filter any untrusted data

Assumptions of common origin policy may not be valid

