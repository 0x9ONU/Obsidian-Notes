Date: 6th February 2023
Date Modified: 6th February 2023
File Folder: Week 3

```ad-abstract
title: Today's Topics
collapse: open

- Classes Day
```


# Classes

Eepresents objects or things

# Cootie Bug Example

In the classic game cootie bug, you spin a spinner to gain different parts for your cootie bug.

Each class has data members that make up the data of the class in the form of private variables.

They also have a constructor that allows you to create new instances of the object.

Getters and Setters allow other programs to access 
## Cootie Bug Class

```java

public class Main {

	public static void main() {
		System.out.println("Welcome to Cootie Bug Game");
		
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

