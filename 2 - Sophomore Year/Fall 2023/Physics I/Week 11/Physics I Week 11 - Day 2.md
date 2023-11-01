Date: 1st November 2023
Date Modified: 1st November 2023
File Folder: Week 11
#Physics1

```ad-abstract
title: Today's Topics
collapse: open

- Torque Continued

```

# Torque

```ad-note
- $\otimes$ - Vector goes into the board (when thumb points int)
- $\odot$ - Vecotr goes out of the board (when thumb points out)
```

```ad-important
title: Net Torque
You chose which sign is given to torque coming in and going out
$$\tau^\to_{net} = \tau_1^\to + \tau_2^\to +...$$
```

## Theorem with Sum of Forces for Rotational Motion (Newton's Second Law)

$$\tau_{net} = I\alpha$$
## Examples

### Example 1:

#comebacklater ex. 1

```ad-question
Find torque due to every force. Given:
1. $F_1 = 12N$
2. $F_2 = 10N$
3. $F_3 = 8N$
4. $mg = 5N$
5. $L = 0.8m$
6. Distance between axis and $F_2$ is $0.2m$
$$ $$
Then, Find net torque to calculte the moment of inertia of this rod of mass $m=0.51kg$ and length $l = 0.8m$ about the an axis that passes thorugh the middle. Finally, calcualte the angular acceleration
```


**Find Torque Caused by First Force**

$$\tau_{F_1} = r_1 * F_1 \sin(r_1, F_1)$$
$$= 4* 12 * \sin(40) = 3.09 (N * m) \space \odot$$
```ad-note
This measn that it coems out of the board
```

**FInd Torque Caused by Second Force**

$$T_2 = r_2 * F_2 \sin(r_2^\to, F_2^\to)$$
$$= 0.2 * 10 * \sin(90) = 2 (N * m) \space \otimes$$

**Find Torque Caused by Weight

$$T_{mg} = 0 \space (because \space r=0)$$
**Find Torque Caused by Third Force**

$$T_3 = r_3 * F_3 \sin(0) = 0$$

**Find Net Torque**:

$$\tau_{net} = \tau_1 - \tau_2$$
$$\tau = 1.09 (N*m) \space \space \odot$$
**Find Moment of Inertia**

$$I = \frac{1}{12}m*L^2$$
$$I = \frac{1}{12}(0.51)(0.8)^2 = 0.027 (kg m^2)$$

**Calculate the Angular Acceleration**:

$$\tau_{net} = I * \alpha$$
$$\alpha = \frac{(1.09)}{(0.027)} = 40.4 \frac{rad}{s^2}$$

```ad-danger
THIS ANGULAR ACCELERATION IS NOT CONSTANT. IT IS AT THE INSTANT THAT ROTATION STARTS
```

### Example 2:

![[Pasted image 20231101103927.png]]

```ad-check
title: Solution
- Calculate $w$
	- $w = 2 \pi * (2.4) = 15.08 \frac{rad}{s}$
- Calculate $\alpha$
	- $\alpha = \frac{\Delta w}{\Delta t} = \frac{15.08-0}{0.2} = 75.4 \frac{rad}{s^2}$
- Calculate Moment of Inertia
	- $I = \frac{1}{3} m L^2 = \frac{1}{3} (0.9)(0.95)^2 = 0.27 (kg m^2)$
- Calculate $t_{net}$
	- $\tau_{net} = I\alpha = (0.27)(75.4) = 20.4 (N * m)$
```


