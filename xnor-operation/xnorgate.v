module xnorgate(a,b,out);

input a,b;
output out;
xnor a1(out,a,b);

endmodule
