Date: 23rd October 2023
Date Modified: 23rd October 2023
File Folder: Week 10
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Collisions Cont.

$$p^\to_{before} = p^\to_{after}$$

```ad-important
Always happens regardless of the type of collision
```
## Elastic

```ad-summary
In addition to linear motion being conserved, the **kinetic energy** is *ALSO* conserved:
$$KE_{before} = KE_{after}$$
```

## Inelastic

```ad-warning
ONLY the conservation of linear momentum applies
- Due to the deformation, part of the original energy is loss
```

```ad-note
title: Perfect Case
When two objects collide and then stick together and become one object
```

## Examples

### Example 1: Car

A $2000kg$ car moves to the right at $25 \frac{m}{s}$. It encounters another car of $m_2=1800kg$ moving to the left at $15 \frac{m}{s}$. After the collision, the cars stick together. 

```ad-question
1. What was the speed of the objects after the collision?
2. The energy *lost* in the collision?
```

#comebacklater ex. 1

```ad-note
Since it is a perfectly inelastic collision, only conservation of linear momentum can be applied
```

1. What was the speed?

$$p^\to_{before} = p^\to_{after}$$
$$m_1v_1^\to+m_2v_2^\to=(m_1+m_2)u^\to$$
**Become scalar by choosing right to be positive**

$$m_1v_1+m_2(-v_2)=(m_1+m_2)u$$

**Replace with Numbers**:
$$(2000)(25)-(1800)(15) = (3800)u \Rightarrow u = \frac{(2000)(25)-(1800)(15)}{3800} = 6.05 \frac{m}{s}$$

2. How much energy was lost?

**Calculate KE before**

$$KE_{before} = \frac{1}{2}m_1v_1^2+\frac{1}{2}m_2v_2^2 = 8.28*10^5 J$$

**Calculate KE after**:

$$KE_{after} = \frac{1}{2}(m_1+m_2)u^2 = 6.95*10^4 J$$

**Calculate Energy Lost:**

$$E_{lost} = 828000-69500 = 7.58 * 10^5 J$$

### Example 2: 

A $5kg$ object with a speed of $4 \frac{m}{s}$ collides head on with a $10kg$ with a moving toward it with a speed of $3 \frac{m}{s}$. The $10kg$ object stops dead after the collision. 

```ad-question
1. What is the final speed of the $5kg$ object
2. Is the collision elastic?
```

#comebacklater ex. 2

```ad-note
- $v_1^\prime = 0$
- $v_2^\prime = ?$
- Chosen to the right
```

1. What is the final speed of the $5kg$ object

**Even though we do not know if the object is elastic or inelastic, we are able to still use conservation of linear momentum:**

$$m_1v_1^\to+m_2v_2^\to=m_1v_1^{\to\prime}$$
**Turn from vector to scalar**

$$m_1v_1 - m_2v_2 = -m_1v_1^\prime$$

**Place numbers**

$$5 * 4 - 10 * 3 = -5v_1^\prime$$
$$v_1^\prime = 2 \frac{m}{s}$$

2. Was the collision elastic?

```ad-important
**If** the collision was elastic, $KE_{before} = KE_{after}$
```

**Calculate KE before**

$$\frac{1}{2}m_1v_1^2 + \frac{1}{2}m_2v_2^2 = \frac{1}{2}(5)(4)^2+\frac{1}{2}(10)(3)^2 = 85 J$$
**Calculate KE after**

$$\frac{1}{2}m_1v_1^{\prime 2} = \frac{1}{2}(5)(2)^2 = 10 J$$

```ad-summary
title: Conclusion
Because:
$$85J \ne 10J$$
It is concluded that the collison is ineastic
```

### Example 3:

A $3kg$ block moving at $4 \frac{m}{s}$ makes a head-on **elastic** collision with a stationary block of mass $2kg$. 

```ad-question
Calcualte the speed of each object after the collsion
```

#comebacklater ex. 3

```ad-note
We don't know the direction of the object until it after the collision. Try one and flip the vector if necessary
```

- Create Vector Form of Equation:

$$m_1v_1^\to + 0 = m_1v_1^{\to\prime}+m_2+v_2^{\to\prime}$$
- Create scalar form

$$m_1v_1 = m_1v_1^{\prime}+m_2+v_2^{\prime}$$

$$3 * 4 = 3v_1^\prime + 2 v_2^\prime$$

- Create kinetic energy equation

$$\frac{1}{2}m_1v_1^2 = m_1(v_1^\prime)^2 + \frac{1}{2} m_2(v_2^\prime)^2$$

- Create system of equations:

$$\begin{bmatrix} 3 * (4)^2 = (v_1^\prime) ^2 +2(v_2^\prime)^2\\ 12 = 3v_1^\prime + 2v_2^\prime => v_1^\prime = \frac{12-2v_2^\prime}{3}\end{bmatrix}$$

- Solve for $v_2^\prime$

$$48 = 3(\frac{(12-2v_2^\prime)^2}{9}) + 2(v_2^\prime)^2$$
$$144 = 144 - 48v_2^\prime + 4(v_2^\prime)^2 + 6 (v_2^\prime)^2$$
$$0 = -48v_2^\prime + 10(v_2^\prime)^2$$
$$0 = v_2^\prime(-48 + 10v_2^\prime) \to v_2^\prime = 0 \space OR \space -48+10v_2^\prime = 0 = 4.8$$
- Go back and plug in **BOTH** solutions of $v_2^\prime$ to find $v_1^\prime$

If $v_2^\prime = 0 \to v_1^\prime = 4$
If $v_2^\prime = 4.8 \to v_1^\prime = 0.8$

```ad-note
The first solution is when the two objects never collided. That means you discard it. Take the other solution
```

