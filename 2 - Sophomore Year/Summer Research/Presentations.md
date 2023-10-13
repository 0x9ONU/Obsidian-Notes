
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

# Efficient Quantization and Hardware Implementation of AlexNet on Resource-Limited FPGAs

## Introduction

- NN are growing more complex and need more power
- Embedded devices lack the resources in order to make these calculation
- Quantized neural networks can be used to reduce network precisions
- FPGAs
	- Used to configured to create a max throughut for BNNs and QNNs
	- FLaoting point is much easier on FPGAs

## Network Parameters and Development

### Finn

Uses roofline models to determine peak QNN
- Streamlined for Brevitas

```ad-important
Utilizes funcitons which can be easily synthesized to hardware existing on an FPGA
```

### Setup

Uses AlexNet
- Designed in PyTorch using the Bevitas library
- Easy to reduce newtork sizes to conform to FPGA resource constraints

Trained on **CIFAR-10**

```ad-summary
Network designed, trrained, then synthesized with FINN> If network was found too large for synthesis, channel dpeths were reduced and repeated.
```

#### Developed Networks

**SIX networks were developed**:
- 1, 2, 3, 8-bit that all use the same channel depth
- 1,8-bit that has a larger channel

## Network Optimizations

```ad-note
More efficient folding parameters would result in higher throughput, higher efficiency hardware drivers
```

**the 1-bit network coudl afford more folding**, but the larger networks had to use less
## Results

### Accuracies

| Network     | Solved | FPGA |
| ----------- | ------ | ---- |
| 10bit       | 79     | 72   |
| 2-bit       | 82     | 82   |
| 3-bit       | 82     | 82   |
| 8-bit       | 83     | N/A  |
| 1-bit large | 81     | 72   |
| 8-bit large | 83     | N/A     |

### Utilization

```ad-summary
1-bit network has less resource utilization compared to other networks
```

```ad-note
HOWEVER< the Block RAM usage of the 1-bit network is higher than the two bit network
```
## Discussion

```ad-important
1-bit network tested just 2.22% lower than the 2-bit equiavlent while ussing 20% less LUTs, 37% less registers and 15% less logic slices
- **3.6x faster**
```

# Identification of Cyanobacteria for Harmful Algal Blooms Research Using the YOLO Framework

## Introduction

Cyanobacteria can lead to harmful algal blooms
- Contaminates freshwater that can hurt humans, wildlife, etc.

```ad-summary
There is a large amount of data of water samples that can be used to predict when a HAB might bloom and counteract them
```

### Challenges

- Diverse in both shape and size
- Technology used to identify them is significantly different

## Proposed Solution

```ad-important
How to detect cyanobacteria that produce toxins in order to predict harmful algal blooms using machine learning?
```

## Methods

Identified five commonly seen cyanobacteria in US

"YOLO" algorithm
- A family of aglrithms
- For object detection 
- Speedy and accurate 
- Written in C

## Image Data

Had 1780 images from:
- iNatralist
- Laboratory 

### System

1. Assembling and Labeling 
2. Image Processing
3. Image Augmentation
4. YOLOv5 model optimization and training

### Hyperparameter optimization

Previous generations of models are able to cross over and randomly mutate with each other

```ad-note
Created 200 generations
```

## Results

YOLOv5 performed better than the Faster R-CNN
- 82 vs 75
- 68 vs 59

Was faster:
- 6.7ms to 8.5ms

```ad-warning
Accuracy degrees signifcatnly with background iamges
```
# Regression Analysis of Exercise Exertion Levels Using Physiological Data



# Advancing Connectomics High-Precision Neural Structure Segmentation Using U-Net-Based Model