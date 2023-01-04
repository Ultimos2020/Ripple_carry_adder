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
    not n0 (abar, a);
    not n1 (bbar, b);
    not n2 (cinbar, cin); 
    and a0 (y0,a,b) ;
    and a1 (y1,abar,bbar);
    and a2 (y2,abar,b);
    and a3 (y3,a,bbar);
    or b0 (r0,y1,y0);
    or b1 (r1,y2,y3);
    and a4 (y4,r0,cin);
    and a5 (y5,r1,cinbar);
    or b2 (sum,y4,y5);
    and a6 (y6,b,cin);
    and a7 (y7,cin,a);
    or b3 (carry,y0,y6,y7);
    
endmodule


