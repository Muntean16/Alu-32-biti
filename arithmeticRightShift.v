`timescale 1ns / 1ps

module arithmeticRightShift(
    input [31:0] A,
    output [31:0] B
    );
    
    assign B[31] = A[31];
	genvar i;
    generate for( i=0; i<31; i=i+1) begin
        assign B[i] = A[i+1];
    end
    endgenerate
endmodule
