`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 10:19:29 AM
// Design Name: 
// Module Name: Decoder3to8_design
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

// case statement
module Decoder3to8_design(
    input [2:0]i,
    output reg [7:0]y
    );
        always @(*)begin
            case (i)
                3'b111: y=8'h80;
                3'b110: y=8'h40;
                3'b101: y=8'h20;
                3'b100: y=8'h10;
                3'b011: y=8'h8;
                3'b010: y=8'h4;
                3'b001: y=8'h2;
                3'b000: y=8'h1;
                default: y=8'h0;
            endcase
        end
endmodule
