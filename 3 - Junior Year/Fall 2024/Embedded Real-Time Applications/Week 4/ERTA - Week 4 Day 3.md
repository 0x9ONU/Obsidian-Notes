Date: 18th September 2024
Date Modified: 18th September 2024
File Folder: Week 4
#Electronics

```ad-abstract
title: Today's Topics
collapse: open

- FSM - Line Tracker

```

# Finite State Machine: Line Tracker

Sensors are inputs

Output to control two DC motors as output

States encode robot position regarding the line

![[ERTA - Week 4 Day 3 2024-09-20 13.07.38.excalidraw]]

**Two Sensors**:
- 1,1 on line
- 1, 0 off to the right
- 0,1 off to the left
- 0,0 lost

**Two Motors**:
- 1,1 go straight
- 1,0 turn right
- 0, 1 turn left

```ad-note
The MSB is left, the LSB is to the right
```

## Strategy

![[PXL_20240920_171046707.jpg]]

## State Transition Table

| State  | Motor Left | Motor Right | Sensor (L=1, R=1) | Sensor (L=0, R=1) | Sensor (L=1, R=0) | Sensor (L=0, R=0) |
| ------ | ---------- | ----------- | ----------------- | ----------------- | ----------------- | ----------------- |
| Right  | 0          | 1           | Center            | Right             | Left              |                   |
| Left   | 1          | 0           | Center            | Right             | Left              |                   |
| Center | 1          | 1           | Center            | Right             | Left              |                   |

## Finite State Machine Diagram

![[ERTA - Week 4 Day 3 2024-09-20 13.16.12.excalidraw]]

