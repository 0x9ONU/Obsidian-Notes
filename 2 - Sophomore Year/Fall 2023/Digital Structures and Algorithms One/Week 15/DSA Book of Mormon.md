Date: 8th December 2023
Date Modified: 8th December 2023
File Folder: Week 15
#DSA1

# Short Answers

1. Describe the structure of a binary search tree (BST).

A binary search tree (BST) is a nonlinear data structure comprised of nodes, each encapsulating data members, including an ordering identifier (called the key), and linking members for left child and right child (and sometimes parent if a bidirectional tree is desired). A BST is a tree, where the data nodes are the vertices and the links are the edges. A node pointer called root references the only node with no parent (the root of the tree) and nodes with no children are called leaf nodes (left and right child links point to NULL). The height of the tree is the maximal number of edges from root to any leaf node. A BST satisfies the the property that the left subtree of any node (the subtree whose root is the left child of the node) has keys that are smaller than (or equal to) the key of the node, the right subtree has keys that are larger than (or equal to) the key of the node, and the left and right subtrees are themselves BSTs.

2. Describe the process of adding a new node to a BST. Use this to state and justify its worst-case time complexity. Describe also the best-case time complexity.

The key of the new node to be added is compared recursively to each existing node's key, starting with the root node, and progresses to the left child if the key of the new node is less than (or equal) to the existing node's key or progresses to the right child if the key of the new node is greater than the existing node's key. This process terminates when the associated child link (left or right) points to NULL and the new node is placed as that associated child of the last node whose key is compared with the new key. In the worst case, this path from root to the node where the new node is placed traverses the maximal number of edges (which is the height of the tree). Hence, the process of adding a new node is $O(h)$, where $h$ is the right of the BST. The best-case scenario is when the root has an open child spot and the node to be inserted should go there. In best-case it is $\Omega(1)$

3. Describe an algorithm for finding the minimum key in a BST. Use this to state and justify its best-case and worst-case time complexity.

Assuming a nonempty BST, a node pointer (current) may be used and initially be set to the root. The key of the root may be assigned as the `min` and a while loop may be set up that terminates when the left child of the current is NULL such that inside the loop the `min` is updated as the current node's key and then current is updated to be its left child. Upon termination of the while loop, the `min` variable is the minimum key of the BST. This algorithm in worst-case traverses the longest path from root to leaf node, so has a worst-case run time of $O(h)$, where $h$ is the height of the BST. The worst-case is when there are only left children, in which case the run time is $O(n)$. In the best case, the root has no left child, and a constant number of operations are executed, so the best-case run time is $\Omega (1)$. 








































































