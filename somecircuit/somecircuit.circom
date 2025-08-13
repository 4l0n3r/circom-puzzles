pragma circom 2.1.8;

template SomeCircuit() {
    signal input a;
    signal input b;
    signal input c;

    c === a * b;
}

component main = SomeCircuit();

