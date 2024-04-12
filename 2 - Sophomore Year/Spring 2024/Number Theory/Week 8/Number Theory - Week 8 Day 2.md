Date: 20th March 2024
Date Modified: 20th March 2024
File Folder: Week 8
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

https://www.overleaf.com/project/65d2781f985eba46fc6f96aa
```

# Combinatorics

## N Factorial

$$n! = \begin{bmatrix} 1 \space for \space 0 \\  \end{bmatrix}$$

#comebacklater 

## N Choose K

$${n \choose k} = \frac{n!}{k!(n-k)!}$$

```ad-summary
title: Definition
- ${n \choose k}$ is the number of subsets of cardinality $k$ of a set of $n$ elements
- ${n \choose k}$ is the number of ways of picking $k$ distinct objects form a set of $n$ objects.
```

```ad-example
$$(x+y)^4 = {4 \choose 0} x^4 y^0 + {4 \choose 1} x^3 y + {4 \choose 2} x^2y^2 + {4 \choose 3} xy^3 + {4 \choose 4} x^0 y^4$$
```

## Permutation

```ad-summary
title: Definition
A permutation of $n$ objects taken $k$ at a time is an arrangement of $k$ objects st.
$$P(n, k) = n(n-1)...(n-(k-1)) = \frac{n!}{(n-k)!}$$
```

```ad-example
We have four objects $a, b, c, d$. Define the permutation of two objects at a time?
```

| ab  | ba  |
| --- | --- |
| ac  | cd  |
| ad  | da  |
| bc  | cb  |
| bd  | db  |
| cd  | dc  |
**Twelve different permutations**

```ad-example
How many permutations can you get from 4 pick 2?
$$P(4, 2) = \frac{4!}{2!} = \frac{4*3*2*1}{2*1} = 12$$
```

```ad-note
A permutation can be thought as a:
- Rearrangement of a set of objects
- A funciton that rearranges a set of objects
```

### Birthday Paradox

```ad-question
Suppose a room has 17 random strangers.
1. What is the probability someone has your birthday?
2. What is the probability someone has a given birthday?
3. What is the probability that at least two people have the same birthday?
```

#### Part 1

Suppose a room has 17 random strangers

Assume that there are 365 possible birthdays (not including leap years)

$$Pr(someone \space has \space your \space birthday)$$
$$= P(1-None \space of \space the \space 17 \space people \space has \space your \space birthday)$$
$$= 1 - \prod_{i=1}^{17} Pr(\mathbb{i}th \space person \space doesn't \space have \space your \space birthday)$$
$$=\prod_{i=1}^{17}(\frac{364}{365})$$
$$=1-(\frac{364}{365}^{17})$$
$$Pr(someone \space has \space your \space birthday) = 0.05$$
```ad-note
To get to around a $50 \%$ of a match, you would need around 250 strangers, but NOT 365.
```

### Part 3

Suppose a room has 17 random strangers.

$$Pr(at \space least \space two \space the \space same \space birthday)$$
$$=1-Pr(All \space 17 \space people \space have \space different \space brithdays)$$
$$=1 - \prod_{i=1}^{17} Pr(\mbox{i-th person doesn't have the smae birthday as any of the previous i-1 people})$$
$$=1-\prod_{i=1}^{17} \frac{365-(i-1)}{365}= 1 - \frac{365}{365}* \frac{364}{365}*\frac{363}{365}...\frac{349}{365}$$
$$=1- \frac{1}{(365)^{17}} * \frac{365 * 364*...349*(348*...2*1)}{(348*...*2*1)}$$
$$=1- \frac{365!}{(365)^{17}*(348)!}$$
$$Pr(\mbox{at least two have the same birthday}) = 0.32$$
```ad-note
If you randomly pick 23 strangers, there is a better than $50 \%$ chance that at least two of them have the same birthday!
```
### Generally...

If there are $n$ birthdays,a nd $k$ people in a room, then:

$$Pr(\mbox{At least two people have the same birthday})$$
$$=1-Pr(\mbox{All} \space k \space \mbox{people have different birthdays})$$
$$=1- \prod_{i=1}^k Pr(i\mbox{-th person doesn't have the same birthday as any of the previous} \space i-1 \space \mbox{people})$$
$$= 1 - \prod_{i=1}^{k} \frac{n-(i-1)}{n}= 1 - \prod_{i=1}^k(1-\frac{i-1}{n}) = 1 - \prod_{i=0}^{k-1}(1- \frac{i}{n})$$

### Collision Theorem

```ad-question
A Urn contains $n$ balls, of which, $n$ are red and the rest of the $N-n$ balls are blue. If we randomly select $m$ balls, waht is the probability that at leats one red ball is selected?
```ad-note
The answer is $1-(1- \frac{n}{N})^m$
```

![[Number Theory - Week 8 Day 2 2024-03-20 09.47.47.excalidraw]]







