module tb_comp_1b;
   reg a,b;
   wire g,e,l;
   integer i;
   comp_1b dut (.a(a),.b(b),.g(g),.e(e),.l(l));
   initial begin
   repeat(2) begin
	 $monitor("a=%b,b=%b,g=%b,e=%b,l=%b",a,b,g,e,l);
		 for(i=0;i<4;i=i+1)
			begin
			 {a,b}=i;
			 #1;
			 end
		end
				/* a=0;b=0;
				#50
				a=0;b=1;
				#50
				a=1;b=0;
				#50
				a=1;b=1; */
	
	    end 
endmodule
