Date: 8th November 2024
Date Modified: 8th November 2024
File Folder: Week 11
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Electronic Supply Chain Attack Introduction
	- Conterfeit Deteciton and Avoidance

```

# Counterfeiting

## Why does it happen?

**Lucrative Business**
- Easy money
- Easy to make fake components
- Enough raw materials (ex. from recycled electronic waste)
- Copy one’s design and fabricate components without paying royalty or any R&D costs

**Criminal Activity**
- To cripple the supply chain of one countries defense system
- To contaminate one company’s repuation
- To kill the market share of one company

## Counterfeit Electronic Parts

```ad-example
1. Parts remakred or re-topped
2. Defective parts scrapped by the OCM
3. Previously used parts salvaged from scrapped assemblies
4. Devices which have been refubished, but passed off as a new product
5. Overproduced parts by the foundry
6. Clonded IP->IC
7. Forged Documentation
8. Manufacturer Reject
```

![[Pasted image 20241108140945.png]]

![[Pasted image 20241108141004.png]]

```ad-summary
title: Definition
**A counterfeit component** is an unauthorized copy. It does not conform to the OCM design, model, or performance standards. It is not produced by the OCM and often out-of-specs, defective, or used. It has inncorrect marking or documentaiton to try and sell it as legitimate.
```

### Most Counterfeited Parts

1. Analog ICs (25%)
2. Microprocessor (13.4%)
3. Memory IC (13.1%)
4. Porgrammable Logic IC (8.3%)
5. Transistor (7.6%)

```ad-warning
About a $169B annual risk
```

## Detection Standards

- SAE G-19A
- CTI CCAP-101
- IDEA-STD-1010

![[Pasted image 20241108142034.png]]

![[Pasted image 20241108142127.png]]

### Level-Based on Risk

```mermaid
flowchart LR
A(Very Low)-->B(Low)
B-->C(Moderate)
C-->D(High)
D-->E(Critical)
```

![[Pasted image 20241108142307.png]]

### Drawbacks

The standards fail to cover anything out of recycling and remarking and need many parts (sampling basis)

Test time is extremely high

The *test method*
- Can detect only physical defects

**Electrical Test Methods**: Are too simple to address the detection of counterfeit ICs

## Counterfeit Types

![[Pasted image 20241108142908.png]]

### Recycled Parts

```ad-warning
Around 80% of coutnerfeit components are recycled.
```

Only around 25% of the United States e-waste is recycled properly

**Recycled Parts**
- A genuine OCM part that is taken from scrap and resoled to developing countries or other reclaiming facilities. Components are crudely extracted form circuit boards under very high temperatures to prepare for resale.

![[Pasted image 20241108143221.png]]

### Remarking

**Remarked Parts** are either:
- Recycled
- New components (upselling the grade of the component)

**Remarking Process**
- Packages are sanded or grounded down to remove old markings
- A new coating is created and applied to the parts

### Overproduction

Semiconductors are often given as contracts in the foundry business.

**Foundry can produce mroe parts**
- Fabricate the yield data and sell the extra chips to the market
- Can produce extra chips without sending the informaiton to the design house.

![[Pasted image 20241108143450.png]]

### Out-of-Spec/Defective

**Defective Parts**
- A chip may fail at one particiular strural test pattern
- Highly unlikely that defect will appear right away, but will fail randomly.

**Out-of-Spec**
- Fail to perform at the design specification
- Can fail at extreme physical/environmental conditions.

## Supply Chain Vulnerability

![[Pasted image 20241108143652.png]]

