OPENQASM 3.0;
include "stdgates.inc";

qubit[3] q;
bit[3] c;

// Initialize superposition
h q[0];
h q[1];
h q[2];

// Oracle for |101⟩
x q[0];
x q[2];
ccz q[0], q[1], q[2];
x q[0];
x q[2];

// Diffusion operator
h q[0];
h q[1];
h q[2];
x q[0];
x q[1];
x q[2];
ccz q[0], q[1], q[2];
x q[0];
x q[1];
x q[2];
h q[0];
h q[1];
h q[2];

c = measure q;