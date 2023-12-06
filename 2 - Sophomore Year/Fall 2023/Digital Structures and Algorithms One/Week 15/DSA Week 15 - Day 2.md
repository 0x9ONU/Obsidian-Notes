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