OPENQASM 3.0;
include "stdgates.inc";

qubit[3] q;
bit[3] c;

// Prepare the state to be teleported (|+⟩ state)
h q[0];

// Create entangled pair
h q[1];
cnot q[1], q[2];

// Bell measurement
cnot q[0], q[1];
h q[0];
c[0] = measure q[0];
c[1] = measure q[1];

// Conditional operations
if (c[1]) x q[2]
if (c[0]) z q[2]

// Measure the result
c[2] = measure q[2];
