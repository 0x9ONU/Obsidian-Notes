Date: 8th December 2023
Date Modified: 8th December 2023
File Folder: Week 15
#DSA1

***Good luck soldiers. May the God of DSA be merciful on this fine day***

```ad-important
As the one and true God of DSA said in His holy words:
- "No loop invariants or Formal Proofs on the Final"
- ✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟✟
```
# Algorithms

```ad-summary
title: Goals
- What is an algoithm? What makes a good algorithm?
- Understand growth rates of different functions and asymptotic notations
- Know, understand, and use $O, \Theta, \Omega$ definitions
- Know how to analyze the compelxity of random pseudocode funcitons by explicitly counting the number of times instructions are executed (could be with nested loops that are independent or dependent) or focusing on specific types of operations such as comparisons or arithmetic operations (or both).
- Given pseudocode, be able to describe what an algorithm is doing.
- Be able to write pseudocode for straightforward algorithms
```

## What Makes a Good Algorithm?

**Define what an algorithm is accurately in your own words.:**

An algorithm is a sequence of instructions that accomplishes a task.

**Describe what makes a good algorithm:**

A good algorithm should be correct (solves the problem accurately) and efficient (in terms of time and space complexity). Time complexity is captured by asymptotic runtime complexity and space complexity is captured by the amount of additional memory required to execute the algorithm.  Some algorithms for hard problems will tradeoff correctness (close enough by some metrics of distance in a vector space may be used) for efficiency. these are called approximation algorithms.

## Growth Rate of Different Functions and Asymptotic Notation


**Running Time Complexity**

| Algorithm                                                                                             | Summary                                                                                         | Best-Case         | Worst-Case       |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------- | ---------------- |
| Insertion Sort                                                                                        | $\Omega(n) \space \& \space O(n^2)$                                                             | $\Theta(n)$       | $\Theta(n^2)$    |
| Selection Sort                                                                                        | $\Theta(n^2)$                                                                                   | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Bubble Sort                                                                                           | $\Theta(n^2)$                                                                                   | $\Theta(n^2)$     | $\Theta(n^2)$    |
| Merge                                                                                                 | $\Theta(n)$                                                                                     | $\Theta(n)$       | $\Theta(n)$      |
| Merge-Sort                                                                                            | $\Theta(n\lg n)$                                                                                | $\Theta(n\lg n)$  | $\Theta(n\lg n)$ |
| Binary Search                                                                                         | $\Omega(1) \space \& \space O(\lg n)$                                                           | $\Theta(1)$       | $\Theta(\lg n)$  |
| Linear Search                                                                                         | $\Omega(1) \space \& \space O(n)$                                                               | $\Theta(1)$       | $O(n)$           |
| Towers of Hanoi                                                                                       | $\Theta(2^n)$                                                                                   | $\Theta(2^n)$     | $\Theta(2^n)$    |
| Quick Sort                                                                                            | $\Omega(n \lg n) \space \& \space O(n^2)$                                                       | $\Theta(n \lg n)$ | $\Theta(n^2)$    |
| Insertion in Order Array                                                                              | $\Omega(1) \space \& \space O(n)$                                                               | $\Theta(1)$       | $\Theta(n)$      |
| Deleting a Node in a Balanced BST, given a node pointer to be deleted                                 | $\Omega(1)$ deleting a leaf node, & $O(\lg n)$ if deleting root and successor is farthest away  | $\Theta(1)$       | $\Theta(\lg n)   |
| Find Max Number in Balanced BST                                                                       | $\Theta( \lg n)$                                                                                | $\Theta(\lg n)$   | $\Theta( \lg n)$ |
| Find the max number in a full sorted array                                                            | $\Theta(1)$                                                                                     | $\Theta(1)$       | $\Theta(1)$      |
| Find the max number in a random linked list                                                           | $\Theta(n)$                                                                                     | $\Theta(n)$       | $\Theta(n)$      |
| Enqueue operation of the Queue built on a dynamic array (no size limit - can increase size if needed) | $\Omega(1)$ if the array did not fill up; $O(n)$ if the array needs to grow. Copies values over | $\Theta(1)$       | $\Theta(n)$      |
| Searching for a number in a linked list                                                               | $\Omega(1)$ if get lucky on the 1st one; $O(n)$ - not in linked list or last element            | $\Theta(1)$       | $\Theta(n)$      |
| Searching for a number in a balanced BST                                                              | $\Omega(1)$ get lucky at root; $O(\lg n)$ - not in BST                                          | $\Theta(1)$       | $\Theta( \lg n)$ |
| Insertion in balanced BST                                                                             | $\Theta(\lg n)$ - because balanced, lower levels have 2 children                                | $\Theta(\lg n)$   | $\Theta(\lg n)$  |
| Enqueue operation of Queue built on a linked list                                                     | $\Theta(1)$                                                                                     | $\Theta(1)$       |  $\Theta(1)$                |
| Searching for a number in a balanced BST                                                              | $\Omega(1)$ - get lucky at root; $O(n)$ - not there & traverse whole tree                       | $\Omega(1)$       | $O(n)$           |
| Push operation in Stack built on a linked list                                                        | $\Theta(1)$                                                                                     | $\Theta(1)$       | $\Theta(1)$      |                                                                                                      |                                                                                                 |                   |                  |

