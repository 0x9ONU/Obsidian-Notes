Date: 25th August 2025
Date Modified: 25th August 2025
File Folder: Week 1
#signals

```ad-abstract
title: Today's Topics
collapse: open

- Syllabus + Introduction

```

# Syllabus

```ad-warning
Textbook is REQUIRED
```

| Assignments           | Percentage of Grade |
| --------------------- | ------------------- |
| Homework              | 10%                 |
| Technical Checkpoints | 40%                 |
| Lab                   | 20%                 |
| Final                 | 25%                 |

## HW Policy

Due on Fridays after assigned
- NO late HW submissions!!!
- Each problem graded out of 10, with 5 pts given for attempting
- Submit hard copies on *Friday in class*

```ad-important
Practice Exams on Tuesday during lab. Real exams on Wendesday
```
## Class Rules/Policies

- Attendance: **Required** (1% off after three unexcused absence)
- AI: Allowed, but treat it like a solutions manual; BUT do not copy it!

# Lecture 1: Introduction to Signals & Systems
## Lecture Learning Objective

1. Distinguish between *continuous-time* or *discrete-time*, and *digital* and *analog* signals
2. Distinguish bettween *deterministic* and *random* signals
3. Compose Level 0 and Level 1 system architectures including components, and signals related to the components

## What are Signals?

```ad-abstract
title: Definition
**Signals** are functions that carry information
```

*Examples*:
- Television signal on a cable line (**maps instantaneous time to voltage**)
- Annual Sales of a business (**maps discrete points of time to sales in dollars**)
- Computer image (**Maps pixels to RGB vectors, or other color scheme**)

## Review Questions

**Real Numbers**: $\mathbb{R}$
**Complex Numbers**: $\mathbb{C}$
**Integers**: $\mathbb{Z}$
**Natural**: $\mathbb{N}$

```ad-question
What is the notation for belong to?
$$x \in [ a, b ]$$
```

If set $S_1$ is a **subset** of set $S$, then that means any element of $S_{1}$ is ALSO an element of S

## Continuous Time

Signals defined at *every instant of time* over a continuum of values
- Usually deonated as $x(t)$ and is often all real numbers ($\mathbb{R} \in(-\infty, \infty)$)
- Called an **everlasting signal**
  
```ad-note
In reality, no signal starts at $-\infty$ and lasts forever, but it is mathematically convenient to represent continuous-time signals this way
``` 

## Discrete Time

Signals defined only at *discrete points of time*
- The **range** is a continuous set of values

```ad-example
The domain may be the:
-  Integers or
- Natural Numbers
```

```ad-note
Usually, a discrete-time singal is denoted $x[n]$ and is ofen defined over all integers ($\mathbb{Z}$)
```

### Digital SIgnals

A sub-class of discrete-time, whose *domain* AND *range* are discrete-valued sets of numbers

$$f_{s}=\frac{\mbox{samples}}{\sec} \times \frac{\text{bits}}{\text{sample}}\times 2$$

