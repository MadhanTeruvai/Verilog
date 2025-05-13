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


module Decoder2to4_testbench;
    reg [1:0]i;
    wire [3:0]y;
    Decoder2to4_design uut(i,y);
        initial begin
            i=00; #10;
            i=01; #10;
            i=10; #10;
            i=11; #10;
        end
endmodule
