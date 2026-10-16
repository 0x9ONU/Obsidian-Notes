---
creation_date: 2026-10-05 12:18
last_modified: 2026-10-05 12:18
folder: 3 - Cell Timing
tags:
  - type/lecture
  - field/VLSI
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Clock Uncertainties

```ad-note
Assume that the clock is going from a source to multiple different register. So far we assumed that the clock will rise and fall at the same time across each register. This is *not realistic*.
```

![[Pasted image 20261005122627.png]]


Causes:
1. **Clock Generation Delay**
2. **Device-Indused Delay**:
	- The buffer on the clock input may cause different delays when the delay goes high or low
3. **Interconnect**:
	- Caused by in-line resistances of the given wire
4. **Power Supply**
5. **Temperature**
6. **Capacitive Load**:
	- Caused by a load at the input of the register
7. **Coupling Capacitance**:
	- If the clock goes to multiple different lines, there will be some capacitance on the line
	- Some of the signal gets reflected from the load capacitance into the coupled ajacent lines

All of these noises can be summarized down into **two variations** of the clock:
1. **Skew**: *spatial variation*
	- The same clock edge reaches $R_{1}$ and $R_{2}$ at different times. Constant cycle to cycle
	- Caused by **device-indused delay, interconnect delay, temperature, and the capacitive load**
2. **Jitter**: *Temporal variation*
	- The clock period at one register changes from cycle to cycle
	- Caused by clock generation, power supply, and coupling line

### Clock Skew

```ad-summary
Spatial variation in temporally equivalent clock edges
```

- It is the same clock signal, but it arrives at $R_{2}$ later than $R_{1}$ due to a delay
- Skew is consistent across multiple trials since it is caused by delays that are independent of change.

![[Pasted image 20261005123753.png]]

```ad-note
Here $\delta > 0$: The extra wire delay makes the clock reach the receiving register $R_2$ later, so clock and data travel in the same direction ($R_1 \to R_2$)
```

#### How to Calculate Skew

![[Pasted image 20261005124434.png]]

```ad-important
title: Setup Constraint - Performance
$$T + \delta> d_{max}+D_{max}+t_{su}$$
$$\Rightarrow T > d_{max}+D_{max}+t_{su}- \delta$$
$\delta > 0$ is **good for performance**
```

```ad-warning
title: Hold Constraint - Reliability
$$d_{min} + D_{min}> t_h + \delta$$
$$\Rightarrow t_h < d_{min} + D_{min} - \delta$$
```

To improve this, we will try to reduce $t_{h}$ to offset the skew. Closer to 0 the better.

### Negative Skew

```ad-note
Happens when the receiving edge at $R_2$ arrives before the launching edge at $R_1$
- Happens when the clock source is traveling in the *opposite* direction of the data direction.
```

![[Pasted image 20261005130050.png]]

```ad-warning
title: Setup Constraint - Performance
$$T > d_{max}+D_{max}+t_{su}- \delta$$
- $\delta >0$ adds $|\delta|$ to the minimum clock period
- $\delta > 0$ is bad* for performance
```

```ad-important
title: Hold Constraint - Reliability
$$t_h < d_{min} + D_{min} - \delta$$
- $\delta > 0$ adds $|\delta|$ a hold margin
- $\delta > 0$ is **good for reliability
```

### Effects of  Clock Skew

```ad-danger
- Having positive skew can cause forward pathing
- Having negative skew can cause feedback pathing
```

![[Pasted image 20261005131135.png]]

**Forward Paths**: $R_{1}, R_{2} \to R_{3} \to R_{4}$
- Data travels in the clock direction → $\delta > 0$
- Helps performance, hurts hold (reliability)

**Feedback Paths**: $R_{4}\to \log \to R_{1}$
- Data travels against the clock → $\delta < 0$
- Hurts performance, helps hold (reliability)

```ad-important
Around any loop the skews add up to zero, so clock routing **cannot make every path positive**.
- The feedback path sees neagtive skew and can limit the clock period.
- We have to make sure we balance these features by first getting reliability, and then trying to clock it as fast as possible.
```


## Quiz Questions

### Clocking 4-5

```ad-question
1. List all register-to-register paths and the clock skew $\delta$ of each.
2. Find the minimum clock period without consdiering skew
3. Is the design reliable without skew?
4. Repeat 2 with skew
5. Repeat 3 with skew
```

![[Pasted image 20261005132013.png]]

