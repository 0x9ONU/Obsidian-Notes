Date: 10th March 2023
Date Modified: 10th March 2023
File Folder: Week 7
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Binary Searching
- Oregon Trail Assignment Debrief

```

# Binary Search


- Better than a sequential search 
	- ie. looking through the array starting at the beinning and loooking at every elemnt
- Requries that the array/arralist is already sortered
- Instead of testing the first element, the algorithm starts witht he lement in the middle
	- If we get luck, search is order
	- If it is greater, then the deserived value wiht be found where in the first half of the array
	- if it is less, then the deseried vlaue will be found womewhere in the last half of the array

```ad-note
Each time we are eliminating one half of the array
```

## Diagram

![[Drawing 2023-03-10 09.23.03.excalidraw]]

## Code

```java
public static int binarySearch {
	int first = 0; 
	int last = array length - 1; 
	int middle; 
	int position = -1; 
	boolean found = false;
	while (found && first <= last) {
		middle = (first + last) / 2; //calc midpoint
		if(array(middle) == value) {found = true; position = middle;}
		else if (array(middle) > value) (last = middle -1;)	
		else {first = middle + 1;}
	}
	return position; //returns -1 if not found
}
```

# Oregon Trail

```ad-important
## Tasks over break
- Play the different Oregon Trail Games to research what you will do for your project
```

#todo 