Date: 8th May 2025
Date Modified: 8th May 2025
File Folder: Kanban
## Publication Information

**Database:** Newnes/Elsevier

**DOI**: https://www.analog.com/en/resources/technical-books/mixed_signal_dsp_design_book.html

**Authors**: Walt Kester 

**Publication Year**: 2003

**Country of Study**: USA

**Tags**: #dsp #architecture #book #applications

```ad-abstract
title: Abstract
collapse: open
In this book, we will primarily be dealing with the processing of real-world signals using both analog and digital techniques. Before starting, however, let's look at a few key concepts and definitions required to lay the groundwork for things to com
```

**Embed to Paper**:

![[0_MixedSignal_Outline.pdf]]

![[1_MixedSignal_Sect1.pdf]]

![[2_MixedSignal_Sect2.pdf]]

![[3_MixedSignal_Sect3.pdf]]

![[4_MixedSignal_Sect4.pdf]]

![[5_MixedSignal_Sect5.pdf]]

![[6_MixedSignal_Sect6.pdf]]

![[7_MixedSignal_Sect7.pdf]]

![[8_MixedSignal_Sect8.pdf]]

![[9_MixedSignal_Sect9.pdf]]

![[10_MixedSignal_Sect10.pdf]]

![[11_MixedSignal_index.pdf]]
## Summary

### Section 1: Introduction

#### **ORIGINS OF REAL-WORLD SIGNALS AND THEIR UNITS OF MEASUREMENT**

The chapter begins by defining signals as detectable physical quantities (e.g., voltage, current, temperature) that carry information. Key characteristics of signals include:

- **Physical and measurable** (e.g., temperature in °C, pressure in Newtons/m²).
    
- **Analog by nature** (even digital signals originate from analog sources).
    
- **Contain information** in amplitude, frequency, phase, or timing.
    

**Figure 1.1** lists common units of measurement for signals, emphasizing their analog origins. Sensors convert physical quantities (like temperature) into electrical signals for processing.

---

#### **REASONS FOR PROCESSING REAL-WORLD SIGNALS**

The primary goal is **information extraction**, which can be used for:

1. **Reformatting signals** (e.g., telephony systems using FDMA/TDMA).
    
2. **Data compression** (e.g., modems, MPEG, HDTV).
    
3. **Feedback control** (e.g., industrial systems with sensors and DSP).
    
4. **Signal recovery** from noise (via filtering, autocorrelation).
    
5. **Storage and analysis** (e.g., using FFT techniques).
    

**Figure 1.2** summarizes these reasons, highlighting applications like noise reduction and digital storage.

---

#### **GENERATION OF REAL-WORLD SIGNALS**

Real-world signals can be generated:

- **Directly from analog sources** (e.g., sensors).
    
- **Synthetically using DSP and DACs** (e.g., video displays, synthesized music).
    
    - Even synthetic signals rely on prior analysis of real-world analogs (e.g., statistical properties of sound).
        

---

#### **METHODS AND TECHNOLOGIES FOR SIGNAL PROCESSING**

Three approaches are compared:

1. **Analog Signal Processing (ASP)**: Uses analog components (op-amps, filters).
    
2. **Digital Signal Processing (DSP)**: Uses ADCs/DACs for real-time arithmetic operations (filtering, FFT).
    
3. **Mixed Signal Processing (MSP)**: Combines analog and digital (e.g., ADCs with integrated conditioning circuits).
    

**Key Trade-offs**:

- **Analog**: Simpler for high-frequency/RF tasks but suffers from component drift.
    
- **Digital**: Precise, programmable, and immune to drift but limited by ADC/DAC resolution and sampling rates.
    

**Figure 1.3** illustrates system design options, showing how ADC placement affects analog conditioning needs.

---

#### **ANALOG VS. DIGITAL SIGNAL PROCESSING: A PRACTICAL EXAMPLE**

A **1kHz lowpass filter** is compared:

- **Analog**: 6-pole Chebyshev filter (0.5dB ripple) requires multiple op-amps and precise components (**Figure 1.5**).
    
- **Digital**: 129-tap FIR filter achieves **0.002dB ripple**, linear phase, and sharper roll-off (**Figure 1.5**).
    
    - Implemented via DSP (e.g., ADSP-21xx) with assembly code (**Figure 1.6**).
        
    - Advantages: No component matching, crystal-controlled stability.
        

**Figure 1.4** shows the digital filter system, emphasizing real-time computation constraints (e.g., 1.3 MIPS for 10kSPS).

---

#### **REAL-TIME SIGNAL PROCESSING CONSIDERATIONS**

Critical factors for DSP systems:

- **Sampling rate** (Nyquist theorem).
    
- **ADC/DAC resolution** (dynamic range limits).
    
- **DSP speed** (must complete computations within 1/fs1/fs​).
    
- **Analog front-ends** remain essential for anti-aliasing/reconstruction.
    

**Figure 1.7** underscores hybrid systems where analog processing (e.g., RF filtering) complements DSP.

---

#### **KEY FIGURES**

- **Figure 1.1**: Units of measurement for common signals.
    
- **Figure 1.2**: Reasons for signal processing (information extraction, compression, etc.).
    
- **Figure 1.3**: Signal processing system design options.
    
- **Figures 1.4–1.5**: Analog vs. digital filter performance comparison.
    
- **Figure 1.6**: DSP assembly code for FIR filter implementation.
    
- **Figure 1.7**: Real-time processing constraints and analog-digital trade-offs.
    

---

#### **CONCLUSION**

The chapter establishes foundational concepts, emphasizing the interplay between analog and digital techniques. While DSP offers precision and flexibility, analog processing remains vital for high-frequency and sensor interfacing. The examples (e.g., filter design) highlight practical trade-offs in mixed-signal systems.

**References** (e.g., _Practical Design Techniques for Sensor Signal Conditioning_) are provided for further reading.

### Section 2: Sampled Data Systems

This chapter delves into the principles, errors, and performance metrics of sampled data systems, focusing on analog-to-digital converters (ADCs) and digital-to-analog converters (DACs). Below is a detailed breakdown of the key topics covered:

---

### **1. Introduction**

The chapter introduces a typical sampled data DSP system (Figure 2.1), emphasizing the roles of:

- **Anti-aliasing filters** (lowpass/bandpass) to prevent aliasing.
    
- **ADC and DAC** for signal conversion.
    
- **Real-time processing** constraints, where the DSP must complete computations within the sampling interval 1/fs1/fs​.
    

