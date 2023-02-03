Date: 27th January 2023
Date Modified: 3rd February 2023
File Folder: Week 1

```ad-abstract
title: Today's Topics
collapse: open

- Comments
- Reading Keyboard Input
- Dialog Box
- Decision Strucutres
- Logical Operators
- Order of Precedence 
- Comparing String Objects
- Formatting Output
- Increment and Decrement
- Loops
	- While
	- For

```


# Comments

Single-Line Comments are ``//``

Multi-Line Comments are 
``` java
/*This is a comment that can be on multiple lines.
as seen here.*/
```


```ad-info
title: Javadoc
- Formatted as: ``/**Javadoc comment */``
- Can be read and processed by a program called Javadoc
	- Comes with the Java JDK
- Reads Java source files and generates formatted HTML files that document the soruce code
```

# Reading Keyboard Input

Use the ``Scanner`` class to read input from the keyboard

```ad-example
title: Create a Scanner object and connect it to System.in object
``` java
Scanner keyboard = new Scanner(System.in);
```

``Scanner keyboard`` is now an object or instance of class ``Scanner``

- ``Scanner``
	The data type of the variable
- ``keyboard``
	- The identifer/variable

### ``new`` Keyword

Use to create a new object in memory

We are calling a consturctor from the ``Scanner`` class and we are pass it ``System.in`` which will be the stuffed typed into the keyboard

# Dialog Box 

A small graphical window that displays a message to the user or request input

Can be used as *both* input and output

```ad-warning
title: Important
You will need to add this to the beginning fo the file with the other import statements
``` java
import javax.swing.JOptionPane;
```

### How to Utilize it

``` java
String name = JOptionPane.showInputDialog("What is your name?");
JOptionPane.showMessageDialog(null, "Your name is " name);
```

```ad-danger
title: Warning
- WIll **always** return a String
- You will have to conver the String object to another data format if you need another
```

#### Converting Data Types

```ad-check
title: Solution
Utilize ``DataType.parseType(String)``
```java
String amnt = JOptionPane.showInputDialog("How many donuts?");
int numDonuts = Integer.parseInt(amnt);

```

# Decision Structure

The **same** as in C!

| Name                  | Symbol | Java   |
| --------------------- | ------ | ------ |
| Greater Than          | $>$    | ``>``  |
| Less Than             | $<$    | ``<``  |
| Greater Than Equal to | $\ge$  | ``>=`` |
| Less Than Equal to    | $\le$  | ``<=`` |
| Equals                | $=$    | ``==`` |
| Not Equal to          | $\ne$  | ``!=``       |

## Logical Operators

- `!` NOT
	- First
	- Reverses true and false
- ``&&`` AND
	- Second
	- Returns true *only when both* sides are true
- ``||`` OR
	- Third
	- Return true when *either* sides are true

## Overall Order of Precedence

1.  - (unary negation), !
2. */ %
3. +, - (subtraction)
4. < > <= >=
5. ++ !=
6. &&
7. ||
8. All assignment operators

# Comparing String Objects

Three methods are used to compare two string objects

1. `.equals`
	1. Makes ure the string is the same.
	2. Returns either true or false
	3. *includes* case and symbols and whitespace
	4. Syntax: ``str1.equals(str2)``
2. `.equalsIgnoreCase`
	1. Same as equals, **BUT** it does *not* take case into account
	2. Example: "Hans" and "hans" would be the same
	3. Syntax: `str.equalsIgnoreCase(str2)
3. `.compareTo`
	1. Returns an int value that is equal tot eh difference between the first different character of the String in ascii
		1. =0 - means the Strings are the same
		2. Less than - means str1 is less than str2
		3. Greater than - means str1 is greater than str2
	2. Syntax 
		1. `int result = str1.compareTo(str2)`

```ad-danger
title: Warning

**NEVER** do `str1 == str2` in java!
```

# Formatting Output

Uses `printf` statements to properly format output.

```ad-info
title: General format
``` java
Stringout.printf("FormatString", ArgumentList);
```

FormatString looks something like `"Pi is %f"`

## Examples of PrintF statements

``` java
Double pi = 3.14159;
System.out.printf("Pi is %f!", pi);

Int dragons = 3;
Int griffins = 7;

System.out.printf("We have %d dragons and %d griffins.\n", dragons, griffins);

Double value1 = 123.45678
System.out.printf("%.2f\n", value1);
```


## Increment and Decrement

Same as C++

- `++` to increase by one
- `--` to decrease by one
- Can be used as a prefix or a postfix

# Loops

Same as C++

## Format

```java
while(condition) {/*loopbody*/}

do
{
	//loop body
}
while(condition);
```

## For Loop

Standard:
``` java
for (int i = x; i < y; i++)
```
