module tb_full_sub;
  reg a,b,c;
 	wire dif,bw;
	full_sub don (.a(a),.b(b),.c(c),.dif(dif),.bw(bw));
  initial begin
  repeat(5) begin
   	$monitor("a=%b,b=%b,c=%b,dif=%b,bw=%b",a,b,c,dif,bw);
			 a=$random;
			 b=$random;
			 c=$random;
			 #10
			 a=$random;
			 b=$random;
			 c=$random;
			 #10
			 a=$random;
			 b=$random;
			 c=$random;
				end
					/* a=0;b=0;c=0;
					#10
					a=0;b=0;c=1;
					#10
					a=0;b=1;c=0;
					#10
					a=0;b=1;c=1;
					#10
					a=1;b=0;c=0;
					#10
					a=1;b=0;c=1;
					#10
					a=1;b=1;c=0;
					#10
					a=1;b=1;c=1;
		end */
		end
endmodule
