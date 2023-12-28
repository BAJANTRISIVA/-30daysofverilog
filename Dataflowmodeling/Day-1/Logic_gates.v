module all_logic_gates(
      input a,b, 
	  output reg y0,y1,y2,y3,y4,y5,y6,y7);
		/* assign y0=~a;
		assign y1=a&b;
		assign y2=a|b;
		assign y3=~(a|b);
		assign y4=~(a&b);
		assign y5=a^b;
		assign y6=~(a^b);
		assign y7=a; */

		always @(a,b)
			begin
				y0<=~a;
				y1<=a&b;
				y2<=a|b;
				y3<=~(a|b);
				y4<=~(a&b);
				y5<=a^b;
				y6<=~(a^b);
				y7<=a;
			end
endmodule


    

