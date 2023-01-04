`timescale 1ns / 1ps
module FA(
input a,
input b,
input cin,
output sum,
output carry
);
    wire abar, bbar, cinbar;
    wire y0,y1,y2,y3,y4,y5,r0,r1,y6,y7;
 xor a0 (sum,a,b,cin) ;  

    and a6 (y6,b,cin);
    and a7 (y7,cin,a);
    or b3 (carry,y0,y6,y7);
    
endmodule


