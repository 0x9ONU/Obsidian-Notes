# Finding Resistor Threshold Trial and Error

## For $T=5ms, C=1\micro F, V_{threshold}=0$

| Region | Approx Resistor Threshold ($\Omega$) |
| ------ | ------------------------------------ |
| 1      |                                      |
| 2      |                                      |
| 3      |                                      |
| 4      |                                      |
| 5      | 2000                                 |
| 6      | 1000                                 |
| 7      | 400                                  |
| 8      | 1                                    |
## For $T=5ms, C=10\micro F, V_{threshold}=0$

| Region | Approx Resistor Threshold ($\Omega$) |
| ------ | ------------------------------------ |
| 1      |                                      |
| 2      |                                      |
| 3      |                                      |
| 4      |                                      |
| 5      |                                      |
| 6      |                                      |
| 7      |                                      |
| 8      |                                      |
## For $T=5\micro s, C=0.1\micro F, V_{threshold}=0$

| Region | Approx Resistor Threshold ($\Omega$) |
| ------ | ------------------------------------ |
| 1      | 6000                                 |
| 2      | 410                                  |
| 3      | 195                                  |
| 4      | 90                                   |
| 5      | 45                                   |
| 6      | 20                                   |
| 7      | 10                                   |
| 8      | 1                                    |



# Equation Table

| Region | Initial Condition  | End Point          | Final Range                                   | Period            | Final Equation                                          |
| ------ | ------------------ | ------------------ | --------------------------------------------- | ----------------- | ------------------------------------------------------- |
| 1      | $$V_{cc}$$         | $$V_{cc}-V_{th}$$  | $$V_{cc} \rightarrow V_{cc}-2V_{th}$$         | $$T$$             | $$V_f = V_{cc}(e^\frac{-T}{\tau})$$                     |
| 2      | $$V_{cc}-V_{th}$$  | $$V_{cc}-2V_{th}$$ | $$V_{cc}-2V_{th} \rightarrow V_{cc}-3V_{th}$$ | $$\frac{T}{2}$$   | $$V_f = (V_{cc}-V_{th})(e^\frac{\frac{-T}{2}}{\tau})$$  |
| 3      | $$V_{cc}-2V_{th}$$ | $$V_{cc}-3V_{th}$$ | $$V_{cc}-3V_{th} \rightarrow V_{cc}-4V_{th}$$ | $$\frac{T}{4}$$   | $$V_f = (V_{cc}-2V_{th})(e^\frac{\frac{-T}{4}}{\tau})$$ |
| 4      | $$V_{cc}-3V_{th}$$ | $$V_{cc}-4V_{th}$$ | $$V_{cc}-4V_{th} \rightarrow V_{cc}-5V_{th}$$ | $$\frac{T}{8}$$   | $$V_f = (V_T-3V_{th})(e^\frac{\frac{-T}{8}}{\tau})$$    |
| 5      | $$V_{cc}-4V_{th}$$ | $$V_{cc}-5V_{th}$$ | $$V_{cc}-5V_{th} \rightarrow V_{cc}-6V_{th}$$ | $$\frac{T}{16}$$  | $$V_f = (V_T-4V_{th})(e^\frac{\frac{-T}{16}}{\tau})$$   |
| 6      | $$V_{cc}-5V_{th}$$ | $$V_{cc}-6V_{th}$$ | $$V_{cc}-6V_{th} \rightarrow V_{cc}-7V_{th}$$ | $$\frac{T}{32}$$  | $$V_f = (V_T-5V_{th})(e^\frac{\frac{-T}{32}}{\tau})$$   |
| 7      | $$V_{cc}-6V_{th}$$ | $$V_{cc}-7V_{th}$$ | $$V_{cc}-7V_{th} \rightarrow V_{cc}-8V_{th}$$ | $$\frac{T}{64}$$  | $$V_f = (V_T-6V_{th})(e^\frac{\frac{-T}{64}}{\tau})$$   |
| 8      | $$V_{cc}-7V_{th}$$ | $$0$$              | $$V_{cc}-8V_{th} \rightarrow 0$$              | $$\frac{T}{128}$$ | $$V_f = (V_T-7V_{th})(e^\frac{\frac{-T}{128}}{\tau})$$  |

# Inverse Relation

$$R=-\frac{T}{2^rC\ln(\frac{V_f}{V_{cc}-rV_{th}})}$$
