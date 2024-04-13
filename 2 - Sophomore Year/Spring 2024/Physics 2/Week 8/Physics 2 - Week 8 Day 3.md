Date: 22nd March 2024
Date Modified: 22nd March 2024
File Folder: Week 8
#Physics2

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Sources of Magnetic Fields

## Magnetic Field near Wires

```ad-example
title: Experiment (1819)
- Current produces B-Field
- With no current, No B-Feild
- Moving charges produce B-Fields
```

**Equations: Biot-Savart Law (~1820)

$$dB^\to = \frac{\mu_o}{4 \pi} \frac{I dl^\to \otimes \hat r}{r^2}$$
$$B = \frac{\mu_o I}{4 \pi} \int \frac{dl^\to \otimes \hat r}{r^2}$$

$$\mu_o = 4 \pi * 10^{-7} T \frac{m}{A}$$
$$\hat r \Rightarrow \mbox{in direction of } r^\to$$

![[Physics 2 - Week 8 Day 3 2024-03-22 11.10.18.excalidraw]]

## Forces in Physics

$$F_G^\to = \frac{g m_1m_2}{r^2} \hat r \space \space \space F^\to_E = \frac{k q_1 q_2}{r^2} \hat r \space \space \space F_B \approx \frac{1}{r^2}$$

```ad-note
**The Big Picture**: Everything relates back to the surface area of a sphere as all these forces move out in a circle from a center point.
```

## B-Field of a Wire at Point $P$ - DERIVATION $\star$

![[Physics 2 - Week 8 Day 3 2024-03-22 11.16.25.excalidraw]]

**From the Drawing**

$$r = \sqrt{a^2 + l^2}$$
$$\sin \Theta = \frac{a}{r} = \frac{a}{\sqrt{a^2+l^2}}$$
$$B^\to = \frac{\mu_oI}{4 \pi} \int \frac{dl^\to \otimes \hat r}{r^2}$$
$$=\frac{\mu_o I}{4 \pi} \int \frac{dl \sin \Theta}{r^2}$$
$$\frac{\mu_o I}{4 \pi} \int_{- \infty}^\infty \frac{dl}{(a^2+l^2)}* \frac{a}{\sqrt{a^2+l^2}}$$
$$\frac{\mu_oI}{4 \pi} \int_0^\infty \frac{2adl}{(a^2+l^2)^\frac{3}{2}} \space \space \mbox{Finish Here for Exam} $$
--- 
$$B = \frac{\mu_o I 2}{4 \pi}[\frac{a}{a(a^2+l^2)^\frac{1}{2}}]^\infty_0$$
$$B = \frac{\mu_oI}{2 \pi a} \Rightarrow B = \frac{\mu_oI}{2 \pi r}$$

## Right-Hand Rule #2 

![[Physics 2 - Week 8 Day 3 2024-03-22 11.30.54.excalidraw]]

**Thumb - Current**
**Curled Fingers - $B^\to$**

## B-Force Between 2 Wires

![[Physics 2 - Week 8 Day 3 2024-03-22 11.32.16.excalidraw]]

**Force on Wire 2**

$$F_2^\to = I_2 L_2^\to \otimes B_1^\to$$
$$= I_2 L_2 B_1 \space (L_2^\to \perp B_1^\to)$$
$$F_2 = I_2 L_2 \frac{\mu_oI}{2 \pi r}$$
$$F_2 = \frac{\mu_o L_2 I_1 I_2}{2 \pi r_1}$$

**Force on Wire 1**

Is the same as wire 

$$F_1 = F_2$$
$$F_1 = F_2 = \frac{\mu_o L_2 I_1 I_2}{2 \pi r}$$

**ATTRACT**
### Example: Force on Two Wires in a Calculator

![[Physics 2 - Week 8 Day 3 2024-03-22 11.37.33.excalidraw]]

$$L_1 = L_2 = 0.02 m$$
$$d = 0.004 m$$
$$I _1 = .5 \micro A$$
$$I_2 = 2.2 \micro A$$

$$F = \frac{\mu_o L I_1 I_2}{2 \pi d}$$
$$F = 1.1 * 10^{-18} N \space Attraction$$
## Force on Two Wires Attraction

![[Physics 2 - Week 8 Day 3 2024-03-22 11.45.18.excalidraw]]

![[Physics 2 - Week 8 Day 3 2024-03-22 11.44.26.excalidraw]]


