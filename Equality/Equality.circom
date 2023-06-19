pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.
include "../node_modules/circomlib/circuits/comparators.circom";

template Equality() {
   // Your Code Here..
signal input a[3];
signal output c;
signal check1<==a[0]-a[1];
signal check2<==a[1]-a[2];
component iszero1 = IsZero();
component iszero2 = IsZero();
iszero1.in<==check1;
iszero2.in<==check2;
c <== iszero1.out * iszero2.out;

   
}

component main = Equality();