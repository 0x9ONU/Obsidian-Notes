Date: 11th October 2023
Date Modified: 11th October 2023
File Folder: Week 8
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Geometric Representation Proof
- Algorithmic Analysis Cont.
	- Insertion Sort
	- Growth Rate of Functions

```

# Geometric Representation Proof

```
1. */** ... * n
2. **/* ... * n-1
3. ***/ ... * n-2
...
n. *** ... */* 1
```

```ad-check
title: Solution
- Dots on main diagonal?
	- $n$
- Spaces for dots?
	- $n^2$
- SO:
	- $2 \sum_{i=1}^n i = n^2 + n$
	- $\sum_{i=1}^n i = \frac{n(n+1)}{2}$
```

# Insertion Sort Running Time Analysis

```ad-question
**Define** $t_j$ number of times the while-loop header is executed, given the input, and outer loop counter value $j$
```

```
Alg: INSERTION-SORT(A, n)
for j = 2 to n
	key = A[j]
	i = j-1
	while i > 0 and A[i] > key
		A[i+1} = A[i]
		i = i-1
	A[i+1] = key
```

| Execution Cost | # Times Executed       |
| -------------- | ---------------------- |
| $C_1$          | $n$                    |
| $C_2$          | $n-1$                  |
| $C_3$          | $n-1$                  |
| $C_4$          | $\sum_{j=2}^n t_j$     |
| $C_5$          | $\sum_{j=2}^n (t_j-1)$ |
| $C_6$          | $\sum_{j=2}^n (t_j-1)$ |
| $C_7$          | $n-1$                  |

```ad-check
title: Solution
- How many values does the outer loop counter $j$ take on?
	- $n-1$
- Let $t_j$ be defiend as the number of times the **while header executes** for each $j$
	- $1 \le t_j \le j$
	- Note: $i$ would take on $j$ values if the **worse case happens. It will take on 1 if the **best case** happens
- Thus, the total number of times the while loop executes header executes **given** $t_j$ where:
	- $t_2+ t_3 + t_4 + ... + t_n$
	- $\sum_{j=2}^n t_j$
- **AND**, the inner loop body:
	- $(t_2-1) + (t_3-1) + ... + t(t_n-1) = \sum_{j=2}^n(t_j-1) = \sum_{j=2}^n t_j - (n-1)$
- Find execution cost:
	- $T(n) = C_1n + C_2(n-1) + C_3(n-1) + C_4 \sum_{j=2}^n t_j + C_5 \sum_{j=2}^n(t_j-1) + C_6 \sum_{j=2}^n (t_j-1) + C_7(n-1)$
```

## Best Case

If the array is already sorted in ascending order, such that $t_j \equiv 1$

Line 4:
$$\sum_{j=2}^n t_j = \sum_{j=2}^n 1 = n-1$$

Line 5:
$$\sum_{j=2}^n (t_j-1) = \sum_{j=2}^n(1-1) = 0$$

```ad-important
Thus, the running time for the **best case** will be:
$$T(n) = C_1n + C_2(n-1) + C_3(n-1) + C_4(n-1) + C_7(n-1)$$
$$=(C_1+C_2+C_3+c+4+C_7)n$$
$$T(n) = An + B$$ Linear run time, which is the *best case* for **all sorting algorithms**
```

- Focus on dominant term (fastest growing term)
	- 0(n^3) pronounced *theta of n-cubed*
	- **Big Theta Notation** (tight bound on growth rate)
	- Notice that x^2, x or constant terms do not matter much
	- Ignore constant multiplicative factors
![[Pasted image 20231013084856.png]]

## Insertion Sort Running Time Analysis
~~~
1. for j = 2 to n
2.     key = A[j]
3.     i = j-1
4.     while i > 0 and A[i] > key
5.          A[i+1] = A[i]
6.          i = i-1
7.     A[i+1] = key
~~~

| **Execution Cost** | **# of Times Executed** |
| ------------------ | ----------------------- |
| C1                 | n                       |
| C2                 | n-1                     |
| C3                 | n-1                     |
| C4                 | Summation: t sub j      |
| C5                 | Summation: tsubj - 1    |
| C6                 | Summation: tsubj - 1    |
| C7                 | n-1                     |

The value tj or tsubj  is defined as the number of times the while header executes for each j. In other words this is a more generalized form.
**1 <= tj <= j

![[Pasted image 20231011085001.png]]

Total # of times the while loop header executes
t2 + t3 + t4 + ... + tn
or summation n to j=2: tj

Inner Loop Body
(t2-1) + (t3-1) + (t4-1) + ... + (tn-1)
or summation n to j=2: tj - (n-1)

In the best case the array is already in ascending order
![[Pasted image 20231011085023.png]]
##### **In the best case tj is always equal to 1**
![[Pasted image 20231013084016.png]]
![[Pasted image 20231013084024.png]]
![[Pasted image 20231013084034.png]]


### Example T9-1: Running Time of a Function that Calls Another Function
- Determine run times for function1 and test separately and then combine the two
~~~
function1(n) {
1. for i = n down to 1
2.     for j = 1 up to i
3.        test(n)
}

test(n) {
4. r = 1;
5. for p = 1 to n, updating p as p*=2
6.    r = r*n
7. print r
}
~~~

| Execution Cost | # of Times Executed    |
| -------------- | ---------------------- |
| C1             | n+1                    |
| C2             | tj+n or (n(n+1))/2 + n |
| C3             | tj or (n(n+1))/2       |

| Execution Cost | # of Times Executed |
| -------------- | ------------------- |
| C4             | 1                   |
| C5             | \[lg n] + 2         |
| C6             | \[lg n] + 1         |
| C7             | 1                   |
(the brackets around log n is called a floor function that rounds down)
![[Pasted image 20231013084052.png]]
![[Pasted image 20231013084059.png]]


