OPENQASM 3.0;
include "stdgates.inc";

qubit[3] q;
bit[3] c;

// Valid operations
h q[0];
cnot q[0], q[1];

// Out of bounds errors - these should be caught by lint
h q[5];        // qubit index 5 is out of bounds (only 0-2 available)
cnot q[2], q[4]; // target qubit index 4 is out of bounds
x q[-1];       // negative index is invalid

// Bit assignment out of bounds
c[0] = measure q[0];
c[5] = measure q[1];  // bit index 5 is out of bounds (only 0-2 available)

// Multi-qubit gate with out of bounds
ccx q[0], q[1], q[3]; // control qubit index 3 is out of bounds