pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Create a Quadratic Equation( ax^2 + bx + c ) verifier using the below data.
// Use comparators.circom lib to compare results if equal

template QuadraticEquation() {
    signal input x;     // x value
    signal input a;     // coeffecient of x^2
    signal input b;     // coeffecient of x 
    signal input c;     // constant c in equation
    signal input res;   // Expected result of the equation
    signal output out;  // If res is correct , then return 1 , else 0 . 

    // your code here
    signal tmp1;
    tmp1 <== x*x;
    signal tmp2;
    tmp2 <== a*tmp1;
    signal tmp3;
    tmp3 <== b*x;
    signal tmp4;
    tmp4 <== tmp2+tmp3+c;
    signal tmp5;
    tmp5 <== tmp4-res;
    component eq = IsZero();
    eq.in <== tmp5;
    out<==eq.out;
}

component main  = QuadraticEquation();



