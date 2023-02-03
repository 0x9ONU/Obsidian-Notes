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
Utilized ``DataType.parseType(String)``
```java
String amnt = JOptionPane.showInputDialog("How many donuts?");
int numDonuts = Integer.parseInt(amnt);

```

# Decision Structure

The **same** as in C!

| Name                  | Symbol | Java |
| --------------------- | ------ | ---- |
| Greater Than          | $>$    | >    |
| Less Than             | $<$    | <    |
| Greater Than Equal to | $\ge$  | >=   |
| Less Than Equal to    |        |      |




