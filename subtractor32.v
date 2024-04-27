`timescale 1ns / 1ps

module subtractor32(
       input [31:0]A,B,
       output [31:0]S,
       output Cout
       
    );
		wire c;
        wire [31:0] Bcomp;
        bitwiseNOT D1(B, Bcomp);
        wire [31:0]Sin,Scomp;
        fastAdder32 unit(1'b1,A,Bcomp,S,c);
		assign Cout=~c;
endmodule
