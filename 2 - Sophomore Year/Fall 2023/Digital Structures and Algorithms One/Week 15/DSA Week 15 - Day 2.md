Date: 6th December 2023
Date Modified: 6th December 2023
File Folder: Week 15
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- BST Algorithms pt.2 

```

# BST Algorithms

## Successor

```
if x.right NOT = NIL
	return TREE-MINIMUM(x.right)
y = x.p
while y NOT = NIL and x = y.right
	x - y
	y = y.p
return y
```

![[Pasted image 20231206081455.png]]

Successor is the next largest key:
- Successor of 3 is 4
- Successor of 13 is 14
- Successor of 7 is 8
- Successor of 14 is NIL

## Search

### Recursion

```
TREE-SEARCH(x, k)
if x = NIL or k = x.key
	return x
if k < x.key
	return TREE-SEARCH(x.left, k)
else reutrn TREE-SEARCH(x.right,k)
```

![[Pasted image 20231206081831.png]]

#### Balanced Recurrence Equations
**If balanced, the recurrence equation for worst case:**

$$T(n)\approx T(\frac{n}{2}) +1$$

**Using Master Theorem**

$$a=1, b = 2$$
$$\# \space children = n^{\log_ba} = n^{\log_21} = n^0 = 1$$
**case 2**:
$$f(n)=\Theta(1)$$

Multiply by one log to find worst case:

$$T(n) = \Theta(\lg n)$$

**Best case**:
$$\Theta(1)$$
*Stop after find root has the key*

#### In General...

**Worst-Case** for search is $O(h)$

### Iterative Tree Search

```
ITERATIVE-TREE-SEARCH(x, k)
while x NOT = NIL and k NOT = x.key
	if k < x.key
		x = x.left
	else x = x.right
return x
```

```ad-note
The time complexity DOES NOT change
```

## Insertion

```
TREE-INSERT(T, z)
y <- NIL
x <- T.root
while x NOT = NIL
	y = x
	if z.key < x.key
		x = x.left
	else x = x.right
z.p = y
if y = NIL
	T.root = z //Tree T was empty
else if z.key < y.key
	y.left = z
else y.right = z
```

**Best-Case: If root has an open child (left or right) and the node's key should go there**
$$\Theta(1)$$

**Worst-Case: Have to place it at a leaf node whose depth = height**
$$O(h)$$

## Subtree Transplant

```
TRANSPLANT(T, u, v)
if u.p = NIL
	T.root <- v
else if u = u.p.left
	u.p.left <- v
else u.p.right <- v
if v NOT = NIL
	v.p <- u.p
```

- Node $u$ and node $v$ are roots of subtrees
- Node $u$'s parent will become node $v$'s parent (and becomes same child)
- Helpful for Node Deletion

## Deleting a Node

**Case 1: Deleting a Leaf Node**
- Handled by Lines 1 and 2
**Case 2: Deleting node w/ 1 child**
- ALSO Handled by Lines 1 and 2
**Case 3: Deleting node w/ 2 children**
- Uses the rest of the code
- tree-minimum will ALWAYS find the successor since there will always be a right node

```
if z.left = NIL
	TRANSPLANT(T, z, z.right)
else if z.right = NIL
	TRANSPLANT(T, z, z.left)
else y <- TREE-MINIMUM(z.left)
	if y.p NOT = z
		TRANSPLANT(T, y, y.right)
		y.right <- z.right
		y.right.p <- y
	TRANSPLANT(T, z, y)
	y.left = z.left
	y.left.p = y
```

