Date: 24th January 2023
Date Modified: 2nd February 2023
File Folder: 6.1 - Inverse Functions + Derivates

```ad-abstract
title: Today's Topics
collapse: open

- Functions
- Onto Functions
- One-To-One Functions
- Horizontal Line Test

```

## Functions

Every element of one set should match to **only** one element of another set

```ad-info
title: Example: Not a Function
color: 225, 120, 0
collapse: open

**A** cannot be set to two different values

![[Drawing 2023-02-02 16.42.55.excalidraw]]

```


```ad-info
title: Example: Is a function
collapse: open

Each value of Set 1 is set to a single element in set 2

![[Drawing 2023-02-02 16.54.51.excalidraw]]

```


## Onto Functions

When a function $f: x => y$ if every eleemtn in $y$ has a preimage in $x$

```ad-info
title: Example: One-To-One
collapse: open

Every element in set 2 has a pre-image in set 1
(One value in set 1 can pre-image set 2)

![[Drawing 2023-02-02 17.01.39.excalidraw]]


```



## One-To-One Functions

A function that never takes on the same value twice. 

Each Element of $x$ maps to a *unique* element of $y$.

$f(x_1) \ne f(x_2)$ whenever $x_1 \ne x_2$

```ad-tip
Each element of $x$ is mapped to a new elemtn each time
```

```ad-example
title: Example of One-To-One Functions


```functionplot
---
title: y = x
xLabel: 
yLabel: 
bounds: [-5,5,-5,5]
disableZoom: false
grid: true
---
y = x
```

```ad-example
title: Example of One-To-One Function 2

```functionplot
---
title: y = x^3
xLabel: 
yLabel: 
bounds: [-5,5,-5,5]
disableZoom: false
grid: true
---
y = x^3

```

## Horizontal Line Test

**Most simple way** to find whether a function is one-to-one or not

If *one horizontal line* is able to be drawn on a fucntion where it intersects at **two or more points**, the function is NOT one-to-one.

```ad-example
title: Example: Horizontal Line Test

At least one horizontal line intersects at two or more points of a funciton, so $y = x^2$ is NOT one-to-one


```functionplot
---
title: y = x^2
xLabel: 
yLabel: 
bounds: [-10,10,-10,10]
disableZoom: false
grid: true
---
f(x) = x^2
g(x) = 1
```

```ad-important
**ONLY** one-to-one funcitons are invertable
```


```ad-question
collapse: open
Is the function $f(x) = \sqrt{x}$ a one-to-one function?


```ad-check
title: Answer
collapse: open
By the horizontal line test $f(x) = \sqrt{x}$ is one-to-one

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [-10,10,-10,10]
disableZoom: false
grid: true
---
f(x)=sqrt(x)
g(x)=1
z(x)=2
```

```ad-question
Is the function $f(x) = x^2 + 4$ one to one?
collapse: open

```ad-check
title: Answer
collapse: open
By the horizontal line test, the given fucntion is NOT one to one

```functionplot
---
title: f(x) = x^2 + 4
xLabel: 
yLabel: 
bounds: [-10,10,-10,10]
disableZoom: false
grid: true
---
f(x) = x^2 + 4
g(x) = 5
```

```c++
int main()
{
	for (int i = 0; i =< 100; i++)
	{
		cout << "balls";
	}
}
```



