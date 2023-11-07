	Date: 23rd October 2023
Date Modified: 23rd October 2023
File Folder: Week 10
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Proof by Contradiction

```



## Proof By Contradiction

```ad-summary
1. Assume the proposition we want to prove is wrong and that the opposite is true
2. Follow the argument until a contradiciton occurs
- Someting like $a=b$ and $a \ne b$ or $a<b$ and $a>b$;
- In either case, both cannot be true
3. Since hte premise leads to a contradiction, the opposite must be true
4. Hence, the original proposition is true
```
### Example: Proof by Contradiction to demonstrate a function is **NOT** $\Theta(g(n))$

```ad-question
Show that $f(n) = \frac{1}{3}n^2 - 2n$ is NOT $\Theta(n^3)$
```

- Assume that it is $\Theta(n^3)$. Then, $\exists c_1, c_1 > 0$ and $n_0 > 0$ such that:
$$c_1n^3 \le \frac{1}{3}n^2 -2n \le c_2 n^3 \space \space \forall n \ge n_0$$
- Divide each side by $n^2$
$$c_1n \le \frac{1}3 - \frac{2}{n} \le c_2n \space \space \forall n \ge n_0$$
- For $\max\{ \frac{1}{3} - \frac{2}{n}, n_0 \}$
$$\frac{1}{3} - \frac{2}{n} < \frac{1}{3} < 1 \space \space\forall n \ge 1$$
- To get to the contradiction we want:
$$c_1n > 1 \leftrightarrow n > \frac{1}{c_1}$$

- If $n \ge max \{ \frac{1}{c_1}, n_0 \}$

$$\frac{1}{3}-\frac{2}{n} < \frac{1}{3} < 1 \le c_1 (\frac{1}{c_1}) \le c_1n$$
$$\therefore c_1n > \frac{1}{3} - \frac{2}{n} \space \space \forall n \ge max \{\frac{1}{c_1}, n_0 \} \ge n_0$$
- By the assumption:
$$c_1 \le \frac{1}{3} - \frac{2}{n} \space \space \forall n \ge max \{\frac{1}{c_1}, n_0 \} \ge n_0$$
- **Contradiction**: 
Therefore, assumption was wrong, so $f(n)$ is NOT $\Theta(n^3)$



