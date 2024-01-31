Date: 31st January 2024
Date Modified: 31st January 2024
File Folder: Week 2
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

```ad-important
Slides Link:

https://www.overleaf.com/read/vgcnpcybmxhd#5a1951
```

# Extended Euclidean Algorithm (EEA)

```ad-summary
title: Theorem
Let $a$ and $b$ be integers, not both zero. Then $a$ and $b$ have a gcd which can be expressedaas the smallest positive linear ocmbination of $a$ and $b$. In particualr, there are integers $m$ and $n$ sucht aht $ma + nb = gcd(a, b)$.
```

```ad-note
A faster/more significant way to find the GCD of two numbers
```
## Exercises

### Exercise 1

```ad-question
Use the Extended Euclidean alogirhm to find $x$ and $y$ such that $246x+194y = gcd(246, 192)\space [=2=52*194-41*246]$
```


| **Remainder** $r$ | **Quotient** $q$ | $s_{i+1} = s_{i-1}-q_is_i$ | $t_{i+1}=t_{i-1}-q_it_i$ |
| ----------------- | ---------------- | -------------------------- | ------------------------ |
| 246               | -                | 1                          | 0                        |
| 194               | -                | 0                          | 1                        |
| 52                | 1                | 1                          | -1                       |
| 38                | 3                | -3                         | 4                        |
| 14                | 1                | 4                          | -5                       |
| 10                | 2                | -11                        | 14                       |
| 4                 | 1                | 15                         | -19                      |
| 2                 | 2                | -41                        | 52                       |
| 0                  | 2                 | -                           | -                         |
$$x = -41, y = 52$$
$$gcd(246, 192) = 246(-41) + 194(52) = 2$$
