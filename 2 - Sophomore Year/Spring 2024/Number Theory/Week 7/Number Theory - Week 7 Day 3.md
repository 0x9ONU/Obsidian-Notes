Date: 8th March 2024
Date Modified: 8th March 2024
File Folder: Week 7
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

# Conditional Probability

```ad-question
What is the probability of an event $B$ conditioned on the information that the event $A$ occurred, and $Pr(A) \ne 0$
```

This probability is known as  the conditional probability of $B$ given $A$, and is denoted by $Pr(B|A)$
- Probability of $B$ given $A$
- $B$ conditioned on $A$

The knowledge of the occurrence of the event $A$ means that the sample space should be updated to $S = A$

```ad-important
Provided $Pr(A) \ne 0$j, we have:
$$Pr(B|A) = \frac{Pr(B \cap A)}{Pr(A)}$$
```

*How does this work?*

$|S| = n$

$$P(B|A) = \frac{\# \space elements \space in \space B \cap A}{\# \space elements \space in \space A}$$
*Divide both the top and bottom by $n$*

$$P(B|A) = \frac{Pr(A \cap B)}{Pr(A)}$$

## Example

Roll a die twice and observe the sum of the numbers face up. Then the sample space is:

$$S = \{2,3,4,5,6,7,8,9,10,11,12\}$$

Let $A$ be the vent of observing a sum that is an odd multiple of $3$, so,

$$A = \{ 3, 9\}$$
and $B$ be the event of observing a sum that is an odd number, then, 

$$B = \{3, 5, 7, 9, 11 \}$$

Find $Pr(B|A)$

$$Pr(B|A) = \frac{Pr(A \cap B)}{Pr(A)} = \frac{Pr(\{3, 9 \})}{Pr(A)} = \frac{Pr(A)}{Pr(A)}=1$$
```ad-note
$$Pr(B) = Pr(B |S) \ne 1$$
```
# General Multiplication Rule

$$Pr(A \cap B) = Pr(A)\times Pr(B|A)=Pr(B)\times Pr(A|B)$$

```ad-note
title: Definition of Independent Events
In $Pr(B|A) = \frac{Pr(B \cap A)}{Pr(A)}$, $A, B$ are independent if $P(B|A) = Pr(B)$ st.
$$Pr(A \cap B) = Pr(A)Pr(B)$$

```

## Example

```ad-question
What is the probability of randomly drawing two hearts form a deck of 52 playing cards? There are 13 hearts in the pack.

Let $A$ and $B$ be the events that the first and second cards drawn are hearts, respectively. Assume that the first card is not replaced before the second card is drawn.

Find $Pr(A), Pr(B|A)$ and $Pr(A \cap B)$
```

$$Pr(A) = \frac{13}{52}$$
$$Pr(B|A) = \frac{12}{51}$$
$$P(A \cap B) = P(A) \times Pr(B|A)$$
$$= \frac{13}{52}*\frac{12}{51}$$
$$P(A \cap B) = \frac{1}{17}$$
# Bonus Example - Birthday Paradox

```ad-question
Lets say that there are 18 students in the class. What is the probability of having at least two students that have the same birthday?
```

```ad-important
Use the compliment
$$1 -P(no \space matching \space birhtdays)$$
```

Out of all the 18 students, there is a 365 chance for them to have a specific birthday. Then, you put the chances of them not having a birthday over each other such that:

$$\frac{365*364*...*348}{18(365)}$$








