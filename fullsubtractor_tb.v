`timescale 1ns / 1ps
module fullsubtractor_tb;
reg a,b,c;
wire borrow,diff;
fullsubtractor DUT(.a(a),.b(b),.c(c),.borrow(borrow),.diff(diff));
initial
begin
a=1'b0;
b=1'b0;
c=1'b0;
#100
a=1'b0;
b=1'b1;
c=1'b0;
#100
a=1'b1;
b=1'b0;
c=1'b1;
end
endmodule
