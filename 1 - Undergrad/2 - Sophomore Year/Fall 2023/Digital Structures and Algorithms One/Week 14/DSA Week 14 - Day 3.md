Date: 1st December 2023
Date Modified: 1st December 2023
File Folder: Week 14
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Binary Trees
```

# Trees and Binary Trees

## Properties

- Each node has at most 2 children
- Edges
	- Denotes a relationship with pairs of nodes
	- Uni-directional or bi-directional
- Descendant/Children
- Ancestor/Parent
- Path
	- Takes you from one node on the tree to another
	- $A \rightarrow B \rightarrow E \rightarrow J$
	- CANNOT repeat nodes when listing a path

![[Pasted image 20231201081158.png]]

- **Depth** (of a node) =  # edges from root to node
- **Height** = maximal depth in the tree
- **Full tree** = Each node has either 0 or 2 children
- **Complete** = all levels filled with nodes except last
- **Balanced** = height of the left and right subtree of any node differ by at most 1

![[Pasted image 20231201081319.png]]

```ad-example
Balanced Binary Tree that is **not** complete
![[Pasted image 20231201081742.png]]

```

## Benefits of Trees

- Structural relationships in data
- Hierarchies
- Can move subtrees without much effort
- Efficient searching and insertion:
	- $O(h)$, where $h$ is the height of the tree

```ad-note
Worse case looks like a singly linked list where every child of the root node has only one child and you want to get the only leaf in the structure
```

## Binary Search Trees (BSTs)

```ad-important
title: Binary Search Tree Property
For each node $j$ (where $j$ is a node pointer)
- If $i$ is a node in $j$'s left subtree:
$$i \rightarrow key \le j \rightarrow key$$
- If $k$ is a node if $j$'s right subtree:
$$k \rightarrow key \ge j \rightarrow key$$
```

```ad-example
- $root\rightarrow key = 10$
- Min value = 4
- Max value = 21
```

![[Pasted image 20231201082439.png]]

### Tree Traversal

- "Visiting" a node (or "processing" it)
- Visit each node in the tree = tree traversal
- Two major groupings:
	- **Breadth-First Traversal**
		- Visit each node at a given layer before moving to the next layer
	- **Depth-First Traversal**
		- Visit leftmost branch first going to leaf nodes early

#### Breadth-First Traversal

Goes in the following order:
- 8, 5, 4, 9, 7, 11, 1, 12, 3, 2

![[DSA Week 14 - Day 3 2023-12-01 08.28.30.excalidraw]]
**
#### Depth-First Traversal Approaches

**Recusively Implemented**

1. **Pre Order** traversal - visit the parent first and then left and right children ($p-l-r$)
2. **In Order** traversal - Visit the left child, then the parent and the right hcild ($l-p-r$)
3. **Post Order** traversal - visit left child, then the right child and then the parent ($l-r-p$)

```ad-example
![[Pasted image 20231201083202.png]]
- **Preorder**
	- 8, 5, 9, 7, 1, 12, 2, 4, 11, 3
- **In Order**
	- 9, 5, 1, 7 2, 12, 8, 4, 3, 11
- **Post Order**
	- 9, 1, 2, 12, 7, 5, 3, 11, 4, 8
```

### BST Implementation with Array

- **Breadth-First Representation**
- Children of $i$ at indices $2i+1$ and $2i+2$
- Parent (if any) at $\lfloor \frac{i-1}{2} \rfloor$

![[Pasted image 20231201084626.png]]

```ad-example
If the array was larger:
- Index for left child of 9? **19**
- Right child? **20**
```

### BST Implementation as Nodes Using Pointers

- More efficient insertion and deletion
	- $O(h)$ where $h$ is the height of the tree
- Uses a divide-and-conquer solution
	- Subproblem = subtree