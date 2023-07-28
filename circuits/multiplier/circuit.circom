pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/gates.circom";

template MyCircuit () {
    signal input A;
    signal input B;
    signal output X;
    signal output Y;
    signal output Q;

    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    andGate.a <== A;
    andGate.b <== B;
    X <== andGate.out;

    notGate.in <== B;
    Y <== notGate.out;

    orGate.a <== X;
    orGate.b <== Y;
    Q <== orGate.out;

    log("Output Q = ", Q);
}

component main = MyCircuit();

/* INPUT = {
    "A": "0",
    "B": "1"
} */
