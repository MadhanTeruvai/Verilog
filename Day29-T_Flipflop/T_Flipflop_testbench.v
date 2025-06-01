`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2025 03:33:22 PM
// Design Name: 
// Module Name: T_Flipflop_testbench
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


module T_Flipflop_testbench;
    reg T,clk,rst;
    wire Q;
    T_Flipflop_design uut(T,clk,rst,Q);
    always #5 clk = ~clk;
        initial begin
            rst = 1; T = 0; clk = 0;
            #10 rst = 0;
            #10 T = 1;
            #10 T = 1;
            #10 T = 0;
            #10 T = 1;
            #10 T = 0;
            #10 T = 1;
            #10 rst = 1;
            #10 rst = 0;
            #10 T = 1;
            #10 T = 0;
            #10 T = 1;
            #10 T = 0;
            #10 T = 1;
        end    
endmodule