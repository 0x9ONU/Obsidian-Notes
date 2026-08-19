Date: 15th April 2024
Date Modified: 15th April 2024
File Folder: Week 12
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Examples

## Example 1: PMOS and NMOS connected together

```ad-question
For the PFET:
- $K_p^\prime = 10 \micro A /V^2$
- $V_{tp} = -1V$
- $\lambda_p \approxeq 0$
- $(\frac{W}{L})_2 = 10 \micro m$
For the NFET:
- $K^\prime_N = 20 \micro A/V^2$
- $V_{tn} = 1V$
- $\lambda_n \approxeq 0$
- $(\frac{W}{L})_1 = 20 \micro m$
```

![[Pasted image 20240415133137.png]]

```ad-important
Since the current flowing into the gates is approximately zero, then $I_{D1} = I_{D2}$
```
### Check Cutoffs

#### For NMOS $Q_1$

$$V_{GS} = 2V > 1\Rightarrow Q_1 \mbox{ is ON}$$
#### For PMOS $Q_2$

If we assume it is off and $Q_1$ is on, then:

$$I_{D1} = 0 \Rightarrow V_{DS} = 0 \Rightarrow V_o =0$$
$$V_{SG_2}=10V > |V_t|$$
$$10 > 1$$
```ad-note
This means $Q_2$ must be on as well
```

### Saturation of $Q_2$

Because it is a **diode-connected PMOS** (The gate and drain are connected), it must follow that since $Q_2$ is ON, it MUST be in saturation.

$$V_{D2} = V_{G2}$$
$$V_{D2} > V_{G2}-|V_{tp}|$$

### Assume Saturation for $Q_1$

$$I_{D2} = I_{D1}$$
$$\frac{K^\prime_p}{2} \frac{W}{L}(V_{SG}-|V_t|)^2 = \frac{K^\prime_n}{2} \frac{W}{L}(V_{GS}-V_t)^2$$

*Plug Values in and Put into Equation Solver*

$$V_o = 11v \space OR \space V_o = 7V$$
```ad-note
$V_o = 11V$ makes no sense since it is larger than the source voltage
```

$$\boxed{\therefore V_o = 7V}$$

### Check Saturation of $Q_1$

$$V_o = V_G$$
$$V_{GS} \ge V_{GS}-V_t$$
$$V_D \ge V_G -V_t$$
$$V_D = V_o$$
$$(7) \ge (2) - (1)$$
$$7 > 1 \space \checkmark $$
$Q_1$ is in saturation!