```ad-summary
title: Register Characteristics ($R_1 \to R_4$)
- $d_{min} =1, d_{max} = 2$
- $t_{su} =1, t_h = 1$
```

#### Part 1: Register Paths

1. $R_{1}  \to R_{3} \Rightarrow \delta = 1$
2. $R_{2}\to R_{3} \Rightarrow \delta =1$
3. $R_{3}\to R_{4} \Rightarrow \delta =1$
4. $R_{4}\to R_{1} \Rightarrow \delta =-2$

#### Part 2-4: Find Minimum Clock Period with/wo Skew

##### *no skew*
$$
T > d_{max} + D_{max} + t_{su}
$$
**Path 1**: $R_{1}\to R_{3}$


$$
T > (2)+(5)+(1)
$$

$$
T > 8
$$
**Path 2**: $R_{2}\to R_{3}$


$$
T > (2)+(5)+(1)
$$

$$
T > 8
$$
**Path 3**: $R_{3}\to R_{4}$


$$
T> (2)+(3)+(1)
$$

$$
T > 6
$$
**Path 4:** $R_{4} \to R_{1}$


$$
T > (2)+(3)+(1)
$$

$$
T>6
$$
**Therefore**:


$$
T_{min}>8
$$

##### *skew*
$$
T > d_{max} + D_{max} + t_{su} - \delta
$$

**Path 1**: $R_{1}\to R_{3}$


$$
T > (2)+(5)+(1) - (1)
$$

$$
T > 7
$$
**Path 2**: $R_{2}\to R_{3}$


$$
T > (2)+(5)+(1)-(1)
$$

$$
T > 7
$$
**Path 3**: $R_{3}\to R_{4}$


$$
T> (2)+(3)+(1) -(1)
$$

$$
T > 5
$$
**Path 4:** $R_{4} \to R_{1}$


$$
T > (2)+(3)+(1) - (-2)
$$

$$
T>8
$$
**Therefore**:


$$
T_{min}>8
$$


#### Part 3-5: Find Reliability with/wo Skew

##### *no skew*
$$
t_{h}< D_{min}+d_{min}
$$
**For $R_{1}$**:


$$
(1) < (1)+(1) \quad \checkmark
$$
**For $R_{2}$**:


$$
(1) < (1)+(1) \quad \checkmark
$$
**For $R_{3}$**:


$$
(1) < (1)+(1) \quad \checkmark
$$
**For $R_{4}$**:


$$
(1)<(1)+(1) \quad \checkmark
$$
**Therefore**: the design is **reliable**!
##### *skew*
$$
t_{h}< D_{min}+d_{min}- \delta
$$
**For $R_{1}$**:


$$
(1) < (1)+(1) - (1) \quad X
$$
**For $R_{2}$**:


$$
(1) < (1)+(1) - (1) \quad X
$$
**For $R_{3}$**:


$$
(1) < (1)+(1) - (1) \quad X
$$
**For $R_{4}$**:


$$
(1)<(1)+(1) - (-2) \quad \checkmark
$$
**Therefore**: The design is NOT reliable

### *Practice*: Reversed Clock

```ad-question
Answer the same questions as above, but the clock is reversed
```

![[Pasted image 20261005132707.png]]

#### Solution!

![[Pasted image 20261005132908.png]]

### Clocking 6

![[Pasted image 20261005132946.png]]

```ad-question
1. Find minimum clock period, ignoring clock skew
2. Repeat (a) with clock skew $\delta = 1$
3. Repeat (a) with clock skew $\delta = 4$
4. Find the largest positive skew ithe circuit can tolerate
5. Find the largest negative skew the circuit can tolerate
```

**Given**:
1. Positive edge-triggered registers
2. Register (clock-to-Q): $t_{R}=1 =d_{min}=d_{max}$
3. Each logic block: $t_{L}=1 = D_{Lmin}=D_{Lmax}$
4. Multiplexer: $t_{M}=2t_{R}=2=D_{Mmin}=D_{Mmax}$
5. Set-up $t_{su}=1$, hold $t_{h}=0$
6. Skew $\delta = t\prime_{\varphi}-t_{\varphi}$

#### Part 0: Recognize Paths and Directions

1. $R_{1} \to R_{2}$ (lower path): **Positive** Skew
2. $R_{1} \to R_{2}$ (upper path): **Positive** Skew
3. $R_{1} \to R_{1}$: *NO* skew
4. $R_{2} \to R_{2}$: *NO* skew

#### Part 1: Find the Minimum Clock Period with No Skew