Key applications include digital filtering and FFT analysis. The DAC is optional unless analog reconstruction is needed (e.g., audio systems), and an anti-imaging filter is required to remove high-frequency artifacts.

---

### **2. Discrete Time Sampling of Analog Signals**

- **Nyquist Criteria**: To avoid aliasing, the sampling rate fsfs​ must exceed twice the signal bandwidth fafa​ (Figure 2.2).
    
- **Aliasing**: Demonstrated in time and frequency domains (Figures 2.3 and 2.4). Aliased signals appear as spurious frequencies if $f_{s}<2f_{a}$
    
- **Nyquist Zones**: The spectrum is divided into zones of width fs/2fs​/2. Signals outside the first Nyquist zone can still be correctly sampled if they reside entirely within a single zone (Figure 2.6).
    

---

### **3. Baseband Antialiasing Filters**

- **Purpose**: Remove out-of-band signals that could alias into the Nyquist bandwidth (DC to $\frac{f_{s}}{2}$).
    
- **Design Trade-offs**:
    
    - **Transition Band**: Sharp filters (e.g., elliptic) are complex but necessary for high dynamic range (DR) (Figure 2.5A).
        
    - **Oversampling**: Higher fsfs​ relaxes filter requirements (Figure 2.5B). Sigma-delta ADCs inherently oversample.
        

---

### **4. Undersampling (Harmonic/Bandpass Sampling)**

- Signals in higher Nyquist zones (e.g., 2nd or 3rd) can be sampled at $f_{s}≥2×\text{bandwidth}$ (Figure 2.6B–C).
    
- Applications include direct IF-to-digital conversion, eliminating analog demodulation.
    

---

### **5. ADC and DAC Static Transfer Functions and DC Errors**

- **Quantization**: An N-bit converter has 2N2N discrete states (Figure 2.7).
    
- **Ideal Transfer Functions**:
    
    - **DAC**: Discrete points (Figure 2.8).
        
    - **ADC**: Steps with $\pm 0.5$ LSB quantization error (Figure 2.9).
        
- **DC Errors**:
    
    - **Offset/Gain Errors**: Analogous to amplifier errors (Figure 2.10).
        
    - **Integral Non-Linearity (INL)**: Deviation from ideal transfer curve (Figure 2.11).
        
    - **Differential Non-Linearity (DNL)**: Code transition errors. Severe DNL causes non-monotonicity (DAC, Figure 2.12) or missing codes (ADC, Figure 2.13).
        

---

### **6. AC Errors in Data Converters**

#### **Ideal ADC Quantization Noise**

- RMS quantization noise: q/12q/12
    

- ​ (Figure 2.15).
    
- **SNR**: For full-scale sine waves, 6.02N+1.766.02N+1.76 dB (Figure 2.16). Oversampling improves SNR via processing gain.
    

#### **Practical ADC Distortion and Noise**

- **Sources**: Thermal noise, aperture jitter, non-linearity (Figure 2.20).
    
- **Dynamic Performance Metrics** (Figure 2.22):
    
    - **THD, SINAD**: Include harmonic distortion and noise.
        
    - **SFDR**: Ratio of signal to worst spur (Figure 2.28). Critical for communications (e.g., AD9042 in Figure 2.29).
        
    - **ENOB**: Derived from SINAD (Figure 2.26).
        
    - **IMD**: Measures intermodulation products (Figure 2.30).
        
    - **NPR**: Evaluates multi-channel systems (Figures 2.32–2.34).
        

#### **Aperture Jitter**

- Causes voltage errors proportional to input slew rate (Figure 2.35).
    
- Limits high-frequency SNR (Figure 2.36).
    

---

### **7. DAC Dynamic Performance**

- **Key Specifications**:
    
    - **Settling Time**: Time to reach ±0.5±0.5 LSB (Figure 2.38).
        
    - **Glitch**: Spurious transitions during code changes (Figures 2.39–2.40). Midscale glitches are worst (Figure 2.41).
        
    - **SFDR**: Critical for reconstruction (Figure 2.44). Affected by DNL, clock/output frequency ratio (Figure 2.42).
        
- **sin(x)/x Rolloff**: Attenuation at Nyquist frequency (Figure 2.45). Compensated with inverse filters.
    

---

### **Key Figures**

- **Figure 2.1**: Fundamental sampled data system.
    
- **Figures 2.3–2.4**: Aliasing in time and frequency domains.
    
- **Figures 2.5A–B**: Antialiasing filter trade-offs.
    
- **Figures 2.12–2.13**: Non-monotonicity and missing codes.
    
- **Figure 2.20**: ADC noise/distortion sources.
    
- **Figures 2.28–2.29**: SFDR examples.
    
- **Figures 2.39–2.40**: DAC glitch characterization.
    
- **Figure 2.45**: sin(x)/x rolloff.
    

---

### **Conclusion**

This chapter provides a comprehensive overview of sampled data systems, covering theoretical foundations (Nyquist, quantization), practical errors (DNL, jitter), and performance metrics (SNR, SFDR). It highlights design trade-offs (e.g., filter complexity vs. oversampling) and underscores the importance of dynamic specifications in modern applications like communications and digital signal processing.

### Section 3: ADCs For DSP Applications

This chapter delves into the architectures, design challenges, and applications of Analog-to-Digital Converters (ADCs) tailored for Digital Signal Processing (DSP). The focus is on five primary ADC architectures: **Successive Approximation**, **Sigma-Delta**, **Flash**, **Subranging (Pipelined)**, and **Bit-Per-Stage (Ripple)**. The chapter also highlights the challenges of low-power, low-voltage ADC design and provides detailed insights into each architecture's operation, advantages, and limitations.

---

### **Low Power, Low Voltage ADC Design Issues**

Modern ADCs operate on lower supply voltages (e.g., ±5V, +5V, +3V), which introduces challenges such as:

- **Increased noise sensitivity** due to smaller input voltage ranges.
    
- **Common-mode input voltage restrictions** and the need for careful input buffer amplifier selection.
    
- **Auto-calibration modes** for high-resolution applications to maintain accuracy.
    

**Key Takeaway**: Lower supply voltages necessitate meticulous design to mitigate noise and ensure signal integrity.

---

### **Successive Approximation ADCs**

- **Operation**: Uses a comparator, DAC, and Successive Approximation Register (SAR) to iteratively determine each bit. The process involves testing each bit from MSB to LSB.
    
- **Advantages**:
    
    - Minimal throughput delay (no output latency).
        
    - Suitable for multiplexed data acquisition systems.
        
    - Resolutions up to 16 bits.
        
