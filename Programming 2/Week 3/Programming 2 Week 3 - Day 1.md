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
private boolean atenna = false;
private boolean body = false;
private boolean head = false;
private boolean mouth = false;
private boolean eyes = false;
private int leg = 0; //6 max
private int playerTurn = 0;

//constructor (make sure they are the same name)
public CootieBug() {}
}
```

```ad-important
Data members are made **private** because it prevents other parts of the program to randomly access an objects variables
```