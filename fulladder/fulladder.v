module fulladder(a,b,c,carry,sum);

input a,b,c;
output carry,sum;
xor x1(d,a,b);
xor x2(carry,d,c);
and a2(f,d,c);
and a1(e,a,b);
or o1(sum,e,f);
endmodule
