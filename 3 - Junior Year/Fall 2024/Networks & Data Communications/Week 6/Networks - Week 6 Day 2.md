Date: 2nd October 2024
Date Modified: 2nd October 2024
File Folder: Week 6
#networks

```ad-summary
title: Today's Topics
- Exam Practice Questions
```

# Question 1

```ad-question
The following hosts are connected with routers in a network. Find the IPO addresses of all the devices below You may use any number of switches:
1. Draw the network diagram
2. Label teh routers' interfaces
3. Label the correct type of cables
4. Write the default gateway of all the hosts.
```

**Host A**: `195.10.1.10/21` $\rightarrow$ `195.10.0.0/21` $\rightarrow$ *DG*: `195.10.3.30/21`

**Host B**: `195.10.49.10/21` $\rightarrow$ `195.10.48.0/21` $\rightarrow$ *DG*: `195.10.52.100/21`

**Host C**: `195.10.25.25/21` $\rightarrow$ `195.10.24.0/21` $\rightarrow$ *DG*: `195.10.28.10/21`

**Host D**: `195.10.50.30/21` $\rightarrow$  `195.10.48.0/21` $\rightarrow$ *DG*: `195.10.52.100/21`
 
**Host E**: `195.10.2.20/21` $\rightarrow$ `195.10.0.0/21` $\rightarrow$ *DG*: `195.10.3.30/21`

**Host F**: `195.10.51.50/21` $\rightarrow$ `195.10.48.0/21` $\rightarrow$ *DG*: `195.10.52.100/21`

**Host H**: `195.10.62.50/21` $\rightarrow$ `195.10.56.0/21` $\rightarrow$ `195.10.60.100/21`

**Router 1:**
1. fa0/0: `195.10.3.30/21` $\rightarrow$ `195.10.0.0/21`
2. fa0/1: `195.10.9.10/21` $\rightarrow$ `195.10.8.0/21`
3. fa0/2: `195.10.85.50/21` $\rightarrow$ `195.10.80.0/21`

**Router 2:**
1. fa0/0: `195.10.28.10/21` $\rightarrow$ `195.10.24.0/21`\
2. fa0/1: `195.10.52.100/21` $\rightarrow$ `195.10.48.0/21`
3. fa0/2: `195.10.10.10/21` $\rightarrow$ `195.10.8.0/21`
4. fa0/3: `195.10.17.50/21` $\rightarrow$ `195.10.16.0/21`

**Router 3:**
1. fa0/0: `195.10.60.100/21` $\rightarrow$ `195.10.56.0/21`
2. fa0/1: `195.10.20.20/21` $\rightarrow$ `195.10.16.0/21`
3. fa0/2: `195.10.81.10/21` $\rightarrow$ `195.10.80.0/21`

![[Networks - Week 6 Day 2 2024-10-02 09.34.12.excalidraw]]

