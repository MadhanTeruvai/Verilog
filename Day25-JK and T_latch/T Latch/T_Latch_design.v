`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2025 11:58:53 AM
// Design Name: 
// Module Name: JK_Latch_design
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


module T_Latch_design(
    input T,clk,
    output reg Q,Qbar);
    // The outputs from Nand and Nor Gates are Similar
        always @(*)begin
            case (T)
                1'b0: begin
                        Q = 0; Qbar = 1;
                       end
                1'b1: begin
                        Q = ~Q; Qbar = ~Qbar;
                      end
            endcase
        end
endmodule
