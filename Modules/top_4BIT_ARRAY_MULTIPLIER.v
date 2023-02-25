`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 14:15:41
// Design Name: 
// Module Name: top_4BIT_ARRAY_MULTIPLIER
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// TOP MODULE
module top_4BIT_ARRAY_MULTIPLIER(A,B,ans);

input [3:0] A,B; // 4 BIT INPUTS THAT ARE TO BE MULTIPLIED
output [7:0] ans; // FINAL ANSWER
wire [16:0]x;
    and (ans[0], A[0], B[0]);
    
    half_adder fa1(.A(A[1]&B[0]),.B(A[0]&B[1]),.SUM(ans[1]),.COUT(x[0]));
    
    
    full_adder fa2(.A(A[1]&B[1]),.B(A[2]&B[0]),.CIN(x[0]),.SUM(x[2]),.COUT(x[1]));
    half_adder fa3(.A(A[0]&B[2]),.B(x[2]),.SUM(ans[2]),.COUT(x[3]));
    
    full_adder fa4(.A(A[3]&B[0]),.B(A[2]&B[1]),.CIN(x[1]),.SUM(x[4]),.COUT(x[5]));
    full_adder fa5(.A(A[1]&B[2]),.B(x[4]),.CIN(x[3]),.SUM(x[6]),.COUT(x[7]));
    half_adder fa6(.A(A[0]&B[3]),.B(x[6]),.SUM(ans[3]),.COUT(x[8]));
    
    
    full_adder fa7(.A(A[3]&B[1]),.B(x[5]),.CIN(x[7]),.SUM(x[9]),.COUT(x[10]));
    full_adder fa8(.A(A[2]&B[2]),.B(x[9]),.CIN(x[8]),.SUM(x[13]),.COUT(x[11]));
    half_adder fa9(.A(A[1]&B[3]),.B(x[13]),.SUM(ans[4]),.COUT(x[12]));
    
    full_adder fa10(.A(A[3]&B[2]),.B(x[11]),.CIN(x[10]),.SUM(x[14]),.COUT(x[15]));
    full_adder fa11(.A(A[2]&B[3]),.B(x[14]),.CIN(x[12]),.SUM(ans[5]),.COUT(x[16]));
    
    full_adder fa12(.A(A[3]&B[3]),.B(x[16]),.CIN(x[15]),.SUM(ans[6]),.COUT(ans[7]));

endmodule

//FULL ADDER MODULE
module full_adder(A,B,CIN,SUM,COUT);
input A, B, CIN;
output SUM, COUT;
wire [2:0]W;
    half_adder hf1(.A(A), .B(B),.SUM(W[0]),.COUT(W[1]));
    half_adder hf2(.A(W[0]), .B(CIN),.SUM(SUM),.COUT(W[2]));
    or a1(COUT,W[1],W[2]);
endmodule

//HALF ADDER MODULE
module half_adder(A,B,SUM,COUT);
input A, B;
output SUM, COUT;
    xor x1(SUM,A,B);
    and a1(COUT,A,B);
endmodule
