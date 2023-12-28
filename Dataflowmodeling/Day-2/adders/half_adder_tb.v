module half_add_tb;
  reg a,b;
  wire sum,carry;
  half_add_dut siva (.a(a),.b(b),.sum(sum),.carry(carry));
  initial 
      begin
	      $monitor ("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);    
       		 a=0;b=0;
    			 #20;
    			 a=0;b=1; 
    			 #20
    			 a=1;b=0;
    			 #20
    			 a=1;b=1;        	 	    
	    end
endmodule
