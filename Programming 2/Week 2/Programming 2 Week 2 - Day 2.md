Date: 1st February 2023
Date Modified: 3rd February 2023
File Folder: Week 2
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Methods
- Void Methods
- Method Breakdown
- Javadoc Comments

```

# Methods

Different name of a Function in Java. Is used to break a complex problem into smaller, manageable pieces

Two Types:

```ad-hint
title: Void Method
Executes a group of statements then terminates
```

```ad-hint
title: Value/Returning Method
color: 255, 102, 0

Returns a value to the statement that called it
```

### General Format of a Void Method

```java
public static void displayMessage() //method header
{
	System.out.println("Hello from displayMessage"); //method body
}
```

# Method Header Breakdown

1. Method Modifieres
	1. `public` and/or `static`
2. Return Type
	1. `void`
	2. `int`, `double`, `float`, etc.
3. MethodName
	1. Example: `displayMessage`
4. Parameters (if any)
	1. Example: `displayMessage(String message)`

# Javadoc Comments

Used at the beginning of methods to denote what the method does. Will be converted to html documentation automatically through Java's API

```ad-example
Javadoc for a method that adds two numbers: `calcSum`
``` java
/**
The calcSum method adds the two numbers and returns the value.
@param n1 The first number
@param n2 the second number
@return the result of n1 + n2
*/

public static double calcSum(double n1, double n2) {}
```

