`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 11:58:02 AM
// Design Name: 
// Module Name: Encoder_16to4_testbench
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


module Encoder16to4_testbench;
    reg [15:0]d; wire [3:0]y;
    Encoder16to4_design dut(d,y);
        initial begin
            d=16'h0 ;#10;
            d=16'h1 ;#10;
            d=16'h2 ;#10;
            d=16'h4 ;#10;
            d=16'h8 ;#10;
            d=16'h10 ;#10;
            d=16'h20 ;#10;
            d=16'h40 ;#10;
            d=16'h80 ;#10;
            d=16'h100 ;#10;
            d=16'h200 ;#10;
            d=16'h400 ;#10;
            d=16'h800 ;#10;
            d=16'h1000 ;#10;
            d=16'h2000 ;#10;
            d=16'h4000 ;#10;
            d=16'h8000 ;#10;
        end
endmodule