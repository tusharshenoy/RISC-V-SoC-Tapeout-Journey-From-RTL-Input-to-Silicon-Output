* Simple resistor circuit
V1 in 0 0           ; Voltage source (value will be swept)
R1 in 0 1k          ; Resistor of 1k ohm

.dc V1 0 10 1       ; Sweep V1 from 0V to 10V in steps of 1V
.print dc V(in) I(R) ; Print voltage and current
.plot dc I(V1)       ; Plot current vs voltage

.end
