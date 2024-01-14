module full_sub(a,b,c,dif,bw);
     input a,b,c;
	   output dif,bw;
	   wire [5:1]w;
	   
xor x1(w[1],a,b);
xor x2(dif,w[1],c);
not n1(w[2],a);

and a1(w[3],w[2],b);
and a2(w[4],w[2],c);
and a3(w[5],b,c);
or o1 (bw,w[3],w[4],w[5]);
endmodule
	   
