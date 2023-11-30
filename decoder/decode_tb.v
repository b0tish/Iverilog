`include "decode.v"
module decode_tb;

reg a0,a1,a2;
wire [7:0]y;

decode d1(a0,a1,a2,y);

initial begin
    $dumpfile("decode.vcd");
    $dumpvars(0,decode_tb);

   a0=0;a1=0;a2=0;
   #8 $stop;
end

always #4 a0=~a0;
always #2 a1=~a1;
always #1 a2=~a2;

endmodule