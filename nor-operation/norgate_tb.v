`include "norgate.v"

module norgate_tb;
  
  reg a, b;
  wire out;
  norgate a1(a, b, out);
  initial begin

    $dumpfile("norgate.vcd");
    $dumpvars(0, norgate_tb);

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
