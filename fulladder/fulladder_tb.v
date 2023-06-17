`include "fulladder.v"
module fulladder_tb;

reg a,b,c;
wire d,e,f,sum,carry;
fulladder f1(a,b,c,carry,sum);
initial begin
  $dumpfile("fulladder.vcd");
  $dumpvars(0,fulladder_tb);

  a=0;b=0;c=0;
  #10

  a=0;b=0;c=1;
  #10

  a=0;b=1;c=0;
  #10

  a=0;b=1;c=1;
  #10

  a=1;b=0;c=0;
  #10

  a=1;b=0;c=1;
  #10

  a=1;b=1;c=0;
  #10

  a=1;b=1;c=1;
  #10
  $finish;
end
endmodule









