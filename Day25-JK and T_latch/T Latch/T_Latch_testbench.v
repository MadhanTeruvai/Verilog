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


module T_Latch_testbench;
    reg T,clk;
    wire Q;
    wire Qbar;
    T_Latch_design uut(T,clk,Q,Qbar);
        initial begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        initial begin
            #10 T = 0;
            #10 T = 1;
            #10 T = 0;
            #10 T = 1;
        end
endmodule
