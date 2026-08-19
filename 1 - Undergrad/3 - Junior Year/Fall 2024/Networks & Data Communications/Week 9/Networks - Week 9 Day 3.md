Date: 25th October 2024
Date Modified: 25th October 2024
File Folder: Week 9
#networks

```ad-summary
title: Today's Topics
- Topic 1
- Topic 2
- Topic 3
```

# VLAN Design Problems

## Practice Problem 1

```ad-question
There are four hosts and two routers in a network. Find below the IP addresses of all devices. The subnet mask of the network `255.255.240.0`. You may use an unlimited number of switches
1. Draw the network diagram
2. Label routers' interface
3. Label the connecting cables with the correct types
4. Write the default gateway of all hosts.
5. Write the defualt gateway of all hosts in the dable below
```

| Host/Interface | IP                                                                    | Default Gateway |
| -------------- | --------------------------------------------------------------------- | --------------- |
| Host A         | `10.10.20.0`                                                          | `10.10.25.0`    |
| Host B         | `10.10.30.0`                                                          | `10.10.25.0`    |
| Host C         | `10.10.60.0`                                                          | `10.10.50.0`    |
| Host D         | `10.10.70.0`                                                          | `10.10.75.0`    |
| Router1        | fa0/0: `10.10.25.0`<br>fa0/1: `10.10.35.0`                            |                 |
| Router2        | fa0/0.1: `10.10.50.0`<br>fa0/0.2: `10.10.75.0`<br>fa0/1: `10.10.45.0` |                 |

**Network `10.10.0.0`**

**Network `10.10.16.0`**
- Host A
- Host B
- R1 fa0/0
**Network `10.10.32.0`**
- R1 fa0/1
- R2 fa0/1
**Network `10.10.48.0`
- Host C
- R2 fa0/0.1
**Network `10.10.64.0`**
- Host D
- R2 fa0/0.2
**Network `10.10.80`**

```ad-important
To differentiate this problem between module one and module three, you will see the subinterfaces as seen on Router2
```

![[Pasted image 20241025091612.png]]

## Practice Problem 2

```ad-question
There are six hosts and three routers in a network. Find below the IP addresses of all the devices. You may use unlimited number of switches
1. Draw the network diagram
2. Label the ports of routers
3. Label the correct type of cables
4. Write the default gateway of all the hosts
```


| Host/Inteface | IP address                                                                                                    | Default Gateway |
| ------------- | ------------------------------------------------------------------------------------------------------------- | --------------- |
| Host A        | `10.10.10.10/28`                                                                                              | `10.10.10.14`   |
| Host B        | `10.10.10.40/28`                                                                                              | `10.10.10.45`   |
| Host C        | `10.10.10.75/28`                                                                                              | `10.10.10.70`   |
| Host D        | `10.10.10.50/28`                                                                                              | `10.10.10.60`   |
| Host E        | `10.10.10.20/28`                                                                                              | `10.10.10.30`   |
| Host F        | `10.10.10.90/28`                                                                                              | `10.10.10.85`   |
| Router 1      | fa0/0: `10.10.10.110/28`<br>fa0/1.4 `10.10.10.45/28`<br>fa0/1.5 `10.10.10.60/28`<br>s0/1: `10.10.10.140/28`   |                 |
| Router 2      | fa0/0: `10.10.10.70/28`<br>fa0/1: `10.10.10.85/28`<br>s0/1: `10.10.10.115/28`<br>s0/2: `10.10.10.130/28`      |                 |
| Router 3      | fa0/0: `10.10.10.100/28`<br>fa0/1.2: `10.10.10.14/28`<br>fa0/1.3: `10.10.10.30/28`<br>s0/1: `10.10.10.125/28` |                 |
**Network `10.10.10.0`**:
- Host A
- R3 fa0/1.2
**Network `10.10.10.16`**:
- Host E
- R3 fa0/1.3
**Network `10.10.10.32`:**
- Host B
- Router 1 fa0/1.4
**Network `10.10.10.48`**:
- Host D
- R1 fa0/1.5
**Network `10.10.10.64`**
- Host C
- R2 fa0/0
**Network `10.10.10.80`**
- Host F
- R2 fa0/1
**Network `10.10.10.96`**:
- R1 fa0/0
- R3 fa0/0
**Network `10.10.10.112`**:
- R2 s0/1
- R3 s0/1
**Network `10.10.10.128`**:
- R2 s0/2
- R1 s0/1

![[Pasted image 20241025093008.png]]

## Practice Problem 3

```ad-question
Find below the IP addresses of all the hosts. Design the network to connect all the hosts using least number of swtiches and/or routers as well as least number of cables
1. Draw the network diagram
2. Label all the interfaces
3. Label the type of devices nad type of cables
4. Write the default gateway of all the hosts
5. Describe your design and explain how it uses least number of network devices
```

### Step 1: Find Networks

**Network `10.10.10.0`**
- Host A
- Host B
- R1 fa0/0.10 (`10.10.10.1`)

**Network `10.10.10.32`**:
- Host C
- Host D
- Host E
- R1 fa0/0.20 (`10.10.10.33`)

**Network `10.10.10.64`**
- Host F
- Host G
- R1 fa 0/0.30 (`10.10.10.65`)

**Network `10.10.10.96`**
- Host H
- Host I
- Host J
- R1 fa0/0.40 (`10.10.10.97`)

![[Pasted image 20241025093649.png]]

```ad-note
title: Design Description
- Used VLANs
- Assigned VLAN to each subnet
- Connected all Hosts to respective VLANs on 1 switch
- Only one router si required to link all hosts (VLANs)
- Only one switch is required
- Used trunking, thus only one cable is required from switch to router
```

