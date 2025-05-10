`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 09:15:49 PM
// Design Name: 
// Module Name: DEMUX1x4_design
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


module DEMUX1x4_design(
    input i,
    input [1:0]s,
    output [3:0]y
    );
//    // gatelevel model
//    not g1(s0bar,s[0]);
//    not g2(s1bar,s[1]);
//    and g3((y[0]),i,s0bar,s1bar);
//    and g4((y[1]),i,s0bar, s[1]);
//    and g5((y[2]),i,s[0] ,s1bar);
//    and g6((y[3]),i,s[0] , s[1]);
    // dataflow model
    assign y[0]=(i&(~s[0])&(~s[1]));
    assign y[1]=(i&(~s[0])& (s[1]));
    assign y[2]=(i& (s[0])&(~s[1]));
    assign y[3]=(i& (s[0])& (s[1]));
endmodule
