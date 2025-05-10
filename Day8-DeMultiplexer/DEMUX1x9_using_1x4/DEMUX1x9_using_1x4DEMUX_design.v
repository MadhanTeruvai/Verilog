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
module DEMUX1x4(
    input i, input [1:0]s, output [3:0]y);
        // gatelevel model
    not g1(s0bar,s[0]);
    not g2(s1bar,s[1]);
    and g3((y[0]),i,s0bar,s1bar);
    and g4((y[1]),i,s0bar, s[1]);
    and g5((y[2]),i,s[0] ,s1bar);
    and g6((y[3]),i,s[0] , s[1]);
endmodule

module DEMUX1x9_using_1x4DEMUX_design(
    input i, input [3:0]s, output [8:0]y);
    wire [2:0]w;
    DEMUX1x4 u1(.y(w[2:0]),.i(i),   .s(s[3:2]));
    DEMUX1x4 u2(.y(y[2:0]),.i(w[0]),.s(s[1:0]));
    DEMUX1x4 u3(.y(y[5:3]),.i(w[1]),.s(s[1:0]));
    DEMUX1x4 u4(.y(y[8:6]),.i(w[2]),.s(s[1:0]));
endmodule