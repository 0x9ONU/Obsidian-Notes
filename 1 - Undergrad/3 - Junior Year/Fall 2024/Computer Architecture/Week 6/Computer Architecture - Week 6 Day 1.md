Date: 30th September 2024
Date Modified: 30th September 2024
File Folder: Week 6
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Exam 1

Timings:
- Problem 1: 30 minutes (do this one last)
- Problem 2: 30-45 minutes
- Problem 3: 30-45 minutes

## Problem 1

Recursive Function that is either the factorial one OR the greet one. Draw the stack for either, then determine the outcome when *four* different instructions were changed.

```ad-warning
Everytime you subtract 8 from it, it could point to a place where it should not hit, which will stop the program and crash.
```

90% will stay *exactly* the same.
- Biggest changes are if we are reaching zero or one
- OR if we are adding or multiplying

Almost all of the instructions in a recursive function are going to be the same. There are very few things that need changed. Am I going to zero or one, what am i returning and what operation am i doing. These are the only things that needs changed. 

If you are going to zero then you do not addi 1 to zero and you compare t0 with zero. If you are adding then you switch out the multiplication. Once you get to 0x8528, you keep storing that address over and over and once you hit this loop you will be jumping back to this instruction and executing in a loop until the stack has been emptied. Eventually you will hit the caller return address

## Question 2

```ad-summary
Exactly LIKE exercise 6.26, but with less instructions.
- Transform machine langauge into assembly
- Transform into high level language
- Explain what it is doing!
```

```ad-important
CHECK with assembly and show it is correct!
```

## Question 3

Writing assembly to do something. Will be *about* arithmetic
