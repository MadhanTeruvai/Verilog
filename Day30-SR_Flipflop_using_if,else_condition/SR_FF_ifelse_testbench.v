`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025 11:53:26 AM
// Design Name: 
// Module Name: SR_FF_ifelse_design
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

module SR_FF_ifelse_testbench;
    reg S,R,clk;   
    wire Q,Qbar;
    SR_FF_ifelse_design uut(S,R,clk,Q,Qbar);
        initial begin
            clk = 0; 
            repeat(70) #2 clk = ~clk;
        end
        
        initial begin
            #0 {S,R} = 2'b10;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;
            #10 {S,R} = 2'b01;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b00;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b11;
            #10 {S,R} = 2'b10;
            #10 {S,R} = 2'b00;
        end
endmodule