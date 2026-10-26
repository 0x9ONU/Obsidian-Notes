```ad-question
What field are you proposing to pursue, how did you choose it, and what are your primary expectations of your future career? **If you are currently in your second or later year of graduate school**, you should make your case here for why receiving a Fellowship would result in exceptional leverage in the kind and quality of your graduate work, including your ability to pursue promising new ideas. If your field might not be easily understood as a form of applied science, mathematics, or engineering, please explain briefly why you consider it to be.
```

# Outline

**What field are you proposing?**:
- Hardware security
- FPGA Bitstream reverse engineering for secuirty
- Technical issues
	- Most bitstream reverse techniques rely on a specific type of hardware to be used on (for example a certain  Xillinx FPGA with a specific chipset), where another method often needs to be made per FPGA [3-4]
	- Want to bridge that gap
	- Additionally, even though strives had been made in the reverse engineering process, there is a ton more that can be done in in improving the time complexity of it (down from days to hours if possible) [5-7]

**How did I choose it?**:
- Discuss childhood and jailbreaking phones and other devices
- Work in undergraduate degree + hardware security course
- Importance for HW security in many fields

**Primary expectations of your future career**:
- Become a professor of a major institution
- Both advise undergraduate and graduate students to pursue research
- Work towards both mentoring future engineers and scientists to create a safer future
- Work on my own research to further my field


# Essay

Nearly everything in our modern world depends on a hardware system. Satellites coast ever gently across the night’s sky, and in the pockets of billions of people, phones can automatically find their location. Pacemakers stimulate the hearts of millions of patients to keep them alive [1]. Farmers, with the help of sensors and aerial imaging, can target and treat specific plants to increase crop yield [2]. For all its elegance, infrastructure today relies on the unverified assumption that hardware behaves exactly as its manufacturer claims. An untrustworthy individual might use a compromised satellite to secretly track someone else, or a pacemaker might fail catastrophically due to a bad chip. More alarmingly, verifying hardware authenticity is often overlooked due to its time-consuming and complex nature. This concern is especially clear with field-programmable gate arrays (FPGAs). These devices act as configurable circuits that can be programmed multiple times after manufacturing. Their logic is stored in a bitstream, which specifies the logic the FPGA will implement. Security with FPGAs depends on turning the bitstream back into logic using reverse engineering. However, state-of-the-art reverse engineering methods either cover only a single model of FPGA and can take anywhere from days to months to complete a single task [3-7]. Therefore, I propose the following field: the improvement of bitstream reverse engineering methodologies for security and trust of proprietary FPGA logic. 

I have been fascinated with this field ever since I was a child. With the advent of the 7th generation of video game console came the Nintendo Wii. I would soon become enveloped with jailbreaking it, my other consoles, and my even my phone at the time. These software and hardware exploits allowed me to not only install custom firmware on my devices, but it also taught me the crucial weak points that some devices may have. Years later, I would begin my college career and would begin my academic journey with a research fellowship that would last my whole undergraduate career. However, it was not until junior year that my love for hardware exploiting came rushing back. I took a hardware security course at my undergraduate institution, which reignited my passion for the subject. From then on, something was made crystal clear: this subject is what I want to work on for the rest of my life. 

Looking forward, I want to continue my work at any of my choice institutions into FPGA bistream reverse engineering. Specifically, I expect both conference papers and journals to be accepted in high rated publications. Afterwards, I plan on going straight into academia and becoming an assistant professor at one or more institutions. During that time, it is my primary goal to reach the future engineers of the next generation on how to use their power to create a safer and more stable future. Additionally, I want to pass the reigns to my students so that they could one day follow in my footsteps. Advising and teaching the best students possible are my two major goals for the future. I will then work my way up the ladder to one day secure my tenure and become a full professor at my home institution, where I will continue to contribute to my field until I no longer can.

## Resources

[1] D. Poulis, “Permanent cardiac pacemaker,” Dec. 2018, doi: [10.5281/ZENODO.1916544](https://doi.org/10.5281/ZENODO.1916544).

[2] https://www.nifa.usda.gov/topics/agriculture-technology

[3] T. Zhang, J. Wang, S. Guo, and Z. Chen, “A Comprehensive FPGA Reverse Engineering Tool-Chain: From Bitstream to RTL Code,” _IEEE Access_, vol. 7, pp. 38379–38389, 2019, doi: [10.1109/ACCESS.2019.2901949](https://doi.org/10.1109/ACCESS.2019.2901949).

[4] M. Cho, D. Lee, S. Lee, Y. Kim, and H.-M. Lee, “Automated Reverse Engineering Tools for FPGA Bitstream Extraction and Logic Estimation,” presented at the 2022 19th International SoC Design Conference (ISOCC), Gangneung-si, Korea, Republic of: IEEE, Oct. 2022, pp. 328–329. doi: [10.1109/ISOCC56007.2022.10031326](https://doi.org/10.1109/ISOCC56007.2022.10031326).

[5] T. Zhang, M. Tehranipoor, and F. Farahmandi, “BitFREE: On Significant Speedup and Security Applications of FPGA Bitstream Format Reverse Engineering,” presented at the 2023 IEEE European Test Symposium (ETS), Venezia, Italy: IEEE, May 2023, pp. 1–6. doi: [10.1109/ETS56758.2023.10174155](https://doi.org/10.1109/ETS56758.2023.10174155).

[6] S. Choi, Y. Eom, Y. Noh, Y. Kim, and H. Yoo, “Fast Reverse Engineering for Xilinx FPGAs,” presented at the 2026 International Conference on Electronics, Information, and Communication (ICEIC), Macau, China: IEEE, Jan. 2026, pp. 1–4. doi: [10.1109/ICEIC69189.2026.11386059](https://doi.org/10.1109/ICEIC69189.2026.11386059).

[7] A. Proulx, T. Ould-Bachir, N. Boulahia-Cuppens, and F. Cuppens, “Project Foxtrot: Abstracting the Complexity of Bitstream Reverse Engineering Through ML,” presented at the 2025 IEEE Physical Assurance and Inspection of Electronics (PAINE), Denver, CO, USA: IEEE, Oct. 2025, pp. 1–8. doi: [10.1109/PAINE66113.2025.11320186](https://doi.org/10.1109/PAINE66113.2025.11320186).