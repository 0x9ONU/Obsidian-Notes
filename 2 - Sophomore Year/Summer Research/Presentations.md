
# An Evaluation of AI-Based Intrusion Detection in Resource-Constrained Environment

- Difficult to use deep learning due to coputatino and processing time on networks
- Developed  a lightweight deep learning model
	- Uses teh PIzero
	- nine AI-driven models
- Similar approach to us
- Challenges
	- High false alarm rates
	- Deep leanring required high computation 
- Used IOT-23
	- Recent using IoT traffic
	- 8.7GB
	- 20 log files
	- NOT BALANCED
	- EDA process to feature reduce
	- Removed class 3, 4, and 6
- Two environments
	- Resource slack environment
	- Resource constrained environment
- Results
	- Super solid results with low CPU usage and training times
	- Uses the Pi in the environment for frequent retraining
- Limitations
	- Not done outside of the IoT-23 dataset
		- Should use the **CICIoT2023** dataset
	- lower threshold of computational power
	- TensorFLow has not been used

# Deepfake and Digital Forensics

## Purpose

The original MesoNet model achieved an accuracy of 87.1% for detecting deepfakes

```ad-important

This research examines and fine=tuens the MesoNet model to improves its performaces using 140k
```

## Introduction

- FakeApp as refined making deepfakes

Two categories:
- Facial expression manipulation
- Facial identity manipulation

## Problem Identification

- Face manipulation techniques had low generalized capability.

## Approach

- Inspect MesoNet model
- Examine its behavior ina  dataset more extensive
- Ehance weights to annce model
- Use 140k fake and real faces
	- half real and half fake
	- Fakes were from 1M depe fakes created previously
- Use CNN to detect real vs. fake faces

## Results

- Initial settings
	- Epachos: 10
	- 88.7% high

- Adjusted multiple times over and over again
	- Enahced articture
	- epochs increasted to 40 from 10
	- 90% higher

```ad-important
Hit a 96.20% high compared to the orignal 87% high before
```

## Summary

Tuned from 87.1% to 96.2% high

```ad-summary
The model is highly effective at detecting genuine and fake images
```

# Exploring Accelerometer Sensors for Optimized Smart Shoe-based Fall Detection

