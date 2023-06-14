Date: 3rd February 2023
Date Modified: 3rd February 2023
File Folder: Week 2
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Classes
- Basic Structure
- Constructors
- ``this`` keyword

```


### Reminder OOP

**Object-Oriented Programing**: 
Designing a program by discovering objects, their properties, and their relationships

# Classes

## Class Examples

```java
public class Chair
{
	//Data... Variables
	String color = "";
	//Continue with variables for other features
	
	//method example
	public void repaintChair(String newColor) {color = newColor;}
}
```

### General Order of Classes

- Data Variables
- Constructors
- Getters and Setters
- Other methods

``` java
public class Student 
{
	//Data variables
	
	//Constructor
	
	//Getters and Setter (accessors and mutators)
	
	//Other methods (funtionality)
}
```

```java
public class Student 
{
	//Data Variables
	private String name;
	private int ID;
	
	//Constructors
	public Student() {this.name = "Klodike Bear"; this.ID = 0;} //default constructor
	public Studnet(String name, int ID) {htis.name = name; this.ID = ID;} // constructor that takes two parameters
	
	//Getters and Setters (accessors and mutators)
	public void setName(String name) {this.name = name;}
	public void setID(int ID) {this.ID = ID;}
	public String getName() {return this.name;}
	public int getID() {return this.ID;}
	
	//Other methods
	
	@Override
	public String toString() {return "Student" + "name=" + name + "\" + ",ID=" + ID + ); 
	}
}
```

### How the Class is Used

```java
public class Main
{
	public static void main(String[] Args)
	{
		Student temp = new Student() //creating an object of class Student
		System.out.println(temp.getName());
		
	}
}
```


# Constructor

A sequence of statements for initialzing a newly instantiated object

A *constructor* initalizes the instance variables of an object

The construcotr is automatically called wheneve an ojbect is created with the ***New*** operator.

```ad-info
title: Example

``` java
public Student() {this.name = "Klodike Bear"; this.ID = 0;}
```


# ``this`` keyword

Used to differentiate a class variable from a parameter variable

Allows you to use the same name for both method parameters and data variables within a class

```ad-example
title: Use of ``this``

``` java
private String name;
public void setName(String name) {this.name = name;}
//this.name is the class variable with name is the method parameter
```















