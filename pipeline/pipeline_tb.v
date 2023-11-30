`include "pipeline.v"

module pipe_test();
parameter N=10;
wire [N-1:0]f;
reg [N-1:0]a,b,c,d;
reg clk;
pipe callpipe(.a(a),.b(b),.c(c),.d(d),.f(f),.clk(clk));
initial clk=0;
always #10 clk=~clk;
initial begin
    #5 a=10; b=12; c=6; d=2;
    #20 a=10; b=10; c=5; d=3;
    #20 a=20; b=11; c=1; d=4;
    #20 a=12; b=15; c=4; d=2;
end
initial begin
    $dumpfile("pipe.vcd");
    $dumpvars(0,pipe_test);
    #300 
    $finish();
end
endmodule