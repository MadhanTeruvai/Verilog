`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 11:57:55 AM
// Design Name: 
// Module Name: Encoder_using_MUX_testbench
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


module Encoder_using_MUX_testbench;
    reg [7:0]D;
    wire [2:0]Y;
    Encoder_using_MUX_design uut(D,Y);
        initial begin
            D=8'b0; #10;
            D=8'h1; #10;
            D=8'h2; #10;
            D=8'h4; #10;
            D=8'h8; #10;
            D=8'h10; #10;
            D=8'h20; #10;
            D=8'h40; #10;
            D=8'h80; #10;
        end
endmodule
