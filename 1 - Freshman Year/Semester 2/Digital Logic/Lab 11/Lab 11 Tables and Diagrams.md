Date: 13th April 2023
Date Modified: 13th April 2023
File Folder: Digital Logic
#DigitalLogic

# State Table


## Current State    |    Next State
| $Q_3$ | $Q_2$ | $Q_1$ | $Q_0$ | $D_3$ | $D_2$ | $D_1$ | $D_0$ |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| 0     | 0     | 0     | 0     | 0     | 0     | 0     | 1     |
| 0     | 0     | 0     | 1     | 0     | 0     | 1     | 0     |
| 0     | 0     | 1     | 0     | 0     | 0     | 1     | 1     |
| 0     | 0     | 1     | 1     | 0     | 1     | 0     | 0     |
| 0     | 1     | 0     | 0     | 0     | 1     | 0     | 1     |
| 0     | 1     | 0     | 1     | 0     | 1     | 1     | 0     |
| 0     | 1     | 1     | 0     | 0     | 1     | 1     | 1     |
| 0     | 1     | 1     | 1     | 1     | 0     | 0     | 0     |
| 1     | 0     | 0     | 0     | 1     | 0     | 0     | 1     |
| 1     | 0     | 0     | 1     | 0     | 0     | 0     | 0     |


| $D_0$    | $Q_1Q_0$ | 00  | 01  | 11  | 10  |
| -------- | -------- | --- | --- | --- | --- |
| $Q_3Q_2$ |          |     |     |     |     |
| 00       |          | 1   | 0   | 0   | 1   |
| 01       |          | 1   | 0   | 0   | 1   |
| 11       |          | x   | x   | x   | x   |
| 10       |          | 1   | 0   | x   | x   | 

## $D_0= Q_0^-$

| $D_1$    | $Q_1Q_0$ | 00  | 01  | 11  | 10  |
| -------- | -------- | --- | --- | --- | --- |
| $Q_3Q_2$ |          |     |     |     |     |
| 00       |          | 0   | 1   | 0   | 1   |
| 01       |          | 0   | 1   | 0   | 1   |
| 11       |          | x   | x   | x   | x   |
| 10       |          | 0   | 0   | x   | x    |

## $D_1=Q_3^-Q_2^-Q_0 + Q_1Q_0^-$


| $D_2$    | $Q_1Q_0$ | 00  | 01  | 11  | 10  |
| -------- | -------- | --- | --- | --- | --- |
| $Q_3Q_2$ |          |     |     |     |     |
| 00       |          | 0   | 0   | 1   | 0   |
| 01       |          | 1   | 1   | 0   | 1   |
| 11       |          | x   | x   | x   | x   |
| 10       |          | 0   | 0   | x   | x   |

## $D_2=Q_2Q_1^-+Q_2Q_0^-+Q_2^-Q_1Q_0$


| $D_3$    | $Q_1Q_0$ | 00  | 01  | 11  | 10  |
| -------- | -------- | --- | --- | --- | --- |
| $Q_3Q_2$ |          |     |     |     |     |
| 00       |          | 0   | 0   | 0   | 0   |
| 01       |          | 0   | 0   | 1   | 0   |
| 11       |          | x   | x   | x   | x   |
| 10       |          | 1   | 0   | x   | x   |

## $D_3=Q_3Q_0^-+Q_2Q_1Q_0$
