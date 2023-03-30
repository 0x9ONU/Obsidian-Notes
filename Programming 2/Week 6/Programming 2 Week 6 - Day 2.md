Date: 1st March 2023
Date Modified: 1st March 2023
File Folder: Week 6
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Try Catch Handling

```

Senerio: Get the user to enter a value between 0 and 100

```java
public class Main {
	public static void main(String[] args) {
		System.out.println("Enter a number between 0 and 100")
		Scanner keyboard = new Scanner(System.in);
		int userInput = Integer.parseInt(keyboard.nextLine());
		//this will fail if someone decided to enter a String or a number outside of the range
	}
}
```

# Exception Handling Try/Catch Block

## Exception Handling

- **Exception: 
	- an object that is generated as the result of an error or an unexpcted event
- **Exception Handling: 
	- code that you with that detects and handles exceptoins that have occurred

```ad-important
We do this to prevent exceptions from crashing your program
```

### General Syntax

```java
try {
	//Regular coding statements
}
catch(ExcpetionClassName1 objRef1) {
	//exception handling code
}
catch(ExcpetionClassName2 objRef2) {
	//exception handling code
}
finally {
	//Whatever you need to happen, that always executes, if exception is thrown
}
```

### Examples

Completely Valid:
```java
String myString = "1234";
int myNubmer = Integer.parseInt(myString);
```

When NumberFormatException is thrown:
```java
String badString = "hello";
int theNumber = Integer.parseInt(badString);
```

```ad-note
NumberFormatException is thrown when it tries and fails to do the converstion. **IT WILL CRASH**
```

#### How do we fix this?

```java
try {
	String myString = "1234";
	int myNumber = Integer.parseInt(myString;) //This will happen as it normally should
	String badString = "hello";
	int theNumber = Integer.parseInt(badString); //This is where the error is thrown
}
catch(NumberFormatExeption e) { //executes what is inside this block when the specific error is thrown
	System.out.println("Oops! Not a number.");
}
```

# Exception Classes

- An **exception is an object**, which means that it was created from Exception classes
- These classes are in the Java API
- **There is an extensive hierarchy of exception classes**

- Exception is the superclass, IOException and RuntimeException are derived classes.
	- EOFException and FIleNotFundException are derived calsses of superclass IOExcpeoitn
	- And so forth...

### Example Exceptions from Java API

- ArithemticException
- ArrayIndexOutOfBoundsExeption
- FIlenOtFOundException
- IllegalArguemntsException
- IndexOutOfBoundsException
- NullPointerException
- NumberFormatException
- InputMismatchException
- NoSuchElementException
- IllegalStateException
- StringIndexOutOfBounds

```ad-note
- You might need to make sure you have indluded the correct packages via **imports**
- Example: FileNOtFOundException is part of the java.io package
```


## File Not Found Example

```java
try {
	File file = new File("myfile.txt")
	Scanner inputFile = new Scannner(file);
	inputFile.close();
}
catch(FileNotFoundException e) {
	System.out.println("File not found.");
}
```

```ad-warning
Make sure that your try/catch block just contain the parts that might throw an exception.
```

# Throwing

You can write code that throws on the of the standard Java exceptoins, or an instance of a custom exception class you have designed.

**General format**:
- `throw newExceptionType(MessageString);`

You can use the throw statement to manually throw an exception
- ExceptionType above is an exception calss name
- MessageString is an optional String argument

## Examples

Simple Single Line Statement
```java
throw new Exception("Out of fuel");
```

As part of a cosntructor for a class...

```java
public class InventoryItem
{
	private String description;
	private int units;
	
	public InventoryItem(String d) {
		if(d.equals("")) {
			throw new IllegalArgumentException("Empty String");
		}
		descriptoin = d;
		units = 0;
	}
}
```

## Creating Yoru Own Exception Classes

```java
public class NegativeStartingBalanceException extends Exception {
	public NegativeSTartingBalanceException() {
		super("Error: Negative Starting Balance");
	}
	
	public NegativeStartingBalanceException(double amount) {
		super("Error: Negative starting balance: " + amount);
	}
}
```

### Test Yourself Question

```java
try {
	System.out.println("Please enter # from 1 to 10");
	Scanner console = new Scanner(System.in);
	String userInput = console.nextLine();
	int userNumber = Integer.parseInt(userInput);
}
catch(NumberFormatException e) {
	System.out.println("Oops! Not a Number");
}
catch(Exception e) {
	System.out.println("General Error");
}
```

```ad-warning
Make sure to **ALWAYS** put the more specific exception above the more general exceptions.
```ad-example
Exception is a superclass to IOException, so it goes after it in a try/catch statement
```

