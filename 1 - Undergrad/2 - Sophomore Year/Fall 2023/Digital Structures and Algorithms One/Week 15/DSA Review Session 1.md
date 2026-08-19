Date: 7th December 2023
Date Modified: 7th December 2023
File Folder: Week 15
#DSA1

```ad-important
**NOT on the Final**:
- Loop-Invariants
- Formal Arguments Proving/Disproving Arguments
```

# What Will Be on the Exam

- Big Theta, Oh, and Omega for ALLLL functions
- Binary Search Trees
- Data Structure Selection based on Applications

## Questions:

### Part 2: BST 

#### Question 2
```ad-question
Suppose we have numbers between 1 and 100 in a BST and want to search for the number 45. Which (possibly multiple) of the following sequence soculd be the seqeucne of nodes visited in the search? Explain your answers. Note: The values are the key values of each node.
- 5, 2, 1, 10, 39, 34, 77, 63
- 1, 2, 3, 4, 5, 6, 7, 8
- 8, 7, 6, 5, 4, 3, 2, 1
- 50, 25, 26, 27, 40, 44, 42
- 50, 25, 26, 27, 40, 44
```

1. NO, it goes left at the root when it should go riht
2. YES, unbalanced, but it could move right from 8
3. NO, 8 to 7 does not make sense
4. NO, The final step fails as 44->42 as 45 would be on the right of 44
5. YES

#### Question 3:

```ad-question
Suppose we first insert a node with key $x$ into a BST that does NOT already contain $x$. Suppose we then immediately delete $x$ from the tree. Will the new tree be identical to the orignal one? If yes, give an explanation for your answer. If no, give a counter example. Draw pictures if necessary
```

If a new node is added, it would be a leaf node of the tree. Since a leaf node has no children, when it is deleted, nothing is changed.

### Part 3: Applications

**DEFINITELY ON THE EXAM**

```ad-question
Fore each of the scenarios below, indicate whether it would be better to use an array, linked list, queue, stack, or binary search tree to organize the data for the scenario. Provide brief justification.
```

	a. A dataset with satellite data needs to be searched often and quickly, but the dataset does not change very often.

Binary search tree as it is best at searching and can be sorted to be balanced

	b. The data should be temporarily held between a microcontroller and tis transceiver as the data packets are being readied to be transmitted on the antenna. The order of the packets should be preserved.

Queues would be the best as it keeps the order of the FIFO approach and has $\Theta(1)$ complexity if implemented with a  circular queue.

	c. The data is the hsitory of websites visited in a web browser and the goal is to implement a back button

Stack would be the best as it uses the LIFO principle and has low time complexity.

	d. The dataset contains user records, the set is dynamic, and has many insertions and deletions, but order is not important.

Linked Lists would be the best alternatives as it can easily add and delete nodes with $O(1)$ as order does not matter. Additionally, it can hold a lot of satellite data within the user's records. 

### Part 4: 

**WILL BE PSEUDOCODE WITH ATOMIC INSTURCTIONS AND RECURRENCE EQUATION**

```ad-summary
Using the Merge and Merge-Sort pseudocode below, develop a recurrence equation to express the atomic instruction run time $T(n)$ for Merge-Sort by doing the following:
```

