`timescale 1ns / 1ps
module Ripple_4bit( input [3:0] A,
                    input [3:0] B,
                    input Cin,
                    output [3:0] Sum,
                    output Carry
);
    wire [2:0]C;
    FA FA0 (A[0], B[0], Cin, Sum[0], C[0]);
    FA FA1 (A[1], B[1], C[0], Sum[1], C[1]);
    FA FA2 (A[2], B[2], C[1], Sum[2], C[2]);
    FA FA3 (A[3], B[3], C[2], Sum[3],Carry);
endmodule
