
# 4.37

**Iterative Analysis**:

*Interation 1*

$$
i_{2} = \frac{1-0.7}{200} = 1.5mA
$$
$$
V_{2}=V_{1}+V_{T}\ln\left( \frac{i_{2}}{i_{1}} \right)
$$
```ad-note
Values:
- $V_1 = 0.7$
- $V_T = 25mV$
- $i_2 = 1.5mA$
- $i_1 = 1mA$
```

$$
V_{2} = (0.7)+(0.025) \ln \left( \frac{(1.5mA)}{(1mA)} \right)
$$
$$
V_{2} = 0.710
$$
*Iteration 2*

$$
i_{2} = \frac{1-(0.710)}{200} = 1.45mA
$$
$$
V_{2} = (0.7)+0.025\ln\left( \frac{1.45}{1} \right)
$$
$$
V_{2} = 0.709V
$$
*Iteration 3*

$$
V_{2} = \frac{1-0.709}{200} = 1.45mA
$$
$$
V_{2} = 0.7 + 0.025 \ln \left( \frac{1.45}{1} \right)
$$
$$
V_{2} =0.709V
$$
*Final Iteration*

$$
i_{f} = \frac{1-0.709}{200} = 1.45mA
$$
# 4.46

```ad-important
$$V_{ZT}=I_{ZT}+r_{z}I_z$$
```

# 4.47

![[Electronics - Week 9 Day 1 2024-03-25 13.25.58.excalidraw]]
# 4.61

```ad-note
title: Hint
you may use multiple diodes per diode type to get it up to the regulation voltage
```


