`timescale 1ns / 1ps
module Ripple_8bit(  input [7:0] A,
                    input [7:0] B,
                    input cin,
                    output [7:0] sum,
                    output carry
);
    wire C;
    Ripple_4bit G0 (A[3:0], B[3:0], cin, sum[3:0], C);
    Ripple_4bit G1 (A[7:4], B[7:4], C, sum[7:4], carry);
endmodule
