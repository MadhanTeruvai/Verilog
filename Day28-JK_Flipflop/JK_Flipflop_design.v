`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 10:09:47 AM
// Design Name: 
// Module Name: JK_Flipflop_design
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


module JK_Flipflop_design(
    input J,K,clk,rst,
    output reg Q,Qbar);
        always @(posedge clk or posedge rst)begin
            if (rst) begin
                Q <= 0;
                Qbar <= 1;
            end
            else begin
                case({J,K})
                2'b00: Q <= Q; // NO change
                2'b01: Q <= 0; // Reset
                2'b10: Q <= 1; // Set
                2'b11: Q <= ~Q; // Toggle
            endcase
                Qbar <= ~Q;
            end
        end
endmodule
