Date: 31st January 2024
Date Modified: 31st January 2024
File Folder: Week 2
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- EEA

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
## Pseudocode

```
xeuclid(int a, int b, int gcd, int x, int y)
	int q, r, xx, yy, sign
	int xs[2], ys[2]
	// The coefficients are initialized
	xs[0] = 1 xs[1] = 0
	ys[0] = 0 ys[1] = 1
	sign = 1
	// As long as b!=0, replace a by b and b by a % b
	// We also update coefficients x and y
	while (b!= 0 {
		r = a % b  
		q = a / b  
		a = b  
		b = r  
		xx = xs[1]  
		yy = ys[1]  
		xs[1] = xs[0] - q * xs[1]  
		xs[1] = ys[0] - q * ys[1]  
		xs[0] = xx  
		ys[0] = yy
	}
	Extended Euclidean Algorithm: Programming  
	// Final computations of the coefficients  
	x = xs[0]  
	y = ys[0]  
	// Final computation of gcd  
	gcd = a
		
```

