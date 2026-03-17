# Crystal Systems

**Unit Cell** Smallest repetitive volume which contains the complete lattice pattern of a crystal

![[Pasted image 20260317120603.png]]

# Coordinate Systems for Unit Cells

## Point Coordinates

Point coordinates for a unit cell center are 

$$
a/2, b/2, c/2 \quad \frac{1}{2} \frac{1}{2} \frac{1}{2}
$$

Point coordinates for unit cell corners are:
$$
1, 1, 1
$$

![[Pasted image 20260317120727.png]]

```ad-important
Can be used to easily locate defects in the unit cell

![[Pasted image 20260317120746.png]]
```

## Crystallographic Directions

**Steps**:
1. Find point coordinates for the tail and tip (read off projections in terms of unit cell dimensions $a, b,$ and $c$)
2. *Subtract* the $tip - tail$
3. Adjust to smallest *integer* values
4. Enclose in *square brackets*, **no commas**: $[uvw]$
5. For *negative values*, put a bar over the index

```ad-example
$$1, 0, 1/2 \Rightarrow 2, 0, 1 \Rightarrow [201]$$
$$-1, 1, 1 \Rightarrow [\bar{1}11]$$
```

```ad-important
Miller's indices allow us to describe **dislocation**

![[Pasted image 20260317121233.png]]
```

## Family of Directions $\left<uvm\right>$

Several nonparallel directions with different indicies are crystallographically equivalent

![[Pasted image 20260317121349.png]]

$$
\text{Cubic Unit Cell } \left<1 0 0 \right>
$$

![[Pasted image 20260317121433.png]]

$$
\text{Cubic Unit Cell } \left<0 1 1 \right >
$$

## Miller’s Indices

```ad-summary
title: Definition
Reciprocals of the (three) axial intercepts for a plane, cleared of fractions and common multiples
- All parallel planes have the same Miller indices
```

When calculating the MIller inicides, choose a plane **NOT** passing through the origin

![[Pasted image 20260317121656.png]]

### Process for determining Miller Indices of Planes

1. If plane passes thorugh the origin, choose a parallel plane
2. Find the (three) axial intercepts $(a, b, c)$ for a plane.
3. Take the reciprocal of each
4. Reduce to the lowest integers cleared of fractions
5. Millers indices use parentheses (ex. $(111), (110)$)

![[Pasted image 20260317121806.png]]