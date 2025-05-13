`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 10:54:43 AM
// Design Name: 
// Module Name: Decoder4to16_design
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

// conditional statement by ternary operator
module Decoder4to16_design(
    input [3:0]i,
    output [15:0]y
    );
    assign y=(i==4'hf) ? 16'h8000:
             (i==4'he) ? 16'h4000:
             (i==4'hd) ? 16'h2000:
             (i==4'hc) ? 16'h1000:
             (i==4'hb) ? 16'h800:
             (i==4'ha) ? 16'h400:
             (i==4'h9) ? 16'h200:
             (i==4'h8) ? 16'h100:
             (i==4'h7) ? 16'h80:
             (i==4'h6) ? 16'h40:
             (i==4'h5) ? 16'h20:
             (i==4'h4) ? 16'h10:
             (i==4'h3) ? 16'h8:
             (i==4'h2) ? 16'h4:
             (i==4'h1) ? 16'h2:
             (i==4'h0) ? 16'h1:
                      16'h0;
endmodule