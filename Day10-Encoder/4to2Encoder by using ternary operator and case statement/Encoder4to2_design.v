`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 12:44:49 PM
// Design Name: 
// Module Name: Encoder4to2_design
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


module Encoder4to2_design(
    input [3:0]d, 
    output reg [1:0]y
    );
//    // Conditional by ternary operator
//    assign y = (d[3]) ? 2'b11:
//               (d[2]) ? 2'b10:
//               (d[1]) ? 2'b01:
//               (d[0]) ? 2'b00: 2'b00;
    // Case statement
        always @(d,y)begin
            case (d)
                4'h1: y=2'b00;
                4'h2: y=2'b01;
                4'h4: y=2'b10;
                4'h8: y=2'b11;
                default: y=2'b00;
            endcase
        end
endmodule