- **Challenges**: DAC linearity is critical; modern designs use switched capacitor techniques to avoid laser trimming.
    
- **Timing**: Conversion time scales with resolution due to DAC settling requirements.
    
- **Example**: The AD7858/59 (12-bit, 200kSPS) uses a switched capacitor input and requires careful settling time calculations.
    

**Figure of Interest**:

- **Figure 3.3**: Block diagram of a SAR ADC, showing the interaction between the SHA, comparator, DAC, and SAR.
    
- **Figure 3.5**: Comparison of SAR ADCs, highlighting resolution, sampling rates, and power consumption.
    

---

### **Sigma-Delta (ΣΔ) ADCs**

- **Operation**: Combines oversampling, noise shaping, digital filtering, and decimation to achieve high resolution (up to 24 bits).
    
- **Advantages**:
    
    - Excellent differential linearity.
        
    - Inherently linear due to 1-bit quantization.
        
    - On-chip digital filters (e.g., linear phase FIR filters).
        
- **Challenges**:
    
    - Limited bandwidth (suitable for voiceband and audio).
        
    - Long settling time for digital filters, making multiplexing difficult.
        
- **Noise Shaping**: Quantization noise is pushed to higher frequencies, allowing for high SNR in the passband.
    
- **Example**: The AD1877 (16-bit, 48kSPS) uses a fourth-order modulator and a 64x oversampling ratio.
    

**Figures of Interest**:

- **Figure 3.11**: Illustrates oversampling, noise shaping, and decimation.
    
- **Figure 3.16**: Shows SNR vs. oversampling ratio for different modulator orders.
    
- **Figure 3.18**: FIR filter characteristics of the AD1877, demonstrating sharp transition bands and low passband ripple.
    

---

### **Flash Converters**

- **Operation**: Uses 2N−12N−1 comparators in parallel for ultra-fast conversion.
    
- **Advantages**:
    
    - Highest speed (up to 1GHz sampling rates).
        
    - Simple architecture with minimal latency.
        
- **Challenges**:
    
    - High power dissipation and large chip area.
        
    - Limited to low resolutions (typically 8-10 bits).
        
- **Example**: The AD9410 (10-bit, 200MSPS) uses interpolation to reduce preamplifier count and power.
    

**Figure of Interest**:

- **Figure 3.22**: Basic flash ADC architecture with resistor ladder and comparators.
    
- **Figure 3.23**: Interpolating flash ADC, reducing the number of preamplifiers.
    

---

### **Subranging (Pipelined) ADCs**

- **Operation**: Combines multiple low-resolution flash ADCs with digital error correction.
    
- **Advantages**:
    
    - Balances speed and resolution (e.g., 12-bit, 65MSPS in the AD6640).
        
    - Digital correction improves accuracy.
        
- **Challenges**:
    
    - Pipeline latency (multiple clock cycles delay).
        
    - Requires precise DAC linearity.
        
- **Example**: The AD9220 (12-bit, 10MSPS) uses a four-stage pipeline with error correction.
    

**Figures of Interest**:

- **Figure 3.25**: AD6640 block diagram, showing two-stage subranging with error correction.
    
- **Figure 3.27**: Latency timing diagram for pipelined ADCs.
    

---

### **Bit-Per-Stage (Serial or Ripple) ADCs**

- **Operation**: Processes one bit per stage, with residue passed to subsequent stages.
    
- **Variants**:
    
    - **Binary Ripple**: Suffers from residue discontinuities, limiting speed.
        
    - **MagAmp (Folding)**: Uses magnitude amplifiers for smoother residue transitions, enabling higher speeds.
        
- **Example**: The AD9288-100 (8-bit, 100MSPS) combines MagAmp stages with a 3-bit flash ADC.
    

**Figures of Interest**:

- **Figure 3.32**: MagAmp stage transfer function, showing continuous residue output.
    
- **Figure 3.35**: AD9288-100 architecture, highlighting the combination of MagAmp and flash stages.
    

---

### **Key Themes and Trends**

1. **Lower Supply Voltages**: +3V ADCs are rising in popularity for portable devices.
    
2. **Noise Sensitivity**: Critical in low-voltage designs, requiring robust layout and filtering.
    
3. **Architecture Trade-offs**:
    
    - SAR: Low latency, good for multiplexing.
        
    - ΣΔ: High resolution, but limited bandwidth.
        
    - Flash: Ultra-fast, but power-hungry.
        
    - Pipelined: Balanced speed/resolution with latency.
        
    - Bit-Per-Stage: Efficient for mid-speed applications.
        

**Final Note**: The chapter emphasizes the importance of selecting the right ADC architecture based on application requirements (e.g., speed, resolution, power, and latency). It also underscores the role of digital correction and calibration in modern high-performance ADCs.

### Section 4: DACs for DSP Applications

#### **DAC Structures**

The chapter begins by discussing various DAC structures, focusing on the **Kelvin divider** (or "string DAC"), which is one of the simplest voltage-output DACs. It consists of 2N2N equal resistors in series, with switches selecting the appropriate tap for the output. Key features include:

- **Monotonicity**: Guaranteed even if resistors are mismatched.
    
- **Low glitch**: Only two switches operate during transitions.
    
- **Drawback**: High resistor count for large NN, making it impractical for high resolution.
    

An analogous **current-output DAC** uses 2N2N parallel resistors or current sources. Like the Kelvin divider, it is monotonic but rarely used standalone due to complexity. Both are termed **fully decoded** or **thermometer DACs** and are often components in segmented DACs.

#### **Segmented DACs**

Segmented DACs combine a fully decoded DAC (for MSBs) with another structure (e.g., binary-weighted or R-2R ladder) for LSBs. This hybrid approach ensures monotonicity while reducing component count. Examples include:

- **Kelvin-Varley divider**: Subdivides one resistor of a Kelvin divider for finer resolution.
    
- **Current segmented DACs**: Used in high-speed applications (e.g., the AD9772 TxDAC™), where MSBs are thermometer-decoded and LSBs are binary-weighted.
    

#### **Multiplying DACs (MDACs)**

All DACs multiply the reference voltage by the digital code, but true MDACs support a wide VrefVref​ range (including 0V). Semi-multiplying DACs allow VrefVref​ variations (e.g., 10:1).

#### **Low Distortion DAC Architectures**

