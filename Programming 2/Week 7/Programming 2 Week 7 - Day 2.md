Date: 8th March 2023
Date Modified: 8th March 2023
File Folder: Week 7
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Recursion

```

# Recursion

A function that calls the same function or that calls itself

- Recursion is a problem'solving techinique
- Generally, the solution to a problem requries the solution to smaller version of the same problem
- How do we identify it in our Java code?
	- You will find 1 or more methods calls insdie the method definition

We write funcitons because we want to solve a task 

##### Recursion comes in

When it turns out that at least one or more of a subtasks is a smaller example of the main task

## Example 1: Vertical numbers

We want to design a recursive method that writes numbers to the screen with the digits written vertically

```java
//method prototype
void write_vertical(int n);
```

| Base/Simple Case                                                                                                  | More Formally |
| ----------------------------------------------------------------------------------------------------------------- | ------------- |
| One case is very simple. If n, the number being written out, is only one digit long, then simply write the number | if n<10,               |

Each number calls on each other 

```java
public class PrintNumbers {
	public static void main(String[] args) {
		int userNumber = 1984;
		write_vertical(userNumber);
	}
	
	public static void write_vertical(int userNumber) {
		if(user < 10) {
			SYstem.out.println(userNumber);
		}
		else {
			write_vertical(userNUmber / 10);
			System.out.println(userNumber % 10);
		}
	}
}
```

### Example Java Execution Stack

![[Drawing 2023-03-08 09.29.13.excalidraw]]

```ad-summary
- A recursive computation solve a problem by using the solution of the same problem wiht simpler inputs
- For a recursion to termiante, there must be special cases for the simplest inputs.
```


