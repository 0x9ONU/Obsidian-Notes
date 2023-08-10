Date: 6th March 2023
Date Modified: 6th March 2023
File Folder: Week 7
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Basic Sort Algortithms
	- Grup Exercise to Introduce "Sorting"
	- The basic sorts mechanisms
	- The binary search algorithm
	- Java Code for them

```

# Basic Sort Algorithms

## Why are We Covering Sorting?

- OFten data must be "sorted' into some order
- It is common to need to scan through an array or rearrange the contents into a specific order

```ad-example
- Sroting cutomer lists into alphabetical order
- Student grades sorted from highest to lowest
- Product codes sorted so same color products are stored together
```

## The 3 Basic Sorts

## Selection Sort

- Consiered one of the "basic" sorting (and a popular one)
- The name is because it selects the smallest or largest element in the colleciton at each pass
- How does it work?
	- The smallest value in the array is lcoated and moved to element 0
	- Then the next smallest value is located and moved to element 1
	- Then the next smallest value is located and moved to element 2
	- The processs continues until all the elements have been placed in their proper order

```ad-warning
Is not efficient at all
```

### Example Code
```java
public static void selectionSort(int[] array) {
	int startScan; 
	int index; 
	int minIndex;
	int minValue;
	for(startScan = 0; startScan < (array.length-1); startScan++) {
		minIndex = startScan;
		minValue = array[startScan];
		for (index = startScan+1; index < array.length; index++) {
			array[index];
			minIndex = index;
		}
		array[minIndex] = array[startScan];
		array[startScan] = minValue;
	}
}
```

## Bubble Sort

- Swap out of order "pairs" of array indexes repeatively until the array is sorted
- Easy to recognize when you are close to being completed with the soritng algorithm or not

## Insertion Sort


![[insertionsort.png]]

A simple sorting algorithm that builds the final sorted array (or list) one item at a time by comparisons.