For high SFDR in communications (e.g., DDS), **current-mode switching** is preferred. Binary-weighted DACs suffer code-dependent glitches, while **thermometer DACs** (one switch per code level) minimize glitches but are impractical for high resolution. **Segmentation** (e.g., 5 MSBs as thermometer, 5 LSBs as binary) balances performance and complexity. The AD9772 uses three segments (5+4+5 bits) with 51 switches.

#### **DAC Logic**

Modern DACs feature **double-buffered** input latches, enabling:

1. Flexible data loading (parallel, serial, byte-wise).
    
2. Asynchronous input with synchronous output updates.
    
3. Simultaneous updates across multiple DACs.  
    Serial interfaces reduce noise and pin count, while **daisy-chaining** allows multiple DACs to share a serial port. High-density DACs integrate multiple channels (e.g., 16× 8-bit DACs in one package).
    

#### **Interpolating DACs**

Oversampling and digital interpolation ease analog filter requirements:

- **Example**: A 30 MSPS DAC with 10 MHz output requires a 10-pole filter to attenuate the 20 MHz image. Doubling the update rate to 60 MSPS reduces the filter to 5–6 poles.
    
- The AD9772 uses 2× oversampling, pushing images higher (e.g., 240 MHz for a 60 MHz signal at 150 MSPS).
    

#### **Sigma-Delta DACs**

These are mostly digital, using:

1. An **interpolation filter** to increase the sample rate.
    
2. A **Σ-Δ modulator** to shape quantization noise away from the signal band.
    
3. A **1-bit DAC** (intrinsically linear) or **multibit DAC** (e.g., AD185x series with D2SD2S scrambling for improved THD+N).
    

#### **Direct Digital Synthesis (DDS)**

DDS systems generate frequencies digitally with high resolution. Key components:

- **Phase accumulator**: Incremented by a tuning word MM each clock cycle.
    
- **Lookup table**: Stores sine/cosine amplitudes.
    
- **DAC**: Converts digital amplitudes to analog.  
    The output frequency is fo=M⋅fc2nfo​=2nM⋅fc​​, offering fine resolution (e.g., sub-Hz for n=32n=32). The AD9850 (125 MSPS) includes phase modulation and a comparator for clock generation. DDS advantages include rapid frequency switching and low phase noise, but images require filtering.
    

#### **Key Figures**

- **Figure 4.1**: Kelvin divider (string DAC) for voltage output.
    
- **Figure 4.2**: Current-output thermometer DAC.
    
- **Figure 4.5**: 5-bit thermometer DAC minimizing glitches.
    
- **Figure 4.7**: AD9772’s segmented core (5+4+5 bits).
    
- **Figure 4.10**: Analog filter requirements with/without oversampling.
    
- **Figure 4.12**: Σ-Δ DAC architectures (1-bit vs. multibit).
    
- **Figure 4.15**: Flexible DDS system with phase accumulator.

### Section 5: Fast Fourier Transforms

#### **The Discrete Fourier Transform (DFT)**

- **Historical Context**: The DFT originates from Jean Baptiste Joseph Fourier's work in 1807, which proposed that any continuous periodic signal could be represented as a sum of sinusoids. Despite initial controversy (e.g., Lagrange's objections), Fourier's theory became foundational for digital signal processing (DSP).
    
- **Key Concepts**:
    
    - Converts time-domain signals to frequency-domain representations and vice versa.
        
    - Essential for filter design (e.g., deriving impulse responses from frequency responses).
        
    - The DFT operates on sampled, periodic signals. Mathematical periodicity is enforced by repeating finite samples (N) "end-to-end" (Figure 5.2).
        
- **DFT Equation**:
    
    X(k)=1N∑n=0N−1x(n)e−j2πnk/NX(k)=N1​n=0∑N−1​x(n)e−j2πnk/N
    - X(k)X(k): Frequency output at the kthkth spectral point.
        
    - x(n)x(n): Time-domain sample.
        
    - Basis functions: Cosine (real) and sine (imaginary) waves (Figure 5.4).
        

---

#### **Applications of the DFT**

- **Digital Spectral Analysis**: Used in spectrum analyzers, speech processing, imaging, and pattern recognition.
    
- **Filter Design**: Links time-domain impulse responses and frequency-domain responses (Figure 5.1).
    
- **FFT Relationship**: The Fast Fourier Transform (FFT) is an efficient algorithm to compute the DFT.
    

---

#### **The Fast Fourier Transform (FFT)**

- **Purpose**: Reduces DFT computational complexity from O(N2)O(N2) to O(Nlog⁡N)O(NlogN) by exploiting symmetry and periodicity of "twiddle factors" (WNnk=e−j2πnk/NWNnk​=e−j2πnk/N) (Figures 5.11–5.12).
    
- **Radix-2 FFT**:
    
    - Breaks DFT into 2-point "butterfly" operations (Figure 5.13).
        
    - Decimation-in-time (DIT) and decimation-in-frequency (DIF) are two common approaches (Figures 5.14–5.19).
        
    - Requires bit-reversal reordering of input/output data (Figure 5.16).
        
- **Radix-4 FFT**: For NN as a power of 4, further reduces multiplications but increases data addressing complexity (Figures 5.20–5.21).
    

---

#### **FFT Hardware Implementation and Benchmarks**

- **Memory Requirements**: NN points each for real data, imaginary data, and twiddle factors.
    
- **Fixed vs. Floating Point**:
    
    - Fixed-point DSPs (e.g., 16-bit) require scaling to prevent overflow (block floating-point method).
        
    - Floating-point DSPs (e.g., 32-bit) avoid scaling but are slower.
        
- **Benchmarks**: Performance varies by DSP architecture (e.g., Analog Devices’ ADSP-TS001 TigerSHARC™ processes a 1024-point FFT in 69µs) (Figure 5.22).
    

---

#### **DSP Requirements for Real-Time FFT Applications**

- **Frame-Based Processing**: FFT must complete within the acquisition time of the next data frame.
    
- **Bandwidth Constraints**:
    
    - Max signal bandwidth = fs/2fs​/2, where fsfs​ is the sampling rate.
        
    - Frequency resolution = fs/Nfs​/N (Figure 5.24).
        
- **Processing Gain**:
    
    - FFT noise floor drops by 10log⁡10(N/2)10log10​(N/2) dB (e.g., 27 dB for N=1024N=1024) (Figure 5.25).
        

---

#### **Spectral Leakage and Windowing**

- **Leakage Cause**: Non-integral cycles of a sinewave in the data window create discontinuities, spreading energy into sidelobes (Figures 5.26–5.27).
    
