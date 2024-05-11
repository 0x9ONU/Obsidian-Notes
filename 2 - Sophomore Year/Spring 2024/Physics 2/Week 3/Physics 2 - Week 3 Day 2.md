Date: 7th February 2024
Date Modified: 7th February 2024
File Folder: Week 3
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Gauss's Law

```

# Gauss's Law

```ad-important
Used to find the electric field 
- You must choose a Gaussian Surface 
- Use this when the surface has a lot of symmetry
```

```ad-note
title: Remember

$$\Phi_E = E^\to * A^\to$$
$$\Phi = \oint E^\to d A^\to$$

```

**He came along and said**:
$$\Phi_E = \frac{Q_{enc}}{\epsilon_o}$$

$$\oint E^\to dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
```ad-note
$\epsilon_0$ is a constant that gives us the proper Column's
```
## Example 1: Flux Through a Gaussian Surface

![[Physics 2 - Week 3 Day 2 2024-02-07 11.08.53.excalidraw]]

$$s_1 \rightarrow \Phi_1 = \frac{Q_{enc}}{\epsilon_o} = \frac{2Q}{\epsilon_o}$$

$$S_2 \rightarrow \Phi_2 = \frac{Q_{enc}}{\epsilon_o} = \frac{(2Q -2Q)}{\epsilon_o} = 0$$
$$S_3 \rightarrow \Phi_3 = \frac{Q_{enc}}{\epsilon_o} = \frac{(2Q-3Q)}{\epsilon_o} = \frac{-Q}{\epsilon_o}$$
$$S_4 \rightarrow \Phi_4 = \frac{2Q-3Q-2Q}{\epsilon_o} = \frac{-3Q}{e_o}$$
## Example 2: Point Charge Q **IMPORTANT**

```ad-question
Find $E$ at some distance $r$
```

**Sketch** 
 
![[Physics 2 - Week 3 Day 2 2024-02-07 11.15.13.excalidraw]]

**Equations**

$$\oint E^\to * dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$\oint E * dA \cos \Theta = \frac{Q_{enc}}{\epsilon_o}$$

$$\oint E\space dA = \frac{Q}{\epsilon_o}$$
```ad-important
Since it is a sphere, replace the integral with the formula for a sphere
```

$$E4 \pi r^2 = \frac{Q}{\epsilon_o}$$
$$E = \frac{Q}{4\pi \epsilon_o r^2}$$
```ad-note
$$k = \frac{1}{4\pi \epsilon_o}$$
```

$$E = \frac{kQ}{r^2} \space \space \space \square$$


## Example 3: Infinite Line Charge

```ad-question
Find the E-Field given:
- Total Charge $Q$
```
**Sketch**

![[Physics 2 - Week 3 Day 2 2024-02-07 11.21.51.excalidraw]]

$$Q = \lambda L$$

**Equations**

$$\oint E^\to \cdot dA^\to =\frac{Q_{enc}}{\epsilon_o}$$
$$\int E^\to dA_1^\to + \int E^\to dA_2^\to +  \int E^\to dA_3^\to = \frac{Q_{enc}}{\epsilon_o}$$

```ad-important
You want to include this:
$$E^\to \bot A_1^to, E^\to \parallel A^\to_2, E^\to \bot A^\to_3$$
```

$$0 + \int EdA_2 \cos(0) + 0 = \frac{Q}{\epsilon_o}$$
$$E2\pi rL= \frac{\lambda L}{\epsilon_o}$$
$$E = \frac{\lambda}{2 \pi \epsilon_o r}$$
$$if \space k = \frac{1}{4\pi \epsilon_o}$$
$$E = \frac{2k \lambda}{r}$$
## Example 4: Thin & Nonconducting Sheet

```ad-question
Find $E$ given:
- 
```

**Sketch**

![[Physics 2 - Week 3 Day 2 2024-02-07 11.31.17.excalidraw]]


**Equations**

$$Q = \sigma A$$
$$\oint E^\to dA^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$\int E^\to dA_1^\to + \int E^\to dA_1^\to + \int E^\to dA_1^\to = \frac{Q_{enc}}{\epsilon_o}$$
$$E^\to \parallel A_1^\to, E^\to \bot A_2^\to, E^\to \parallel A_3^\to$$
$$\int EdA_1 \cos(0) + 0 + \int EdA_3 \cos 0 = \frac{\sigma A}{\epsilon_o}$$
$$EA + 0 + EA = \frac{\sigma A}{\epsilon_o}$$
$$E = \frac{\sigma}{2\epsilon_o}$$
## E-Field Inside a Conductor

```ad-question
Place charges on a conductor:
```

![[Physics 2 - Week 3 Day 2 2024-02-07 11.41.26.excalidraw]]

**E-Field Inside**

![[Physics 2 - Week 3 Day 2 2024-02-07 11.42.57.excalidraw]]

$$\oint E^\to \cdot dA^\to = \frac{Q}{\epsilon_o}$$
$$E=0$$

