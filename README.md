# RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output

<div align="center">

![EDA](https://img.shields.io/badge/OpenSource-EDA%20Tools-purple?style=for-the-badge\&logo=opensourceinitiative)
![RISC-V](https://img.shields.io/badge/RISC--V-OpenSource-blue?style=for-the-badge\&logo=riscv)
![VSD](https://img.shields.io/badge/VSD-Tapeout%20Program-orange?style=for-the-badge\&logo=verilog)
![Semiconductor](https://img.shields.io/badge/India-Semiconductor%20Ecosystem-green?style=for-the-badge)
![India](https://img.shields.io/badge/Made%20in-India-green?style=for-the-badge\&logo=india)

</div>

<br>

## 👋 Welcome

This repository documents **my personal journey through the RISC-V SoC Tapeout Program (VSD)**.
Here, I record my **week-by-week progress**, from setting up tools, to RTL design, to synthesis, physical design and finally preparing a **tapeout-ready SoC**.

> *“Learning to design a System-on-Chip (SoC) from basic RTL to GDSII using open-source tools — part of India’s largest collaborative RISC-V tapeout initiative, empowering 3500+ participants to build silicon and advance the nation’s semiconductor ecosystem.”*

<br>

## 🎯 Program Flow: From Idea → Silicon
```mermaid
graph LR
    TI[🛠️🔵 Tools Installation] --> RTL[📝🟢 RTL Design]
    RTL --> SYN[🔄🟡 Synthesis]
    SYN --> PD[🏗️🟠 Physical Design]
    PD --> V[✅🟣 Verification & Signoff]
    V --> TO[🎯🔴 Tapeout Ready 🚀]
```
<br>

## 🛠️ Tools & Skills

<div align="center">

![Verilog](https://img.shields.io/badge/Verilog-RTL-blue?logo=verilog\&style=for-the-badge)
![Yosys](https://img.shields.io/badge/Yosys-Synthesis-red?logo=gnu\&style=for-the-badge)
![GTKWave](https://img.shields.io/badge/GTKWave-Simulation-green?logo=waveform\&style=for-the-badge)
![OpenLane](https://img.shields.io/badge/OpenLane-PnR-purple?logo=open-access\&style=for-the-badge)
![Magic](https://img.shields.io/badge/Magic-Layout-orange?logo=magic\&style=for-the-badge)
![SCL180](https://img.shields.io/badge/SCL180-PDK-lightgrey?logo=chip\&style=for-the-badge)

</div>

<br>

## 🌟 Program Objectives & Scope

| Aspect                    | Details                                                                             |
| ------------------------- | ----------------------------------------------------------------------------------- |
| 🎓 **Learning Path**      | End-to-end SoC Design covering RTL → Synthesis → Physical Design → Tapeout          |
| 🛠️ **Tools Ecosystem**   | Open-source EDA stack (Icarus Verilog, Yosys, OpenLane, Magic, KLayout, Sky130 PDK) |
| 🏭 **Industry Relevance** | Mimics real-world semiconductor design methodologies & tapeout flows                |
| 🤝 **Collaboration**      | Contributing alongside 3500+ participants in India’s largest RISC-V SoC initiative  |
| 📈 **Scalability**        | Practical exposure to handling designs that scale from RTL to physical layout       |
| 🇮🇳 **National Impact**  | Strengthening India’s semiconductor design and VLSI ecosystem                       |


<br>

## 📅 **Week 0 — Foundation & Tools Setup**

<details>
<summary><b>🛠️ Week 0: Installing & Configuring the EDA Toolchain</b></summary>
<br>
  
Week 0 was all about **preparing the sandbox**: installing, verifying and configuring the open-source EDA environment that powers the RTL-to-GDSII flow.

* Installed and verified **Icarus Verilog**, **Yosys**, **GTKWave**.
* Explored **environment setup** for RTL simulation and synthesis.
* Prepared my system for the upcoming **RTL → GDSII flow**.

### 🔗 **Access Week 0 Details**
- [Week 0 Folder](./week0/)
- [Gist for Week 1](https://gist.github.com/tusharshenoy/gistid)

<br>

### 🔧 **Tasks Completed**

| Task  | Description                           | Tools Installed            | Status      |
| ----- | ------------------------------------- | -------------------------- | ----------- |
| **0** | Tool Installation & Environment Setup | Full Open-Source EDA Stack | ✅ Completed |

<br>

### 🛠️ **Installed Tools Overview**

| Tool               | Purpose                             | Status     |
| ------------------ | ----------------------------------- | ---------- |
| **Yosys**          | RTL synthesis & logic optimization  | ✅ Verified |
| **Icarus Verilog** | Functional simulation & compilation | ✅ Verified |
| **GTKWave**        | Waveform inspection & debugging     | ✅ Verified |
| **Ngspice**        | Analog & mixed-signal simulation    | ✅ Verified |
| **Magic VLSI**     | Layout design & DRC/LVS checks      | ✅ Verified |

<br>

**Key Learnings:**

✅ Got hands-on with open-source EDA tools.

✅ Understood how toolchains interact in the SoC design journey.

✅ Built a stable foundation for advanced tasks.


</details>


<br>

## 📅 **Week 1 — 🚀 RTL Design (Coming Soon)**

<details>
<summary><b>🛠️ Week 1: RTL Design Tasks & Learnings</b></summary>

> ⚠️ Content coming soon! You can link to a folder or Gist for detailed notes.

### 🔗 **Access Week 1 Details**
- [Week 1 Folder](./week1/)
- [Gist for Week 1](https://gist.github.com/tusharshenoy/gistid)

</details>

<br>

## 📅 **Week 2 — 🔄 Synthesis (Coming Soon)**

<details>
<summary><b>🛠️ Week 2: RTL → Gate-Level Synthesis</b></summary>

> ⚠️ Content coming soon! Link to folder or Gist for detailed tasks.

- [Week 2 Folder](./week2/)
- [Gist for Week 2](https://gist.github.com/yourusername/gistid)

</details>

<br>

## 📅 **Week 3 — 🏗️ Physical Design (Coming Soon)**

<details>
<summary><b>🛠️ Week 3: Floorplanning & Routing</b></summary>

- [Week 3 Folder](./week3/)
- [Gist for Week 3](https://gist.github.com/yourusername/gistid)

</details>

<br>

## 📌 Tracker

| Week | Activity        | Progress                                      |
| ---- | --------------- | --------------------------------------------- |
| 0    | ![Week 0](https://img.shields.io/badge/Week%200-Tools%20Setup-success?style=flat-square)  | 🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 100% |
| 1    | ![Week 1](https://img.shields.io/badge/Week%201-Upcoming-lightgrey?style=flat-square)     | ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜ 0%                       |
| 2    |![Week 1](https://img.shields.io/badge/Week%202-Upcoming-lightgrey?style=flat-square)   | ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜ 0%                       |
| 3    | ![Week 1](https://img.shields.io/badge/Week%203-Upcoming-lightgrey?style=flat-square) | ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜ 0%                       |
| 4    | ![Week 1](https://img.shields.io/badge/Week%204-Upcoming-lightgrey?style=flat-square)   | ⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜ 0%                       |

<br>

## 📊 Activity Graph (Dynamic Learning Journey)

![Tushar's Activity Graph](https://github-readme-activity-graph.vercel.app/graph?username=tusharshenoy&theme=github-compact&hide_border=true)

<br>

## 🙏 **Acknowledgments**

I am grateful to:

* [**Kunal Ghosh**](https://github.com/kunalg123) and the [**VLSI System Design (VSD) Team**](https://vsdiat.vlsisystemdesign.com/) for enabling this unique learning experience.
* [**RISC-V International**](https://riscv.org/), [**India Semiconductor Mission (ISM)**](https://ism.gov.in/), [**VLSI Society of India (VSI)**](https://vsi.org.in/), and [**Efabless**](Efabless) for supporting and driving this initiative.

<br>

## 🔗 Program Links

[![VSD Website](https://img.shields.io/badge/VSD-Official%20Website-blue?style=flat-square)](https://vsdiat.vlsisystemdesign.com/)
[![RISC-V](https://img.shields.io/badge/RISC--V-International-green?style=flat-square)](https://riscv.org/)
[![Efabless](https://img.shields.io/badge/Efabless-Platform-orange?style=flat-square)](https://efabless.com/)

<br>

## 👨‍💻 About Me

I am **Tushar Shenoy**, passionate about **VLSI design and semiconductor systems**.
This repository is not just about completing tasks, but about **documenting a learning journey** that bridges **academia → industry → real silicon**.

📌 Follow along as I share weekly updates, technical insights, and project outcomes!


🔥 *Journey from code → circuits → chips continues… Stay tuned!*




## 📅 **Week 4 — 🎯 Tapeout Preparation (Coming Soon)**

<details>
<summary><b>🛠️ Week 4: GDSII & Tapeout</b></summary>

- [Week 4 Folder](./week4/)
- [Gist for Week 4](https://gist.github.com/yourusername/gistid)

</details>

