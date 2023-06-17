`include "orgate.v"

module orgate_tb;
  
  reg a, b;
  wire out;
  orgate a1(a, b, out);
  initial begin

    $dumpfile("orgate.vcd");
    $dumpvars(0, orgate_tb);

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
