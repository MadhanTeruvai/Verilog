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


module JK_Latch_testbench;
    reg J,K,clk;
    wire Q,Qbar;
    JK_Latch_design 
    uut(J,K,clk,Q,Qbar);
        initial begin
            clk = 0;
            forever #10 clk = ~clk;
        end
        initial begin
            {J,K} = 2'b00;
            #10 {J,K} = 2'b01;
            #10 {J,K} = 2'b00;
            #10 {J,K} = 2'b01;
            #10 {J,K} = 2'b10;
            #10 {J,K} = 2'b11;
            #10 {J,K} = 2'b00;
            #10 {J,K} = 2'b11;
            #10;
        end
endmodule
