Date: 4th December 2023
Date Modified: 4th December 2023
File Folder: Week 15
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- BST Operations
- BST Algorithms Pt. 1

```

# BST Operations

**Search**: Given a BST and a key, check if the given BST contains the key or not.

**Insert**: Given a BST and a key, insert the key at the proper location while maintaining the BST property.

**Delete**: Given a BST and a key, delete the key from the BST (if found) while maintaining BST properties.

## Adding (insert) Nodes to a BST

- Compare the data value to each node, and:
	- Move to left child (if <)
	- Move to right child (if >)
	- Place the node once nullptr is reached

### Example

```ad-question
Add the following key values to the tree:
- 2
- 16
- 15

![[Pasted image 20231204082329.png]]
```

![[Pasted image 20231204082338.png]]
## Deleting a Node

3 Cases: Need node pointers to node and its parent

### Case 1: Deleting a leaf 

![[Pasted image 20231204082442.png]]

![[Pasted image 20231204082451.png]]

### Case 2: Deleting a Node with one child

When deleting 10, replace node 10 with its child (and its subtree)

![[Pasted image 20231204082532.png]]

![[Pasted image 20231204082543.png]]

### Case 3: Deleting a Node with 2 children

#### Case 3a: Successor (next largest key value) is right child

When deleting 14, it takes the next largest key (15) and replaces it

```ad-important
To be the successor, the to-be-successor node CANNOT have a left child
```

![[Pasted image 20231204082715.png]]

#### Case 3a: Successor is NOT right child

- Successor is 4
- Replace 4 with right child's subtree (4 -  no left child)
- Then, replace 3 with successor 4

![[Pasted image 20231204083122.png]]

![[Pasted image 20231204083130.png]]

# BST Algorithms

## BST Class Data Members

```c++
class BSTree {
	struct Node {
		int key; //key data
		Node* left; //pointer to left subtree
		Node* right; //pointer to right subtree
		Node* p; //pointer to parent node
	};
	Node* root;
};
```

## Min/Max Algorithms

```
Alg: BST-MIN(x)
while x NOT = NIL
	if x.left = NIL
		return x
	else
		x <-x.left
return x
```

```
Alg: BST-MAX(x)
while x NOT NIL
	if x.right = NIL
		return x
	else
		x <- x.right
```

```ad-note
If done without a parameter, it typically starts at the root. So, x would initally be set to the root before searching for the min/max
```

### Run-Time Complexity

**Best-Case**: When the minimum/max is the root:

$$\Omega(1)$$
**Worst-Case**: When it is at the bottom:

$$O(h)$$
## Successor Algorithm

   