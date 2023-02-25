`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 19:25:33
// Design Name: 
// Module Name: top_ENCODER_BEHAVIOURAL
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


module top_ENCODER_BEHAVIOURAL(D,Q,VALID);
input [7:0]D; //INPUT
input VALID; //IF VALID IS 0 OUTPUT WILL BE X, IF IT IS 1 THEN THE ENCODER WILL WORK
output reg [2:0]Q; //OUTPUT

always @(D,VALID)begin
    if(VALID==1)begin
        if(D[7]==1) Q=3'b111;
        else if(D[6]==1) Q=3'b110;
        else if(D[5]==1) Q=3'b101;
        else if(D[4]==1) Q=3'b100;
        else if(D[3]==1) Q=3'b011;
        else if(D[2]==1) Q=3'b010;
        else if(D[1]==1) Q=3'b001;
        else Q=3'b000;
    end
    else Q=3'bxxx;
end
endmodule
