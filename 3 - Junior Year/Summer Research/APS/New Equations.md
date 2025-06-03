## $R_{max}$ 

### without Logarithmic

$$R_{max} = - \frac{T}{C\ln(1-\frac{1}{2^{n+1}})}$$

### *with* Logarithmic
$$G_1(V_{cc}-V_{cc}e^{\frac{-T}{R_{max}C}}) = \frac{\frac{V_{cc}}{2^n}}{2}$$

$$1-e^{\frac{-T}{R_{max}C}} = \frac{1}{2^{n+1}G_1}$$
$$\boxed{R_{max} =- \frac{T}{C\ln(1-\frac{1}{G_12^{n+1}})}}$$

## $R_{min}$

$$ R_{min} \approx \frac{T}{5 \times 128C}$$

### without Logarithmic

$$R_{min}=\frac{-T}{C\ln(\frac{1}{2^{n+1}})}$$
### *with* Logarithmic
$$G_2[(V_{cc}-7V_{th})-V_{cc}\times e^\frac{-T}{128RC}=\frac{V_{cc}}{2^{n+1}}$$
$$R_{min}=\frac{-T}{128C\ln(1-\frac{7V_{th}}{V_{cc}}-\frac{1}{G_22^{n+1}})}$$
## Range w/o Logarithmic Discharge

For $n = 8$:

$$\frac{R_{max}}{R_{min}}=\frac{\frac{T}{C\ln(1-\frac{1}{2^{n+1}})}}{\frac{T}{C\ln(\frac{1}{2^{n+1}})}}$$
$$=\frac{(n+1)\ln(2)}{\ln(1-2^{-(n+1)})}$$
$$=\frac{9\times \ln(2)}{0.002}$$
$$\boxed{\frac{R_{max}}{R_{min}} = 3119}$$

## Range *with* Logarithmic Discharge


For $n = 8$:
$$\frac{R_{max}}{R_{min}}=\frac{128\ln(1-\frac{7V_{th}}{V_{cc}}-\frac{1}{G_22^{n+1}})}{\ln(1-\frac{1}{G_12^{n+1}})}$$
$$=\frac{69.72}{0.00024}$$
$$\boxed{\frac{R_{max}}{R_{min}}=290500}$$

## Differences in Range

$$G = \frac{290500}{3119} = 93$$

