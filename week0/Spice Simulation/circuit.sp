* Simple resistor circuit
V1 1 0 0            ; Voltage source (value will be swept)
R1 1 0 10k          ; Resistor of 10k ohm

.dc V1 0 10 1         ; Sweep V1 from 0V to 10V in steps of 1V
.print dc V(1,0) I(V1) ; Print voltage and current

.end
