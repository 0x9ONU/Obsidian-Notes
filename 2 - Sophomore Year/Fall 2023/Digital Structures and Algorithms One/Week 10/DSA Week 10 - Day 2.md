Date: 25th October 2023
Date Modified: 25th October 2023
File Folder: Week 10
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Proof of Contradiction Day 2

```

### Example 2: Proof by Contradiction to demonstrate a function is **NOT** $\Theta(g(n))$


```ad-question
Show that $f(n) = 6n^3 + 1$ is NOT $\Theta(n^2)$
```

```ad-note
In the contradiciton, we will get fromt eh upper boudn since cubic si faster growing than quadratic
```

- Assume $f(n) = \Theta(n^2)$. Then $\exists c_1, c_2 > 0 \space \& \space n_0 > 0$ such that:
$$c_1n^2 \le 6n^3 + 1 \le c_2n^2 \space \space \space \forall n \ge n_0$$

- Divide through by $n^2$
$$c_1 \le 6n + \frac{1}{n^2} \le c_2 \space \space \space \forall n \ge n_0$$

```ad-note
title: Scratch 
We want to get $6n \ge c_2$ to create a contradiciton
- $\therefore$ $n$ should be greather or equal to:
$$n \ge \frac{c_2}{6}$$
```

$$6n+ \frac{1}{n^2} > 6n \ge 6 \frac{c_2}{6} \ge c_2$$

$$6n+\frac{1}{n^2} > c_2 \space \space \space \forall n \ge \frac{c_2}{6}$$

- Thus, for $n \ge max \{ \frac{c_2}{6}, n_0 \}$ we have:

$$6n+\frac{1}{n^2} > c_2$$
$$Assumption: \space \space 6n+ \frac{1}{n^2} \le c_2$$

- **Contradiction**, The assumption is wrong and $f(n)$ is NOT $\Theta(n^2)$

