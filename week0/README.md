# 🛠️ Week 0: Tools Setup & Environment Foundation

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

| Specification | Required      | My System                               |
| ------------- | ------------- | --------------------------------------- |
| 🐧 OS         | Ubuntu 20.04+ | Ubuntu 22.04.5 LTS                      | 
| 💾 RAM        | 6 GB          | 7.1 GB total (\~2.9 GB free)            | 
| 💿 Storage    | 50 GB HDD     | 214 GB NVMe (45 GB free)                | 
| ⚡ CPU         | 4 cores       | AMD Ryzen 5 4600H, 6 cores / 12 threads | 


<br>


## 🔗 Week 0 Quick Links

| Tool / Section         | Description                                         | Link                                             |
| ---------------------- | --------------------------------------------------- | ------------------------------------------------ |
| 🖥️ VLSI Tools Installation Script  | Script to Install whole setup           | [Go to Script](#vlsi-tools-installation)       |
| 🧠 Yosys               | RTL synthesis tool                                  | [Go to Yosys](#yosys)        |
| 📟 Icarus Verilog      | Compile & simulate Verilog HDL                      | [Go to iverilog](#iverilog)    |
| 📊 GTKWave             | Waveform viewer for Verilog simulations             | [Go to GTKWave](#gtkwave)       |
| ⚡ Ngspice              | Analog / mixed-signal circuit simulation            | [Go to Ngspice](#ngspice)      |
| 🎨 Magic VLSI          | Layout & DRC tool for IC design                     | [Go to Magic VLSI](#magic)          |
| 🖥️ How to Use ?| Full adder example simulation/synthesis with Icarus, GTKWave & yosys <br> Example of Ngspice and Magic| [Go to How to Use](#how-to-use) |



## ⚙️ Week 0 Tool Installation & Insights

This week, I installed **5 essential tools** for the VLSI workflow:

```mermaid
flowchart LR
    Y[🧠 Yosys] --> I[📟 iverilog] --> G[📊 GTKWave]
    G --> N[⚡ Ngspice] --> M[🎨 Magic VLSI]
```


<h3 id="vlsi-tools-installation">🖥️ VLSI Tools Installation Script</h3>

<details>
<summary>Click to view description of VLSI Tools Installation Script</summary>
<br>
    
This repository provides a smart setup script for installing and verifying essential VLSI/EDA tools on Ubuntu 22.04.5 LTS. It ensures your environment is ready for **RTL design, simulation, waveform viewing, circuit simulation and layout design**.

## 🚀 Overview

The script, `toolinstallationscript.sh`, does the following:

1. Checks if the tool is already installed  
2. If installed → prints the current version  
3. If missing → installs the tool automatically  
4. Pauses between steps for verification and progress tracking  

**Tools handled by the script:**

| #️⃣ | Tool           | Purpose                                 |
| --- | -------------- | --------------------------------------- |
| 1️⃣ | Yosys          | RTL synthesis                           |
| 2️⃣ | Icarus Verilog | Verilog compilation & simulation        |
| 3️⃣ | GTKWave        | Waveform viewer for simulation outputs  |
| 4️⃣ | Ngspice        | Analog & mixed-signal circuit simulator |
| 5️⃣ | Magic VLSI     | Layout design and DRC tool              |

## ⚙️ Usage Instructions

### 1️⃣ Clone the repository (if using GitHub)

```bash
git clone https://github.com/tusharshenoy/RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output.git
cd RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output/
````

### 2️⃣ Make the script executable

```bash
chmod 777 toolinstallationscript.sh
```

### 3️⃣ Run the script

```bash
./toolinstallationscript.sh
```

* The script will pause after each tool for you to verify installation.
* Existing tools will not be reinstalled; their version will be printed.

## 📝 Notes & Tips

* Ensure **active internet connection** for cloning repositories and installing dependencies.
* **Yosys and Magic VLSI** are built from source, which may take several minutes depending on your CPU.
* Keep this script updated with new tools or updated versions for future VLSI projects.

## ✅ Verification

After running the script, you can verify each tool manually:

```bash
yosys -V
iverilog -v
gtkwave --version
ngspice -v
magic -version
```

</details>

<br>

<h2 id="yosys">1️⃣ Yosys – RTL Synthesis Tool</h2>

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
* Noted that missing dependencies can lead to obscure build errors — installing them upfront saves hours.



### 🛠️ Step-by-Step

Step-by-step process for setting up the **Yosys Open Synthesis Suite** from source on **Ubuntu Linux**, including dependencies, submodule handling, build instructions and troubleshooting tips.


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

<h2 id="iverilog">2️⃣ iverilog – Verilog Simulation 🖥️</h2>

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


<h2 id="gtkwave">3️⃣ 🖥️ GTKWave – Waveform Viewer</h2>

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![GTKWave](https://img.shields.io/badge/GTKWave-Latest-orange)](http://gtkwave.sourceforge.net/)
[![License](https://img.shields.io/badge/License-GPL-green)](http://www.gnu.org/licenses/)

### **Purpose:** GTKWave is a waveform viewer used to visualize **digital simulation outputs**, essential for debugging and verifying RTL designs.


### 📖 Overview

- Visualizes signals from `.vcd` files generated by simulators like iverilog.  
- Allows detailed inspection of **signal transitions, timing and logic behavior**.  
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


### 📝 Notes

* Verified on **Ubuntu 22.04.5 (September 2025)**
* Complements **iverilog**, forming a complete digital simulation workflow.
* Lightweight, fast and easy to integrate into automated simulation scripts.

<br>

<h2 id="ngspice">4️⃣ 🖥️ Ngspice – Circuit Simulation</h2>

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![Ngspice](https://img.shields.io/badge/Ngspice-Latest-green)](http://ngspice.sourceforge.net/)
[![License](https://img.shields.io/badge/License-GPL-green)](http://www.gnu.org/licenses/)

### **Purpose:** Ngspice is an **open-source SPICE simulator** for analog and mixed-signal circuits, used for verifying voltage/current behavior before hardware implementation.

### 📖 Overview

- Performs **transient, AC, DC and mixed-signal analyses**.  
- Supports voltage/current plotting for analog/mixed-signal circuits.  
- Useful for testing **filters, amplifiers and analog sub-circuits**.


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


### 📝 Notes

* Verified on **Ubuntu 22.04.5 (September 2025)**
* Complements **digital simulation tools** like iverilog/GTKWave for full-system verification.
* Essential for analog/mixed-signal verification in VLSI workflows.

<br>

<h2 id="magic">5️⃣ 🖥️ Magic VLSI – Layout Tool</h2>

[![Ubuntu](https://img.shields.io/badge/OS-Ubuntu_22.04.5-blue)](https://ubuntu.com/)
[![Magic VLSI](https://img.shields.io/badge/Magic-Latest-orange)](https://github.com/RTimothyEdwards/magic)
[![License](https://img.shields.io/badge/License-BSD-green)](https://github.com/RTimothyEdwards/magic/blob/master/LICENSE)

### **Purpose:** Magic VLSI is an open-source **layout tool** used for designing, editing and verifying integrated circuit layouts.



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
* Learned about **layout editing, cell creation and design rule checks**.
* Observed how layout design correlates with synthesized RTL, laying the groundwork for PnR.

```bash
magic
```
<img width="1835" height="1040" alt="Magic Verification 1" src="https://github.com/user-attachments/assets/bdf68e7c-f54e-4610-bcc2-bbbdfe022839" />
<br>
<img width="1835" height="1040" alt="Magic Verification 2" src="https://github.com/user-attachments/assets/fa69b105-9c6a-4fb1-99e5-1280314d7c2a" />

> GUI should launch successfully, allowing interactive layout editing.


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

<h2 id="how-to-use">🖥️ How to Use ?</h2>

### 🖥️ Full Adder Example Simulation & Synthesis

This demonstrates a **full adder design workflow** using **Icarus Verilog, GTKWave and Yosys** for digital simulation and synthesis.  
Verilog files are inside the `Verilog Simulation` folder, while analog examples using Ngspice are in `Spice Simulation`.

<details>
<summary>1️⃣ Verilog Simulation (Icarus & GTKWave)</summary>

<br>

Files in `Verilog Simulation`:

* `full_adder.v` – Full adder module
* `full_adder_tb.v` – Testbench for the full adder
* `full_adder.vcd` – Generated waveform file

**Simulation Steps:**

1. **Compile the Verilog files:**

```bash
iverilog -o full_adder_wave full_adder.v full_adder_tb.v
````

2. **Run the simulation:**

```bash
vvp full_adder_wave
```

This generates the `full_adder.vcd` waveform file.

3. **View waveforms with GTKWave:**

```bash
gtkwave full_adder.vcd
```
<img width="1846" height="993" alt="Screenshot from 2025-09-20 18-50-24" src="https://github.com/user-attachments/assets/945b766e-6147-4f8e-b327-8c0c4221d493" />

<img width="1844" height="1043" alt="Screenshot from 2025-09-20 18-51-14" src="https://github.com/user-attachments/assets/1c7e1ce6-f595-48e1-b13f-5b60e769a745" />


> Notes:
> * Ensure **Icarus Verilog** and **GTKWave** are installed.
> * You can replace the module and testbench with other designs for a similar simulation workflow.
> * Zoom, pan and inspect signal transitions to catch design errors early.
> * Ideal for visual debugging and confirming correctness of RTL modules.


<br>

💡 Tip: Use keyboard shortcuts</summary>

* `Ctrl+F` – Find signals
* `Ctrl+G` – Go to time marker
* `Ctrl+S` – Save waveform configuration


</details>


<details>
    
<summary>2️⃣ RTL Synthesis with Yosys</summary>
<br>

Files in `Verilog Simulation` (same folder):

* `full_adder.v` – Full adder module

**Synthesis Steps:**

```bash
yosys
```
<img width="1830" height="962" alt="Yosys Steps 1" src="https://github.com/user-attachments/assets/40091486-b094-4cd2-9331-fdef263e3f50" />

Inside Yosys console:

```yosys
read_verilog full_adder.v
synth -top full_adder
show
write_json full_adder.json
```
<img width="1840" height="994" alt="Synthesized Output" src="https://github.com/user-attachments/assets/8e087396-d997-4205-9a3c-d02af20b641d" />

> * `show` opens a graphical netlist view.
> * `write_json` generates a netlist file for further use in backend flows.

</details>

<details>
<summary>3️⃣ Ngspice – SPICE Simulation</summary>
<br>
    
Files in `Spice Simulation`:

* Simple resistor circuit examples (`circuit.sp`)

**Usage & Insights:**

* Run a simple SPICE simulation:

```spice
* Simple resistor circuit
V1 1 0 0            ; Voltage source (value will be swept)
R1 1 0 10k          ; Resistor of 10k ohm

.dc V1 0 10 1         ; Sweep V1 from 0V to 10V in steps of 1V
.print dc V(1,0) I(V1) ; Print voltage and current

.end
```

```bash
ngspice circuit.sp
```
<img width="1832" height="583" alt="ngspice circuit sp command" src="https://github.com/user-attachments/assets/644ce7d9-53c2-4c3a-b80a-a3ef8fe15b1c" />

or

```bash
ngspice -b circuit.sp
```
<img width="1834" height="983" alt="ngspice -b command" src="https://github.com/user-attachments/assets/808f992f-a109-4aab-b6e8-8dd774f547ee" />

```bash
run
print V(1) I(V1)
```
<img width="1833" height="781" alt="run and print commands" src="https://github.com/user-attachments/assets/43d7edf0-1aca-4cfa-bcf4-6d96a3828a50" />

```bash
plot I(V1)
```

<img width="1830" height="783" alt="plot Current" src="https://github.com/user-attachments/assets/863a22ac-b043-479b-b120-ef1b6acc5af6" />

```bash
plot V(1) I(V1)
```
<img width="1830" height="848" alt="plot Voltage and Current" src="https://github.com/user-attachments/assets/b3e2973f-ce95-48c3-8134-c84a64b71fa2" />

<br>
<details>
    <br>
<summary>💡 Tip: Use interactive plotting in Ngspice</summary>

* Plot voltage/current waveforms to inspect circuit behavior.  
* Helps identify analog design issues **before fabrication**.  
* Interactive commands allow **zooming, tracing, and analyzing signals** in Ngspice:

</details>

<br>

✅ **Week 0 Takeaways:**

* Built a **reliable toolchain** for the full VLSI workflow.
* Understood the **roles of synthesis, simulation, waveform viewing, circuit simulation, and layout**.
* Verified each tool **practically** by:
  * **Simulating** RTL designs using Icarus Verilog and GTKWave
  * **Synthesizing** designs with Yosys
  * **Plotting** signals and verifying behavior in Ngspice
  * Exploring **layout and DRC** in Magic VLSI
* Prepared my system to **transition seamlessly into RTL design next week**, confident that all tools are fully operational.


<br>


## Author & Repository

**Author:** T Tushar Shenoy

**Repository:** [RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output](https://github.com/tusharshenoy/RISC-V-SoC-Tapeout-Journey-From-RTL-Input-to-Silicon-Output)

**Program:** VLSI System Design (VSD)

> 💡 Next week: Yet to be Started




















