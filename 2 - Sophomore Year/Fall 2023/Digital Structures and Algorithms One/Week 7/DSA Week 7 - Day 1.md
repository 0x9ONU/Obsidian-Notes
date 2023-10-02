Date: 2nd October 2023
Date Modified: 2nd October 2023
File Folder: Week 7
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Bubble Sort

```

# Bubble Sort

```ad-summary
In the same way that a bubble displaces the water, swapping places with it as it rises, the larger values swap with the adjacent smaller values as they rise to the back
```

## Array Example

- Start each outer loop iteration with the first element and check to next element to see if you swap them.
- Larger element move right
- Small elements move left
- Continue comparing pairwise elements and swap to move larger element to right.
- Increment inner loop counter after swap

```ad-note
Once the last pair is checked and swapped, the largest value is at the end! This increases the size of the sorted subsequence (at the end) by one.
```

```ad-warning
Will check last pair even when already sorted
- Due to it being **extremely** inefficient
```

## Pseudocode

```
Alg: BUBBlE-SORT(A, n) 
for i <- 1 to n -1
	for j<- 1 to n-1
		 if A[j] > A[j+1]
			 swap A[j] <-> swap A[j+1]
```

## Implementation with Arrays

```c++
#include <iostream>
using namespace std;
// funciton delcaration (aka prototype)##
void bubbleSort(int A[], int n)

int main {
// blah blah blah
}

void bubbleSort(int A[], int n) {
	int temp;
	for (int i = 0; i < n-1; i++) {
		for(int j = 0; j < n-1; j++) {
			if (A[j] > A[j+1]) {
				temp = A[j];
				A[j] = A[j+1];
				A[j+1] = temp;
			}
		}
	}
}
```

## Pseudocode for More 'Efficient' Bubble Sort

```
Alg: BETTER-BUBBLE-SORT(A, n)
temp
for i <- 1 to n-1 // n = A.length
	for j = 1 to n - i
		if A[j+1] < A[j]
			swap A[j] <-> A[j+1]
```

```ad-note
More efficient
- Same swaps
- **Less comparisons**
```

\