- **Windowing Solutions**: Multiply time-domain data by window functions to taper signal edges, reducing sidelobes at the cost of main lobe broadening.
    
    - Common windows: Hamming, Blackman, Hanning, and Blackman-Harris (Figures 5.28–5.29).
        
    - Trade-offs: Sidelobe suppression vs. main lobe width (Figures 5.30–5.31).
        

---

#### **Key Figures**

- **Figure 5.2**: Fourier transform family, highlighting the DFT’s role for sampled, periodic signals.
    
- **Figure 5.4**: Visualization of DFT basis function correlation.
    
- **Figure 5.12**: FFT vs. DFT computational efficiency (e.g., 683:1 for N=4096N=4096).
    
- **Figure 5.22**: DSP benchmark comparisons for FFT performance.
    
- **Figure 5.31**: Window function trade-offs (e.g., Blackman offers -58 dB sidelobes but wider main lobe).
    

---

#### **Conclusion**

This chapter provides a comprehensive overview of FFTs, covering theoretical foundations (DFT/FFT mathematics), practical implementations (hardware considerations, real-time constraints), and spectral analysis techniques (windowing). The FFT’s efficiency and versatility make it indispensable in DSP applications, from telecommunications to audio processing.

### Section 6: Digital Filters

This chapter provides a comprehensive overview of digital filters, their types, design techniques, implementation, and applications. Below is a detailed summary organized by the headers in the original text.

---

## **INTRODUCTION**

Digital filtering is a powerful tool in DSP, offering advantages over analog filters:

- **High accuracy** (no component tolerances or drift).
    
- **Linear phase response** (for FIR filters).
    
- **Adaptive capabilities** (adjustable under software control).
    
- **Ease of simulation and design**.
    

However, real-time operation requires computations to complete within the sampling period (1/fs1/fs​), limiting bandwidth based on DSP speed.

**Key Components:**

- **Analog anti-aliasing filter** (before ADC).
    
- **Digital filter** (processes sampled data).
    
- **Reconstruction filter** (after DAC).
    

**Example:** A 6-pole analog Chebyshev filter (0.5dB ripple) is compared to a 129-tap FIR filter (0.002dB ripple, linear phase). The FIR filter achieves sharper rolloff and better performance.

**Figure 6.3** compares analog vs. digital filter frequency responses.

---

## **DIGITAL VERSUS ANALOG FILTERING**

**Comparison (Figure 6.2):**

|**Digital Filters**|**Analog Filters**|
|---|---|
|High accuracy, no drift|Component tolerances cause drift|
|Linear phase (FIR)|Non-linear phase|
|Adaptive filtering possible|Difficult to adapt|
|Computationally intensive at high frequencies|Required for high frequencies|

**Real-Time Constraints (Figure 6.4):**

- Signal bandwidth fafa​ → Sampling frequency fs≥2fafs​≥2fa​.
    
- Computation time per sample must be <1/fs<1/fs​.
    
- Depends on filter taps, DSP speed (MAC operations), and efficiency (circular buffering, zero-overhead looping).
    

---

## **FINITE IMPULSE RESPONSE (FIR) FILTERS**

### **Characteristics (Figure 6.5):**

- Finite duration impulse response.
    
- Linear phase (if symmetric).
    
- No feedback → Always stable.
    
- Computationally intensive (more taps than IIR).
    

### **Moving Average Filter (Figures 6.6–6.10):**

- Simplest FIR filter (equal coefficients).
    
- Smooths data but has poor stopband attenuation (sin⁡(x)/xsin(x)/x response).
    
- **Step response:** No overshoot, but slow rise time.
    

### **General FIR Structure (Figures 6.11–6.12):**

- Output y(n)=∑k=0N−1h(k)x(n−k)y(n)=∑k=0N−1​h(k)x(n−k).
    
- Requires NN multiply-accumulates (MACs) per output.
    

### **Implementation (Figures 6.13–6.15):**

- **Circular buffering** optimizes memory access.
    
- **DSP code example:** ADSP-21xx assembly (zero-overhead looping).
    

### **Design Techniques (Figures 6.16–6.29):**

1. **Windowed-Sinc Method (Figure 6.19):**
    
    - Truncate ideal sinc impulse response + apply window (e.g., Hamming, Blackman).
        
2. **Fourier Series with Windowing (Figure 6.20):**
    
    - Expand H(f)H(f) as Fourier series → coefficients = filter taps.
        
3. **Frequency Sampling (Figure 6.21):**
    
    - Specify H(f)H(f) as spectral points → inverse FFT → truncate + window.
        
4. **Parks-McClellan (Remez Exchange) (Figures 6.22–6.28):**
    
    - CAD-based optimal equiripple design.
        
    - Example: Audio LPF (44.1kHz, 69 taps, 96dB stopband).
        

### **Highpass/Bandpass Conversion (Figure 6.29):**

- **Spectral inversion:** Flip coefficient signs + add 1 to center tap.
    
- **Spectral reversal:** Flip every other coefficient.
    

---

## **INFINITE IMPULSE RESPONSE (IIR) FILTERS**

### **Characteristics (Figure 6.31):**

- Infinite impulse response (feedback).
    
- More efficient (fewer taps) but non-linear phase.
    
- Can be unstable.
    
- Designed from analog prototypes (Butterworth, Chebyshev, etc.).
    

### **Biquad Structure (Figures 6.32–6.34):**

- Second-order sections:
    
    - Direct Form 1 (4 registers).
        
    - Direct Form 2 (2 registers).
        
- Transfer function:
    
    H(z)=∑bkz−k1+∑akz−kH(z)=1+∑ak​z−k∑bk​z−k​

### **Design Methods (Figures 6.35–6.37):**

1. **Analog Prototype → Digital:**
    
    - Bilinear transform, impulse invariance, matched zz-transform.
        
2. **Filter Types:**
    
    - Butterworth (maximally flat).
        
    - Chebyshev (passband/stopband ripple).
        
    - Elliptic (fastest rolloff, ripple in both bands).
        
    - Bessel (linear phase).
        

### **Throughput:**

- Example: ADSP-2189M → 7 cycles/biquad → 93ns/section.
    

---

## **MULTIRATE FILTERS**

### **Decimation (Figures 6.39–6.40):**

- Reduce sampling rate by MM.
    
- Must avoid aliasing (pre-filtering required).
    
- **Efficiency:** Decimate first → reduce computations.
    

### **Interpolation (Figures 6.41–6.43):**

- Increase sampling rate by LL (insert zeros + interpolate).
    
- Eases anti-imaging filter requirements (e.g., CD players).
    

