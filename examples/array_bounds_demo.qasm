OPENQASM 3.0;
include "stdgates.inc";

// Different sized arrays to test bounds checking
qubit[2] small_qubits;
qubit[5] large_qubits;
bit[3] measure ments;

// Valid operations within bounds
h small_qubits[0];
h small_qubits[1];
h large_qubits[0];
h large_qubits[4]; // Last valid index for large_qubits

// Out of bounds operations
x small_qubits[2]; // Index 2 is out of bounds (only 0-1 available)
x small_qubits[3]; // Index 3 is out of bounds
cnot large_qubits[0], large_qubits[5]; // Index 5 is out of bounds (only 0-4 available)

// Mixed array operations with bounds errors
cnot small_qubits[0], large_qubits[6]; // target index 6 is out of bounds
cnot small_qubits[2], large_qubits[0]; // source index 2 is out of bounds

// Measurement bounds errors
measure ments[0] = measure small_qubits[0];
measure ments[1] = measure small_qubits[1];
measure ments[3] = measure small_qubits[0]; // measurements index 3 is out of bounds
measure ments[0] = measure large_qubits[5]; // qubit index 5 is out of bounds
