`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 02:26:20 PM
// Design Name: 
// Module Name: FullSubtractor_by_using_MUX_testbench
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


module FullSubtractor_by_using_MUX_testbench;
    reg a,b,bin;
    wire diff,bout;
    FullSubtractor_by_using_MUX_design 
    uut(a,b,bin,diff,bout);
        initial begin
            {bin,b,a}=3'b000; #10;
            {bin,b,a}=3'b001; #10;
            {bin,b,a}=3'b010; #10;
            {bin,b,a}=3'b011; #10;
            {bin,b,a}=3'b100; #10;
            {bin,b,a}=3'b101; #10;
            {bin,b,a}=3'b110; #10;
            {bin,b,a}=3'b111; #10;
        end
endmodule
