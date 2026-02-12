Date: 12th February 2026
Date Modified: 12th February 2026
File Folder: Lecture 6
#matsci

# Types of Materials

## Isotropic vs. Anisotropic


| Isotropic                             | Anisotropic                                    |
| ------------------------------------- | ---------------------------------------------- |
| Properties same for all directions    | Properties vary with direction                 |
| Grains randomly oriented polycrystals | Single crystal; grains textured polycrystals   |
| Steel, Aluminum                       | Wire reinforced concrete, biological materials |

![[Pasted image 20260212121753.png]]

![[Pasted image 20260212121811.png]]

### Orthotropic Material

```ad-summary
title: Definition
A type of anisotrophy where material properties differ along three *orthographic* axes
```

![[Pasted image 20260212122225.png]]

## Crystals as Building Blocks

*Some* engineering applicaitons require single crystals:
- Diamond single crystals for abrasives
- Turbine blades

```ad-important
Properties of crystalline materials often related to crystal structure
```

```ad-example
Quartz fractures more easily slong some crystal planes than others
```

### Single vs Poly Crystals


| Single                                               | Poly                                                                   |
| ---------------------------------------------------- | ---------------------------------------------------------------------- |
| Properties vary with direction: *anisotropic*        | Properties *may/may not* vary with direction                           |
| Example: The moduluous of elasticity (E) in BCC iron | If grains are randomly oriented: isotropic<br>If textured, anisotropic |
| ![[Pasted image 20260212122630.png]]                 | ![[Pasted image 20260212122704.png]]                                   |

### Most are Polycrystals

![[Pasted image 20260212122853.png]]

```ad-example
Niobium, hafnium, and tungsten plate with an electron beam weld
```

- Each “grain” is a single crystal
- If randomly oriented, overall component properties are not directional
- Grain sizes typically range form 1nm to 2cm

## Elastic Properties

**Longitudintal Strain**:

$$
\epsilon_{long}= \frac{\Delta l}{l_{o}}= \frac{l-l_{o}}{l_{o}}
$$
**Lateral Strain**:

$$
\epsilon_{lat}= \frac{\Delta d}{d_{o}}= \frac{d-d_{o}}{d_{o}}
$$

![[Pasted image 20260212123142.png]]
**Shear Strain**
$$
\gamma = \frac{\Delta x}{\Delta y}= \tan \theta
$$

![[Pasted image 20260212123152.png]]

### Poisson’s Ratio

$$
\nu = -\frac{\epsilon_{lat}}{\epsilon_{long}}
$$
$$
\nu = -\frac{\omega - \omega_{o}/\omega_{o}}{(l-l_{o})/l_{o}}
$$

**Ranges from 0.25 to 0.4 and $\le$ 0.5**
- Metals: 0.25-0.35
- Ceramics: 0.25
- Polymers: 0.4

### Shear Modulus, $G$

$$
\tau = G \gamma
$$

![[Pasted image 20260212123524.png]]

**For isotropics**

$$
G = \frac{E}{2(1+\nu)}
$$

### Bulk Modulus

```ad-summary
Measures the resistance to bulk compression (i.e. pressure)
```

$$
K = \frac{E}{3(1-2 \nu)}
$$

**Pressure**

$$
P = -K \frac{\Delta V}{V_{o}}
$$

![[Pasted image 20260212124631.png]]

#### Why is Poisson’s Ratio Less than 0.5?

When $\nu = 0.5$
$$
K = \frac{E}{3(1-2 \nu)}= \frac{E}{0} = \infty
$$
$$
P = \infty \Rightarrow \text{Material is Incompresible}
$$

This is *not possible*!

## True Stress-True Strain

```ad-summary
The geometry of the sample changes during testing. This is measured using *true* stress and strain
```

**True Stress**

$$
\sigma_{T}=\frac{P}{A_{i}}=\sigma(1+ \epsilon)
$$
**True Strain**

$$
\epsilon_{T}= \ln(1+ \epsilon)
$$

![[Pasted image 20260212125444.png]]

```ad-note
What happens if our strain is given in micro-strain?
*Convert it to strain multiplying by it by $10^-6$ FIRST*
```
### When is it used?

Primarily in certain manufacturing processes that use forces to permanently shape a material:

![[Pasted image 20260212125621.png]]

### Strain Hardening Exponent

For some metals and alloys from onset plastic deformation (yielding) to the point at which necking begins ($N$) can be described with:

$$
\sigma_{T}= K \epsilon_{T}^n
$$
Where $n$ and $K$ are material constants:
- A strain-hardening exponent
- **WARNING** K is not the bulk modulus here

A high $n$ means high form-ability
- ie a great capacity to be formed
- Ensures that materials can be bent and stretched in a stamping die


