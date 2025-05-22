`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 11:57:55 AM
// Design Name: 
// Module Name: Encoder_using_MUX_design
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


module Encoder_using_MUX_design(
    input [7:0]D,
    output [2:0]Y);
    wire [2:0]s;
    assign s[0]=D[1] | D[3] | D[5] | D[7];
    assign s[1]=D[2] | D[3] | D[6] | D[7];
    assign s[2]=D[4] | D[5] | D[6] | D[7];
    assign Y[0]=(s==3'b001) ? 1'b1 :
                (s==3'b011) ? 1'b1 :
                (s==3'b101) ? 1'b1 :
                (s==3'b111) ? 1'b1 :
                              1'b0 ;
    assign Y[1]=(s==3'b010) ? 1'b1 :
                (s==3'b011) ? 1'b1 :
                (s==3'b110) ? 1'b1 :
                (s==3'b111) ? 1'b1 :
                              1'b0 ;
    assign Y[2]=(s==3'b100) ? 1'b1 :
                (s==3'b101) ? 1'b1 :
                (s==3'b110) ? 1'b1 :
                (s==3'b111) ? 1'b1 :
                              1'b0 ;
endmodule