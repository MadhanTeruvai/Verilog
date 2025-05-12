`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 11:57:05 AM
// Design Name: 
// Module Name: Encoder16to4_design
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


module Encoder16to4_design(
    input [15:0]d,
    output [3:0]y
    );
    // Gatelevel
    or g1(y[0],d[1],d[3],d[5],d[7],d[9],d[11]);
    or g2(y[1],d[2],d[3],d[6],d[7],d[10],d[11],d[14],d[15]);
    or g3(y[2],d[4],d[5],d[6],d[7],d[12],d[13],d[14],d[15]);
    or g4(y[3],d[8],d[9],d[10],d[11],d[12],d[13],d[14],d[15]);
//    // dataflow
//  assign y[0]=d[1]+d[3]+d[5]+d[7]+d[9]+d[11];
//  assign y[1]=d[2]+d[3]+d[6]+d[7]+d[10]+d[11]+d[14]+d[15];
//  assign y[2]=d[4]+d[5]+d[6]+d[7]+d[12]+d[13]+d[14]+d[15];
//  assign y[3]=d[8]+d[9]+d[10]+d[11]+d[12]+d[13]+d[14]+d[15];
endmodule
