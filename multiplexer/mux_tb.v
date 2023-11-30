`include "mux.v"
module mux_tb;

reg a,b,c,d,s0,s1;
wire y;

mux m1(a,b,c,d,s0,s1,y);
initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0,mux_tb);

   a=0;b=0;c=0;d=0;s0=0;s1=0;
   #64 $stop;
end

always #32 s0=~s0;
always #16 s1=~s0;
always #8 a=~a;
always #4 b=~b;
always #2 c=~c;
always #1 d=~d;


endmodule