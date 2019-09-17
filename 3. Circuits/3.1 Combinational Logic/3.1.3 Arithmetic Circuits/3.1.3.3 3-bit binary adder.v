module fadd_1( 
    input a, b, cin,
    output cout, sum );

    wire a_xor_b = a ^ b;
    assign cout = (a & b) | (a_xor_b & cin);
    assign sum = a_xor_b ^ cin;
endmodule


module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    fadd_1 adder1(a[0], b[0], cin, cout[0], sum[0]);
    fadd_1 adder2(a[1], b[1], cout[0], cout[1], sum[1]);
    fadd_1 adder3(a[2], b[2], cout[1], cout[2], sum[2]);
endmodule
