Date: 5th February 2024
Date Modified: 5th February 2024
File Folder: Week 3
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Vector Review
- Electric Flux

```
# Vector Review

**Force time distance?**
- $w = \int F^\to * dr^\to$
- $\tau^\to = r^\to \bigotimes F^\to$

## Dot Products

$$A^\to \cdot B^\to = A_x B_x + A_y B_y + A_z B_z$$
$$A^\to \cdot B^\to = AB \cos \Theta$$
```ad-important
Takes into account whether or not the two vectors are parallel or perpendicular
```

### Example 1

$$A = 6 \hat{i} + 2\hat{j} \space (m)$$
$$B = 3\hat{i} + 4\hat{j} \space (m)$$

$$A^\to \cdot B^\to = 2 *3 +2*4 = 26 m^2$$

### Example 2

$$A^\to = 2 \hat{i}$$
$$B^\to = 3\hat{j}$$

**Sketch**

![[Physics 2 - Week 3 Day 1 2024-02-05 11.10.52.excalidraw]]

$$A^\to \cdot B^\to = 2 * 0 + 0 * 3 = 0$$

```ad-note
It is zero since the two vectors are perpendicular, so they are not in the same dimensions
```

## Normal to the Surface

**Plane**
![[Physics 2 - Week 3 Day 1 2024-02-05 11.12.49.excalidraw]]

**Cylinder**

![[Physics 2 - Week 3 Day 1 2024-02-05 11.13.28.excalidraw]]

## E-Field

![[Physics 2 - Week 3 Day 1 2024-02-05 11.16.32.excalidraw]]

$$E \rightarrow F \rightarrow a \rightarrow x$$

```ad-important
From the electric field, we can ultimately determine the position of the charge in the future.
```

# Electric Flux

```ad-summary
title: Definitino

The electric field thorugh a surface
```

$$\Phi_E = E^\to*A^\to$$
$$\Phi_E = EA \cos\Theta$$

## Examples

### Example 1

![[Physics 2 - Week 3 Day 1 2024-02-05 11.23.22.excalidraw]]

$$\Phi_E = E^\to * A^\to$$
$$\Phi_E = EA \cos \Theta$$
$$=EA \cos 0$$
$$\Phi_E = EA$$

### Example 2

![[Physics 2 - Week 3 Day 1 2024-02-05 11.25.08.excalidraw]]

$$\Phi_E = E^\to * A^\to$$
$$=EA \cos \Theta$$
```ad-note
It will have less flux since the surface is not perpendicular
```

### Example 3

![[Physics 2 - Week 3 Day 1 2024-02-05 11.26.51.excalidraw]]

$$\Phi_E = E^\to * A^\to$$
$$=EA \cos 90 \degree$$
$$\Phi_E = 0$$
```ad-important
Since the surface is parallel to the e-field, there is no flux.
```

### Example 4

```ad-question
Given:
- $E = 6 \frac{N}{C}$
- $A = 12m^2$
- $\Theta = 30 \degree$
```

![[Physics 2 - Week 3 Day 1 2024-02-05 11.28.27.excalidraw]]

$$\Phi_E = E^\to * A^\to$$
$$=EA \cos \Theta$$
$$(6)(12)\cos(30)$$
$$\Phi_E = 62 \frac{Nm^2}{C}$$

### Example 5 - Vectors

**GIVEN**:
$$E^\to = 6 \hat{i} + 7 \hat{j} \space (\frac{N}{C})$$
$$A^\to = 4 \hat{i}+3\hat{j} + 2\hat{k}\space \space m^2$$

$$\Phi_E = E^\to \cdot A^\to$$
$$= 6*4 + 7*3 + 0*2$$
$$\Phi_E = 45 \frac{Nm^2}{C}$$

### Example 6 - Complex Surface

![[Physics 2 - Week 3 Day 1 2024-02-05 11.33.46.excalidraw]]

$$\Phi_E = \sum E_1^\to \cdot A_1^\to + E_2^\to \cdot A_2^\to + ...$$
$$\Phi_E = \oint E^\to * dA^\to$$
## Calculating the Volume of a Sphere (Spherical Polar Coordinates)

![[Physics 2 - Week 3 Day 1 2024-02-05 11.37.42.excalidraw]]

$$\int \int \int dx \space dy \space dz \Rightarrow \int_0^r \int_0^\pi \int_0^{2\pi} r^2 \sin\Theta dr \space d\Theta \space \space d\phi$$

$$V = \int_0^r r^2 dr * \int_0^\pi \sin \Theta d\Theta \int_0^{2\pi} d \phi$$
$$\frac{r^3}{3} *2 * 2 \pi$$
$$V = \frac{4 \pi}{3} r^3$$

## Surface Area of a Sphere

![[Physics 2 - Week 3 Day 1 2024-02-05 11.45.09.excalidraw]]

$$A = \int \int \int dx \space dy \space dz \Rightarrow \int_0^\pi \int_0^{2\pi} r^2 \sin \Theta \space d\Theta \space d\phi$$
```ad-note
Since the radius is constant, it can be taken out
```
$$A = r^2 \int_0^\pi  \sin \Theta d \Theta \int_0^{2\pi} d \phi$$
$$r^2 * 2 * 2\pi$$
$$A = 4 \pi r^2$$

