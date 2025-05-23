`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 06:32:36 PM
// Design Name: 
// Module Name: BCD_to_Excess3_convertor_design
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


module BCD_to_Excess3_convertor_design(
    input [3:0]B,
    output [3:0]E
    );
    assign E[0] = ~B[0];
    assign E[1] = B[1] & B[0] | ~B[1] & ~B[0];
    assign E[2] = ~B[2] & B[1] | ~B[2] & B[0] |
                  B[2] & ~B[1] & ~B[0];
    assign E[3] = B[3] | B[2] & B[1] | B[2] & B[0];
endmodule
