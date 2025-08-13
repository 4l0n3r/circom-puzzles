pragma circom 2.1.8;

template isBinary() {
    signal input in[2];

    in[0] * ( in[0] - 1 ) === 0;
    in[1] * ( in[1] - 1 ) === 0;
}

component main = isBinary();