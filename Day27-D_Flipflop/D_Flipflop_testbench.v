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


module D_Flipflop_testbench;
    reg D,clk,rst;
    wire Q,Qbar;
    D_Flipflop_design uut(D,clk,rst,Q,Qbar);
        initial begin
            clk = 0;
            rst = 1; D = 0;
            #10 rst = 0;
            #10 D = 1;
            #10 D = 0;
            #10 D = 1;
            #10 D = 0;
            #10 D = 1;
            #10 D = 0;
            #10 D = 0;
            #10 D = 1;
            #10 D = 0;
            #10 D = 1;
            #10 D = 1;
            #10 D = 0;
        end
        always #5 clk = ~clk;
endmodule