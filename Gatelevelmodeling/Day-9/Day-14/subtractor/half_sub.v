module half_sub(a,b,dif,bw);
    input a,b;
	  output dif,bw;
	  wire w1;
	
    xor x1 (dif,a,b);
    and a1 (bw,w1,b);
    not n1 (w1,a);
endmodule
