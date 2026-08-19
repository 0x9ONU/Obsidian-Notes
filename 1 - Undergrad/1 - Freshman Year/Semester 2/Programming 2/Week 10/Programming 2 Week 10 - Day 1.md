Date: 3rd April 2023
Date Modified: 3rd April 2023
File Folder: Week 10
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Introduction to Collections
- What is a collection?
- What is the Java Collection Framework?
- Why is this important/useful to have this framework?

```

# Collection

A general term we use to refer to a group of individual objects represented as a single unit

```ad-important
It is a way to organize and store data
```



# Stack

Data structure that is LIFO (last in, first out)

the Java Framework includes an implementation of Stack

```ad-note
A common data structure used in computer science
```

```ad-example
```java
Stack<String> dragons = new stack<String>();
dragons.push("Puff the Magic Dragon"); //pushes it on to the top of the stack
dragons.add("Among Us the Sussy"); //appends it to the end of the stack
System.out.println(dragons.toString());
dragons.pop(); //removes a single element off the top
```

## What fits into Data Structures?

- Arrays
- Vectors
- ArrayList

Arrays and vectors are cosnidered "standard" or "basic" in ways of storing data.

# Java Coleection Framework

It is built into Java

Deines several calsses and interfaces that C

#comebacklater 

## Why do we Have Collection Framework

The framework provides a standardized way to implement various specialized Collections

Advantages:
- Consistent API
- Lazy freindly: reduces programming effort
- Increasted program speed and quality

## Baisc Types + Special Characteristics

| Name  | Special Characteristics                                            |
| ----- | ------------------------------------------------------------------ |
| Set   | Does not allow duplicates                                          |
| Queue | First IN First OUt (FIFO) order                                    |
| Deque | Elements are inserted and removed from both "ends" (LIFO and FIFO) |
| Map   | Uses key and value paris, doe snot allow duplicates                                                                   |

## The Collections Build on Simpler Ones

It is important to note that the Colections build on each other

We used a combinations of simpler data strucutres to build more complex/specialized data strucutres

```ad-example
- You may see arrays or vectors being used in conjunciton with other code to create a more complex structure
- SortedSet uses Set as the underlying strucutre
```

## Why are there so many?

Each collection allows us to specialize

Specialization is often a better fit or more efficient for what we are doing

# Set

A data structure that does not allow any duplicate elements

## Set as an interface in the Java Collection Framework

- Reminder: Waht is an interface?
	- A special type of class that contains only abstract methods and constants

## Set Quirks

- Eleemtns cannot be added or removed.
- Calling any

#comebacklater 

## Java Code Example

```java
import java.util.set

Set<String> dragons = new HashSet<>();
dragons.add("Puff the Magic Dragon");
dragons.add("Pete the Dragon");
//NOTE: It puts it in a value based on the hash of the added objects. AKA RANDOM

Set<String> dragons1 = new TreeSet<>();
//Stored in Alphabetical Order
```

