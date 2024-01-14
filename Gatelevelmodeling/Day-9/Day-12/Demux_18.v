module dmux_1_8(y,i,s0,s1,s2);
    input i;
	  input s0,s1,s2;
	  output [7:0]y;
	  wire w1,w2,w3;
	
    not n1(w1,s0);
    not n2(w2,s1);
    not n3(w3,s2);
    and a1(y[0],i,w1,w2,w3);
    and a2(y[1],i,w1,w2,s2);
    and a3(y[2],i,w1,s1,w3);
    and a4(y[3],i,w1,s1,s2);
    and a5(y[4],i,s0,w2,w3);
    and a6(y[5],i,s0,w2,s2);
    and a7(y[6],i,s0,s1,w3);
    and a8(y[7],i,s0,s1,s2);
endmodule
