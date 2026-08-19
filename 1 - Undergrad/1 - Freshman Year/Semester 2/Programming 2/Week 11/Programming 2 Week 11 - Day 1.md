Date: 10th April 2023
Date Modified: 10th April 2023
File Folder: Week 11
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Sorting and Shuffling Lists in Java
- Maps

```


# Lists - Sorting and Shuffling in Java

```ad-summary
title: Review - Sorting in Programming 1
- Selection Sort on integer array
- Had to pass:
	- Array reference
	- Array isze
- Limitations:
	- Had to do it by hand
```

## Sorting in Java

Sorting implies some form of sequencing, or having an order

A list from Collections Framework can be stored, ***IF*** the list consist of objects instantiated from a class implementing the **Comparable** interface

You need a method that reutrns integer that is either positive, negative, or zero:

```java
public interface Comparable {
	public int compareTo(Object o);
}
```

```ad-note
- Positive is when the first Object is greater than the secound object
- Zero when they are the same
- Negative when the second Ojbect is greater than the first object
```

## Comparable Interface

- Provides a natural ordering for the class
- Follwoing JDK calsses implement COmaprable:
	- Bye
	- Date
	- BigInteger
	- Double
	- Integer
	- Character
	- FIle
	- DigDecimal
	- Float
	- Short
	- Long
	- String
- Otherwise, in "order" to sort, you have to implement the interface

### Implementation Example

```java
public class Person implements Comparable {
	private String name;
	
	@Override
	public int compareTo(Object o) {
		Person other = (Person) o;
		return this.name.compareTo(other.name);
	}
}
```

## Sorting a List

```java
Collection.sort();

COllection.reverse(myList)

Collections.sort(myList, COllections.reverseOrder())

Collections.shuffle(myList)
```


# Maps

- Part of the Collections Framework
- Not relation to the **Collection** interface
- Types of Maps:
	- *HashTable* 
		- deprecated
	- *HashMap* 
		- Preferred
		- No ordering guarantee
	- *TreeMap*
		- Sorted Map

## Maps vs. Collection

Map operates on two entities:
	A unique **key**
	An **Object** related to the key

## Hash Table

Data structure sued to store key/value pairs

**Hash Function**
- Used to compute index into array of linked lists (AKA "buckets'")
- ``hasCode() method overridden from java.lang.Object``

Average search time : O(1)
- List: O(n)
- Ordered List: O(lg n)

Price paid for speed, *but* more memory hungry

