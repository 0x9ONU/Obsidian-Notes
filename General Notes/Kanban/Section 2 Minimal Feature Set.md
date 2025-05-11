Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
#hwsw 

```ad-summary
Based on your suggested applications, what core features should be included on the board to make it functional but cost-effective? Focus on essential I/O, memory, and processing capabilities. How do these features impact the cost of production? Consider:

- How might simplifying the board (e.g., reducing inessential I/O or connectors) reduce overall manufacturing costs?
- Should the board size be optimized for compactness or scalability for different applications?
```

To ensure that the final board will be cost-effective, a lot of the less important features on the original development board can be cut. In particular, it is crucial that only the most necessary I/O, memory, and processing capabilities are kept in order to ensure a cost-effective system that does not waste anything on non-important features. Figure 3 below shows the block diagram for the ZedBoard with all of the external outputs. Additionally, Figure 4 shows how the Zynq’s pins are assigned on the ZenBoard.

![[Pasted image 20250510161305.png | center]]
<center> <b> Figure 3 </b>: ZedBoard Block Diagram Including all I/O Devices [2]</center>

![[Pasted image 20250510162218.png | center]]
<center> <b> Figure 4 </b>: ZedBoard’s Pin Assignments for the Zynq-7000 SoC [2]</center>

Looking at the different ports for the I/O, it is clear that a good amount of the features can be cut without sacrificing the function of the new chip. The SD card, the gigabit Ethernet port, the Pmod ports, the FMC-LPC Mezzanine expansion slot, the debug switches and LEDs, the audio codec and jacks, the VGA port, and the OLED display can all be cut from the board without causing any problems. What we are left with from the original board is the flash memory for the bios, the USB ports for user input and storage, the 512MB of DDR3 RAM for the CPU, the HDMI Out for a display, the JTAG for post-fabrication testing, and the XADC external port for the DSP inputs/outputs. When looking at the potential manufacturing costs saved, we need to consider a few things. Firstly, the removed connectors will save a great amount of money. Each part was gathered using the Digikey online store. Note that all the prices are subject to change overtime and bulk orders and the parts are not exact copies of what is found on the ZedBoard. After taking these parts off, each board would cost $61.96 cheaper than before. This saved money can go directly into purchasing the TPU and the DSP with spare change. Table 1 below shows the price saving breakdown:

| Part                                | $ Per Part  | Number of Parts Per Board | Total Saved ($) |
| ----------------------------------- | ----------- | ------------------------- | --------------- |
| SD Slot (0475710001)                | $1.03 [12]  | 1                         | $1.03           |
| Ethernet (TDS8PC6)                  | $3.59 [13]  | 1                         | $3.59           |
| PMOD (240-078)                      | $5.00 [14]  | 4                         | $20.00          |
| Mezzanine Expansion (ASP-134606-02) | $19.75 [15] | 1                         | $19.75          |
| LED (LTST-C190KFKT)                 | $0.13 [16]  | 9                         | $1.17           |
| Switch (JS202011JCQN)               | $0.84 [17]  | 8                         | $6.72           |
| Audio Jack (ASJ-99H-R-HT-T/R)       | $0.77 [18]  | 4                         | $3.08           |
| VGA Port (L77HDE15SD1CH4FVGA)       | $1.62 [19]  | 1                         | $1.62           |
| OLED (26377)                        | $5.00 [20]  | 1                         | $5.00           |
| ***TOTAL***                         | —           | —                         | *$61.96*        |

As for the board size, it should be minimized such that the final product is able to fit into a pre-existing automobile. This means that much of the space found on the ZenBoard will be cut down significantly to only include what is necessary.

