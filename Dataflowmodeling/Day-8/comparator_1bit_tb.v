module comp_1_tb;
  reg a,b;
  wire y0,y1,y2;
  comp_1_dut bro(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2));
  initial begin
    $monitor($time,"a=%b,b=%b,y0=%b,y1=%b,y2=%b",a,b,y0,y1,y2);		
		        a=0; b=0;
	      #5	a=0; b=1; 
		    #5  a=1; b=0; 
	 	    #5  a=1; b=1; 
  end
endmodule
