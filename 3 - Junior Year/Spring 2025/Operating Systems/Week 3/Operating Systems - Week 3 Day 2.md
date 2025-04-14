Date: 5th February 2025
Date Modified: 5th February 2025
File Folder: Week 3
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# C vs. C++ Differences


| C                                                                                                    | C++                                                                                    |
| ---------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| Use GCC to compile                                                                                   | Use G++ to Compile                                                                     |
| Uses different  libraries (ex. `<stdio.h>`)                                                          | Contains all the libraries from C AND MORE ex. `<iostream>` and `using namespace std;` |
| No strings, only character pointers (Aka C-Strings) which is terminated by **NULL** character (`\0`) | Has strings                                                                            |
| Base Language                                                                                        | Superseeds C                                                                           |
| uses primarily `printf` to output to console                                                         | Can use *either* `printf` or `cout`                                                    |
| Only has `struct`                                                                                    | Can make `objects`                                                                     |

# I/O C Programming in Unix-Based OS

## What is Unix?

Remember that Unix is the grandparent OS to:
- GNU/Linux
- MacOS
- FreeBSD
- Android

```ad-note
C was originally developed for Unix
```

## How Do We Access Components In C

```ad-question

How do I access the following using C?:
- The CPU?
- The main memory?
- I/O?

```

We can access it using various different lines of code, that get turned into assembly to run on the CPU and access the memory and the I/O

## I/O in Unix

```ad-important
In Unix-based OSes, all I/O devices are files
```

```ad-example
- SSD: `/dev/sda`
- Hard Disk: `/dev/hda`
- Speaker: `/dev/dsp`
- Terminal: `/dev/pts/2`
- C Source File: `/root/source.c`
```

Generally there are *two* types of devices
- **Block devices** hold data
- **Character devices** transfer data

## Shell Commands

## Shell Commands for Working with Files: `cat`

Takes a file as an input and outputs it to the shell (i.e., standard out)

### Pipes

```ad-summary
- Pipes route the output of one command into another command
- This allows us to automatically manipulate files
- If we can manipulate files, and we're in Unix, then we can manipulate **any I/O**
```

`cat hello.c | sed "s/Hello C/Goodbye C"`

### Redirects

```ad-summary
Allows for two terminals to communicate with each other and send their outputs to each other.
```

#### Example

*Terminal 1*;

```
# tty /dev/pts/2
# cat /dev/pts/2 > /dev/pts/3
# This is a message from outer space!!!
```

*Terminal 2*:

```
# tty /dev/pts/3
# This is a message from out space!!! 
```

Whatever is written in Terminal 1 is now written into Terminal 2!

#### Other Special Redirects

`bad command 2> error.txt` sends the error to another document instead of the terminal. Used for `stderr`


