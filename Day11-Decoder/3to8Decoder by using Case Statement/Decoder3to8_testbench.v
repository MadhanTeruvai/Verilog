`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 10:19:29 AM
// Design Name: 
// Module Name: Decoder3to8_testbench
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

module Decoder3to8_testbench;
    reg [2:0]i;
    wire [7:0]y;
    Decoder3to8_design uut(i,y);
        initial begin
        i=3'b000; #10;
        i=3'b001; #10;
        i=3'b010; #10;
        i=3'b011; #10;
        i=3'b100; #10;
        i=3'b101; #10;
        i=3'b110; #10;
        i=3'b111; #10;
        end
endmodule