**Memory Complexity**

| Algorithm                | Summary                           | Best-Case   | Worst-Case  |
| ------------------------ | --------------------------------- | ----------- | ----------- |
| Insertion Sort           | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Selection Sort           | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Bubble Sort              | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Merge-Sort               | $\Theta(n)$                       | $\Theta(n)$ | $\Theta(n)$ |
| Binary Search            | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Static Stack Operations  | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| Dynamic Stack Push       | $\Omega(1) \space \& \space O(n)$ | $\Theta(1)$ | $\Theta(n)$ |
| Dynamic Stack Pop & Peek | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
| FIFO Queues              | $\Theta(1)$                       | $\Theta(1)$ | $\Theta(1)$ |
|                          |                                   |             |             |
# Sorting

```ad-summary
title: Goals
- Understand how different soritng algorithms work.
	- Given a list of nubmers, you should be able to show how soritng algorithms will sort this list step by step.
- How to anlyze the time complexity for each algorithm; best case, average case, and worst case. Also know these time complexities for each sorting algorithm (best case, average case, worst case)
- Know the best-case, worst-case, and average-case scenarios and asymptotic run-time coplexities for the sorting algorihts; aslo know whether each is in-place or not
	- Quicksort, insertion sort, bubble sort, and selection sort are in-place, but merge sort is not
- How to implement each algorithm; i.e. write C++ code for it.
```

# Divide-and-Conquer

```ad-summary
- Use the substitution method or master method to sovlve recurrences. If master method applies, you will be allowed to use it.
- Given pseudocode or C++ code for a recursive funciton, you should be able to write a recurrence equaiton that describe this function.
- Given a recurrence equation for a random divide-and-conquer algorihtm, you should be able to describe the behavior of theat divide-and-conquer algorithm.
```

# Binary Search and Linear Search

```ad-summary
title: Goals
- Know how binary search & linear search algorithms work.
- Know the itme coplexity for binary search and lienar search algoirthms (best-case vs. worst-case)
- Know how to write and solve recurrence equations to describe the behavior of binary search algorithm.
- Know how to implement binary and linear seach algoirthms in C++
```

# Linked Lists

```ad-summary
title: Goals
- Know the differences between arrays and linked lists (advantages and disadvantages, for example random access with arrays vs. sequential access, how memeory is organized for each, search limitations, etc.).
- Know how different types of linked lists work (singly and doubly linked lists)
- Know how to insert an element in a linked list at the beginning/middle/end.
- Know how to delete an element from a linked list at the beginning/middle/end.
- Know how to implement linked lists in C++
- Understand how pointers work in C++
- Know the time complexity for linked lists operations (insert/delete/search) whether it is intended tob e a sorted linked list or not, and know best/worst case conditions.
```
# Queues and Stacks

```ad-summary
title: Goals
- Understand how queues and stacks work.
- Know the time complexity for queues and stacks operations.
- Know how to implement queues and stacks operations.
- Know how to implement queues and stacks using arrays and linked lists.
- Know how to use queues and stacks to solve specific problems
```

# Binary Trees vs. Binary Search Trees (BSTs)

