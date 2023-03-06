Date: 6th March 2023
Date Modified: 6th March 2023
File Folder: Week 7
#Programming2 

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

```java
class Main {
	public static void main(String[] args) {
		int size = 9;
		Number[] arr;
		arr = new Number[9]
		arr[0] = Number(42, 9, 0);
		arr[1] = Number(11, 9, 1);
		arr[2] = Number(24, 9, 2);
		arr[3] = Number(99, 9, 3);
		arr[4] = Number(72, 9, 4);
		arr[5] = Number(6, 9, 5);
		arr[6] = Number(37, 9, 6);
		arr[7] = Number(63, 9, 7);
		arr[8] = Number(55, 9, 8);
		for (int i = 0; i < size; i++) {
			for (int j = 0; j < size; j++) {
				if (arr[i].getNum(i) < arr[j].getNum(j)) {
					arr[i].setNumList(arr[j].getNum(j), j)
				}
			}
			arr[i].setNum = arr[i].sort();
		}
	}
}

class Number {
	private int num;
	private int[] numList;
	private int position;
	
	Num() {
		num = 0;
		numList = new int[0];
		position = 0;
	}
	
	Num(int num, int size, int position) {
		this.num = num;
		numList = new int[size]; 
		this.position = position;
	}
	
	public int getNum() {
		return num;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public int getNumList(int position) {
		return numList[position];
	}
	
	public void setNumList(int num, int position) {
		numList[position] = num;
	}
	
	public int sort() {
		//returns smallest value gathered
	}
}
```


## Why are We Covering Sorting?

- OFten data must be "sorted' into some order
- It is common to need to scan through an array or rearrange the contents into a specific order

```ad-example
- Sroting cutomer lists into alphabetical order
- Student grades sorted from highest to lowest
- Product codes sorted so same color products are stored together
```

## The 3 Basic Sorts

#comebacklater to get java code

### Selection Sort

- Consiered one of the "basic" sorting (and a popular one)
- The name is because it selects the smallest or largest element in the colleciton at each pass

```ad-warning
Is not efficient at all
```

### Bubble Sort

- Swap out of order "pairs" of array indexes reptively until teh array is sorted
- Easy to recognize when you are close to being completed witht eh soritng algorithm or not

### Insertion Sort

- 