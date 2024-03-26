Date: 25th March 2024
Date Modified: 25th March 2024
File Folder: Week 9
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Review

![[Physics 2 - Week 9 Day 1 2024-03-25 11.00.25.excalidraw]]

$$B = \frac{\mu_o I}{2 \pi r}$$

# Ampere's Law (1823)

$$\oint B^\to \cdot dl^\to = \mu_o I_{enc}$$

![[Physics 2 - Week 9 Day 1 2024-03-25 11.04.21.excalidraw]]

$$\oint = \mbox{CLosed Path} \Rightarrow \mbox{Amperian Loop}$$
$$I_{enc} \mbox{ - Current Enclosed}$$

```ad-important
Makes symmetric calculations easier.
```

## Derivation - Find the B-Field of a Wire with Ampere's Law $\star$

![[Physics 2 - Week 9 Day 1 2024-03-25 11.08.10.excalidraw]]

$$\oint B^\to \cdot dl^\to = \mu_o I_{enc}$$
$$B^\to || dl^\to$$
$$\int_0^{2 \pi r} Bdl = \mu_o I_{o}$$
$$Bl |_0^{2 \pi r} = \mu_oI_{o}$$
$$B 2\pi r = \mu_o I_o$$
$$B = \frac{\mu_o I_o}{2 \pi r} \space \space \space \square$$

### Example - Two Wires

![[Physics 2 - Week 9 Day 1 2024-03-25 11.11.51.excalidraw]]

$$B^\to_T = B_1^\to + B_2^\to$$

```ad-note
Assuming **in** is positive, and **out** is negative
```
$$B_T = B_1 - B_2$$
$$B_T = \frac{\mu_oI_1}{2 \pi r_1} - \frac{\mu_oI_2}{2 \pi r_2}$$
$$B_T = \frac{\mu_o}{2 \pi}( \frac{I_1}{r_1} - \frac{I_2}{r_2})$$

### Example - Three Wires

![[Physics 2 - Week 9 Day 1 2024-03-25 11.14.49.excalidraw]]

```ad-question
Given the following, what is $B_T$ at point $p$?:
- $I_1 = 2A$
- $I_2 = 3A$
- $I_3 = 4A$
- $r_1 = 3m$
- $r_2 = 2m$
- $r_3 = 1m$
```

$$B_T^\to = B_1^\to + B_2^\to + B_3^\to$$
$$B_T = B_1 +B_2 -B_3$$
$$B_T = \frac{\mu_oI_1}{2 \pi r_1} + \frac{\mu_oI_2}{2 \pi r_2} - \frac{\mu_oI_3}{2 \pi r_3}$$
$$B_T = \frac{\mu_o}{2 \pi}(\frac{I_1}{r_1} + \frac{I_2}{r_2} -\frac{I_3}{r_3})$$
$$B_T = -\frac{11}{12}\frac{\mu_o}{\pi} \frac{A}{m} \space (\mbox{out})$$

### Example - Coaxial Cable

![[Physics 2 - Week 9 Day 1 2024-03-25 11.21.39.excalidraw]]

$$\oint B^\to \cdot dl^\to = \mu_o I_{enc}$$
$$B 2 \pi r = \mu_o (I_1-I_2)$$
$$B=0$$

### Example - Wire in External Magnetic Field

![[Physics 2 - Week 9 Day 1 2024-03-25 11.24.51.excalidraw]]

**Which side of the wire could have no magnetic field?**

$$B_T = 0 \Rightarrow \mbox{Left Side of the Wire}$$
**Find $r$ where $B_T = 0$**

Given: $B_{ext} = 5 \micro T$, $I = 10 A$

$$B_T = B_1 - B_2$$
$$(0) = (5 \micro T) - \frac{\mu_oI}{2 \pi r}$$
$$\frac{1}{r} = -\frac{2 \pi(5*10^{-6})}{\mu_oI}$$
$$r = \frac{\mu_o I}{2\pi(5*10^{-6})}$$
$$r = \frac{(4\pi*10^{-7}) (10)}{2\pi(5*10^{-6})}$$
$$r = 0.4 m$$

### Example - B-Field at P

![[Physics 2 - Week 9 Day 1 2024-03-25 11.36.20.excalidraw]]

$$B_T = B_1 + B_2$$
$$B_T = \frac{\mu_oI}{2\pi r}+ \frac{\mu_oI}{2 \pi r}$$
$$B_T = \frac{\mu_o I}{\pi r} \space (\mbox{out})$$
### Example - B-Field of a Wire (Inside and Outside)

![[Physics 2 - Week 9 Day 1 2024-03-25 11.39.47.excalidraw]]

#### Inside ($r < R$)

$$I_{enc} = \frac{\pi r^2}{\pi R^2}I$$
$$\oint B^\to \cdot dl^\to = \mu_o I_{enc}$$
$$\int_o^{2 \pi r} Bdl = \mu_o \frac{r^2}{R^2}I$$
$$B 2 \pi r= \frac{\mu_o r^2}{R^2}I$$
$$B = \frac{\mu_o Ir}{2 \pi R^2}$$
#### Outside ($r>R$)

$$I_{enc} = I$$
$$\oint B^\to dl^\to = \mu_o I_{enc}$$
$$\int_o^{2 \pi r} Bdl = \mu_o I$$
$$B = \frac{\mu_oI}{2 \pi r}$$
#### Graphs

![[Physics 2 - Week 9 Day 1 2024-03-25 11.46.19.excalidraw]]