```ad-summary
title: Goal
- Know the terms and properties of trees ( and in particular binary trees) and binary search trees (BSTs are binary trees that satisfy the BST property on the keys of the nodes).
- Know how binary search tree operations work (insert/delete/search/min/max/successor).
- Know how to traverse a binary search tree (in-order/pre-order/post-order/level-by-level).
- Know the time complexity for binary search tree (BST) operations, wrost-case and best-case. ALso distinguish search in a BST vs. binary tree.
```

# Cumulative Knowledge

```ad-summary
title: Goals
- Given a specific application of data, be able to reason about the best data structure for that applicaiton based on your knowledge of what the advantages and disadvantages of each data structure are for a specific algorithm (ex. inseriton, deletion, search, finding min/max etc.)
- or principle features of the data structures (LIFO, FIFO, binary search, etc.)
```
# Short Answers

## Binary Trees and Binary Search Trees (BSTs)

1. Describe the structure of a binary search tree (BST).

A binary search tree (BST) is a nonlinear data structure comprised of nodes, each encapsulating data members, including an ordering identifier (called the key), and linking members for left child and right child (and sometimes parent if a bidirectional tree is desired). A BST is a tree, where the data nodes are the vertices and the links are the edges. A node pointer called root references the only node with no parent (the root of the tree) and nodes with no children are called leaf nodes (left and right child links point to NULL). The height of the tree is the maximal number of edges from root to any leaf node. A BST satisfies the the property that the left subtree of any node (the subtree whose root is the left child of the node) has keys that are smaller than (or equal to) the key of the node, the right subtree has keys that are larger than (or equal to) the key of the node, and the left and right subtrees are themselves BSTs.

2. Describe the process of adding a new node to a BST. Use this to state and justify its worst-case time complexity. Describe also the best-case time complexity.

The key of the new node to be added is compared recursively to each existing node's key, starting with the root node, and progresses to the left child if the key of the new node is less than (or equal) to the existing node's key or progresses to the right child if the key of the new node is greater than the existing node's key. This process terminates when the associated child link (left or right) points to NULL and the new node is placed as that associated child of the last node whose key is compared with the new key. In the worst case, this path from root to the node where the new node is placed traverses the maximal number of edges (which is the height of the tree). Hence, the process of adding a new node is $O(h)$, where $h$ is the right of the BST. The best-case scenario is when the root has an open child spot and the node to be inserted should go there. In best-case it is $\Omega(1)$

3. Describe an algorithm for finding the minimum key in a BST. Use this to state and justify its best-case and worst-case time complexity.

Assuming a nonempty BST, a node pointer (current) may be used and initially be set to the root. The key of the root may be assigned as the `min` and a while loop may be set up that terminates when the left child of the current is NULL such that inside the loop the `min` is updated as the current node's key and then current is updated to be its left child. Upon termination of the while loop, the `min` variable is the minimum key of the BST. This algorithm in worst-case traverses the longest path from root to leaf node, so has a worst-case run time of $O(h)$, where $h$ is the height of the BST. The worst-case is when there are only left children, in which case the run time is $O(n)$. In the best case, the root has no left child, and a constant number of operations are executed, so the best-case run time is $\Omega (1)$. 

4. Describe the difference between breadth-first and depth-first traversal of a binary tree.

Breadth-first traversal of a tree involves visiting the nodes of a tree layer by layer, and typically left to right. It is easiest to implement using a queue of node pointers. Depth-first traversal of a tree involves visiting nodes along a path from root to leaf node (typically visiting left children first) and recursively backtracking to visit the other child of each node once leaf nodes are encountered. Recursive functions are the easiest way to implement depth-first traversal (hence, a stack).

5. Describe the differences between pre-order, in-order, and post order traversal of a binary tree and BST.

All of these traversal methods are depth-first, but differ in the order in which the node is processed (aka visited). For pre-order traversal, first the left child is visited, then the node itself is processed, and finally its right child. For post-order traversal, first the left child is visited, then the right child and lastly the node is processed. These traversal methods apply for generic binary tree. For a BST, in-order traversal of the keys will process the key in sorted order.

