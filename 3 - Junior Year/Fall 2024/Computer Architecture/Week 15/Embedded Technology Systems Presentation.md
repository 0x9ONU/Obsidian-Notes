Date: 9th December 2024
Date Modified: 9th December 2024
File Folder: Week 15
#ComputerArc 

```ad-summary
title: Mark Featherston
- At EmbeddedTS for 14 years
- Technical Lead
```

# Design Concerns/Choices

1. We need the SoCs to work at industrial temperatures
2. ARM is typically not compatible across various boards, which can be a problem
3. Targets 10-15 year life times
4. Look for vendors that have good upstream support and service over a long-time
5. Need to have the proper I/O for the applications
	- Changes based on application/client
	- i.e. in Ether-CAD, you need a hard real-time bus
	- CAM
	- Single-Ethernet
	- J19-39
6. Target specifically low-end and high-end systems
7. Includes FPGA via parallel-bus/PCIE. 
	- Real-time circuits can be simulated
8. Expandability via “micro-busses”
	- Thousands of choices (ADCs, light-sensors, etc.)
9. Performance