`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2025 03:33:22 PM
// Design Name: 
// Module Name: T_Flipflop_design
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


module T_Flipflop_design(
    input T,clk,rst,
    output reg Q
    );
        always @(posedge clk or posedge rst)begin
            if (rst)
                Q <= 1'b0;
            else if (T)
                Q <= ~Q;
            else
                Q <= Q;
        end
endmodule
