Date: 5th February 2026
Date Modified: 5th February 2026
File Folder: Lecture 5
#matsci

# Introduction

Covers the *material properties section of the class*

![[Pasted image 20260205120442.png]]

```ad-important
Engineers use material properties and the principels of math and science to predict the future
```

![[Pasted image 20260205120729.png]]

*What properties should be dfined for a material for this application?*
- How much can it bend before it breaks?
- Can it not be knocked over by weight shifts or the wind?
- Can it not take environmental damage?

# Material Properties

## Tension Test

aka. we use a “uniaxial stress-strain response”

![[Pasted image 20260205120807.png]]

### Force vs. Displacement Graph

A tensile testing machine measures *force* vs. *displacement*. 

```ad-note
Based on Hooke's Law:

$$F = kx$$
```

![[Pasted image 20260205120947.png]]

### Does Force Make a Good Material Property

We have two AISI 1020 Steel Rods. Which will support more force before breaking?

![[Pasted image 20260205121201.png]]

```ad-check
title: Answer
Rod $A$ will support more force than $B$
```

The amount of force before breaking is dependent on both the *material* and *geometry*
- We define properties that are **independent of geometry**, and thus inherent to the material itself

## Engineering Stress (Axial Loading)


$$
\boxed{\sigma = \frac{P}{A_{o}}= \frac{\text{Applied Force}}{\text{Original Area of the Cross Section}}}
$$

- $\sigma$ is used to represent “normal stresses”
- For axial loading, the normal stress is same across the entire cross section.

```ad-note
title: Units
- Pounds per square inch: psi or kpsi
- Pascals: Pa, kPa, MPa
```

![[Pasted image 20260205121458.png]]

## Engineering Strain (Axial Loading)

$$
\boxed{\epsilon = \frac{\Delta l}{l_{o}} = \frac{\text{Change in Length}}{\text{Original Length}}}
$$
$$
\Delta l = l-l_{o} \rightarrow \text{Current Length} - \text{Original Length} 
$$

- $\epsilon$ is used to represent “normal strain”
- Strain is **unit-less** and often very small
- $10^{-6}$ can be reported in units of $\micro \epsilon$ (*micro strain*)

## Stress-Strain Curve

Inputting the geometry (cs shape, area, length, etc.) allows for the calculation of the stress-strain curve.

![[Pasted image 20260205121810.png]]

![[Pasted image 20260205122309.png]]

### Elastic Region

![[Pasted image 20260205122357.png]]

```ad-important
Based on Hooke's Law:

$$\sigma = E \epsilon$$
```

- $E$ - modulus of elasticity (also: Young’s modulus, *tensile elasticity*)
- A material property that describes its **stiffness**
- One of the most important properties in engineering design

#### Elastic Deformation

![[Pasted image 20260205122612.png]]

![[Pasted image 20260205122616.png]]

```ad-note
This means elastic means it is *reversible*
```

#### Determining Elastic Modulus

```ad-important
Determined by the material's **bonding force**
```

![[Pasted image 20260205122712.png]]

![[Pasted image 20260205122936.png]]

#### Elastic Region using Hooke’s Law

**Axial Force ($P$)**:

$$
\sigma = E \epsilon
$$
$$
\frac{P}{A}=E \frac{\Delta l}{l_{o}}
$$
$$
P = EA \frac{l-l_{o}}{l_{o}}
$$
**Original Length ($l_o$)**:

$$
\Delta l = \frac{Pl_{o}}{AE} \rightarrow \delta = \frac{PL}{AE}
$$

$$
l = \frac{Pl_{o}}{AE}+l_{o}
$$
### Plastic Region

#### Yielding

```ad-summary
title: Definition
**Yielding**: A slight increase in stress above the elastic limit will result in a breakdown of the materials and cause it to deform permanently
```

- Yield stress (or Yield strength): the stress that causes yielding. Measure of strength for *ductile materials*
- Plastic deformation is permanent

![[Pasted image 20260205123431.png]]

![[Pasted image 20260205123406.png]]

##### Plastic Deformation caused by Dislocation Motion

- Requires the successive bumping of a half-plane of atoms (left to right below)
- Bonds across the slipping planes are broken and remade in succession

![[Pasted image 20260205123534.png]]

**Slip Plane**

![[Pasted image 20260205123556.png]]

##### Defining Yield Stress

0.2% offset yield stress vs. upper and lower yield points

![[Pasted image 20260205123615.png]]

##### Yield Strength Comparison

![[Pasted image 20260205123645.png]]

```ad-important
Both ceramics and composites are hard to measure because they either have no yield strength (ceramics), or difficult to physically measure (composites)
```

#### Ultimate Stress/Tensile Strength

$$
\text{Percent Elongation} = \frac{L_{f}-L_{o}}{L_{o}}
$$
$$
\text{Percent Reduction of Area} = \frac{A_{f}-A_{o}}{A_{o}}
$$

```ad-summary
title: Defintion
The maximum stress which also indicates the overall stregnth of the material
```

- **Ductile Materials**: any materials that can be subjected to large strains before it ruptures (aka *Necking*)
- **Brittle Materials**: materials that exhibit little or no yielding before failure

##### Tensile Strength Comparision

![[Pasted image 20260205124001.png]]

##### Ductile vs Brittle Materials

![[Pasted image 20260205124038.png]]

### Material Properties Measured by Tension Test

- **Stiffness**: Elastic Modulus
- **Strength**: 
	- Yield Stress ($\sigma_y$)
	- Ultimate tensile stress ($\sigma_u$)
- **Ductility**: 
	- Percent Elongation
	- Percent reduction in area

### Resilience ($U_r$)

Ability to material to store energy in the *elastic region*

$$
U_{r}= \int_{0}^{\epsilon_{y}} \sigma d \epsilon
$$
If we assume a linear stress-strain curve, this simplifies to:

$$
U_{r} \approxeq \frac{1}{2} \sigma_{y}\epsilon_{y}
$$

### Toughness ($U_T$)

Energy to break a unit volume of material
- Approximate by the AUC of the stress-strain.

![[Pasted image 20260205124443.png]]

- *Brittle*: elastic energy
- *Ductile*: elastic + plastic energy

