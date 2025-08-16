pragma circom 2.1.8;

// Create a circuit that takes an array of signals `in` and
// is satisfied if all the signals are equal to one.
// i.e. in[i] === 1 for all i

template MultiANDNoOut(n) {
    signal input in[n];
    // Constrain each input to be 1
    for (var i = 0; i < n; i++) {
        in[i] === 1;
    }
}

component main = MultiANDNoOut(4);
