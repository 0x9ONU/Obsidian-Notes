Date: 6th February 2023
Date Modified: 6th February 2023
File Folder: Week 3

```ad-abstract
title: Today's Topics
collapse: open

- Classes
- Cootie Bug Example
	- Data Members
	- Constructors
	- Getters and Setters
	- Creating an Ar
```


# Classes

Represents objects or things

# Cootie Bug Example

In the classic game cootie bug, you spin a spinner to gain different parts for your cootie bug.

Each class has: 

- Data members that make up the data of the class in the form of private variables.
- A constructor(s) that allows you to create new instances of the object.
- Getters and Setters that allow other programs to access data members of an object


```ad-important
Data members are made **private** because it prevents other parts of the program to randomly access an objects' variables **AND** it make it so a data members cannot be set passed its *boundaries*
```

### Creating an Array of Objects

In Java, you can create an array of objects (even ones that you made).

Each object in the array will have the a new set of data members, getters and setters, etc.

```ad-attention
title: Warning
Make sure to use ArrayLists *if* the number of objects might change throughout the program. 
```


## Cootie Bug Class

```java

public class Main {

	public static void main() {
		System.out.println("Welcome to Cootie Bug Game");
		System.out.println("Number of players?");
		Scanner key = new Scanner(System.in);
		int numPlayer = Integer.ParseInt(key.nextLine()); 
		//note: A do-loop would typically be used here to check if the user has a correct input
		
		CootieBug[] allPlayersCootie = new CootieBug[numPlayers]; //creates a new array of objects
		allplayerCootie[0].setLeg(1); //accesses the first object in the list
		allplayersCootie[1].setAntenna(true); //accesses the second object in the list
		
	}
}

//Class that will store the cootiebug
public class CootieBug {
//initalize data members
private boolean antenna = false;
private boolean body = false;
private boolean head = false;
private boolean mouth = false;
private boolean eyes = false;
private int leg = 0; //6 max

//constructor (make sure they are the same name)
public CootieBug() {} //default

//getters and setters
public void setLegs(int leg) {
	if (leg <= 6 && leg >= 0) this.leg = leg;
	else {this.leg = Math.abs(leg % 6);} //programmer choice
}

public void setAntenna(boolean antenna) this.antenna = antenna;
public boolean getAntenna() return this.antenna;
public void setBody(boolean body) this.body = body;
public boolean getBody() return this.body;
public void setHead(boolean head) this.head = head;
public boolean getHead() return this.head;
public void setMouth(boolean mouth) this.mouth = mouth;
public boolean getMouth() return this.mouth;
public void setEyes(boolean eyes) this.eyes = eyes; 
public boolean getEyes() return this.eyes;


}
```

