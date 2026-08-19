Date: 16th April 2025
Date Modified: 16th April 2025
File Folder: Week 12
#hwsw

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Determining Best Number of Gates in a Pass

```ad-question
How many stages should a path use?
- Minimizing the number of stages, as taught in Digital Logic, is *not* always the fastest
```

$$D = NF^{1/N}+P$$
$$= N(64)^{1/N}+N$$

![[Pasted image 20250416110953.png | center]]

```ad-note
$F = G\times B \times H$
```

## Derivation

Consider adding inverters to the end of the path

![[Pasted image 20250416111313.png | center]]

$$D = NF^{\frac{1}{N}}+ \sum_{i=1}^{n_1}p_i+(N-n_1)\rho_{inv}$$
$$\frac{\delta D}{\delta N} = -F^{\frac{1}{N}}\ln F^{\frac{1}{N}}+F^{\frac{1}{N}}+\rho_{inv} = 0$$

Given that the best stage effort is where $\rho = F^{\frac{1}{N}}$

$$\boxed{\rho_{inv}+p(1-1\ln \rho)=0}$$
## Definition Review


| Term              | Stage                                              | Path                                   |
| ----------------- | -------------------------------------------------- | -------------------------------------- |
| number of stages  | 1                                                  | $N$                                    |
| logical effort    | $g$                                                | $G = \prod g_i$                        |
| electrical effort | $h = \frac{C_{out}}{C_{in}}$                       | $H = \frac{C_{out-path}}{C_{in-path}}$ |
| Branching effort  | $b = \frac{C_{on-path}+C_{off-path}}{C_{on-path}}$ | $B = \prod b_i$                        |
| Effort            | $f = gh$                                           | $F = GBH$                              |
| Effort delay      | $f$                                                | $D_F = \sum f_i$                       |
| Parasitic delay   | $p$                                                | $P = \sum p_i$                         |
| Delay             | $d = f + p$                                        | $D = \sum d_i = D_F + P$               |

## Method of Logical Effort

1. Compute the path effort $\quad \quad \quad \quad \space F = GBH$
2. Estimate best number of stages $\quad N = \log_4F$
3. Sketch path with $N$ stages
4. Estimate least delay                               $D = NF^{\frac{1}{N}}+P$
5. Determine best stage effort               $\hat f = F^{\frac{1}{N}}$
6. Find gate sizes                                          $C_{in_i}=\frac{g_iC_{out_i}}{\hat f}$

