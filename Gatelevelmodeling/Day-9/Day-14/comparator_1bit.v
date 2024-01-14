module comp_1b(a,b,g,e,l);
     input a,b;
	   output g,e,l;
	   wire w1,w2;
	 
    not n1 (w1,a);	//w1 = ~a
    not n2 (w2,b);	 //w2 = ~b
    xnor x1(e,a,b);
    and a1(g,w2,a);
    and a2(l,b,w1);

endmodule
