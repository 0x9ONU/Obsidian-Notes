Date: 5th April 2023
Date Modified: 5th April 2023
File Folder: Week 10
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Lists
	- JCF Review
	- Review ArrayList
	- Methods from java.util.Collection
	- Methods for List

```

# Java Collection Framework Review

A toolbox of generic interfaces and classes

OOP Approach to arrays

## The List Interface

- ArrayList
- LinkedList
	- Easy to add/remove, but slow to read a random position
- Vector
	- Please note: this is not the same as c++

```ad-warning
VECTORS ARE LEGACY CODE. AVOID USING
```

# ArrayList Review

- Size
	- number of elemtns currenlty in the ArrayList

## Instantiation of a List

Good Practice: instantiate the list with the expected capacity

```ad-example
title: Example: standard deck of cards
``` java
Collection<Card> deck = new ArrayList<Card>(52);
List<Card> deck = new jArrayList<Card>(52);
```

```ad-note
The first one gives you the most flexibility of changing collection type, but reducing methods that can be used
```

# Methods from java.util.Collection

- boolean add(Object o)
- boolean addAll(Collection c)
- boolean remove(Object o)
- boolean removeAll(Collection c)
- Iterator iterator()
	- Let's you move from element to the next in the data strucutre
- int size()
- boolean contains(Object o)

# Methods from java.util.List

- boolean add(int index, Object element)
- boolean addAll(int index, Collection c)
- Object remove(int index)
- Object get(int index)
- int indexOf(Object o)
- int lastIndexOf(Object o)
- List subList(int fromIndex, int toIndex)

## Looney Tunes Example

```java
ArrayList<String> alNames = new ArrayList<String>();
aLNames.add(0, "Bugs Bunny");

LinkedList<String> names = new LinkedList<String>();
names.addFirst("Bugs Bunny");
names.addLast("Daffy Duck");
names.add("Taz");
names.add(2, "Road Runner");
```

## What is going on behind the scene?

```java
public class Node {
	public Object data;
	public Node next = null;
	// public Node last = null; // this makes a doubly linked list
}
```

```ad-note
Node is the most general class for storing data
```

```ad-important
Advantage of this code:
- It is modular
- Based on the idea of pointers, but in the form of Nodes
- Expandable
```

