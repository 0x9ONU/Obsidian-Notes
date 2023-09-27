Date: 27th September 2023
Date Modified: 27th September 2023
File Folder: Week 6
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Insertion Sort

```

# Learning Objectives

- Describe how the insertion sort algorithm processes an array of integers

# Insertion Sort

```ad-note
It is similar to sorting a hand of cards in order, but instead going from one end to the other
```

**Initialization**: Given input sequence: $< a_1, a_2, ..., a_n>$
- Sorted: $<a_1>$
- Unsorted: $<a_2,...,a_n>$
- Inserts next element from the unsorted subsequence into the correct spot of the sorted subsequence, shifting element rightward, as we move leftward
- Increasing size of sorted subsequence while decreasing size of unsorted subsequence by 1.

## Summarizing Thoughts

- In-place sorting
- Need to  copy over elements with arrays
- Linked List Implementation
	- Indices become node pointers
	- **need** doubly linked list
	- Remove entire key node and reinsert rather than copying it
	- Don't need to copy over elements with leftward moving pointer. Simply insert the key node where appropriate.

## Pseudocode

```
Alg: INSERTION-SORT(A,n)
for j=2 to n //rightward moving index j
	key = A[j] // store key value
	i=j-1 // leftward moving index i
	while i>0 and A[i]>key
		A[i+1] = A[i] // move vlaue at i right
		i = i-1 // move i left
	A[i+1] = key // insert spot is i+1
```

## Implementation - Array of Integers

```c++
#include <iostream>
using namespace std;

// funciton declaration (aka prototype):
void insertionSort(int A[], int n); // A == array pointer, n == A.length

int main() {
	int n = 6;
	int A[6] = {3, 4, 8, 7, 2, 1};
	inseritonSort(A, n);
	for (int i-0; i<n; i++) 
		cout << A[i] << "\n";
}

void insertionSort(int A[], int n) {
	for (j = 1; j<n; j++) {
		key = A[j]; //store key value at j
		i = j-1; // set i just to left of j
		while (i > 0 && A[i] > key) { // if i become -1,, off the list/array
			A[i+1] = A[i]; //copy A[i] to the right
			i--; //move i to the left
		}
		A[i+1] = key; // i+1 is the spoit to insert the key and if i=-1, it is the front at 0
	}
}
```


## Implementation - Linked List

```ad-summary
title: Special Case
1. Empty List OR Single Node -> head=tail: Return
```



```c++
class LinkedList {
	struct Node {
		int key;
		Node* next=nullptr;
		Node* prev=nullptr;
	};
	Node* head;
	Node* tail;
	
	public:
		LinkeList() {head=tail=nullpter;} //constructor
		~LinkedList(); // destructor
		void addNode(int keyVal); //adds a Node 
		void insertionSort(); // use insertion sort to sort the nodes by key
		void displayList9); // displays the list keys
};

//funciton definition

void LinkedList::insertionSort() {
	//Special Case
	if (head == tail) {
		return;
	}
	
	
}
```




