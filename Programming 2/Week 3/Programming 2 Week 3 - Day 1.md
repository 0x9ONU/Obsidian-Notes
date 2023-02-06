Date: 6th February 2023
Date Modified: 6th February 2023
File Folder: Week 3

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```


# Classes

Eepresents objects or things

# Cootie Bug Example

In the classic game cootie bug, you spin a spinner to gain different parts for your cootie bug.

Each class has data members that make up the data of the class in the form of private variables.

```java
public class CootieBug {
//initalize data members
private boolean antenna = false;
private boolean body = false;
private boolean head = false;
private boolean mouth = false;
private boolean eyes = false;
private int leg = 0; //6 max
private int playerTurn = 0;

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
public boolean getEyes


}
```

```ad-important
Data members are made **private** because it prevents other parts of the program to randomly access an objects variables **AND** it make it so a data members cannot be set passed its *boundaries*
```
