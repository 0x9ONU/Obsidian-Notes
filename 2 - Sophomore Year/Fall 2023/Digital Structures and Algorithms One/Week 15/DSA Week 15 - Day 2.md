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

