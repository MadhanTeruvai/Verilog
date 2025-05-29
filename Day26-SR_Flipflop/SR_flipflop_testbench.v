`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2025 10:49:14 AM
// Design Name: 
// Module Name: SR_flipflop_design
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


module SR_flipflop_testbench;
    reg S,R,clk,reset;  wire Q,Qbar;
    SR_flipflop_design dut(S,R,clk,reset,Q,Qbar);
        initial begin
            clk = 0;
//            forever #5 clk = ~clk;
            repeat(20) #5 clk = ~clk;
        end
        initial begin
            reset = 0;
            S = 0; R = 0; #10;
            reset = 1;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b11;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b00;
        end
endmodule