module decode(a0,a1,a2,y);

input a0,a1,a2;
output [7:0]y;
//output y0,y1,y2,y3,y4,y5,y6,y7;
//output y0,y1,y2,y3;

assign y[0] = ~a0 & ~a1 & ~ a2;
assign y[1] = ~a0 & ~a1 &  a2;
assign y[2] = ~a0 & a1 & ~ a2;
assign y[3] = ~a0 & a1 &  a2;
assign y[4] = a0 & ~a1 & ~ a2;
assign y[5] = a0 & ~a1 &  a2;
assign y[6] = a0 & a1 & ~ a2;
assign y[7] = a0 & a1 &  a2;
endmodule
