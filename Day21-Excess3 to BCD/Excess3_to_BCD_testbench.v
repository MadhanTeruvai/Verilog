`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 04:27:17 PM
// Design Name: 
// Module Name: Excess3_to_BCD_testbench
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


module Excess3_to_BCD_testbench;
    reg [3:0]Excess3;
    wire [3:0]BCD;
    Excess3_to_BCD_design dut(Excess3,BCD);
        initial begin
            Excess3 = 4'b0011; #10;
            Excess3 = 4'b0100; #10;
            Excess3 = 4'b0101; #10;
            Excess3 = 4'b0110; #10;
            Excess3 = 4'b0111; #10;
            Excess3 = 4'b1000; #10;
            Excess3 = 4'b1001; #10;
            Excess3 = 4'b1010; #10;
            Excess3 = 4'b1011; #10;
            Excess3 = 4'b1100; #10;
            Excess3 = 4'b1101; #10;
            Excess3 = 4'b1110; #10;
            Excess3 = 4'b1111; #10;
        end
endmodule
