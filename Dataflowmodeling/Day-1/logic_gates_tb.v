module all_logic_gates_tb;		//module, module name
   reg c,d;			//inputs
   wire y8,y9,y10,y11,y12,y13,y14,y15; 		//outputs
   
   //instantiation in named mapping
all_logic_gates dut(.a(c),.b(d),.y0(y8),.y1(y9),.y2(y10),.y3(y11),.y4(y12),.y5(y13),.y6(y14),.y7(y15)); 
initial 
  begin
  c=0;d=0;
  #10 
  c=0;d=0;
    $display("values of a=%0d,b=%0d,y8=%0d,y9=%0d,y10=%0d,y11=%0d,y12=%0d,y13=%0d,y14=%0d,y15=%0d",c,d,y8,y9,y10,y11,y12,y13,y14,y15);
  #10
  c=0;d=1;
  $display("values of a=%0d,d=%0d,y8=%0d,y9=%0d,y10=%0d,y11=%0d,y12=%0d,y13=%0d,y14=%0d,y15=%0d",c,d,y8,y9,y10,y11,y12,y13,y14,y15);
  #10
  c=1;d=0;
  $display("values of c=%0d,d=%0d,y8=%0d,y9=%0d,y10=%0d,y11=%0d,y12=%0d,y13=%0d,y14=%0d,y15=%0d",c,d,y8,y9,y10,y11,y12,y13,y14,y15);
  #10
  c=1;d=1;
  $display("values of c=%0d,d=%0d,y8=%0d,y9=%0d,y10=%0d,y11=%0d,y12=%0d,y13=%0d,y14=%0d,y15=%0d",c,d,y8,y9,y10,y11,y12,y13,y14,y15);
  end
endmodule
