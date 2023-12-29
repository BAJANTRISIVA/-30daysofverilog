// A digital comparator or magnitude comparator is a hardware electronic device that takes two numbers as input in binary form and determines 
// whether one number is greater than, less than or equal to the other number.Comparators are used in central processing units (CPUs) 
// and microcontrollers (MCUs).
module comp_1_dut(a,b,y0,y1,y2);
  input a,b;
  output y0,y1,y2;
  assign y0=a&~b;
  assign y1=a~^b;
  assign y2=~a&b;
endmodule

