Date: 24th February 2023
Date Modified: 24th February 2023
File Folder: Week 5
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Continuing Abstract Shape Example
- Java Interfaces

```


# Shape Class Activity Review

```java

public abstract class Shape {
	private double width;
	private double height;
	
	public Shape() {
		width = 0.0;
		height = 0.0;
	}
	
	public Shape(double width, double height) {
		this.width = width;
		this.height = height;
	}
	
	public double getWidth() return width;
	public double getHeight() return height;
	
	public void setWidth(double width) this.width = width;
	public void setHeight(double height) this.height = height;
	
	public abstract double calcArea();
	
	public abstract double calcPerimeter();
}
```

# Rectangle Subclass

```java
public class Rectangle extends Shape {
	public Rectangle() {
		super();
	}
	
	public Rectangle(double width, double height) {
		super(width, height);
	} 
	
	@Override
	public double calcArea() {
		return super.getWidth() * super.getHeight;
	}
	
	@Override
	public double calcPerimeter() {
		return (2 * super.getWidth()) + (2 * super.getHeight());
	}
}
```

# Java Interfaces

- Specifies behavior for a class
- A type of calss taht contains abstract emthods and/or named constants
- Is similar to an abstract class that has all abstract methods
- Define and standardize the way in which people (or systems) can interact with one another


```ad-example
- The control on a radio serve as an itnerface between a radio's users and its interal components
- The controls allow users to perform a limited stet of operations
	- chainging the station
	- adjsuting the volume
	- choosing between AM and FM
- And different radios may implement the controls in different ways
	- using push buttons
	- dials
	- voice commands
```

```ad-important
An interface specifies what operations must be performed but
```

## General Format for an Interface

```java
public interface iNterfaceName
{
	int var1 = 0; //named constant
	String var2 = ""; //named constant
	public void method1(); //method
	public Stirng method2(int x); //method
}
```

## Why Does Java Have Interfaces?

- Because Java *does not* support multiple inheritance
- A class can extend the definition of only one class. However, a program might need to use more than one interface
- You can implement multiple interfaces (just separate them by commas

## Interface Facts

- An interface is a class that contains only abstract methods and/or named constants
- Java allows a class to implement more than one interface. This is, inf fact, the way to ipolemtn pretend multiple inheritance
- When a calss implements an interface, an inheritance relationship is known as **interface inheritance**
- Interfaces are fiarly short code wise
- Interfaces you code the same way you do a class. `public interface Foo {}` is contained in a file called Foo.java
- When a class implements an interface, it must provide all the methods that are listed int eh interface witht he exact signatures specified.
- All methods specified by an interface are public
- Every calss that implements an interface are promising to implemtn each of the methods as they are defined in the interface

```ad-warning
title: Things to Remember
- You **cannot** create an object of an interface
- Failing to declare any member of an interface in a class that implements the interface results in a compile error
- When declaring a mehtod in an interface, choose a method name that describes the method's purpose in a general manner, because the method may be implemented by a broad range of unrelated classes
```


