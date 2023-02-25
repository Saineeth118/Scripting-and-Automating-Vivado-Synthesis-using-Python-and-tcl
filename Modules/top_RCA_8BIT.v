`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 13:56:03
// Design Name: 
// Module Name: top_RCA_8BIT
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

//TOP MODULE
module top_RCA_8BIT(A,B,SUM);

input [7:0] A, B; // 8 BIT INPUTS WHICH ARE TO BE ADDED
output [8:0]SUM; //FINAL SUM
wire [6:0]W;
    full_adder fa11(.A(A[0]),.B(B[0]),.CIN(1'b0),.SUM(SUM[0]),.COUT(W[0]));
    full_adder fa12(.A(A[1]),.B(B[1]),.CIN(W[0]),.SUM(SUM[1]),.COUT(W[1]));
    full_adder fa13(.A(A[2]),.B(B[2]),.CIN(W[1]),.SUM(SUM[2]),.COUT(W[2]));
    full_adder fa14(.A(A[3]),.B(B[3]),.CIN(W[2]),.SUM(SUM[3]),.COUT(W[3]));
    full_adder fa15(.A(A[4]),.B(B[4]),.CIN(W[3]),.SUM(SUM[4]),.COUT(W[4]));
    full_adder fa16(.A(A[5]),.B(B[5]),.CIN(W[4]),.SUM(SUM[5]),.COUT(W[5]));
    full_adder fa17(.A(A[6]),.B(B[6]),.CIN(W[5]),.SUM(SUM[6]),.COUT(W[6]));
    full_adder fa18(.A(A[7]),.B(B[7]),.CIN(W[6]),.SUM(SUM[7]),.COUT(SUM[8]));
endmodule

//CODE FOR FULL ADDER
module full_adder(A,B,CIN,SUM,COUT);
input A, B, CIN; // CIN IS THE INOUT CARRY
output SUM, COUT;
wire [2:0]W;
    half_adder hf1(.A(A), .B(B),.SUM(W[0]),.COUT(W[1]));
    half_adder hf2(.A(W[0]), .B(CIN),.SUM(SUM),.COUT(W[2]));
    or a1(COUT,W[1],W[2]);
endmodule

//CODE FOR HALF ADDER
module half_adder(A,B,SUM,COUT);
input A, B; //INPUTS
output SUM, COUT; //SUM IS THE OUTPUT SUM, COUT IS THE OUTPUT CARRY
    xor x1(SUM,A,B);
    and a1(COUT,A,B);
endmodule
