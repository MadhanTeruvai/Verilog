`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 10:54:43 AM
// Design Name: 
// Module Name: Decoder4to16_testbench
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


module Decoder4to16_testbench;
    reg [3:0]i;
    wire [15:0]y;
    Decoder4to16_design uut(i,y);
        initial begin
            i=4'h0; #10;
            i=4'h1; #10;
            i=4'h2; #10;
            i=4'h3; #10;
            i=4'h4; #10;
            i=4'h5; #10;
            i=4'h6; #10;
            i=4'h7; #10;
            i=4'h8; #10;
            i=4'h9; #10;
            i=4'ha; #10;
            i=4'hb; #10;
            i=4'hc; #10;
            i=4'hd; #10;
            i=4'he; #10;
            i=4'hf; #10;
        end
endmodule