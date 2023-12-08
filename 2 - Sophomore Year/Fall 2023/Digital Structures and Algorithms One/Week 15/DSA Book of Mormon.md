Date: 8th December 2023
Date Modified: 8th December 2023
File Folder: Week 15
#DSA1

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





























































