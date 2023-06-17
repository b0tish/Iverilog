`include "xorgate.v"

module xorgate_tb;
  
  reg a, b;
  wire out;
  xorgate a1(a, b, out);
  initial begin

    $dumpfile("xorgate.vcd");
    $dumpvars(0, xorgate_tb);

    a = 0; b = 0;
    #10
    a = 0; b = 1;
    #10
    a = 1; b = 0;
    #10
    a = 1; b = 1;
    #10
    $finish;
end
endmodule
