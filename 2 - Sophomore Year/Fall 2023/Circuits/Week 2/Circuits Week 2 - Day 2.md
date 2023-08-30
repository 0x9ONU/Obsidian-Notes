Date: 30th August 2023
Date Modified: 30th August 2023
File Folder: Week 2
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Resistance Connections
	- Series

```

```ad-note
title: Homework
- [ ] 4.6, 4.11, 4.15, 4.17
```

# Series Resistance

#comebacklater ex. 1

For series connected resistors, the total resistance is the sum of all resistances in the series combination.

$$ R_{equivalent} = R_{total}$$
$$ R_{eq} = R_T = R_1 + R_2 + R_3 + ... + R_N$$

```ad-note
To stay in series, the same current source must flow through the entire part of the circuit
```

```ad-important
If the circuit splits in a different direction, the branch that goes in a different direction will **NOT** be in series
```
# Parallel Resistors

#comebacklater  ex. 2


$$\frac{1}{R_T} = \frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3} + ... + \frac{1}{R_N}$$
$$ R_T = \frac{R_1R_2R_3...R_N}{R_1+R_2+R_3 +...+R_N}$$

```ad-note
Resistors are in parallel when two resistors are connected using four nodes that connect both ends of the resistor to each other.
#comebacklater ex. 3
```

```ad-important
The total resistance of parallel resistors **must** be less than the *smallest* resistor in the parallel circuit
```

```ad-example
title: Example using Reduction Method
Find the total resistance $R_{ab}$
#comebacklater ex. 4
```ad-note
title: Hint
Always start from the farthest point of the circuit away from both end points
```ad-check
title: Solution
- $6k // 6k$
	- $\frac{(6)(6)}{(6)+(6)} = 3k \Omega$
	- #comebacklater ex. 5
- $3k // 3k$
	- $\frac{(3)(3)}{(3)+(3)}= 1.5k \Omega$
	- #comebacklater ex. 6
- $2k + 1.5k = 3.5k \Omega$
	- #comebacklater ex. 7
- $3.5k // 4k$
	- $\frac{(3.5)(4)}{3.5+4} = 1.87k \Omega$
	- #comebacklater ex. 8
- $R_{ab} = $1k + 1.87k = 2.87k \Omega$
```

```ad-example
title: Reduction Method with a Short
$Find $R_ab$
#comebacklater ex. 9
```ad-note
When there is a short, assign nodes (Done in Orange)
#comebacklater ex. 10
```ad-check
title: Solution
- $4k // 2k$
	- $\frac{(4)(2)}{(4)+(2)} = 1.33k$
	- #comebacklater ex. 11
- $6k + 1.33k = 7.33k$
	- #comebacklater ex. 12
- $6k // 6k // 7.33k$
	- $\frac{1}{R_{ab}} = \frac{1}{6} + \frac{1}{6} + \frac{1}{7.33} = 2.13k \Omega$
- 
```

```ad-example
color: 255, 255, 0

Find $R_{eq}$
#comebacklater ex. 13
```ad-check
title: Solution
- Use Node Reduction
	- #comebacklater ex. 14
	- #comebacklater ex. 15
- $3k // 6k$
	- $\frac{(3)(6)}{3+6} = 2k$
- $12k // 4k // 2k // 6k$
	- $\frac{1}{R_N} = \frac{1}{12}+\frac{1}{4}+\frac{1}{2}+\frac{1}{6} = 1k \Omega$
	- #comebacklater ex. 16
- $R_{eq} = 1k + 2k = 3k \Omega$
```



