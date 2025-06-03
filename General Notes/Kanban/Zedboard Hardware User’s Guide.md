Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Diligent 

**DOI**: https://digilent.com/reference/_media/zedboard:zedboard_ug.pdf

**Authors**: N/A

**Publication Year**: 2012

**Country of Study**: N/A

**Tags**: #hwsw #zedboard #FPGA #developmentboard

```ad-abstract
title: Abstract
collapse: open
The ZedBoard is an evaluation and development board based on the Xilinx Zynq-7000 Extensible
Processing Platform. Combining a dual Corex-A9 Processing System (PS) with 85,000 Series-7
Programmable Logic (PL) cells, the Zynq-7000 EPP can be targeted for broad use in many
applications. The ZedBoard’s robust mix of on-board peripherals and expansion capabilities
make it an ideal platform for both novice and experienced designers
```


**Embed to Paper**: ![[ZedBaord Hardware User's Guide.pdf]]

## Summary

The **ZedBoard** is a development and evaluation board based on the **Xilinx Zynq-7000 Extensible Processing Platform (EPP)**, which combines a dual-core ARM Cortex-A9 Processing System (PS) with Xilinx 7-series Programmable Logic (PL). Below is a concise summary of its key features, interfaces, and design considerations:

---

### **1. Key Features**

- **XC7Z020-1CSG484CES EPP**:
    
    - Dual-core ARM Cortex-A9 (PS) + 85K FPGA logic cells (PL).
        
    - Primary configuration via **QSPI Flash**, with auxiliary options (JTAG, SD Card).
        
- **Memory**:
    
    - **512MB DDR3** (32-bit interface, up to 533MHz).
        
    - **256Mb QSPI Flash** (Spansion S25FL256S).
        
    - **SD Card** interface (4GB Class 4 card included).
        
- **Interfaces**:
    
    - **USB OTG 2.0** (TI TUSB1210 PHY).
        
    - **10/100/1000 Ethernet** (Marvell 88E1518 PHY).
        
    - **USB-UART bridge** (Cypress CY7C64225).
        
    - **HDMI** (Analog Devices ADV7511 transmitter).
        
    - **VGA** (12-bit color via resistor ladder).
        
    - **I2S Audio Codec** (Analog Devices ADAU1761).
        
    - **128x32 OLED Display**.
        
- **Expansion**:
    
    - **LPC FMC Connector** (68 I/O, configurable as 34 differential pairs).
        
    - **Five Pmod™ headers** (4 PL, 1 PS).
        
    - **Agile Mixed Signaling (AMS) header** for analog inputs (XADC).
        
- **User I/O**:
    
    - 8 DIP switches, 7 push buttons, 9 LEDs (1 PS, 8 PL).
        
- **Clocks**:
    
    - 33.333MHz (PS), 100MHz (PL).
        
- **Power**:
    
    - 12V input (barrel jack), adjustable **Vadj** (1.8V, 2.5V, or 3.3V for FMC/Pmod).
        

---

### **2. Critical Design Considerations**

#### **Memory (DDR3)**

- **Trace Matching**: DDR3 signals require precise PCB routing (40Ω single-ended, 80Ω differential).
    
- **Training**: Enable DRAM training (write leveling, read gate, read data eye) in Xilinx Platform Studio.
    
- **Delays**: Use Xilinx AR46778 worksheet to calculate **DQS-to-CLK** and **Board Delay** values.
    

#### **Configuration Modes**

- Boot modes selectable via jumpers (JP7–JP11):
    
    - **SD Card** (default).
        
    - **QSPI Flash**, **JTAG** (cascaded or independent).
        
- **PLL Bypass**: JP11 selects internal PLL use (default) or bypass.
    

#### **Power Management**

- **Sequencing**: Follow Zynq power-up sequence (PS/PL INT and AUX supplies tied together).
    
- **Vadj Selection**: J18 sets voltage for FMC/Pmod (default: 1.8V; 3.3V requires manual soldering).
    
- **Current Budget**: Total estimated ~4A @ 12V (see Table 20 for breakdown).
    

#### **USB and JTAG**

- **USB OTG**: Configure jumpers (JP2, JP3) for Host/Device/OTG modes.
    
- **JTAG**: Onboard Digilent SMT1 module or external header (J15).
    

#### **Analog Inputs (XADC)**

- **AMS Header**: Supports analog reference designs (e.g., Xilinx AMS Evaluation Card).
    
- **Anti-Aliasing Filters**: Applied to dedicated analog inputs (Vp/Vn, Vaux).
    

---

### **3. Mechanical and Layout**

- **Dimensions**: 6.3" × 6.3".
    
- **Connector Placement**:
    
    - FMC and AMS headers are co-located for easy ribbon cable connection.
        
    - Pmods are spaced for dual-header compatibility (e.g., LVDS on JC/JD).
        

---

### **4. Helpful Tips for Designers**

1. **DDR3 Optimization**: Use trace length reports and AR46778 tool for delay calibration.
    
2. **Boot Mode Flexibility**: Reconfigure jumpers (JP7–JP11) for alternate boot sources.
    
3. **FMC Voltage Caution**: Verify J18 setting (1.8V/2.5V) before attaching FMC cards to avoid damage.
    
4. **USB Protection**: All USB data lines include ESD protection (TE SESD0402Q2UG).
    
5. **Power Monitoring**: Use J21 (10mΩ sense resistor) to measure board power consumption.
    

---

### **Conclusion**

The ZedBoard is a versatile platform for embedded design, offering robust peripherals and expansion options. Key considerations include **DDR3 routing**, **boot configuration**, **power sequencing**, and **I/O voltage settings** (especially for FMC). Refer to the manual’s **jumper tables** (Section 4) and **power estimation charts** (Section 2.11.6) for detailed setup.

For further details, consult the **Zynq Technical Reference Manual (UG585)** and Xilinx’s DDR3 training guidelines.