### **Fractional Rate Conversion (Figure 6.44):**

- Combine interpolation (LL) and decimation (MM).
    
- Example: CD (44.1kHz) → DAT (48kHz) using L=160L=160, M=147M=147.
    

---

## **ADAPTIVE FILTERS**

### **Concept (Figure 6.45):**

- Adjust coefficients to minimize error (d(n)−y(n)d(n)−y(n)).
    
- Algorithms: LMS (Least Mean Squares), RLS (Recursive Least Squares).
    

### **Applications:**

1. **Echo Cancellation (Figure 6.46):**
    
    - Training sequence initializes coefficients.
        
2. **Speech Compression (LPC, Figures 6.47–6.50):**
    
    - Model vocal tract with all-pole IIR/lattice filters.
        
    - Example: GSM (128kbps → 2.4kbps).
        

---

## **CONCLUSION**

- **FIR:** Linear phase, stable, but computationally heavy.
    
- **IIR:** Efficient, but non-linear phase, potential instability.
    
- **Multirate:** Enables flexible sample-rate conversion.
    
- **Adaptive:** Critical for comms (echo cancellation, speech coding).
    

**Key Figures:**

- **6.3:** Analog vs. digital filter response.
    
- **6.11:** General FIR structure.
    
- **6.32:** IIR biquad (Direct Form 1).
    
- **6.44:** Fractional sample-rate conversion.
    
- **6.48:** LPC speech compression.
    

This chapter bridges theory and practical implementation, emphasizing DSP trade-offs and CAD tools for filter design.

### Section 7: DSP Hardware

This section provides a comprehensive overview of Digital Signal Processor (DSP) hardware, focusing on architectures, requirements, and key features of DSPs from Analog Devices. Below is a detailed breakdown of the content:

---

### **1. Microcontrollers, Microprocessors, and Digital Signal Processors (DSPs)**

- **Computers** excel in two areas:
    
    - **Data manipulation** (e.g., word processing, databases).
        
    - **Mathematical calculation** (e.g., DSP, engineering simulations).
        
- **General-purpose computers** prioritize features over efficiency, while **DSPs** require fast, predictable execution for real-time processing.
    
- **Key Differences**:
    
    - **Microcontrollers** (e.g., 8051): Optimized for I/O and control, not speed.
        
    - **Microprocessors** (e.g., Pentium): Single-chip CPUs with CISC or RISC architectures.
        
    - **DSPs** (e.g., ADSP-21xx): Optimized for fast, repetitive math (e.g., multiply-accumulate operations).
        

**Figure 7.1**: Contrasts general computing (data manipulation vs. math calculation) and highlights DSP’s need for predictable timing.  
**Figure 7.2**: Compares microcontrollers, microprocessors, and DSPs in terms of features and applications.

---

### **2. DSP Requirements**

The core DSP operation is the **sum-of-products (dot product)**, critical for FFTs, filters, and matrix math. DSPs must meet five key requirements:

1. **Fast Arithmetic**: Single-cycle multiply-accumulate (MAC) operations.
    
2. **Extended Precision**: Accumulators with overflow protection (e.g., 40-bit in ADSP-21xx).
    
3. **Dual Operand Fetch**: Simultaneous data and coefficient fetches via Harvard architecture.
    
4. **Circular Buffering**: Hardware support for delay lines in FIR filters.
    
5. **Zero-Overhead Looping**: Eliminates loop control instructions.
    

**Figure 7.3**: Illustrates the dot product operation and DSP requirements.  
**Figures 7.4A–C**: Compare Von Neumann, Harvard, and Analog Devices’ modified Harvard architectures.

---

### **3. ADSP-21xx 16-Bit Fixed-Point DSP Core**

- **Architecture**:
    
    - Modified Harvard architecture with separate program/data memory buses.
        
    - Computational units: **ALU**, **MAC**, and **shifter** (Figure 7.7).
        
    - **Data Address Generators (DAGs)**: Enable circular buffering and bit-reversal for FFTs.
        
    - **Program Sequencer**: Supports zero-overhead loops and interrupts.
        
- **On-Chip Peripherals**: Serial ports, timers, DMA, and powerdown modes (Figures 7.14–7.19).
    
- **Roadmap**: Evolution from ADSP-2100 to ADSP-219x, emphasizing code compatibility and power efficiency (Figures 7.22–7.26).
    

**Figure 7.6**: FIR filter assembly code demonstrating single-cycle MAC operations.  
**Figure 7.9–7.13**: Detail computational units, DAGs, and sequencer features.

---

### **4. Fixed-Point vs. Floating Point**

- **Fixed-Point**:
    
    - 16-bit formats (e.g., 1.15 fractional).
        
    - Efficient but requires careful scaling to avoid overflow.
        
- **Floating-Point**:
    
    - 32-bit IEEE-754 format (Figure 7.28).
        
    - Larger dynamic range, easier programming.
        
- **Trade-offs**: Floating-point DSPs (e.g., SHARC) handle both fixed and floating-point equally well.
    

**Figure 7.27**: 16-bit fixed-point 1.15 format.  
**Figure 7.29**: Compares fixed vs. floating-point precision and dynamic range.

---

### **5. ADI SHARC Floating Point DSPs**

- **ADSP-2106x SHARC**:
    
    - Super Harvard Architecture with dual-ported memory (Figure 7.30).
        
    - 32/40-bit floating-point, 32-bit fixed-point support.
        
    - **Key Features**: 100 MHz core, 300 MFLOPS peak, glueless multiprocessing (Figure 7.31).
        
- **ADSP-2116x SIMD Core**:
    
    - Dual computational units for parallel processing (Figure 7.33).
        
    - 600 MFLOPS peak at 100 MHz.
        

**Figure 7.37**: Benchmark performance for SHARC family (FFT, FIR, matrix multiply).  
**Figure 7.38–7.39**: Multiprocessing topologies using link ports and external buses.

---

### **6. TigerSHARC: Static Superscalar DSP**

- **ADSP-TS001**:
    
    - Combines RISC, VLIW, and DSP features (Figure 7.40).
        
    - Supports 8-, 16-, 32-bit data natively.
        
    - **Performance**: 1200 MMACs/s (16-bit), 300 MMACs/s (32-bit).
        
- **Architecture**:
    
    - Two computational blocks (X/Y), 128-bit memory buses (Figure 7.42).
        
    - Branch prediction and orthogonal addressing.
        

**Figure 7.44**: Example assembly code for parallel operations.  
**Figure 7.48–7.49**: Benchmark results for 16-bit and 32-bit modes.

