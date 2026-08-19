Date: 25th April 2025
Date Modified: 25th April 2025
File Folder: Week 13
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Homework 5 Hints

![[HWSW - Week 13 Day 3 2025-04-25 11.11.13.excalidraw]]

$$G = g_1 \times g_2 \times g_3$$
$$H = \frac{C_{out}}{C_{in}}$$
$$B = b_1 \times b_2$$
$$F= G \times B \times H$$
$$\hat f = \sqrt[N]{F}$$

$$D = N \hat f+P$$
$$\hat f = g \times \frac{c_{out}}{c_{in}}$$
$$c_{in} = \frac{g\times c_{out}}{\hat f}$$

$$N_{best} = \log_4 F$$

# Reducing Switching Power

1. **Voltage Scaling**: Lower $V_{DD}$ quadratic reduction of power
	- Watch out for reduced noise margins and speed
2. **Clock Gating**: Disable clocks to idle logic blocks
	- Avoid unnecessary transitions
3. **Capacitance Reduction**:
	- Optimize layout to reduce wiring and parasitics
	- Use smaller gates or buffers with fewer fanouts.
4. **Activity Reduction**: Use efficient algorithms and datapaths
	- Lower toggle rate
5. **DVFS**: Adjust $V_{DD}$ and frequency on the fly based on workload
6. **Power Gating During Idle**:
	- Disconnect entire blocks when inactive
	- Reduces both switching and leakage
## Techniques

**High-Threshold Voltage Transistors**
- Use for non-critical paths → Reduces subthreshold leakage.

**Stack Effect (Transistor Stacking)**
- Series “off” transistors → Intermediate nodes reduce leakage current.

**Multi-Vth Design**: Mix high-Vth(low-leakage) and low-Vth (high-speed) in the same design.



