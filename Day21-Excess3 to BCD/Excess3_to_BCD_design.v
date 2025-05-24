`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 04:27:17 PM
// Design Name: 
// Module Name: Excess3_to_BCD_design
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


module Excess3_to_BCD_design(
    input [3:0]Excess3,
    output reg [3:0]BCD
    );
        always @(*)begin
            case (Excess3)
                4'b0011: BCD=4'b0000;
                4'b0100: BCD=4'b0001;
                4'b0101: BCD=4'b0010;
                4'b0110: BCD=4'b0011;
                4'b0111: BCD=4'b0100;
                4'b1000: BCD=4'b0101;
                4'b1001: BCD=4'b0110;
                4'b1010: BCD=4'b0111;
                4'b1011: BCD=4'b1000;
                4'b1100: BCD=4'b1001;
                4'b1101: BCD=4'b1010;
                4'b1110: BCD=4'b1011;
                4'b1111: BCD=4'b1100;
            endcase
        end
endmodule