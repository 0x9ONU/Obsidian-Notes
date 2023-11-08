Date: 8th November 2023
Date Modified: 8th November 2023
File Folder: Week 12
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Binary Serach cont.

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