6. Describe the three main cases of deleting a node from a BST (assume a node pointer to the node to be deleted, which is not NULL, is an input parameter for the algorithm, and there are parent pointers). Use this tot state and justify its worst-case time complexity.

The three cases are: (1) the node is a leaf node, (2) the node has one child, and (3) the node ahs two children.
- In case 1, the parent node may have the child pointer associated with the node to be deleted set to NULL and the node may simply be deleted.
- In case 2, the node should be replaced with its child (and subtree(, so the child's parent link should be set to match the node's parent link, and the associated child link of the parent should be updated to point to the child. Then, the node may be deleted.
- In case 3, there are two subcases: The successor is the right child of the node, or it is not:
	- In case 3a, the right child and its subtree may replace the node. Since it is the successor, it will not have a left child, so its left child may be set to point to the left child of the node to be deleted. The parent link of the successor may be set to be the parent of the node to be deleted, and the parent's associated child link may be updated to point to the successor. Then, the node may be deleted
	- In case 3b, the successor should first be replaced with its right child (and its subtree). This is done by setting the right child's parent link to match the successor's parent. The left child link of the successor's parent (it must be a left child, as the successor would be the minimum in the subtree) is then linked do the right child of the successor. Once the successor is supplanted by its right child, then the successor may supplant the node to be deleted. This is done by making the parent link of the successor point to the parent of the node to be deleted, making the left child of the successor to be the left child of the node to be deleted, and by making the right child of the successor to be the right child of the node to be deleted. At this point the node may be deleted.

While most of these steps are constant run time, determining the successor is worst-case $O(h)$,, where $h$ is the height of the three, and this occurs when the node to be deleted is the root node and the path to the successor is equal to the height of the three. Hence, the worst-case complexity is $O(h)$.

## FIFO Queues

7. Describe the queue data structure with its operations of enqueue and dequeue in your own words accurately.

A queue data structure is a linear data structure that implements the First-In-First-OUT (FIFO) principle. A new data element is added to the queue at the rear using the enqueue operation and a data element may be removed from the queue from the front using the dequeue operation. If multiple data elements are put into the queue using enqueue operations, the first element to be put int eh queue will be the first to be dequeued from the queue for processing (a first-come, first-serve behavior).

8. Describe how a (fixed size) circular queue may be implemented with constant run-time enqueue and dequeue operations on a static array of size $n$.

A circular queue may be implemented on a static array of size $n$ by keeping track of the front and rear indexes. AN empty queue may be encoded by the condition that the front and rear indexes are equal, and a full queue may be encoded by the condition that the front is one more than then rear, modulo $n$ (meaning either `front = rear + 1` if `0 < front < n`, OR `front = 0` when `rear=n-1`). This allows a capacity of `n-1` for the queue. Enqueueing is done when the queue is not full by adding the data element at the rear and then incrementing the rear index modulo $n$ (meaning if `rear = n-1` prior to enqueueing, it will become 0 after the enqueue operation). Dequeuing may be done when the queue is not empty by returning the element at the front then incrementing the front index modulo $n$
## Stacks

9. Describe the stack data structure with its operations of push and pop in your own words accurately

A stack data structure is a linear data structure that implements the Last-In-First-Out (LIFO) principle. A new data element may be put onto the stack using the push operation and the top data element may be taken off the stack using the pop operation. If multiple data elements are put on the stack using a push operation, the last element to be put on the stack will be the first to be popped off the stack for processing (hence the LIFO name).

## Linked Lists

10. Describe in your own words accurately a singly linked list. Distinguish a singly linked list from a doubly linked list.

A singly linked list is a linear data structure comprised of nodes encapsulating one or more data members and chained together using node pointers as links connecting one node to the next in the linked list (with the last node's next link assigned to NULL). A linked list is referenced using a node pointer called head, pointing to the first node in the linked list, and usually also has a tail pointer referencing the last node in the list. A doubly linked list contains a second linking member for each node that points to the previous node in the linked list (with the head node's previous link pointing to NULL)

11. Describe the process of adding a new node to the head of a singly linked list. Use this to state and justify its worst-case complexity.

IN order to add a new node to the head of a singly linked list, the new node's next pointer should be assigned to the head of the linked list. Then the head pointer can be updated to be the new node. This constant number of operations leads to worst-case time complexity of $O(1)$.

12. Describe the process of deleting a node from a singly linked list with a specific key value (assume all nodes have unique key values, there is no tail pointer, and the linked list is NOT empty). Use this to state and justify its best-case and worst-case time complexities.

In order to delete a node from a singly linked list, two node pointer variables should be used: current and previous. In the special case that the head node matches the key value, only one of the temporary pointer variables is needed, say current. In this case, current is set to point to the head node and then the head pointer may be updated to point to the next node in a singly linked list. Now the current node may be deleted. This constant number of operations leads to a best-case time complexity of $\Theta(1)$. Otherwise, the current node pointer can be set to the node after the head and the previous node pointer can be set to the head. A while-loop may be used to iterate through the linked list checking the key value of the current node, as long as it is not pointing to NULL (this is the condition of the while-loop). The previous node pointer is updated so as to point to the current node of the previous iteration of the while-loop. If the current node ahs a matching key, then it is deleted by first setting the next link of the previous node to reference the node that current's next link references, which keeps the linked list chained as needed. Then, the current node may be deleted and the function may return. If the while loop terminates without finding the key (meaning the key is not in the linked list), the function may return without deleting any node. The worst-case scenario is when the key is not present, or it is the last node, and in either case, the complexity is $\Theta(n)$, where $n$ is the number of nodes in the linked list. Thus, node deletion is $\Omega(1)$ and $O(n)$

13. Describe how to traverse a linked list to print the key of each node in the list. Describe its run-time complexity.

To traverse a linked list, a single node pointer may be used, call it current. Starting at the head, and suing a while loop, progressively display the key and move to the next node until current points to NULL. Traversal is $\Theta(n)$, always linear running time. 

14. Discuss the advantages and disadvantages of dynamic arrays and linked lists in terms of access, insertion, and deletion.

From the perspective of access, arrays are better because they allow random access in constant time, whereas linked lists require sequential access, which is worst-case linear time. Form the perspective of insertion (data addition), linked lists are better (assuming the dynamic array is full) because insertion at the head (or tail) may be done in constant time for a linked list, whereas insertion for a full dynamic array requires creating a new, larger dynamic array and copying over all of the data, which has linear run time. Form the perspective of deletion, they are similar, as a dynamic array may simply increment its pointer to the first element and delete the previous first element similar to how the head may be moved to the second node in the linked list and delete the old head node.

## Formal Arguments and Asymptotic Complexity

15. Describe what a loop invariant is and how it is used to prove the correctness of an algorithm.

A loop invariant is a formal statement about the state of program variables being operated on in a loop phrased in such a way that the statement is true upon initialization (initialization step), maintained in each iteration of the loop (maintenance step), and upon exiting the loop (termination step).If the loop invariant is demonstrated to hold upon initialization and maintenance, and the statement holds meaning upon termination toward achieving the goal of the algorithm, and the algorithm terminates, or halts, then correctness can be established via the loop invariant.

16. Describe what a recurrence equation is and how it is useful in the analysis of algorithms. 

Recurrence equations are mathematical expressions that represent the current value of a sequence of values as a function of previous values and other terms. Because they depend on previous values, to determine a closed-from solution (equation) that solves the recurrence equation requires the initial conditions (or base cases). Recurrence equations are useful for analyzing the run-time complexity of recursive functions, including divide-and-conquer algorithms.

17. Define the big $O$ notation of $O(g(n))$ in your own words accurately.

$O(g(n))$ is the set of functions that asymptotically grow slower than a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be upper bound by a constant multiple of $g(n)$, asymptotically.

18. Define the big Omega notation $\Omega(g(n))$ in your own words accurately.

$\Omega g(n)$ is the set of functions that asymptotically grow faster than a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be lower bound by a constant multiple of $g(n)$, asymptotically.

19. Define the big Theta notation of $\Theta(g(n))$ in your own words accurately.

$\Theta(g(n))$ is a set of functions that asymptotically grow within a constant multiple of growth rate function $g(n)$. As such, the functions in the set can be tightly bound within two constant multiples of $g(n)$, asymptotically.

## Divide-and-Conquer and Incremental Recursive Algorithms

20. Describe how incremental recursive algorithms (implemented as functions that call themselves only once within a function with an incrementally smaller input) solve a problem, using your own words, accurately. 

Recursive algorithms incrementally  make the problem smaller until a base condition is reached that can be easily solved, at which point the base solutions are recursively combined to solve the overall problem.

21. Describe how divide-and-conquer algorithms solve a problem, using your own words, accurately.

Divide-and-conquer algorithms partition the problem into smaller subproblems of similar kind recursively, until the subproblems can be solved directly, and then combine the results to solve the larger problem.

22. Describe the Towers of Hanoi problem and how it leads to exponential running time.

The Towers of Hanoi is a puzzle involving three "towers" and $n$ disks of different radius, stacked on top of each other from largest (at the bottom) to the smallest (at the top) on the first tower. The goal is to get all disks moved to the third tower (the destination), and stacked in the same manner as initialized, while following the rules. The rules of the puzzle require that only a single disk may be moved from the top of one tower  and placed on another tower, and only smaller disks may be placed on larger disks(no larger disk may be placed on a smaller disk)> A recursive solution to the puzzle involves moving $n-1$ of the disks to the middle tower, then moving the largest disk to the destination tower, and finally moving the $n-1$ disks form the middle tower to the destination tower. This recursive solution requires two instances of the problem of size $n-1$, along with one extra move, which is what leads to the exponential number of moves (or running item).

## Linear and Binary Search

23. Describe how the linear search algorithm processes an array of values given a key (you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm to preform as desired.

Linear search goes through each element of the array and compares it with the key. Once a match if found, it returns the index where the key match is in the array. Otherwise, if not match is found, it returns `-1`  to indicate no match is found. For linear search, no characteristics of the data are used.

24. Describe how the binary search algorithm processes an array of values given a key (you may assume the values are all integers). Indicate if there are any characteristics of the data in the array that are needed for the algorithm to perform as desired.

Binary search requires the data to be sorted (this is the characteristics that is used). It is a divide-and-conquer algorithm that uses the fact that the values are sorted to skip to the (approximate) midpoint value and compares it with the key.  Otherwise, if the key is smaller than the midpoint value, the binary search function is called on the left side of the array. If the key is larger than the midpoint value, the binary search function is called on the right side of the array. Recursively halving the size of the array to search with a constant factor of work to do at each function call gives an $O(\log n)$ run time.

## Quick Sort and Merge Sort (Divide-and-Conquer Comparison Algorithms)

25. Describe how the merge sort algorithm processes an array of values to sort them (you may assume the values are integers).

Merge sort is a divide-and-conquer algorithm that divides the array into roughly halves, recursively, until the resulting subarrays are singletons, which are trivially sorted. It then combines the sorted subarrays using a merge subroutine that creates copies of the two subarrays and, starting at the front of each subarray, iteratively goes thorough each element of each subarray and places the smaller of the two values as the next element in the merged array while incrementing the index of the subarray from which that element came. Once it adds the last element of either subarray, it can append the rest of the elements of the other subarray to complete the merged array. It continues merging subarrays in this manner until the entire array is merged and sorted.

26. Describe how the quick sort algorithm covered in class processes and array of values to sort them (you may assume the values are integers).

The quick sort algorithm covered in class is an in-place, divide-and-conquer algorithm that recursively partitions the array (and alter subarrays) using a subroutine called Partition, which takes the last element, called the pivot, and finds the location where that element (the pivot) should be within the subarray in sorted order, places the pivot there, and then returns the index where the pivot is (in its correct position with respect to sorting). It does so by using two indexes, one that progresses thorough the subarray element-by-element that compares the pivot with each element in the array using this index. The second index is sued to keep track of the location one to the left of where the pivot should go in the subarray, and starts one position to the left of the starting index of the subarray. The second index is only incremented in the case where the next element is less than or equal to the pivot, after which the element at the updated second index is swapped with the element at the first index. This ensures that the smaller (or equal) value that is encountered is swapped with one of the larger values that were passe dover while the first index iterates thorough the subarray. Once the first index goes thorough all the elements (except the last since that is the pivot), the pivot is swapped with the value at the position of one past the second index, which places the pivot in the correct location in the subarray. After Partition is called, the quick sort algorithm is called recursively on the left side of the subarray (no including the pivot), and the right side of the subarray(again, not including the pivot), until the subarrays are of size $1$ or empty.

## Incremental Sorting Algorithms

27. Describe how the selection sort algorithm processes an array of values to sort them (you may assume the values are integers).

Selection sort treats the front of the array as the sorted portion (initially empty) and progressively builds up the sorted portion of the array by finding the next smallest element on the right side of the array to put at the end of the sorted portion. Once it gets to the end (right side0 of the array), it swaps the values at the smallest index to the right with the value at the next index to the right of the sorted portion of the array. It continues in this manner until the entire array is the sorted portion.

28. Describe how the insertion sort algorithm processes an array of values to sort them (you may assume the values are integers).

Insertion sort treats the front of the array as the sorted portion (initially just the first element) and progressively builds up the sorted portion of the array by finding where in the sorted portion of the array the next element on the unsorted portion of the array (right side), called the key, should go within the sorted portion. It does so by first storing the key and then comparing the key with the rightmost element in the sorted portion. It decrements the index and shifts to the right each value in the sorted portion until the key is no longer smaller than the element at the current index within the sorted portion of the array (or it gets to the front of the array). It then places the key at that location and moves on to the next value in the sorted portion of the array. It continues in this manner until the entire array is the sorted portion.

29. Describe how the bubble sort algorithm processes an array of values to sort them (you may assume the values are integers).

Bubble sort treats the back of the array as the sorted portion (initially empty) and progressively builds up the sorted portion of the array by starting at the first element and performing pairwise comparisons and swaps whenever the next element is smaller than the current element. The index is progressively incremented with pairwise comparisons and potentially swapped (if the next value is smaller) until the end of the array is reached. With each iteration through the array, doing these pairwise comparisons and swaps cause the next largest element to migrate to the right side of the array, like a bubble rising to the surface of a fluid. This progressively builds up the sorted portion of the array at the backside until only one element is left, which must be trivially sorted at the front of the array (the smallest value).

# General Algorithms and Data Structures

30. Define what an algorithm is accurately in your own words.

An algorithm is a sequence of instructions that accomplishes a task.

31. Define what a data structure is accurately in your words.

A data structure is a way of organizing, managing and storing information usable by a computer.

32. Describe what is a dynamics set, and attributes such as the key, satellite data and linking members

A dynamic set is a set that can change its elements over time. The key is an attribute of each element in the dynamic set that is searchable and also often used for organizing elements of the dynamic set (via sorting). Satellite data include all other related data in the dynamic set that would be organized with the key in the element Linking members are used to connect the data elements in the dynamic set implementation, generally implemented as pointers.

33. Describe what makes a good algorithm

A good algorithm should be correct (solves the problem accurately) and efficient (in terms of time and space complexity). Time complexity is captured by asymptotic runtime complexity and space complexity is captured by the amount of additional memory required to execute the algorithm.  Some algorithms for hard problems will tradeoff correctness (close enough by some metrics of distance in a vector space may be used) for efficiency. these are called approximation algorithms.

## Pointers, Static Memory and Dynamic Memory

34. Describe what a reference variable is in C++ accurately in your own words. 

A reference variable in C++ is an alias of another variable, which must be initialized when declared, cannot be changed to refer to another variable, and has the same memory address as the original variable.

35. Describe what a pointer is in C++ accurately in your own words.

A pointer is a variable that contains the memory address of another object or variable, which may be reassigned to another object of the same type or be assigned to NULL.

36. Describe the differences between static and dynamic memory in a C++ runtime environment.

All static memory is allocated at compile time, assigned to the stack, is fixed, and is automatically deallocated when the object is out of scope. Dynamic memory is allocated at run time, assigned to the heap, is dynamic (can change in size), and persists beyond the scope in which the allocation is made. The new and delete operators are used to dynamically assign and deallocate dynamic memory. All normally declared variables are static. 

37. Describe a dangling pointer in your own words accurately

A dangling pointer is a pointer that once referenced a dynamic memory object that has since been deallocated using the delete operator or references an object that is out of scope.

38. Describe how a memory leak can occur in a C++ Program.

A memory leak can occur when a pointer referencing a dynamically allocated object is reassigned to reference another object.






