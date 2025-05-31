`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 10:09:47 AM
// Design Name: 
// Module Name: JK_Flipflop_testbench
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


module JK_Flipflop_testbench;
    reg J,K,clk,rst;
    wire Q,Qbar;
    JK_Flipflop_design uut(J,K,clk,rst,Q,Qbar);
        initial begin
            clk = 0;
            rst = 1;
            J = 0;
            K = 0;
            #10 rst = 0;
            #10 {J,K} = 2'b01;
            #10 {J,K} = 2'b00;
            #10 {J,K} = 2'b01;
            #10 {J,K} = 2'b10;
            #10 {J,K} = 2'b11;
            #10 {J,K} = 2'b10;
            #10 {J,K} = 2'b00;
            #10 {J,K} = 2'b01;
            #10 {J,K} = 2'b10;
            #10 {J,K} = 2'b11;         
        end
    always #5 clk = ~clk;
endmodule