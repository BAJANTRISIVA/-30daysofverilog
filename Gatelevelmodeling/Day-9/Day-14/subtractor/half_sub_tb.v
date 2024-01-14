module tb_half_sub;
   reg a,b;
	 wire dif,bw;
	 integer i;
	 half_sub sai (.a(a),.b(b),.dif(dif),.bw(bw));
   initial begin
     repeat(5) begin
	      $monitor("a=%0d,b=%0d,dif=%0d,bw=%0d",a,b,dif,bw);
         for(i=0;i<4;i=i+1) begin
			    {a,b}=i;
			    #10;
			    end
		 end
			/* a=0;b=0;
			#10
			a=0;b=1;
			#10
			a=1;b=0;
			#10
			a=1;b=1; */
	
        end 
endmodule
