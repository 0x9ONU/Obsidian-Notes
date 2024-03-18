Date: 18th March 2024
Date Modified: 18th March 2024
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

# Bayes Formula

**Total Probability Rule:**

*Average Rule*
$$Pr(B) = Pr(B|A)Pr(A)+Pr(B|A^C)Pr(A^C)$$

Rewrite such that:

$$Pr(B) = Pr(B \cap A) + Pr(B \cap A^C)$$

![[Number Theory - Week 8 Day 1 2024-03-18 09.23.23.excalidraw]]

```ad-note
$$A \cup A^C = \Omega$$
```



*Base Rule*

```ad-note
title: Work
**General Multiplication Rule**
$$Pr(B \cap A) = Pr(B|A)Pr(A)$$
$$Pr (A|B) = \frac{Pr(A \cap B)}{Pr(B)} = \frac{Pr(B|A)Pr(A)}{Pr(B)}$$

```

$$Pr(A|B) = \frac{Pr(B|A)Pr(A)}{Pr(B)}$$

*Bayes Formula*

$$Pr(A|B)= \frac{Pr(B|A)Pr(A)}{Pr(B|A)Pr(A)+ Pr(B|A^C)Pr(A^C)}$$

## Example

```ad-question
Suppose you are given two jars. Jar I contains one black and 4 white marbles, and Jar II contains 4 black and 6 white marbles. If a jar is slected at random and a marble is chosen:
1. What is the probability that the marble chosen is a black marble?
2. If the chosen marble is black, what is the probability that it came from Jar I?
```

![[Number Theory - Week 8 Day 1 2024-03-18 09.30.45.excalidraw]]
### Part 1
```ad-important
$B = black; A = Jar \space I; A^C = Jar \space II$
```
$$Pr(B) = Pr(B \cap A) + Pr(B \cap A^C)$$
$$Pr(B) = Pr(B|A)Par(A) + Pr(B|A^C)Pr(A^C)$$
$$Pr(B) = (\frac{1}{5}*\frac{1}{2}) + (\frac{4}{10}*\frac{1}{2}) = \frac{3}{10}$$
### Part 2
$$Pr(A|B) = \frac{Pr(A\cap B)}{Pr(B)}$$
$$Pr(A|B) = \frac{Pr(B|A)Pr(A)}{Pr(B)}$$
$$Pr(A|B) = \frac{(\frac{1}{5})(\frac{1}{2})}{(\frac{3}{10})}$$
$$Pr(A|B) = \frac{1}{3}$$

