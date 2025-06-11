Date: 3rd June 2025
Date Modified: 3rd June 2025
File Folder: Kanban
## Publication Information

**Database:** IEEE Xplore

**DOI**: [10.1109/ICACCCN.2018.8748710](https://doi.org/10.1109/ICACCCN.2018.8748710)

**Authors**: Manish Kumar Singh; Syed Intekhab Amin; Syed Akhtar Imam; Vibhav Kumar Sachan; Amit Choudhary

**Publication Year**: 2018

**Country of Study**: India

**Tags**: #wsn #networks #topology #wireless #robots #basestations #adc #sensornode #radio #processing #mesh #singlehop

```ad-abstract
title: Abstract
collapse: open
In the past several years there is a fast development in the area of WSN. For cheap wireless communication, hundreds or thousands of sensor nodes and a base station (sink) have formed a new network that is called a wireless sensor network. Nodes and Base station are placed in large area. This paper describes a concise introduction to WSNs architecture, possible topologies and measurement of physical parameters through crossbow tool. Afterward, the paper highlights the types of WSN and its applications.
```

**Embed to Paper**: [[A_Survey_of_Wireless_Sensor_Network_and_its_types.pdf]]

## Summary
### Section I: Introduction

**WSN**:
- Can sense, process, communicate, and store data
- Consists of one *sink node* and a large number of sensor nodes placed over one big area
- single or multi-hop to get from one place to another

![[Pasted image 20250604164308.png | center]]

### Section II: Block Diagram

*Four Main Parts*:
1. Sensing Unit
	- Sensors
	- ADC
2. Processing unit
3. Transceiver
4. Power Unit

![[Pasted image 20250604164506.png]]

### Section III: Observation of Physical Parameters Through WSN

![[Pasted image 20250604165919.png]]

![[Pasted image 20250604165939.png]]

### Section IV: Design Challenges of WSNs

1. Limit Power Consumption
2. Limit Production Cost
3. Energy-Efficient Hardware
4. Computational Power and Memory Size
5. Security

```ad-important
It is difficult to identiyf wehther the informaiton is authenticated or not
```

6. Operating Environment

### Section V: Topologies

| Topology           | Central Node? | Notes                                                                                                                                                   | Diagram                              |
| ------------------ | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| **Point-to-Point** | NO            | Very popular and has only *one channel*. Every node is a client OR a server                                                                             | ![[Pasted image 20250604170622.png]] |
| **Star Network**   | YES           | No direct communication between nodes and MUST be done through a single hub node                                                                        | ![[Pasted image 20250604170647.png]] |
| **Tree Network**   | YES           | A combination of PTP and star networks. A single root parent node exists that has leaf nodes that can have their own leaf nodes. *Consumes less  power* | ![[Pasted image 20250604170806.png]] |
| **Mesh Network**   | NO            | All nodes directly communicate with each other without using a central hub. Most reliable, BUT most expensive in complexity and power.                  | ![[Pasted image 20250604170818.png]] |
### Section VI: Types of WSNs

![[Pasted image 20250604171015.png]]

| Type                                              | Description                                                                                                                                                                                                                         |
| ------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Mobile Wireless Sensor Networks (MWSNs)**       | Has *mobile* sensor nodes that can adapt and change with sudden topology changes                                                                                                                                                    |
| **Underwater Wireless Sensor Networks (UWSNs)**   | **DIFFICULT**: Try to utilize either radio frequencies and acoustic waves, which do not provide good bandwidth or error rate. Optical communication in the green/blue wavelengths seems promising for short-distance communication. |
| **Underground Wireless Sensor Networks (UgWSNs)** | Transmits ground information upwards towards the surface                                                                                                                                                                            |
| **Wireless Multimedia Sensor Networks (WMSNs)**   | Traffic management, weather monitoring. NEES effective communication of analog signals including audio, video, and images. High bandwidth and high power consumption.                                                               |
| **Terrestrial Wireless Sensor Networks(TWSNs)**   | Has hundreds of nodes that are placed in a geographical area. Typical in solar energy harvesting. Uses FSO, LOS, or RF                                                                                                              |
```ad-warning
title: Static WSN Issues
1. The connectivity of the entire network and full coverage of the sensing field are not always possible
2. Larger nodes over a wider are needed for tracking applications
3. An application might need variable levels of node power.
```

```ad-example
**Attributes of WSNs**
1. Self-healing
2. Scalability
3. Self-organization
4. Energy Efficiency
5. Adequate Degree of Connectivity among nodes
6. Low cost
7. Low-complexity
```

### Section VII: Comparison Between Different Types of WSNs

![[Pasted image 20250604172515.png]]




