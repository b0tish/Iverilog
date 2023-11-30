`include "jk.v"
module jk_tb;
reg [1:0]jk,c;
wire q,qb;
jkff j1(.jk(jk),.c(c),.q(q),.qb(qb));
initial begin
    c=0;
    forever #2 c=~c;
end

initial begin
    $dumpfile("jkff.vcd");
    $dumpvars(0,jk_tb);
    
    jk=2'b00;
    #10
    jk=2'b01;
    #10
    jk=2'b10;
    #10
    jk=2'b11;
    #10
    $finish;
end
endmodule
