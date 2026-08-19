Date: 19th March 2026
Date Modified: 19th March 2026
File Folder: Lecture 11
#matsci

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Dislocation Motion & Plastic Deformation

Instead of all bonds on a plane, only the bonds along dislocation lines are broken


![[Pasted image 20260319120802.png]]

## Dislocations and Slip Planes

```ad-important
A dislocation moves along a *slip plane* in a *slip direction* perpendicular to the dislocation line
```

![[Pasted image 20260319120838.png]]

![[Pasted image 20260319120852.png]]

# Single-Crystal Metals Plastic Deformation

When a force acts perpendicular (or “normal”) to the surface of an boject, it exerts a *normal stress:* $\sigma$

When a force acts parallel to the surface, it exerts a *shear stress*: $\tau$

$$
\tau = \sigma \cos \theta \cos \phi
$$
![[Pasted image 20260319121040.png]]

## Critical Resolved Shear Stress, $\tau_{\text{CRSS}}$

Condition for dislocation motion:
- Ease of dislocation motion depends on *crystallographic orientation*
- Typical for tensile strength tests

![[Pasted image 20260319121249.png]]

```ad-note

$$
\tau > \tau_{\text{CRSS}} \approx 10^{-4} \to 10^{-2} GPa
$$
```

## Single Crystal Slip Example

![[Pasted image 20260319121439.png]]

## Process of Slip

**Resolved Shear Stress**:

$$
\tau = \sigma \cos \theta \cos \phi
$$

**Critcal Resolved Shear Stress**

$$
\tau_{\text{{CRSS}}}=\sigma_{y} \cos \theta \cos \phi
$$

```ad-important
If the resolved shear stress is greater than critical resolved shear stress, plastic deformaiton occurs in metals
```

## Deformations in Real Crystals

```ad-summary
In real crystals, *slip* occurs on close-packed planes an din close-packed directsion in what are known as **slip systems**
```

![[Pasted image 20260319121703.png]]

## Mechanisms of Deformation

**Slip Plane**: A plone on which easiest slippage occurs; planes with highest planar densities

**Slip Direction**: Direction of dislocation movement; directions with the highest linear densities

![[Pasted image 20260319121819.png]]

**FCC Slip**:
- Occurs on $\{ 111 \}$ plane family
- In the $\left < 110 \right >$ family of directions
- *12 slip systems in FCC*

**BCC**:
- 12 or 24 systems

**HCP**:
- 3 or 6 systems

```ad-important
More slip systems $\to$ more ductility
```

## Planar Density and Linear Density

$$
PD = \frac{\text{number of atoms on a plane}}{\text{area of the plane}}
$$

$$
LD = \frac{\text{number of atoms on a direction}}{\text{length of the direction vector}}
$$

# Slip Motion in Polycrystals

Slip planes and directions will change from on grain to another
- $\tau_{R}$ will vary from one grain to another
- The grain with the largest $\tau$ will yield first
- Other (less favorably oriented) crystals yield later
- Grain boundaries pin deformations $\to$ **STRONGER**

![[Pasted image 20260319123521.png]]

# Fracture

- Deformation is when the material changes shape
- Fracture happens when the material finally breaks

![[Pasted image 20260319123541.png]]

## Types of Fractures

**Metals**:
- Dislocation motion is easiest
- Non-directional bonding
- Close-packed directions for slip

![[Pasted image 20260319123811.png]]

**Covalent Ceramics**:
- Motion is difficult
- Directional (angular bonding)

![[Pasted image 20260319123817.png]]

**Ionic Ceramics**:
- Motion is difficult
- Need to avoid nearest neighbors of like sign (- and +)

![[Pasted image 20260319123824.png]]

## Stress on Different Planes Under Various Loading Condition

![[Pasted image 20260319123917.png]]

```ad-important
- Brittle fracture fails at tensions at a 90 degree angle
- Ductile fracture fails due to shear at 45 degree angles
```

![[Pasted image 20260319124011.png]]

## Torsional Loading

**Ductile Material**:
- Generally fail in shear
- Ductile specimen breaks along the plan of maximum shear
- Fails at *90 degrees*

![[Pasted image 20260319124054.png]]

**Brittle Material**:
- Weaker in tension
- Brittle specimen breaks along planes perpendicualr to the direction in which tension is maxium
- Along surfaces at a 45 degree to the shift axis

![[Pasted image 20260319124137.png]]

## Fracture Mechanism

**Ductile**: Accompanied by significant plastic deformation

**Brittle**: LIttle or no plastic deformation (Catastrophic)

![[Pasted image 20260319124220.png]]

### Example: Pipe Failures

![[Pasted image 20260319124550.png]]

### Moderately Ductile Failure

![[Pasted image 20260319124618.png]]

![[Pasted image 20260319124703.png]]

### Brittle Failure

![[Pasted image 20260319124759.png]]

![[Pasted image 20260319124809.png]]

## Concentration of Stress at Crack Tip

![[Pasted image 20260319124921.png]]

The sharper the crack tip, the greater the stress concentration at the crack tip

### Griffith Crack

![[Pasted image 20260319125001.png]]

$$
\sigma_{max}= 2 \sigma_{o}\left( \frac{a}{\rho_{t}} \right)^{1/2}=K_{t} \sigma_{o}
$$

where:
- $p_{t}$ = radius of curvature
- $\sigma_{o}$ = applied stress
- $\sigma_{max}$ = stress at crack tip

$$
K_{t}= \frac{\sigma_{max}}{\sigma_{o}}
$$

```ad-warning
AVOID SHARP CORNERS!
```

![[Pasted image 20260319125154.png]]

### Crack Propagation

Crack propagate due to the sharpness of crack tip
- A plastic material deforms at the tip, “blunting” the crack

![[Pasted image 20260319125259.png]]

**Energy Balance on the Crack**
- Elastic strain energy
- Energy stored in material as it is elastically deformed
- This energy is released when the crack propagates
- Creation of new surfaces requires energy

### Design Against Crack Growth

$$
\text{Fracture Toughness} \Rightarrow K = Y\sigma_{o} \sqrt{ \pi a } = K_{IC}
$$
Largest, most stressed cracks grow first!
- $K_{IC}$ - plain strain fracture toughness (material property)
- $Y$ - dimensionless parameter (usually $Y \approx 1$)
- $\sigma_{o}$ - applied stress
- $a$ - length for a surface flaw, ($2a$ for internal flaw)

![[Pasted image 20260319125538.png]]

```ad-important
The fracture toughness of a mateiral changes as the geometry changes untila point is reached where plan strain prevails and the value of $K$ levels off at $K_{IC}$, a property of the material independent of the geometry
```

![[Pasted image 20260319125647.png]]

## Ceramic Brittle Fracture

Characteristic Behavior:
- Origin point
- Initial region (mirror) is flat and smooth
- After reaches critical velocity, the crack branches
	- Mist
	- Hackle

![[Pasted image 20260319130428.png]]

## Crazing During Fracture and Thermoplastic Polymers

Craze formation prior to cracking
- During crazing, plastic deformation of spherulites
- Formaiton of microvoids and fibrillar bridges

![[Pasted image 20260319130513.png]]

