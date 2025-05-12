`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 12:44:49 PM
// Design Name: 
// Module Name: Encoder4to2_testbench
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


module Encoder4to2_testbench;
    reg [3:0]d;
    wire [1:0]y;
    Encoder4to2_design uut(d,y);
        initial begin
            d=4'h1; #10;
            d=4'h2; #10;
            d=4'h4; #10;
            d=4'h8; #10;
        end
endmodule
