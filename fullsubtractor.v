`timescale 1ns / 1ps
module fullsubtractor(borrow,diff,a,b,c);
output borrow,diff;
input a,b,c;
wire abar,w1bar,w1,w2,w3;
xor d1(diff,w1,c);
xor d2(w1,a,b);
not d3(abar,a);
not d4(w1bar,w1);
and d5(w2,abar,b);
and d6(w3,w1bar,c);
or d7(borrow,w2,w3);
endmodule
