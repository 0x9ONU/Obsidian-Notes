Date: 26th February 2026
Date Modified: 26th February 2026
File Folder: Lecture 9
#matsci

# Fatigue

## Intro Example: Broken Shaft from P&G

The shaft failed at a much lower load than expected
- Caused due to a fatigue fracture

![[Pasted image 20260226120339.png]]

![[Pasted image 20260226120410.png]]

## Definition

```ad-summary
Fatigue occurs in structures subjected to both dynamic and fluctuating stresses, it is possible for failure to occur at a stress level considerably lower that the tensile or yield strength for a static load.
```

As the shaft experiences an *unbalanced cyclical load*, over time the failure crack initiates from a weak spot where there is stress concentration.
- The **“beachmark ridges”** are indicators of fatigue.

## Cyclical Stresses that Result in Fatigue Failure


![[Pasted image 20260226120732.png]]

Stress vaires with the time
- $S$ → Stress Amplitude or Alternating Stress
- $\sigma_{m}$ → Mean stress
- Frequency → Cycles over time

Fatigue Failure occurs due to *cyclical stresses*
- Can cause part fialure, even though $\sigma_{max}< \sigma_{uts}$
- Causes around 90% of part failures

## Constant Amplitude Cycles

![[Pasted image 20260226120933.png]]

$$
\text{Stress Amplitude} \Rightarrow \sigma_{a}=S=\frac{\sigma_{r}}{2}= \frac{\sigma_{max}-\sigma_{min}}{2}
$$
$$
\text{Mean Stress} \Rightarrow \sigma_{m}= \frac{\sigma_{max}+\sigma_{min}}{2}
$$
$$
\text{Stress Range} \Rightarrow \sigma_{r}=\sigma_{max}- \sigma_{min}
$$

```ad-note
The stress we compare to the endurance limit is combination of stress amplitude and mean stress.
```

## S-N Curve: A Material’s Susceptibility to Fatigue

![[Pasted image 20260226121248.png]]

**Fatigue Limit ($S_{fat})$** or **Endurance Limit ($S_e$)**
- Not fatigue failure if $\sigma < S_{e}$

For steels, some ferrous and titanium alloys have near *infinie life* → $10^6 \text{ Cycles}$

### Endurance Limits for Non-Ferrous Alloys

![[Pasted image 20260226121611.png]]

Most nonferrous alloys such as Al, Cu, Mg
- **Design Goal**: $5 \times 10^8$ cycles

### Fatigue Limits of Polymers

```ad-note
Depends on the polymer
- Fatigue Limit: PMMA, PP, PE
- No Fatigue Limit: PET, Nylon (dry)
```

![[Pasted image 20260226121755.png]]

## Fatigue Mechanism

```ad-important
Cracks grow incrementally
```

Failed rotating shaft
- Failed Rotating even though $K_{max}<K_{c}$
- Crack grows faster as
	- $\Delta \sigma$ increases
	- Cracks get longer
	- Loading feq. increases
	- Tensile means stress

![[Pasted image 20260226121954.png]]

## Improving Fatigue Life

**Method 1**: Impose a compressive surface stress (to suppress surface cracks from growing)
- *Shot Peening*: hitting the surface with a bunch of small bbs
- *Carburizing*: Hitting the surface with a carbon-rich gas

![[Pasted image 20260226122105.png]]

**Method 2**: Remove Stress Concentrators

![[Pasted image 20260226122130.png]]

**Method 3**: Polish the surface

**Method 4**: Avoid tensile residual stress (eg. Composites)

# Time Dependent Strain Phonomena

## Introduction

After a casr door has been left open for a long time, the door can not be closed properly. However, no corrosion is observed. *The hinges **creeped** and cause the deformation!*

## Creep

**Primary Creep**: Slope (creep rate) decreases with time

**Secondary Creep**: Steady-state
- Constant slope

**Tertiary Creep**: Slope (creep rate) increases with time
- Acceleration of the rate

![[Pasted image 20260226122800.png]]

### Possible Mechanisms 

**Metals**:
- Diffusional flow fo vacancies
- Sliding of grain boundaries

**Polymers**:
- Molecualr chains in polymer slide past one another in a time-dependent manner
- Viscous flow

## Time-Dependent Strain Phenomenon

![[Pasted image 20260226123304.png]]

### From Other Sources

- Creep occurs when metals are reuqired to operate at tmeperatures above 30 to 40% of thier absolute melting point
- Rapid creep of polymers occurs at 30-40% of their glass transition temperature
- Creep of heat-resistant ceramic materials starts above 40-50% of their melting temperature (in Kelvin)

### Stress Relaxation in Polymers

- Strain in tensijon to $\epsilon_{o}$ and hold
- Observe decrease in stress with time

![[Pasted image 20260226123808.png]]

$$
E_{r}(t)=\frac{\sigma(t)}{\epsilon_{o}}
$$
## Time-Dependent Deformation

![[Pasted image 20260226123850.png]]

**Representative $T_{g}$ values ($\degree C$)

| Material          | Temperature |
| ----------------- | ----------- |
| PE (high Density) | -110        |
| PE (High Density) | -90         |
| PVC               | +87         |
| PS                | +100        |
| PC                | +150        |
### Influence of $T$ and Strain Rate

Decreasing $T$
- Increases $E$
- Increases $S_{uts}$
- Decreases $\%EL$

Increasing Strain Rate
- Same effects as decreasing $T$

![[Pasted image 20260226124641.png]]

``