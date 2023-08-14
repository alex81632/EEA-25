module full_adder(
    // Port declarations
        // Inputs
        input a,
        input b,
        input cin,
        // Outputs
        output s,
        output cout
    );

    // Declaration of internal wires
    wire w1, w2, w3;
    
    // Circuit operations - structural approach
    xor u0 (w1, a, b);
    xor u1 (s, w1, cin);
    and u2 (w2, a, b);
    and u3 (w3, a, b);
    or u4 (cout, w2, w3);

endmodule

