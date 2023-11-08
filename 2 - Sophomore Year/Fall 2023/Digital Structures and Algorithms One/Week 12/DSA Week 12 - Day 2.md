Date: 8th November 2023
Date Modified: 8th November 2023
File Folder: Week 12
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Binary Serach cont.
- Towers of Hanoi and Subsitution Method

```

# Binary Search Cont.

## Worst-Case Scenario for $n=2^k-1$

Given last time:

$$T(n) = T(2^k-1)=k$$
Need to relate $k$ to $n$ using $n=2^k-1$

$$n+1 = 2^k$$
$$\lg(n+1) = \lg(2^k)=k$$
$$\therefore T(n) = \lg(n+1)$$
```ad-note
$$\lg(n+1) = \Theta(\lg(n))$$
```

**Lower Bound**:

$$n < n+1 \space \space \space \space \space \forall n \ge 1$$
$$\lg n < \lg(n+1)$$
**Upper Bound**:

$$n+1 < n^2 \space \space \space \space \space \forall n \ge 2$$
$$\lg(n+1) < \lg(n^2)$$
$$\lg(n-1) < 2 \lg(n)$$
**Combined Big Theta  Equation**:

$$\therefore \lg n \le \lg(n+1) \le 2 \lg(n) \space \space \space \space \space \forall n \ge 2$$
$$T(n) = \Theta(\lg(n))$$
```ad-important
Binary Search is $\Omega(1)$ AND $O(\lg(n))$ in run-time complexity.
- $\Theta(1)$ in memory complexity
```

# Tower of Hanoi 

## Summary

Incrementally move disks from tower to tower
- **Start**: Source (larger to smallest disk in a stack)
- **End:** destination (largest to smallest disk in a stack)

**Rules:**
1. Only one disk moved per round
2. Only top disk is movable and goes to the top of another tower
3. No larger disk may be placed on a smaller disk

![[Pasted image 20231108082414.png]]

## Solution

```ad-question
Solve the puzzle for $n=3$
```

#comebacklater 

## Incremental Recursive Solution

1. Move $n-1$ disks to auxiliary (as valid solution)
	1. Treats aux as the destination (and destination as aux)
2. Move largest disk to destination
3. Move $n-1$ disks to destination


## Tower of Hanoi Pseudocode
 
```
//move(a,b) = subroutine that moves a disk from tower to tower
Alg: HANOI(n, source, aux, dest)
	if n > 0 //base case
		HANOI(n-1, source, dest, aux) //flips roles of dest/aux
		move(source, dest)
		HANOI(n-2, aux, source, dest) //flip roll of aux/source
```

```ad-note
Remember:
$$T(n) = aT(n-1)+f(n); \space \space \space T(n_b) = f_b(n)$$
```

```ad-question
Write the recurrence equaiton counting number of moves
- Pseudocode captures the 3 steps
```

![[Pasted image 20231108083935.png]]

**Recursive Equation**
$$T(n) = 2T(n-1)+1$$
$$T(0) = 0$$

**Solve Equation using Substitution Method**

1. Write out several instances of the recurrence equation on smaller input
$$T(n-1)=2T(n-2)+1$$
$$T(n-2)=2T(n-3)+1$$
2. Substitute
$$T(n) = 2T(n-1)+1$$
$$2[2T(n-2)+1)]+1$$
$$2[2[2T(n-3)+1]+1]+1$$
$$2^3T(n-3) +2^2*1 + 2^1*1+2^0*1$$

3. In terms of $i$
$$T(n) = 2^iT(n-i) +2^{i-1}*1 + 2^{i-2}*1+...+2^1*1+2^0*1$$
$$T(n) = 2^iT(n-i) + \sum_{j=0}^{i-1}2^j$$
$$\sum_{j=0}^{i-1}2^j = 2^i-1$$
$$T(n) = 2^iT(n-i) + 2^i-1$$
1. Bottom out with $n$

Because base case: $T(n) = 2^nT(0) + 2^n-1$$

$$T(n) = 2^n-1$$
$$T(n) = \Theta(2^n)$$