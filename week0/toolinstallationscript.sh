#!/bin/bash

# 🚀 Week 0: VLSI Tools Installation Script
# Author: T Tushar Shenoy
# Purpose: Install Yosys, Icarus Verilog, GTKWave, Ngspice, and Magic VLSI on Ubuntu 22.04+

# Function to pause and wait for user input
pause() {
    read -p "Press [Enter] to continue..."
}

echo "🖥️ Week 0: Tools Setup & Environment Foundation"
echo "Starting installation on Ubuntu 22.04.5 LTS"
echo "=============================================="
pause

# -----------------------------------------------
# 1️⃣ Yosys Installation (Official Steps)
# -----------------------------------------------
echo "1️⃣ Installing Yosys (RTL Synthesis Tool)..."

# 1.1 Clone the repository
echo "1.1 Cloning the Yosys repository..."
cd ~
if [ -d "yosys" ]; then
    rm -rf yosys
fi
git clone https://github.com/YosysHQ/yosys.git
cd yosys
echo "✅ Repository cloned successfully."

# 1.2 Install build dependencies
echo "1.2 Installing build dependencies..."
sudo apt update
sudo apt install -y make
sudo apt install -y build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev
echo "✅ Dependencies installed."

# 1.3 Initialize and update submodules
echo "1.3 Initializing and updating git submodules..."
git submodule update --init --recursive
echo "✅ Submodules updated."

# 1.4 Build Yosys
echo "1.4 Building Yosys..."
make config-gcc
make -j$(nproc)
sudo make install
echo "✅ Yosys build completed."

# 1.5 Verification
echo "1.5 Verifying Yosys installation..."
if yosys -V &>/dev/null; then
    echo "✅ Yosys installed successfully!"
else
    echo "❌ Yosys installation failed."
fi
pause

# -----------------------------------------------
# 2️⃣ Icarus Verilog Installation
# -----------------------------------------------
echo "2️⃣ Installing Icarus Verilog (iverilog)..."

# 2.1 Remove old installation
echo "2.1 Checking for existing Icarus Verilog..."
if command -v iverilog &>/dev/null; then
    echo "Removing existing Icarus Verilog..."
    sudo apt remove --purge iverilog -y
    sudo apt autoremove -y
else
    echo "No existing Icarus Verilog found."
fi

# 2.2 Install Icarus Verilog
echo "2.2 Installing Icarus Verilog..."
sudo apt install -y iverilog

# 2.3 Verification
echo "2.3 Verifying Icarus Verilog installation..."
iverilog -v
pause

# -----------------------------------------------
# 3️⃣ GTKWave Installation
# -----------------------------------------------
echo "3️⃣ Installing GTKWave (Waveform Viewer)..."

# 3.1 Install GTKWave
sudo apt install -y gtkwave

# 3.2 Verification
echo "3.2 Verifying GTKWave installation..."
if command -v gtkwave &>/dev/null; then
    echo "✅ GTKWave installed successfully!"
else
    echo "❌ GTKWave installation failed."
fi
pause

# -----------------------------------------------
# 4️⃣ Ngspice Installation
# -----------------------------------------------
echo "4️⃣ Installing Ngspice (Circuit Simulator)..."

# 4.1 Install Ngspice
sudo apt install -y ngspice

# 4.2 Verification
echo "4.2 Verifying Ngspice installation..."
ngspice -v
pause

# -----------------------------------------------
# 5️⃣ Magic VLSI Installation
# -----------------------------------------------
echo "5️⃣ Installing Magic VLSI (Layout Tool)..."

# 5.1 Install dependencies
echo "5.1 Installing dependencies for Magic..."
sudo apt install -y m4 tcsh csh libx11-dev tcl-dev tk-dev \
libcairo2-dev mesa-common-dev libglu1-mesa-dev libncurses-dev

# 5.2 Clone and build Magic
echo "5.2 Cloning Magic repository and building..."
cd ~
if [ -d "magic" ]; then
    rm -rf magic
fi
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
./configure
make -j$(nproc)
sudo make install

# 5.3 Verification
echo "5.3 Verifying Magic VLSI installation..."
if command -v magic &>/dev/null; then
    echo "✅ Magic VLSI installed successfully!"
else
    echo "❌ Magic VLSI installation failed."
fi
pause

# -----------------------------------------------
# 6️⃣ Summary
# -----------------------------------------------
echo "🎉 Week 0 Installation Complete!"
echo "Installed Tools:"
echo " - Yosys (RTL Synthesis)"
echo " - Icarus Verilog (Simulation)"
echo " - GTKWave (Waveform Viewer)"
echo " - Ngspice (Circuit Simulation)"
echo " - Magic VLSI (Layout Tool)"
echo "Your Ubuntu system is now ready for full VLSI workflow!"

