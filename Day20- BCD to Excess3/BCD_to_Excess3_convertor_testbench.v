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


module BCD_to_Excess3_convertor_testbench;
    reg [3:0]B;
    wire [3:0]E;
    BCD_to_Excess3_convertor_design 
    uut(B,E);
        initial begin
            B = 4'h0; #10;
            B = 4'h1; #10;
            B = 4'h2; #10;
            B = 4'h3; #10;
            B = 4'h4; #10;
            B = 4'h5; #10;
            B = 4'h6; #10;
            B = 4'h7; #10;
            B = 4'h8; #10;
            B = 4'h9; #10;
            B = 4'ha; #10;
            B = 4'hb; #10;
            B = 4'hc; #10;
        end
endmodule
