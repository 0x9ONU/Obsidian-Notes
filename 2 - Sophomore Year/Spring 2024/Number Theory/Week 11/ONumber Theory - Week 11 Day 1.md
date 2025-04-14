Date: 10th April 2024
Date Modified: 10th April 2024
File Folder: Week 11
#NumberTheory

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Homework Review

## HW 4

### Problem 1

```ad-important
Write down all the elements within the sample space. Since it is rolling tow dice, write down the table
```

|     | 1     | 2     | 3   | 4   | 5   | 6   |
| --- | ----- | ----- | --- | --- | --- | --- |
| 1   | (1,1) | (1,2) | ... |     |     |     |
| 2   |       |       |     |     |     |     |
| 3   |       |       |     |     |     |     |
| 4   |       |       |     |     |     |     |
| 5   |       |       |     |     |     |     |
| 6   |       |       |     |     |     |     |
**36 Total Outcomes**
### Problem 2

Look at the sum to get

$$\Omega = \{2,3,4,5,6,7,8,9,10,11,12\}$$
**11 Outcomes**
### Problem 3

```ad-note
You can make a tree diagram
```

![[Number Theory - Week 11 Day 1 2024-04-10 09.11.33.excalidraw]]

$$\Omega = \{(HHH),...,(TTT)\}$$
**8 Total Outcomes**

### Problem 6

```ad-question
Write down the probability mass function for the number of heads in a sequence of three flips on a fair coin.
```

$$x=\mbox{\# H in 3 Tosses}$$
| x        | 0             | 1             | 2             | 3   |
| -------- | ------------- | ------------- | ------------- | --- |
| $P(X=X)$ | $\frac{1}{8}$ | $\frac{3}{8}$ | $\frac{3}{8}$ | $\frac{1}{8}$    |

### Problem 8

#### Part B

```ad-question
What is the probablity that both show different numbers under the condition that the sum is even?
```

$$Pr(\mbox{Different Number} | \mbox{sum is even})$$
$$= \frac{\mbox{\# Different Coords with Even Sum}}{\mbox{\# Outcomes with even sum}}$$

### Problem 9

```ad-question
Two urns are given. Urn-1 contians 10 gold coins and 5 silver coins. Urn-2 contains 2 gold and 8 silver coins. An urn is chosen at random and a coin is picked at random. What is the probability of choosing a gold coin?
```

$$G = \mbox{Event of getting a gold coin}$$
$$S = \mbox{Event of getting a silver coin}$$
$$U_1 = \mbox{Event that Urn 1 is Picked}$$
$$U_2 = \mbox{Event that Urn 2 is Picked}$$


$$Pr(G) = Pr(G \cap U_1) + Pr(G \cap U_2)$$
$$Pr(G) = Pr(G | U_1)Pr(U_1) + Pr(G|U_2)Pr(U_2)$$
$$= (\frac{10}{15})(\frac{1}{2}) + (\frac{2}{10})(\frac{1}{2})$$
$$Pr(G) = \frac{13}{30}=43.33 \%$$

### Problem 10

$$Pr(X=1, Y=1)$$
![[Number Theory - Week 11 Day 1 2024-04-10 09.37.46.excalidraw]]

$$=[Pr(F=1)Pr(F=0)]+[Pr(F=0)Pr(S=1)]$$
$$= (\frac{4}{7})(\frac{3}{7}) + (\frac{3}{7})(\frac{4}{7})$$
$$Pr(X=1, Y=1) = \frac{24}{49}=49.0\%$$
### Problem 12

```ad-question
Find the expected value, and the variance of the variable whose value is the sum of the numbers appearing on the two tossed dice.
```

| $s$            | 2              | 3              | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  | 12  |
| -------------- | -------------- | -------------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $P(S=s)$       | $\frac{1}{36}$ | $\frac{2}{36}$ | ... |     |     |     |     |     |     |     |     |
| $(S-\bar S)^2$ |                |                |     |     |     |     |     |     |     |     |     |
$$F[S] = \sum_{s \in \Omega}s *Pr(S=s)$$

$$\mbox{Var}[S] = F[(S-\bar S)^2]$$

