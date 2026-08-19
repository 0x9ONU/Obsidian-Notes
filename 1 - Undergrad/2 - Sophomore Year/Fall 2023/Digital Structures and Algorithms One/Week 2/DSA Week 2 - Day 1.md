Date: 28th August 2023
Date Modified: 28th August 2023
File Folder: Week 2
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- 

```

```ad-note
title: Homework
- [ ] HW 1 in Github 📅 2023-09-01 
```

# Debugging Intro Day 3

```ad-note
title: Reminder
**Factorial** - The Product of the number and all positive integers less than it
$$n! = n*(n-1)*...1$$
$$0! = 1$$
```

## For Loop Review

```ad-example
A For loop iterating a counter from $0$ to $n-1$ with increments of 1
```c++
for (int i = 0; i<n; i++) {
	//Body of loop; code goes here to be executed n times
}
```

```ad-important
The header of a for-loop is always ran one extra time to where it is ran $n+1$ while the body runs $n$ times
```

## Integer Division

For $a \div b$ with $a > b > 0$
$$a = bq+r$$
```ad-note
color: 255, 255, 0
The following are true for this statement:
- $q$ = **quotient**
	- $q>0$
	- Given as $\frac{a}{b}$ in C++$
- $r$ = **remainder**
	- $0 \le r < b$
	- Uses the modulo operator to get this value ($a \% b$)
	- A remainder of 0 shows that the two numbers can be perfectly divided
```

### Prime Numbers

An integer greater than 1 whose only factors are itself and 1

**Factors** of a number are numbers that **divide** the number, meaning that if divided the reminder is zero 

```ad-example
Find all the factors of 80
```ad-check
title: Solution
- $80 = 20*4$
- $2^3*5*2^2$
- $2^4*5$
- $1, 2, 4, 5, 8, 10, 16, 20, 40, 80$
```

## Boolean Equality vs. Assignment operator

To check whether two values are equal, use ``==``

To assign a variable to another number, use '='

## Nested Loops

**Independent Nested Loop**: When both variables of the loops run independently of each other
```c++
for (int i=0; i<n;; i++) {
//OuterLoop Body
for(int j = 0; j<n; j++) {
	
}
}
```
**