---

### **7. DSP Evaluation and Development Tools**

- **EZ-KIT Lite**: Starter boards for ADSP-218x, 21160, 21065L (Figures 7.52–7.54).
    
- **Emulators**: JTAG-based tools like APEX-ICE (Figure 7.56) and TREK-ICE (Figure 7.57).
    
- **Software**:
    
    - **VisualDSP++**: Integrated IDE with C/C++ support (Figure 7.59).
        
    - **Algorithm Libraries**: Optimized DSP functions.
        
- **Collaborative Ecosystem**: Third-party tools for audio, telecom, imaging (Figure 7.64).
    

---

### **Key Takeaways**

- DSPs are optimized for **real-time math operations**, with features like **Harvard architecture**, **zero-overhead looping**, and **hardware circular buffers**.
    
- **Fixed-point DSPs** (e.g., ADSP-21xx) are efficient but require careful scaling, while **floating-point DSPs** (e.g., SHARC) simplify programming.
    
- **TigerSHARC** introduces superscalar parallelism for telecom and multimedia.
    
- Analog Devices provides **comprehensive tools** (EZ-KIT, emulators, VisualDSP++) for DSP development.
    

This section serves as a detailed guide to DSP hardware, from core architectures to practical development tools, with extensive figures illustrating key concepts.

### Section 8: Interfacing To DSPs

This chapter discusses various methods for interfacing analog-to-digital converters (ADCs), digital-to-analog converters (DACs), and other peripherals to digital signal processors (DSPs). It covers parallel and serial interfacing techniques, timing considerations, and practical examples using specific DSPs and converter chips. Below is a detailed summary organized by the headers provided in the document.

---

### **INTRODUCTION**

The chapter begins by highlighting advancements in mixed-signal processing, where modern DSPs (e.g., ADSP-21ESP202) integrate ADCs and DACs, reducing external interface complexity. Standalone ADCs/DACs and CODECs (e.g., AD73311, AD73322) are also designed for minimal "glue logic" when interfacing with DSPs. The section emphasizes understanding data transfer and timing for seamless integration.

---

### **PARALLEL INTERFACING TO DSP PROCESSORS: READING DATA FROM MEMORY-MAPPED PERIPHERAL ADCS**

- **Key Concepts:**
    
    - DSPs read data from memory-mapped ADCs using parallel interfaces.
        
    - Timing is critical, especially when the ADC uses an external sampling clock (to avoid DSP clock-induced jitter).
        
    - The process involves:
        
        1. ADC initiates conversion upon a sampling clock pulse.
            
        2. ADC asserts "conversion complete," triggering a DSP interrupt (IRQ).
            
        3. DSP places the ADC’s address on the memory bus and asserts a memory select line (e.g., DMS).
            
        4. The address decoder enables the ADC’s chip select.
            
        5. DSP asserts the read signal (RD), and the ADC places data on the bus.
            
        6. Data is latched into the DSP on the rising edge of RD.
            
- **Timing Requirements:**
    
    - Peripheral devices must meet DSP timing specs (e.g., `t_ASR`, `t_RDD`, `t_RDH`).
        
    - If the ADC’s access time exceeds DSP specs (e.g., ADSP-2189M’s `t_RDD = 1.65ns` at 75MHz), wait states must be added.
        
- **Example:**
    
    - **AD7854/AD7854L ADC:** A 12-bit, 200kSPS ADC interfaced with the ADSP-2189M.
        
        - Requires **5 wait states** to meet timing (`t_RDD` extended to 68.15ns vs. ADC’s 50ns access time).
            
        - Figure 8.7 shows the interface diagram.
            

---

### **PARALLEL INTERFACING TO DSP PROCESSORS: WRITING DATA TO MEMORY-MAPPED DACS**

- **Key Concepts:**
    
    - DACs often use double buffering: an input latch (async DSP interface) and a DAC latch (clocked by an external sampling clock).
        
    - The DAC latch strobe generates a DSP interrupt, signaling readiness for new data.
        
    - The write process involves:
        
        1. DAC asserts IRQ.
            
        2. DSP places the DAC’s address on the bus and asserts DMS.
            
        3. Address decoder enables DAC’s chip select.
            
        4. DSP asserts WR, and data is placed on the bus.
            
        5. Data is latched into the DAC on WR’s rising edge.
            
- **Timing Requirements:**
    
    - Peripheral must meet DSP specs like `t_WP` (write pulse width) and `t_DW` (data setup time).
        
    - Example: **AD5340 DAC** requires **2 wait states** for ADSP-2189M compatibility (`t_WP` extended to 30.25ns vs. DAC’s 20ns requirement).
        
- **Example:**
    
    - Figure 8.14 shows the AD5340 interface.
        

---

### **SERIAL INTERFACING TO DSP PROCESSORS**

- **ADSP-21xx Serial Port Features (Figure 8.15):**
    
    - Separate transmit/receive sections, double-buffered registers.
        
    - Supports 3–16-bit words, hardware companding (µ-law/A-law).
        
    - Clock and frame sync can be internally or externally generated.
        
- **Serial ADC Interface (Receive Mode):**
    
    - **Example: AD7853L ADC** (12-bit, 200kSPS):
        
        - Uses alternate framing mode (Figure 8.17).
            
        - Meets ADSP-2189M’s `t_SCS` (4ns setup) and `t_SCH` (7ns hold) easily.
            
        - Figure 8.20 shows the interface.
            
- **Serial DAC Interface (Transmit Mode):**
    
    - **Example: AD5322 DAC** (12-bit, dual-channel):
        
        - 16-bit serial word (4 control + 12 data bits).
            
        - Figure 8.22 shows the interface.
            

---

### **INTERFACING I/O PORTS, ANALOG FRONT ENDS, AND CODECS TO DSPS**

- **Integrated Solutions:**
    
    - **AD73322 CODEC:** Dual 16-bit ADCs/DACs, 64kSPS, 77dB SNR (Figure 8.23).
        
    - **AD73422 dspConverter™:** Combines AD73322 CODEC with an ADSP-2185L DSP (52 MIPS) in a BGA package (Figure 8.25).
        
- **Interface Example:**
    
    - AD73322 connects to ADSP-218x via serial port (Figure 8.24).
        

---

### **HIGH-SPEED INTERFACING**

- **Example System (Figure 8.26):**
    
    - ADSP-21065L SHARC DSP interfaced with:
        
        - **AD9201 ADC:** Dual 10-bit, 20MSPS.
            
        - **AD9761 DAC:** Dual 10-bit, 20MSPS.
            
    - Uses parallel interfaces and DMA for high-speed data transfer.
        

