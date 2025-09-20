# 🚀 Week 0: Tools Setup & Environment Foundation

<div align="center">

![EDA](https://img.shields.io/badge/OpenSource-EDA-purple?style=for-the-badge\&logo=opensourceinitiative)
![RISC-V](https://img.shields.io/badge/RISC--V-OpenSource-blue?style=for-the-badge\&logo=riscv)
![VSD](https://img.shields.io/badge/VSD-TapeoutProgram-orange?style=for-the-badge\&logo=verilog)

</div>



## 👋 Welcome

Week 0 marks the **start of my VLSI System Design (VSD) journey**. The main goal this week was to create a **stable, fully functional environment** for all VLSI design tasks, from **RTL coding** to **layout and simulation**.

> *“Before you can build chips, you need a rock-solid foundation, a system ready to handle synthesis, simulation and layout seamlessly.”*

<br>


## 🖥️ System Configuration

I’m running a **native Ubuntu 22.04.5 LTS system**, optimized for VLSI/EDA tools.

| Specification | Required          | My System                               | Why It Matters                                                          |
| ------------- | ------------- | --------------------------------------- | ----------------------------------------------------------------------- |
| 🐧 OS         | Ubuntu 20.04+ | Ubuntu 22.04.5 LTS                      | Most open-source VLSI tools are tested on Linux, ensures compatibility. |
| 💾 RAM        | 6 GB          | 7.1 GB total (\~2.9 GB free)            | Enough to handle synthesis and simulation tasks without lag.            |
| 💿 Storage    | 50 GB HDD     | 214 GB NVMe (45 GB free)                | Stores tools, source files, and simulation results.                     |
| ⚡ CPU         | 4 cores       | AMD Ryzen 5 4600H, 6 cores / 12 threads | Multi-threaded compilation and synthesis speed up RTL processing.       |


<br>

## ⚙️ Week 0 Tool Installation & Insights

This week, I installed **5 essential tools** for the VLSI workflow:

```mermaid
flowchart LR
    Y[🧠 Yosys] --> I[📟 iverilog] --> G[📊 GTKWave]
    G --> N[⚡ Ngspice] --> M[🎨 Magic VLSI]
```

<br>

## 1️⃣ Yosys – RTL Synthesis Tool

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![Yosys](https://img.shields.io/badge/Yosys-Latest-orange)](https://github.com/YosysHQ/yosys)
[![License](https://img.shields.io/badge/License-BSD%202--Clause-green)](https://github.com/YosysHQ/yosys/blob/master/LICENSE)

### **Purpose:** Converts Verilog/VHDL RTL into a gate-level netlist, ready for further simulation or synthesis.

### **Installation Steps:**

```bash
git clone https://github.com/YosysHQ/yosys.git
cd yosys
sudo apt install make
sudo apt install make build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev
git submodule update --init --recursive
make config-gcc
make
sudo make install
```

### **Verification & Insights:**

* Run `yosys -V` to verify.
* Learned how **dependencies like ABC submodule** are essential for successful synthesis.
* Noted that missing dependencies can lead to obscure build errors — installing them upfront saves hours.



### 🛠️ Step-by-Step

This repository documents the step-by-step process for setting up the **Yosys Open Synthesis Suite** from source on **Ubuntu Linux**, including dependencies, submodule handling, build instructions, and troubleshooting tips.


### 📖 Overview

Yosys is an open-source framework for Verilog RTL synthesis. This guide ensures a smooth installation:

1. Clone the official repository  
2. Install build dependencies  
3. Initialize and update submodules  
4. Build Yosys  
5. Verify installation  


### 1️⃣ Cloning the Yosys Repository

Clone the repository using:

```bash
git clone https://github.com/YosysHQ/yosys.git
````
<img width="1825" height="309" alt="Yosys Command 1" src="https://github.com/user-attachments/assets/1b47d23c-2158-4130-85e9-301ab3897850" />

> This operation downloads the full codebase and history from the official upstream source (over 95,000 objects).


### 2️⃣ Installing Build Dependencies

Install all essential packages:

```bash
cd yosys
sudo apt install make
```
<img width="1839" height="239" alt="Yosys Command 2" src="https://github.com/user-attachments/assets/366c6cdb-5749-47e2-8958-10fc9619418c" />

```bash
sudo apt install make build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev
```
<img width="1842" height="924" alt="Yosys Command 3" src="https://github.com/user-attachments/assets/2c6b0628-ef15-42a4-b9e2-ac9dd3342fa1" />

> These packages provide compilers, linkers, parser generators, GUI tools and key libraries for Yosys.


### 3️⃣ Building Yosys

Build Yosys using **GNU Make**:

```bash
make config-gcc
make
```
<img width="1832" height="957" alt="Yosys Command 4" src="https://github.com/user-attachments/assets/8156176e-e3ad-49bc-9a04-e27a9ffe3288" />

<img width="1834" height="415" alt="Yosys Command 4 Issue   Resolve" src="https://github.com/user-attachments/assets/73fd8199-4709-436d-80f3-e50dd4234f20" />

> The build process compiles hundreds of modules across directories. If previous builds exist, it cleans old objects automatically.

<details>
<summary>⚠️ Optional: Clean before rebuilding</summary>

```bash
make clean
make config-gcc
make
```

> Useful if encountering unexpected build errors.

</details>


<details>
<summary> Troubleshooting Common Issues ❌ Submodule Errors</summary>

```bash
git submodule update --init
```

> Ensures `abc` and `cxxopts` are properly initialized, resolving build interruptions.
<img width="1834" height="415" alt="Yosys Command 4 Issue   Resolve" src="https://github.com/user-attachments/assets/b42103bc-3de0-4a5d-9ebf-fc0029286e58" />

</details>


### 4️⃣ Verification

After building, verify Yosys:

```bash
yosys -V
```
<img width="1826" height="953" alt="Screenshot from 2025-09-20 14-22-59" src="https://github.com/user-attachments/assets/f7815ebd-12f0-486b-bcde-8cf1b361f8ab" />

> Should print the Yosys version without errors. Test with a simple Verilog file to confirm successful setup.


### 📝 Notes

* Verified for **Ubuntu 22.04.5 (September 2025)**
* Recommended to test example Verilog designs after installation
* Keep submodules up-to-date for new features or bug fixes

<br>

## 2️⃣ iverilog – Verilog Simulation 🖥️

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![iverilog](https://img.shields.io/badge/iverilog-Latest-orange)](http://iverilog.icarus.com/)
[![License](https://img.shields.io/badge/License-GPLv2-green)](http://iverilog.icarus.com/)

### **Purpose:** Compiles and simulates RTL designs for functional verification.

### 📖 Overview

iverilog allows compiling and simulating Verilog HDL designs efficiently. It is primarily used for:

- Functional verification of RTL modules  
- Catching syntax errors early  
- Running simple or complex testbenches  


### 1️⃣ Installing iverilog

Install iverilog using `apt`:

```bash
sudo apt-get update
sudo apt-get install iverilog
````
<img width="1834" height="626" alt="I verilog Install" src="https://github.com/user-attachments/assets/fed6a430-08e0-4646-b8ac-6abe02988110" />

> Installs the compiler and simulator binaries required for Verilog simulation.


### 2️⃣ Verifying the Installation

Check the installed version:

```bash
iverilog -v
```
<img width="1829" height="988" alt="I verilog Verification" src="https://github.com/user-attachments/assets/a4d54fc3-8e12-473e-8dd3-9d309e538789" />

Expected output should display iverilog version information, confirming successful installation.

<details>
<summary>💡 Tip: Update iverilog</summary>

```bash
sudo apt-get update
sudo apt-get upgrade iverilog
```

> Ensures you are running the latest stable version available for Ubuntu.

</details>


### 📝 Notes

* Verified for **Ubuntu 22.04.5 (September 2025)**
* Ideal for learning, testing and small to medium-scale RTL projects
* Lightweight and faster than some commercial simulators

<br>


## 3️⃣ 🖥️ GTKWave – Waveform Viewer

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![GTKWave](https://img.shields.io/badge/GTKWave-Latest-orange)](http://gtkwave.sourceforge.net/)
[![License](https://img.shields.io/badge/License-GPL-green)](http://www.gnu.org/licenses/)

### **Purpose:** GTKWave is a waveform viewer used to visualize **digital simulation outputs**, essential for debugging and verifying RTL designs.


### 📖 Overview

- Visualizes signals from `.vcd` files generated by simulators like iverilog.  
- Allows detailed inspection of **signal transitions, timing, and logic behavior**.  
- Lightweight and widely used in digital design workflows.


### 1️⃣ Installation

```bash
sudo apt update
sudo apt install gtkwave
````
<img width="1829" height="995" alt="Screenshot from 2025-09-20 13-19-10" src="https://github.com/user-attachments/assets/762857ee-bb77-43e6-90e4-ce2a5df81912" />


### 2️⃣ Verification

Launch GTKWave to verify installation:

```bash
gtkwave
```
<img width="1829" height="995" alt="GTK wave Verification" src="https://github.com/user-attachments/assets/e804e9b7-8016-4a8f-89b8-52925a0bca67" />

> GUI should launch successfully, confirming proper installation.


### 3️⃣ Usage & Insights

* Open `.vcd` files from iverilog simulations:

```bash
gtkwave simulation.vcd
```

* Zoom, pan and inspect signal transitions to catch design errors early.
* Ideal for visual debugging and confirming correctness of RTL modules.

<details>
<summary>💡 Tip: Use keyboard shortcuts</summary>

* `Ctrl+F` – Find signals
* `Ctrl+G` – Go to time marker
* `Ctrl+S` – Save waveform configuration

</details>


### 📝 Notes

* Verified on **Ubuntu 22.04.5 (September 2025)**
* Complements **iverilog**, forming a complete digital simulation workflow.
* Lightweight, fast, and easy to integrate into automated simulation scripts.

<br>

## 4️⃣ 🖥️ Ngspice – Circuit Simulation

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![Ngspice](https://img.shields.io/badge/Ngspice-Latest-green)](http://ngspice.sourceforge.net/)
[![License](https://img.shields.io/badge/License-GPL-green)](http://www.gnu.org/licenses/)

### **Purpose:** Ngspice is an **open-source SPICE simulator** for analog and mixed-signal circuits, used for verifying voltage/current behavior before hardware implementation.

### 📖 Overview

- Performs **transient, AC, DC, and mixed-signal analyses**.  
- Supports voltage/current plotting for analog/mixed-signal circuits.  
- Useful for testing **filters, amplifiers, and analog sub-circuits**.


### 1️⃣ Installation

```bash
sudo apt update
sudo apt install ngspice
````
<img width="1833" height="720" alt="ngspice Installation" src="https://github.com/user-attachments/assets/e94dfbaa-d65b-4168-9a6b-12050cb79873" />



### 2️⃣ Verification

Check version to verify installation:

```bash
ngspice -v
```
<img width="1833" height="378" alt="ngspice verification 1" src="https://github.com/user-attachments/assets/f36b250c-b41b-4fa7-9a09-774e0824adfb" />
<br>
<img width="1833" height="378" alt="ngspice verification 2" src="https://github.com/user-attachments/assets/587aa534-a8cf-417e-89ec-5e9141b6fa2e" />

> Should display Ngspice version information, confirming successful setup.


### 3️⃣ Usage & Insights

* Run a simple SPICE simulation:

```spice
* simple RC circuit
V1 in 0 DC 5
R1 in out 1k
C1 out 0 1u
.tran 0.1ms 10ms
.end
```

```bash
ngspice circuit.sp
```

* Plot voltage/current waveforms to inspect circuit behavior.
* Helps identify analog design issues **before fabrication**.

<details>
<summary>💡 Tip: Use interactive plotting</summary>

```bash
plot v(out)
plot i(V1)
```

> Interactive commands allow zooming, tracing, and analyzing signals in Ngspice.

</details>


### 📝 Notes

* Verified on **Ubuntu 22.04.5 (September 2025)**
* Complements **digital simulation tools** like iverilog/GTKWave for full-system verification.
* Essential for analog/mixed-signal verification in VLSI workflows.

<br>

## 5️⃣ 🖥️ Magic VLSI – Layout Tool

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![Magic VLSI](https://img.shields.io/badge/Magic-Latest-orange)](https://github.com/RTimothyEdwards/magic)
[![License](https://img.shields.io/badge/License-BSD-green)](https://github.com/RTimothyEdwards/magic/blob/master/LICENSE)

### **Purpose:** Magic VLSI is an open-source **layout tool** used for designing, editing, and verifying integrated circuit layouts.



### 📖 Overview

- Create and edit **IC layouts** interactively.  
- Perform **Design Rule Checks (DRC)** to ensure manufacturability.  
- Connects synthesized RTL to physical layout, forming a base for **Place & Route (PnR)** workflows.


### 1️⃣ Installation

Install required dependencies & Clone and build Magic:

```bash
sudo apt-get update
sudo apt-get install m4 tcsh csh libx11-dev tcl-dev tk-dev \
libcairo2-dev mesa-common-dev libglu1-mesa-dev libncurses-dev
git clone https://github.com/RTimothyEdwards/magic
cd magic
./configure
make
sudo make install
````
<img width="1829" height="991" alt="Magic Installation" src="https://github.com/user-attachments/assets/b732fa85-924b-4635-af27-b85f6a9231a0" />


### 2️⃣ Verification

* Run `magic` to open GUI.
* Learned about **layout editing, cell creation, and design rule checks**.
* Observed how layout design correlates with synthesized RTL, laying the groundwork for PnR.

```bash
magic
```
<img width="1835" height="1040" alt="Magic Verification 1" src="https://github.com/user-attachments/assets/bdf68e7c-f54e-4610-bcc2-bbbdfe022839" />
<br>
<img width="1835" height="1040" alt="Magic Verification 2" src="https://github.com/user-attachments/assets/fa69b105-9c6a-4fb1-99e5-1280314d7c2a" />

> GUI should launch successfully, allowing interactive layout editing.

### 3️⃣ Usage & Insights

* **Layout editing:** Create and modify cells and interconnects.
* **Design Rule Checks (DRC):** Verify layout rules for manufacturability.
* **RTL correlation:** Observe how layout relates to synthesized RTL, essential for **Place & Route (PnR)**.

<details>
<summary>💡 Tip: Start a new layout</summary>

```bash
magic newlayout
```

* Opens a new layout window where you can create cells, draw polygons, and check DRC interactively.

</details>


### 📝 Notes

* Verified on **Ubuntu 22.04.5 (September 2025)**
* Essential for **VLSI physical design education** and hands-on layout practice.
* Forms a foundation for **advanced PnR tools** and layout-aware verification workflows.

<br>

## 🎉 Week 0 Summary & Key Learnings

| Tool          | Status      | Purpose            | Key Insight                                       |
| ------------- | ----------- | ------------------ | ------------------------------------------------- |
| 🧠 Yosys      | ✅ Installed | RTL Synthesis      | Learned importance of dependencies and submodules |
| 📟 iverilog   | ✅ Installed | Simulation         | Early bug detection via functional simulation     |
| 📊 GTKWave    | ✅ Installed | Waveform Analysis  | Visual signal debugging enhances understanding    |
| ⚡ Ngspice     | ✅ Installed | Circuit Simulation | Analog/mixed-signal verification                  |
| 🎨 Magic VLSI | ✅ Installed | Layout Design      | Understanding of DRC and layout flow              |

<br>

✅ **Week 0 Takeaways:**

* Built a **reliable toolchain** for full VLSI workflow.
* Understood **roles of synthesis, simulation, waveform viewing and layout**.
* Prepared my system to **transition seamlessly into RTL design next week**.

<br>

## 👨‍💻 Author & Repository

**Author:** T Tushar Shenoy

**Repository:** RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output

**Program:** VLSI System Design (VSD)

> 💡 Next week: Begin **RTL design** and turn concepts into synthesizable Verilog code, ready for simulation and verification.




