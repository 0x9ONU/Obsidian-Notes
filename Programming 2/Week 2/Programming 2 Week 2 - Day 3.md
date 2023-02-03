Date: 3rd February 2023
Date Modified: 3rd February 2023
File Folder: Week 2

```ad-abstract
title: Today's Topics
collapse: open

- Classes
- Basic Structure

```


### Reminder OOP

**Object-Oriented Programing**: 
Designing a program by discovering objects, their properties, and their relationships

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
	public String toString() {return "Student" + "name=" + name + 
	

	//CONTINUE LATER
}
```

### How the Class is Used

```java
public class Main
{
	public static void main(String[] Args)
	{
		Student temp = new Student() //creating an object of class Student
		
	}
}
```

# Classes














