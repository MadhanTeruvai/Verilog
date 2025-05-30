`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2025 10:25:28 AM
// Design Name: 
// Module Name: D_Flipflop_design
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


module D_Flipflop_design(
    input D,
    input clk,
    input rst,
    output reg Q,
    output Qbar);
    
    assign Qbar = ~Q;
        always @(posedge clk or posedge rst) begin
            if (rst)
                Q <= 0;
            else
                Q <= D;
        end
endmodule
