`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 11:43:44 AM
// Design Name: 
// Module Name: Decoder2to4_design
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


module Decoder2to4_design(
    input [1:0]i,
    output [3:0]y
    );
    // behavioral model (reg needed)
//        always @(i,y)begin
//            y[0] =  (~i[1] & ~i[0]);
//            y[1] =  (~i[1] & i[0]);
//            y[2] =  (i[1] & ~i[0]);
//            y[3] =  (i[1] & i[0]);
//        end
    // gatelevel model
        not g1(i0_not, i[0]);
        not g2(i1_not, i[1]);
        and g3(y[0], i1_not, i0_not);
        and g4(y[1], i1_not, i[0]);
        and g5(y[2], i[1], i0_not);
        and g6(y[3], i[1], i[0]);
endmodule
