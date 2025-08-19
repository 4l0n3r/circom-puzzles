pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

function assertEqual(a, b) {
    return a == b;
}

template Equality() {
   // Your Code Here..
    signal input a[3];
    signal output c;

    signal condition1;
    signal condition2;

    condition1 <-- assertEqual(a[0], a[1]);
    condition2 <-- assertEqual(a[0], a[2]);

    c <== condition1 * condition2;
}

component main = Equality();