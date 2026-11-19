---
creation_date: 2026-11-16 12:16
last_modified: 2026-11-16 12:16
folder: 7 - Driving Loads & Buffers
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

### Power Quiz Answers

![[Pasted image 20261116121952.png]]

![[Pasted image 20261116121959.png]]

![[Pasted image 20261116122007.png]]

![[Pasted image 20261116122014.png]]

![[Pasted image 20261116122021.png]]

![[Pasted image 20261116122026.png]]
# 2. Lecture & Discussion Notes

##  Find the Optimal Fanout

```ad-note
title: Reminder
$f = \sqrt[N]{F}$
```
$$
N =  \frac{\ln F}{\ln f}
$$

$$
t_{p} = Nt_{p0}\left( 1 + \frac{f}{\gamma} \right) = \frac{t_{p0}\ln F}{\gamma} \times \frac{f+\gamma}{\ln f}
$$

$$
 \frac{\partial t_{p}}{\partial f} = \frac{t_{p0} \ln F}{\gamma} \times \frac{\ln f - 1 - \frac{\gamma}{f}}{\ln^2 f} = 0
$$

$$
\boxed{f_{opt} = e^{1+ \gamma/f}}
$$
```ad-warning
- Transcedental, which means that there are no closed forms. Gamma causes the change over the previous $f$.
- This *does not* depend on big $F$. 
- Gamma can often be 1, but this expression can be used if Gamma is different, which is dependent on the process entirely
```

 ```ad-note
 ![[Pasted image 20261116123822.png]]
 ```

### Changing Gamma Results

- It is set by the process, aka the loading ratio between the intrinsic capacitance ($C_{int}$) and the input capacitance ($C_{in}$)
- There is **no practical significance** of this wow


![[Pasted image 20261116124450.png]]

```ad-important
For $\gamma=1$, and in any case where it is mentioned and should be assumed $1$, the practical ratio is around $f_{opt}=3.6$ 
```

## Design Procedure for Buffer Chain

1. **Path Fanout**: Find $F$ such that $F = \frac{C_{L}}{C_{in, 1}}$ aka load cap/input cap of the first stage.
2. **Ideal Stage Count**: Find $f_{opt}$ (most likely 3.6), then find $N$. $N_{opt} = \frac{\ln F}{\ln(f_{opt})}$
3. **Round $N$ to the Best Integer**: Check both neighbors, and the required output polarity.
4. **Recompute the Fanout**: $f_{1} = \sqrt[N_{1}]{ F }$, $f_{2} \sqrt[N_{2}]{ F }$
5. **Size and Evaluate**: $N \times t_{p 0}\left( 1 + \frac{f}{\gamma} \right)$ for $N_{1}, N_{2}$ and $f_{1}, f_{2}$

### Example Problems: Normalized Delay

*Assume $\gamma = 1$*

$$
\frac{t_{p}}{t_{p 0}} = N \times \left( 1+\frac{f}{\gamma} \right)=N(1+f)
$$

| Path Fanout | Unbuffered         | Two Stages           | Optimal Chain                | Ideal $N$                  |
| ----------- | ------------------ | -------------------- | ---------------------------- | -------------------------- |
| <br>        | $1+\sqrt[1]{ F  }$ | $2(1+\sqrt[2]{F  })$ | $1+f \text{ where } f = 3.6$ | $N = \frac{\ln F }{\ln f}$ |
| 10          | 1                  | 8.3                  | 8.3                          | 1.8                        |
| 100         | 101                | 22                   | 16.5                         | 3.6                        |
| 1000        | 1001               | 65                   | 24.8                         | 5.4                        |
| 10000       | 100001             | 202                  | 33.1                         | 7.2                        |

![[Pasted image 20261116130921.png]]

```ad-important
At $F = 10,000$, the optimal chain is about $300 \times$ faster than one inverter.
```

### Practice 1: Sizing a Chain for a $20pF$ load

![[Pasted image 20261116131127.png]]

**Given**:
1. $C_{L}=20pF$
2. $C_{in} = 10fF$
3. Minimum inverter intrinsic delay $t_{p 0} = 70ps$
4. $\gamma = 1$
5. Input cap proportional to its size

```ad-question
1. Size the two added buffer stages to minimize the porpagation delay
2. If any number of stages are allowed, how many would you use, and what is the delay?
```

#### Two Buffer Stages
$$
F = \frac{20pF}{10fF} = 20000
$$
$$
N = 3
$$
$$
f = \sqrt[3]{ F } = 27.144
$$

$$
t_{p }= (3)(70ps)(1 + (27.144)) = 59.102.4ns
$$

#### Minimized Approach

```ad-important
Use as view as possible to reduce size and delay
```


$$
N = \frac{\ln 2000}{\ln 3.6} \approx 5.9 \to 6
$$

$$
f = \sqrt[6]{ 2000 } \approx 3.55
$$

$$
t_{p} = 6 \times 70ps(1+3.55) \approx 1.91ns
$$

![[Pasted image 20261116132108.png]]

## Other Considerations

### Gate-Drain (Miller) Capacitances

```ad-summary
There is an intrinsic capacitance that connects the diffusion to the gate.
- This is particularly *dangerous* since the two sides of the capacitor are often rising/falling and vice versa. They swing in *opposite* directions.
```

![[Pasted image 20261116132308.png]]

**Miller Equivalent**

![[Pasted image 20261116132841.png]]

The input and outputs, when they swing in opposite directions, cause the voltage across the gate-drain capacitance to change by $2 \Delta V$. Therefore it appears to be *doubled* and it raises $\gamma$
$$
\boxed{C_{int} \approx C_{db} + 2 C_{gd}}
$$

### Application: Clock Distribution Trees

![[Pasted image 20261116133144.png]]

**Problems with Clock Networks**
1. Wire delay: Grows with length squared
2. Large total loads: Thousands of clock pins
3. Skew: Need to balance every path from source to flip-flop

![[Pasted image 20261116133225.png]]

$$
\therefore t_{buff} \ll \frac{2l_{1}l_{2}r_{c}}{2}
$$
## Summary
# 3. Action Items & Follow-Up
- [x] Review Lecture 21 for VLSI 📅 2026-11-18 ✅ 2026-11-18