---

### **DSP SYSTEM INTERFACE**

- **ADSP-2189M System (Figure 8.27):**
    
    - Supports full memory mode with EPROM, external memory, and serial devices.
        
    - Programmable wait states for slow peripherals.
        
    - Flexible I/O (4 interrupts, 7 GPIOs, 2 serial ports).
        

---

### **KEY FIGURES OF INTEREST**

1. **Figure 8.1:** Parallel ADC interface to ADSP-21xx.
    
2. **Figure 8.6:** Timing comparison for ADSP-2189M and AD7854L.
    
3. **Figure 8.15:** ADSP-21xx serial port block diagram.
    
4. **Figure 8.23:** AD73322 CODEC block diagram.
    
5. **Figure 8.26:** High-speed ADC/DAC interface to SHARC DSP.
    

This chapter provides a comprehensive guide to interfacing ADCs, DACs, and CODECs with DSPs, emphasizing timing analysis, practical examples, and integrated solutions.

### Section 9: DSP Applications

This chapter explores a wide range of applications for Digital Signal Processing (DSP) across various industries, including telecommunications, audio processing, motor control, and more. Below is a detailed summary organized by the headers provided in the document.

---

### **High Performance Modems for Plain Old Telephone Service (POTS)**

Modems (modulator/demodulators) enable digital data transmission over analog telephone lines (POTS). Key challenges include noise, echo, and channel imperfections.

- **Modulation Techniques:**
    
    - **ASK (Amplitude Shift Keying):** Low-speed (<100 bits/s).
        
    - **FSK (Frequency Shift Keying):** Medium-speed (up to 1,200 bits/s).
        
    - **PSK (Phase Shift Keying):** Higher efficiency (2,400–4,800 bits/s).
        
    - **QAM (Quadrature Amplitude Modulation):** Combines PSK and ASK for high speeds (9,600–33,600 bits/s).
        
- **V.90/V.92 Standards:**
    
    - **V.90:** Downstream (56Kbps PCM), upstream (33.6Kbps QAM).
        
    - **V.92:** Supports 56Kbps in both directions.
        
- **Key DSP Functions:**
    
    - Echo cancellation, adaptive equalization, Viterbi decoding, and scrambling.
        
- **Figure 9.3:** Simplified block diagram of a V.90 modem, highlighting DSP’s role in encoding and decoding.
    

---

### **Remote Access Server (RAS) Modems**

RAS modems facilitate remote network access (e.g., internet connectivity).

- **Components:**
    
    - Analog/digital modems, ISDN, VoIP, and routers.
        
- **ADSP-21mod870:** A DSP-based RAS modem chip supporting V.34/56K and V.42 standards.
    
- **Applications:**
    
    - ISPs, corporate LANs, and small office/home office (SOHO) setups.
        
- **Figure 9.7:** Block diagram of a DSP-based RAS modem.
    

---

### **ADSL (Asymmetric Digital Subscriber Line)**

ADSL provides high-speed internet over existing copper telephone lines.

- **Features:**
    
    - **Downstream:** Up to 8 Mbps.
        
    - **Upstream:** Up to 640 Kbps.
        
    - Simultaneous voice and data transmission.
        
- **DSP Role:**
    
    - Uses DMT (Discrete Multi-Tone) modulation for efficient bandwidth use.
        
- **Figure 9.10:** ADSL system diagram showing the "last mile" connection.
    

---

### **Digital Cellular Telephones**

DSP is critical in digital cellular systems like GSM, TDMA, and CDMA.

- **GSM Handset (Figure 9.14):**
    
    - **Speech Encoding:** Linear Predictive Coding (LPC) compresses voice to 13 Kbps.
        
    - **Discontinuous Transmission (DTX):** Saves power by transmitting only during speech.
        
- **SoftFone™ & Othello™ Chipsets:**
    
    - **AD20msp430:** Baseband processor with DSP (ADSP-218x) and ARM controller.
        
    - **Othello Radio:** Direct-conversion architecture reduces component count (Figure 9.16).
        

---

### **Analog and Digital Cellular Basestations**

- **Analog Basestations (Figure 9.18):**
    
    - Superheterodyne receivers with multiple IF stages.
        
- **Digital Basestations (Figure 9.19):**
    
    - **Narrowband:** One ADC per channel.
        
    - **Wideband:** Single ADC processes multiple channels (e.g., ADI’s SoftCell™ chipset).
        
- **Software Radios:** Enable multi-standard support (GSM, CDMA, etc.).
    

---

### **Motor Control**

DSP enables precise control of AC induction motors via vector control.

- **Key Techniques:**
    
    - Field-oriented control, PWM modulation, and resolver-to-digital conversion.
        
- **ADMCF328 (Figure 9.23):**
    
    - Integrated DSP motor controller with flash memory.
        
- **Applications:** Industrial drives, electric vehicles.
    

---

### **Codecs and DSPs in Voiceband and Audio Applications**

- **ADSP-21ESP202:** Single-chip solution for hands-free car kits (Figure 9.24).
    
- **AD1819B SoundPort® Codec:** PC audio/modem applications with AC’97 compliance.
    
- **SHARC DSP (Figure 9.27):** High-quality audio processing for home theater and automotive systems.
    
- **Multi-Channel Audio Mixer (Figure 9.28):** Uses dual ADSP-21160s for real-time mixing/effects.
    

---

### **A Sigma-Delta ADC with Programmable Digital Filter**

- **AD7725 (Figure 9.29):**
    
    - 16-bit sigma-delta ADC with programmable FIR filter (up to 108 taps).
        
    - Supports lowpass, highpass, bandpass, and bandstop filtering.
        

---

### **Other DSP Applications (Figure 9.30)**

- Voice recognition, cable modems, medical imaging (MRI, ultrasound), military radar, and more.
    

---

### **Key Figures**

- **Figure 9.1:** POTS modem channel with echo paths.
    
- **Figure 9.4:** 16-QAM signal constellation.
    
- **Figure 9.5:** Comparison of V.34 and V.90 modems.
    
- **Figure 9.16:** Direct conversion (superhomodyne) vs. superheterodyne receiver.
    
- **Figure 9.21:** Motor control block diagram.
    
- **Figure 9.29:** AD7725 ADC with programmable filter response.
    

This chapter highlights DSP’s transformative role in modern technology, from communication systems to industrial automation and consumer electronics.

### Section 10: Hardware Design



