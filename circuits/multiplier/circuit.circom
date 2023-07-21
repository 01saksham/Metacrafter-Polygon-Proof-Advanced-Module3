pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/gates.circom";

template MyCircuit () {
    signal input A;
    signal input B;
    signal X;
    signal Y;
    signal output Q;

    component andGate = AND();
    component notGate1 = NOT();
    component notGate2 = NOT();
    component orGate = OR();

    andGate.a <== A;
    andGate.b <== B;
    X <== andGate.out;

    notGate1.in <== A;
    Y <== notGate1.out;

    notGate2.in <== B;

    orGate.a <== X;
    orGate.b <== Y;
    Q <== orGate.out * notGate2.out;

    log("Output Q = ", Q);
}

component main = MyCircuit();

/* INPUT = {
    "A": "0",
    "B": "1"
} */
