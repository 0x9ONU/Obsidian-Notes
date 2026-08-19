	Date: 27th October 2023
Date Modified: 27th October 2023
File Folder: Week 10
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Loop Invariant
	- Linear Search Problem
	- Max Value Problem

```

# Linear Search Problem

**Input:** A sequence of elements of dynamic set $S$ with key attribute called `key` and a `keyVal` to search for:

$$< a_1, s_2,..., a_n>$$
**Output:** Firsts element $a_k$ such that $a_k.key = keyVal$ or it hits the end and NULL is returned.

## Linked List Search Loop Invariant

```
Alg: SEARCH_LL(listLL, keyVal)
searchNode = listLL.head
while (searchNode NOT = NULL
	if searchNode.key = keyVal
		return searchNode
	searchNode = searchNode.next
return NULL
```

At the beginning of each iteration of the while-loop, all of the nodes preceding `searchNode` have been examined and non have the `keyVal`

**Initialization:** Before the first iteration,
- `searchNode` is the head of the list.
- no nodes preceding `searchNode` (**vacuously true**).
- Vacuously true in this case. 

**Maintenance:** May assume no nodes preceding `searchNode` have `keyVal`
- In this loop iteration, if `searchNode` has `keyVal`, return it!
- Otherwise move on to the next node
- Again, all nodes preceding do not have `keyVal`

**Termination**: If `searchNode.key = keyVal` (First time it was found (and returns))
- Otherwise, terminates when off the list (`searchNOde = NULL`)

```ad-important
Satisfies the search output's requirements
```

## Loop Invariant Example

```ad-question
Given the algorithm for returning the maximum value of an array, articulate a loop invariant and demonstrate its initalization and maintence, as well as how termiantion demonstrates correctness of the algorithm.
```

```
Alg: FIND-MAX-VAL(A, n)
maxVal = A[1]
for i <- 2 to n
	if A[i] > maxVal
		maxVal = A[i]
return maxVal
```

```ad-note
Algorithm is correct if halts and $maxVal = max\{A[1], A[2],...,A[n]\}$
```

**Before**: Before $i$
- $maxVal = max \{A[1],... A[i-1]\}$

**Initialization**: Before the first iteration ($i=2$):
- `maxVal` is set to the first element of the array where $maxVal = A[1]$ (line 1)
- If that is the case, $maxVal = max\{A[1]\} = max\{A[1],...,A[i-1]\}$  (vacuously true)

**Maintenance**: Assume true for $i \le k$ (go into loop with $i=k$)
- Therefore, $maxVal = max\{A[1], ..., A[k-1]\}$
- **Need to show**: $maxVal = max \{A[1],...,A[k]\}$
- Check if $A[k] >maxVal$ (Line 3)
- Make $maxVal = max \{max\{ A[1]..., A[k-1] \}, A[k] \}$ (line 4)
	- Note that the inner "max" is the original value for `maxVal`

**Termination**: Upon exiting the loop, $i = n + 1$ 
- The loop invariant with this value $n+1$ gives:
- $maxVal = max \{ A[1],..., A[n+1-1]\}$
- $maxVal = max\{A[1],...,A[n]\}  \space QED$
- Halts because the for loop executes $n-1$ times and exits


