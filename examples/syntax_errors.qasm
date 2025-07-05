OPENQASM 3.0;
include "stdgates.inc";

qubit[2] q;
bit[2] c;

// Missing semicolon
h q[0];
// Invalid gate name
invalid_gate q[1];
// Wrong parameter count
cnot q[0];
// Undefined qubit
cnot q[0], q[5];

c = measure q;
