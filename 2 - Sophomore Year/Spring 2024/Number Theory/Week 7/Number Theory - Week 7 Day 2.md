Date: 6th March 2024
Date Modified: 6th March 2024
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

# Discrete Probablity

```ad-summary
title: Definition
A discrete probability space conssists of two pieces:
- A countable (fiinite for this course) set $\Omega$ called the sample space which consists of all possible outcomes of an experiment
- A probability funciton (a method of assigning a probability to each possible outcome).
```

$$Pr: \Omega \rightarrow \mathbb{R}$$

Interpret $Pr(\omega)$ = "Probability that event $\omega$ occurred."

$$0 \le Pr(\omega) \le 1$$

```ad-note
Random experiment:
- A process that can lead to multiple different outcomes

```ad-example
- Casino games
- Dice games
- Stock market
- Weather
- 2024 Election
```

$$\sum_{\omega \in \Omega} Pr(\omega)=1, Pr(\Omega)=1$$
```ad-note
If all the probabilities are taken separately and are 1, then the overall probability is one.
```

**Let $\phi$ denote the empty set. Then:**

$$Pr(\phi) = 1$$

## Event

An event $E$ is a subset of the sample space $\Omega$

$$Pr(E) = \sum_{\omega \in E} Pr(\omega)$$

## Example - Coin Toss

- Sample Space $\Omega$ = $\{Head, Tail \}$
- Probability of heads = 0.5, Probability of tails = 0.5
- $Pr(\Omega) = Pr(heads) + Pr(tails) = 0.5 + 0.5 =1$

## Axiom for Disjoint

```ad-summary
title: Axiom
Given two events $E$ and $F$, their union $E \cup F$ is the set of outcomes that belong to either $E$ or $F$

$$E \cup F = \{\omega \in \omega: \omega \in E \space And \space \omega \in F \}$$
```

If two events $E$ and $F$ are disjoint, ($E \cap F = \phi$), then

$$Pr(E \cup F) = Pr(E \space or \space F) = Pr(E) + Pr(F)$$

```ad-example
If you flip two coins, and the first flip does not affect the second flip:

$$S = \{ HH, HT, TH, TT\}$$

The probability of each of these events is $0.25$. The probability that you obtain "only heads or tails" is:

$$P(HH \cup TT) = P(HH) + P(TT) = 0.25 + 0.25 = 0.5$$
```

## Axiom for Complement

The complement of an event $E$, dneoted by $E^c$ or $\bar E$ is the vent:

$$\Omega / E = \{ \omega \in \Omega: w \notin E \}$$
Consisting of all those outcomes that are not in $E$.

$$Pr(\bar E) = 1- Pr(E)$$

```ad-example
$$\bar{Tail} = not \space Tail = Head$$
$$P(\bar{Tail}) = 1 - Pr(head) = 0.5$$
```

## Principle of Inclusion-Exclusion

Given any two events $E$ and $F$

$$Pr(E \cup F) = Pr(E \space or \space F) = Pr(E) + Pr(F) - Pr(E \cap F)$$

### Example 1

```ad-question
What is the probability of randmly drawing either an ace or a heart from a deck of 52 playing cards?
```

There are 4 aces in the pack and 13 hears. However, 1 card is both an ace and a heart.

Thus:

$$P(ace \space or \space heart) = P(ace) + P(heart) -P(ace \space and \space heart)$$
$$P(ace \space or \space heart) = \frac{4}{52} + \frac{13}{52} - \frac{1}{52} = \frac{16}{52}$$

### Example 2

Roll a dice twice and observe the sum of the numbers face up. Then, the sample space is:

| Dice  | 1            | 2            | 3            | 4             | 5            | 6             |
| ----- | ------------ | ------------ | ------------ | ------------- | ------------ | ------------- |
| **1** | $(1,1) = 2$  | $(2,1)=3$    | $(3, 1)=4$   | $(4, 1)=5$    | $(5, 1)=6$   | $(6, 1)=7$    |
| **2** | $(1,2) = 3$  | $(2,2) = 4$  | $(3, 2) = 5$ | $(4, 2) = 6$  | $(5, 2)=7$   | $(6, 2) =8$   |
| **3** | $(1, 3) =4$  | $(2, 3) = 5$ | $(3, 3) = 6$ | $(4, 3) = 7$  | $(5, 3) =8$  | $(6, 3) = 9$  |
| **4** | $(1, 4) = 5$ | $(2, 4) =6$  | $(3, 4) =7$  | $(4, 4) =8$   | $(5, 4) =9$  | $(6, 4) =10$  |
| **5** | $(1, 5) = 6$ | $(2, 5) = 7$ | $(3, 5) = 8$ | $(4, 5) = 9$  | $(5, 5) =10$ | $(6, 5) = 11$ |
| **6** | $(1, 6) = 7$ | $(2, 6) = 8$ | $(3, 6) = 9$ | $(4, 6) = 10$ | $(5,6) = 11$ | $(6,6)=12$    |

$$S = \{2, 3,4, 5,6,7,8,9,10,11,12 \}$$

Let $A$ be the event of observing a sum that is a multiple of $3$, so:

$$A = \{3, 6, 9, 12 \}$$

and $B$ be the event of observing a sum that is an odd number, then:

$$B = \{ 3. 5, 7, 9, 11 \}$$

Find $Pr(A \cup B)$

```ad-note
Find this on your own.
- Make a table of the sequences of results from the two rows. (1-6 for both dice).
```


