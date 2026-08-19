Date: 6th September 2023
Date Modified: 6th September 2023
File Folder: Week 3
#Circuits

```ad-abstract
title: Today's Topics
collapse: open

- Nodal Analysis

```

# Nodal Analysis

A Technique to solve for electric quantities in a circuit by finding the voltages at all nodes in the circuit.

```ad-note
Each term in a nodal equation is *electric current*
- Relies on **KCL**
```

A reference node is chosen among the nodes which is called **Ground**. 
- The voltage value of ground is zero.

```ad-important
The number of equations  = number of nodes - 1
```


## Important Notes With Nodes

```ad-hint
Always try to choose a node with *at least* 3 nodes to have different currents to check against it
```

```ad-note
ALWAYS assume that the current is flowing out of the node
```

```ad-note
The voltage potential of the node will **always** be assumed to be higher potential than everything else going away from the node
```

```ad-note
A current source is on top rather than on the bottom. Positive or negative depending on the direction.
```

```ad-warning
Ground counts as a node for number of equaitons = number of nodes - 1
```

```ad-warning
Ignore resistance for current sources
```
## Examples
```ad-example
Find the votlage $V_0$ using nodal analysis
![[CamScanner 09-08-2023 12.48_1.jpg]]
```ad-check
title: Solution
- Assign the proper nodes (See ex. 1)
- Node 1:
	- $\frac{v_1 - (6)}{2} + \frac{v_1-0}{6} + \frac{v_1-v_2}{3}=0$
	- $3v_1-18+v_1+2v_1-2v_2=0$
	- $6v_1-2v_2 = 18$ Equation $1$
- Node 2:
	- $\frac{v_2-v_1}{3} + \frac{v_2-0}{2} + 4 = 0$
	- $2v_2 - 2v_1 + 3v_2 =-24$ Equation $2$
- Use matrix form
	- ![[CamScanner 09-08-2023 12.48_2.jpg]]
- Find $v_0$
	- $v_0 = v_1 - v_2$
	- $v_0 = (1.608)-(-4.158) = 5.766 v$
```

```ad-example
Find $I_0$ using nodal analysis
![[CamScanner 09-08-2023 12.48_1 1.jpg]]
```ad-check
title: Solution
- Assign nodes $V_2$ and $V_1$ and Ground
- Node 1
	- $v_1 6$
	- First Part is a super node!
		- When there is only a single voltage source between one node and another
- Node 2
	- $\frac{v_2-v_1}{8} + \frac{v_2-0}{16} + \frac{V_2}{24} = 0$
	- $6v_2-6v_1+3v_2+2v_2 = 0$
	- $-6v_1+11v_2=0$
- Substitute node 1 into node 2
	- $-6(6)+11v_2 = 0$
	- $11v_2=36$
	- $v_2=3.27v$
- FInd Current $I_0$
	- $\frac{v_2}{24}$
	- $\frac{3.27}{24}$
	- $I_0 = 0.136 A$
```






