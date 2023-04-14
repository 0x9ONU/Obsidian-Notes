Date: 14th April 2023
Date Modified: 14th April 2023
File Folder: Week 11
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Generic Classes

```

# Generic Definition

**Generic Programming**:  the creation of programming contructs that can be used with many different types

**Generic Method**: A method with one or more type parameters

**Generic Class**: A class with one or more type parameter

### Example: ArrayList

```java
ArrayList<Integer> number = new ArrayList<>();
numbers.add(1);
```

```ad-note
- The ``<>`` part is the Generic part! 
- This allow sus to specify a data type. 
- For this one, we are saying we are putting Integers into our ArrayList
```

# Different Types of Generic Classes

| E                            | K                 | V                   | T            | S, U |
| ---------------------------- | ----------------- | ------------------- | ------------ | ---- |
| Element type in a collection | Key type in a map | Value type in a map | General Type | Additional General Types     |

## General Syntax

```java
modifiers <TypeVariables, TypeVariable...> returnType methodName(parameters) {
	//body
}

public static <E> String toString(ArrayList<E> a) {
	String result = "";
	for (E e : a) {
		result = result + e + " ";
	}
	return result;
}
```

