module jkff(jk,c,q,qb);

input [1:0]jk;
input c; 
output q,qb;
reg q=0,qb=0;


always @(posedge c) begin
    case (jk)
    2'b00:q=q;
    2'b01:q=0;
    2'b10:q=1;
    2'b11:q=~q;
endcase
    qb = ~q;
end
endmodule

