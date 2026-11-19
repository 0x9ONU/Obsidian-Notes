---
creation_date: 2026-11-18 10:12
last_modified: 2026-11-18 10:12
folder: 7 - IoT, Blockchain and Cloud Computing
tags:
  - type/lecture
  - field/distributed-operating-systems
  - status/todo
author: Ethan Berei
---
# 1. Introduction / Pre-Class Notes

```ad-abstract
title: Summary
```

## Pre-Class Notes
# 2. Lecture & Discussion Notes

## Baseline

| Actor            | Re      | Participants |     |
| ---------------- | ------- | ------------ | --- |
| Tobacco, Matches | Paper   | Smoker 1     |     |
| Paper, Matches   | Tobacco | Smoker 2     |     |
| Paper, Tobacco   | Matches | Smoker 3     |     |

```ad-question
HOw many smokmer uses the proper resources?
- 1,2,3 have all the resources = infinite *NOT RIGHT*
- 1,2,3 have limited resources, but they have all 3 components *is also wrong*
- 1,2,3 have limited resources for every iteration of the program. OK, but...
	- Limited = 1 for every resource for instance??
	- Limited = 1 for a single resource for an instance??
- 1,2,3 have 1 instance of each resource
	- But what they have for every cycle?
```

```ad-check
- Each smoker gets a single type of resource. These are bottomless like the other process.
```

1. Smoker A has unlimited Tobacco; needs papers and matches
2. Smoker B has unlimited Paper, needs Tobacco and Matches
3. Smoker C has unlimited Matches, needs Paper and Tobacco

## Strategies

1. Monitors (**Best**)
2. Semaphores
3. Hybrid (M+S) (not the best)

## Monitor Cases for Agent

*Case 1*:
```c++
signal(t);
signal(p);
break;
```

*Case 2*:
```c++
signal(t);
signal(m);
break;
```

*Case 3*:
```c++
signal(p);
signal(m);
break;
```

## Cases For Smokers

### Smoker with Tobacco

```ad-summary
Needs Paper and Matches
```

```c++
while(true) {
	wait(paper);
	wait(matches);
	// ...
	make_cigarette();
	smoke();
	signal(agent);
}
```

### Smoker with Tobacco

```ad-summary
Needs Paper and Matches
```

```c++
while(true) {
	wait(paper);
	wait(matches);
	// ...
	make_cigarette();
	smoke();
	signal(agent);
}
```

### Smoker with Paper

```ad-summary
Needs Tobacco and Matches
```

```c++
while(true) {
	wait(tobacco);
	wait(matches);
	// ...
	make_cigarette();
	smoke();
	signal(agent);
}
```

### Smoker with Matches

```ad-summary
Needs tobacco and paper
```

```c++
while(true) {
	wait(tobacco);
	wait(paper);
	// ...
	make_cigarette();
	smoke();
	signal(agent);
}
```

## Example

```ad-question
What if we were at a super secret casino...
- Each resource is hidden in a box, so the smoker cannot see what is inside of it
- The agent tells you what is inside it
- The smoker keeps hidden what he has
```

| $A$         | $S_{1}$ | $S_{2}$ | $S_{3}$ |
| ----------- | ------- | ------- | ------- |
| Places 2 RE |         |         |         |

## Strategies for Hiding/Showing

Which ones work?
1. All shown
2. Smoker hiding, agent showing
3. Smoker showing, agent hiding
4. All hiding
# 3. Action Items & Follow-U

- [x]  ✅ 2026-08-24