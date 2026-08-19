Date: 3rd November 2023
Date Modified: 3rd November 2023
File Folder: Week 11
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Recurrence Equations

```

# Recurrence Equations

```ad-summary
title: Definition
Mathematical expressions that describe the relationship between the current value and previous values in a sequence of values.
```

$$T(n) = aT(n-1) + f(n); \space \space \space T(n_b) = f_b(n)$$
```ad-note
- $T(n)$ is the reqcurrence equation
- $T(n_b) = f_b(n)$ is the base conditoin
```

- Common to ignore execution cost and focus on counting instructions
- Constant multiples can be ignored for asymptotic complexity

## Recurrence for incremental algorithms

$$T(n) = aT(n-1) + f(n); \space \space \space T(n_b) = f_b(n)$$
## Recurrence Equations for Divide-and-Conquer

$$T(n) = aT(\frac{n}{b}) + f(n); \space \space \space T(n_b) = f_b(n)$$
## Three Methods for Solving Recurrence Equations

1. **Substitution Method**
- Involves progressive substitutions of the recurrence equation on smaller input values to discern the pattern, and then apply the base condition to help solve the recurrence.
2. **Recursion-Tree Method**
- Involves examining the recursion tree resulting from the divide-and-conquer approach
3. **Master Method**
- Involves summarizing the main cases seen in the recursion-tree method by applying the recursion-tree method with the Master Theorem to get a formulaic approach to solve the recurrence equation.