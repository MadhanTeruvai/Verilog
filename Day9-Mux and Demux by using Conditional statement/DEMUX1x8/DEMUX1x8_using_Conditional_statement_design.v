`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 11:32:00 AM
// Design Name: 
// Module Name: DEMUX1x8_using_Conditional_statement_design
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

module DEMUX1x8_using_Conditional_statement_design(
    input i,
    input [2:0]s, 
    output [7:0]y);
    // conditional statement
    assign y[0] = (s==3'b0)   ? i: 0;
    assign y[1] = (s==3'b1)   ? i: 0;
    assign y[2] = (s==3'b10)  ? i: 0;
    assign y[3] = (s==3'b11)  ? i: 0;
    assign y[4] = (s==3'b100) ? i: 0;
    assign y[5] = (s==3'b101) ? i: 0;
    assign y[6] = (s==3'b110) ? i: 0;
    assign y[7] = (s==3'b111) ? i: 0;
endmodule