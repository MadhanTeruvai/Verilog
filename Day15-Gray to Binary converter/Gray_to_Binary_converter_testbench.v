`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2025 10:18:31 AM
// Design Name: 
// Module Name: Gray_to_Binary_converter_testbench
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


module Gray_to_Binary_converter_testbench;
    reg [3:0]gray;
    wire [3:0]binary;
    Gray_to_Binary_converter_design uut(gray,binary);
        initial begin
            gray = 4'h0; #10;
            gray = 4'h1; #10;
            gray = 4'h2; #10;
            gray = 4'h3; #10;
            gray = 4'h4; #10;
            gray = 4'h5; #10;
            gray = 4'h6; #10;
            gray = 4'h7; #10;
            gray = 4'h8; #10;
            gray = 4'h9; #10;
            gray = 4'ha; #10;
            gray = 4'hb; #10;
            gray = 4'hc; #10;
            gray = 4'hd; #10;
            gray = 4'he; #10;
            gray = 4'hf; #10;
        end
endmodule