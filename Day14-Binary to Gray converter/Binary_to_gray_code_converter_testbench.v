`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 05:32:42 PM
// Design Name: 
// Module Name: Binary_to_gray_code_converter_testbench
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


module Binary_to_gray_code_converter_testbench;
    reg [3:0]binary;  wire [3:0]gray;
    Binary_to_gray_code_converter_design 
    uut(binary,gray);
        initial begin
            binary = 4'b0000; #10;
            binary = 4'b0001; #10;
            binary = 4'b0010; #10;
            binary = 4'b0011; #10;
            binary = 4'b0100; #10;
            binary = 4'b0101; #10;
            binary = 4'b0110; #10;
            binary = 4'b0111; #10;
            binary = 4'b1000; #10;
            binary = 4'b1001; #10;
            binary = 4'b1010; #10;
            binary = 4'b1011; #10;
            binary = 4'b1100; #10;
            binary = 4'b1101; #10;
            binary = 4'b1110; #10;
            binary = 4'b1111; #10;
        end
endmodule