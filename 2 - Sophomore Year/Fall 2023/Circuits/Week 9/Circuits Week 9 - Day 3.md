Date: 20th October 2023
Date Modified: 20th October 2023
File Folder: Week 9
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Phase Shift Comparison
- Complex Numbers

```

# Phase Shift In Comparing Sinusoids

```ad-summary
title: The Three Requirements for Comparing Sinusoids
1. Must have the same frequency
2. They must all be the same sinusoid form (either $\cos$ or $\sin$)
3. Both must all be positive OR negative
```

```ad-warning
If the first requirement is NOT true due to different frequencies, YOU STOP THERE.
```

```ad-note
Compare them with the reference signal, which would be the signal that **comes first** in time.
- $v_1 \space leads \space v \equiv v \space lags \space v_1$
- $v_1 \space leads \space v \space and \space v_2 \equiv v_2 \space and \space v_1 \space lags \space v_1$
```
#comebacklater PREV ex. 6
## Important Trigonometric Identities:

$$\cos(\alpha) = \sin(\alpha + 90\degree)$$
$$\sin(\alpha) = \cos(\alpha - 90\degree)$$
$$-\sin(\alpha) = \sin(\alpha \pm 180 \degree)$$
$$-\sin(\alpha) = \sin(\alpha \pm 180 \degree)$$
```ad-important
Add until the angle is between -180 and 180 degrees
```ad-example
$$-\sin(wt + 20\degree) = \sin(wt-160\degree)$$
```


## Example

### Example 1:

```ad-question
Compare the phase shift of the signals below:
$$v(t)=2\cos(2t-30)[V]$$
$$i(t) = -3\sin(2t+20)[A]$$
```

**Look at conditions**:
1. Do both have the same frequency? $\checkmark$
2. Do both have the same sign? $X$

**Convert second function to positive:**

$$i(t) = \sin(2t+(20-180)) = 3\sin(2t-160)$$

3. Do both have the same format? $X$

**Convert second function from sine to cosine**

$$i(t) = 3\cos(2t-160-90) = 3\cos(2t-250) - 3\cos(2t-250+360) = 3\cos(2t+110)$$

```ad-note
You are able to convert the function's form OR the function's sign in any order as long as the conditions are met
```


```ad-summary
Now both funcitons meet all three phase relations, we are now able to compare them
```

**Comparing the Phase Shift**

```ad-important
- If the inner angle is **negative**, the funciton is shifted to the right
- If the inner angle is **positive**, the function is shifted to the left
```

#comebacklater ex. 1

```ad-check
title: Solution
$v(t)$ lags $i(t)$ by $140\degree$ $\equiv$ $i(t)$ leads $v(t)$ by $140\degree$ 
```

### Example 2:

```ad-question
COmpare the phase sift of:
$$v(t) = -2\sin(5t+30)$$
$$i(t) = 3\sin(5t+20)$$
```


```ad-check
title: Solution
$$ v(t) \space leads \space i(t) \space by \space 10 \degree \equiv i(t) \space lags \space v(t) \space by \space 10\degree$$
```

### Example 3:


```ad-question
Compare the phase sift of:
$$v(t) = 10\sin(10t+45)$$
$$i(t) = 30\sin(200t-10)$$
```

```ad-check
title: Solution
Phase shift cannot be comapred because $w_1 \ne w_2$ (different frequencies)
```

# Complex Numbers

```ad-note
Complex numbers represent the phase domain of the $\cos$ and $\sin$
```

Introduced to solve **negative** square root 

$$x^2 =1$$
$$x^2 = -1$$
$$x = \sqrt{-1}=j$$


```ad-summary
title: Three Forms of Complex Numbers
1. Rectangular (Assuming $z$ is a complex number)
$$z = a+jb$$
#comebacklater ex. 2
2. Polar
$$Z = |Z| \angle \Theta$$
$$|Z| = \sqrt(a^2+b^2)$$
$$\Theta = \tan^{-1}(\frac{a}{b})$$
$$-180 \le \Theta \le 180$$
#comebacklater ex. 3
3. Exponential Form
$$z = |z|e^{j\Theta}$$
#comebacklater ex. 4
```

## Conversions Between Forms of Complex Numbers

```ad-important
For complex numbers, some operations are easier in either rectangular OR Polar OR Exponential
```

### Rectangular to Polar/Exponential

**Given:**
$$z=a+jb$$
**Calculate the Magnitude and Angle:**

$$|z| = \sqrt{a^2+b^2}$$
$$\Theta = \tan^{-1}(\frac{a}{b})$$

Plug in both magnitude and angle

### Polar/Exponential to Rectangular

```ad-important
Use Euler's Identity:
$$e^{j\theta} = \cos\theta + jsin\theta$$
```

$$z = |z|(\cos\theta +jsin\theta) = |z|\cos\theta +j|z|\sin\theta$$

## Complex Number Arithmetic

### Addition & Subtraction

```ad-note
Best done in **rectangular** form
```

$$z_1 = a_1+jb_1$$
$$z_2=a_2+jb_2$$
$$z_1+z_2 = (a_1+a_2)+j(b_1+b_2)$$

### Multiplication & Division

```ad-note
Best done in **polar/exponential** form
```

#### Exponential
$$z_1 = r_1e^{j\theta_1}$$
$$z_2 = r_2e^{j\theta_2}$$
$$z_1z_2 = r_1r_2e^{j(\theta_1+\theta_2)}$$
$$\frac{z_1}{z_2} = \frac{r_1}{r_2}e^{j(\theta_1-\theta_2)}$$

#### Polar

$$z = r_1\angle\theta_1, z=r_2\angle\theta_2$$
$$z_1z_2=r_1r_2\angle\theta_1+\theta_2$$
$$\frac{z_1}{z_2}= \frac{r_1}{r_2}\angle\theta_1-\theta_2$$

### Complex Conjugate $\star$

1. **Rectangular**

$$z = a + jb$$
$$z^\star = a-jb$$
2. **Exponential**

$$z = |z|e^{j\theta}$$
$$z^\star = |z|e^{-j\theta}$$

3. **Polar**
$$z = |z| \angle \theta$$
$$z^\star = |z| \angle \theta$$

### Square Root

```ad-important
Best done in polar/exponential
```

#### Exponential

$$\sqrt{z} = \sqrt{|z|} e^{j\frac{\theta}{2}}$$
#### Polar

$$\sqrt{z} = \sqrt{|z|} \angle{\frac{\theta}{2}}$$

## Example

```ad-question
Find the polar and exponeital forms:
$$z = -2-j2$$
```

1. Find angle

$$|z| = \sqrt{(-2)^2+(-2)^2} = 2\sqrt{2}$$

2. Find magnitude

$$\theta = \arctan(\frac{-2}{-2}) = 45-180=-135$$

### Polar

$$z = 2\sqrt{2} \angle -134$$

### Exponential

$$z = 2\sqrt{2} e^{-j135}$$

