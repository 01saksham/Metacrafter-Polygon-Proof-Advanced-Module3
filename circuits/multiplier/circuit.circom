pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/gates.circom";

template MyCircuit() {
 signal input A;
    signal input B;
    signal X;
    signal Y;
    signal output Q;

  // Define the AND gate
  X <== A * B;

  // Define the XOR gate (simulating NOT)
  Y <== A + B -  2 * X;

  // Define the OR gate
  Q <== X * Y;

log("Output Q = ", Q);

}

component main = MyCircuit();




/* INPUT = {
    "A": 0,
    "B": 1
} */