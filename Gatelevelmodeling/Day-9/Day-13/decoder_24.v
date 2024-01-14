module decoder_2_4(a,b,j,k,l,m);
      input a,b;
	    output j,k,l,m;
	  
      and a1 (j,~a,~b);
      and a2 (k,~a,b);
      and a3 (l,a,~b);
      and a4 (m,a,b);
endmodule