$$
T> d_{max}+D_{max}+t_{su} - \delta
$$

**For $R_{1} \to R_{2}$**: (lower path)
$$
T > (1)+(5(1)+2) + (1) - (0)
$$
$$
T > 9
$$
**For $R_{1} \to R_{2}$** (upper path)

$$
T > (1)+(3(1)+2)+1 - (0)
$$

$$
T > 7 
$$
**For $R_{1} \to R_{1}$**


$$
T > (1)+(5(1))+1 - (0)
$$

$$
T > 7
$$
**For $R_{2} \to R_{2}$**


$$
T > (1) + (2(1)+2) + 1 - (0)
$$

$$
T > 6
$$
**Therefore**:


$$
T_{min} = 9
$$
#### Part 2: Clock Skew $\delta = 1$

**For $R_{1} \to R_{2}$** (lower path):
$$
T > (1)+(5(1)+2) + (1) - (1)
$$
$$
T > 8
$$

**For $R_{1} \to R_{2}$**:


$$
T > (1)+(3(1)+2)+1 - (1)
$$

$$
T > 6
$$

*Feedback paths are not affected*:

**For $R_{1} \to R_{1}$**


$$
T > (1)+(5(1))+1 - (0)
$$

$$
T > 7
$$
**For $R_{2} \to R_{2}$**


$$
T > (1) + (2(1)+2) + 1 - (0)
$$

$$
T > 6
$$
**Therefore**


$$
T_{min} = 8
$$
#### Part 3: Clock Skew $\delta = 4$

**For $R_{1} \to R_{2}$**:
$$
T > (1)+(5(1)+2) + (1) - (4)
$$
$$
T > 5
$$



**For $R_{1} \to R_{2}$**:


$$
T > (1)+(3(1)+2)+1 - (4)
$$

$$
T > 3
$$

*Feedback paths are not affected*:

**For $R_{1} \to R_{1}$**


$$
T > (1)+(5(1))+1 - (0)
$$

$$
T > 7
$$
**For $R_{2} \to R_{2}$**


$$
T > (1) + (2(1)+2) + 1 - (0)
$$

$$
T > 6
$$
**Therefore**


$$
T_{min} = 7
$$

#### Part 4: Maximum Positive Skew Tolerance

We have to make sure that the system is still **reliable**. Check only the first two paths where the skew matters

**For $R_{1}\to R_{2}$ (lower path)**
$$
t_{h} = d_{min} + D_{min} - \delta_{max}
$$

$$
(0) = (1) + (5(1)+2)- \delta_{max}
$$

$$
- 8= - \delta_{max}
$$

$$
\delta_{max} = 8
$$
**For $R_{1} \to R_{2}$ (upper path)**

$$
t_{h} = d_{min} + D_{min} - \delta_{max}
$$

$$
(0) = (1) + (3(1)+2)- \delta_{max}
$$

$$
\delta_{max} = 6
$$
**Therefore**:

The maximum skew to keep reliability is $\delta = 6$

#### Part 5: Maximum Negative Skew Tolerance

We have to make sure that the clock period is  *greaer than zero* for every path. Check the first two

**For $R_{1} \to R_{2}$ (lower path)**: 


$$
T = d_{max}+D_{max}+t_{su}+ \delta_{min}
$$

$$
(0) = (1) + (5(1)+2) + (1) + \delta_{min}
$$

$$
\delta_{min} = -9
$$

**For $R_{1} \to R_{2}$ (upper path)**: 


$$
T = d_{max}+D_{max}+t_{su}+ \delta_{min}
$$

$$
(0) = (1) + (3(1)+2) + (1) + \delta_{min}
$$

$$
\delta_{min} = -7
$$

**Therefore**:

The minimum value of skew must be $\delta = -7$ to ensure the second path can perform well!



# 3. Action Items & Follow-Up
- [x] Review Lecture 13 for VLSI 📅 2026-10-07 ✅ 2026-10-07
- [ ] HW 3 for VLSI 📅 2026-10-17 ⏫ 
- [x] Quiz [[Lecture 13 - Clock Skew#Clocking 4-5|Clocking 4]] ⏫ 📅 2026-10-13 ✅ 2026-10-06
- [x] Quiz [[Lecture 13 - Clock Skew|Clocking 5]] ⏫ 📅 2026-10-13 ✅ 2026-10-06  
- [x] Quiz [[Lecture 13 - Clock Skew#Clocking 6|Clocking 6]] ⏫ 📅 2026-10-13 ✅ 2026-10-06