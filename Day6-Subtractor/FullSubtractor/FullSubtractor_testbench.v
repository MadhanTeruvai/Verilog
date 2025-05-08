`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:41:19 PM
// Design Name: 
// Module Name: FullAdder_testbench
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


module FullSubtractor_testbench;
reg a,b,bin;
wire diff,bout;
FullSubtractor_design uut(a,b,bin,diff,bout);
    initial begin
        a=1'b0; b=1'b0; bin=1'b0; #10;
        a=1'b0; b=1'b0; bin=1'b1; #10;
        a=1'b0; b=1'b1; bin=1'b0; #10;
        a=1'b0; b=1'b1; bin=1'b1; #10;
        a=1'b1; b=1'b0; bin=1'b0; #10;
        a=1'b1; b=1'b0; bin=1'b1; #10;
        a=1'b1; b=1'b1; bin=1'b0; #10;
        a=1'b1; b=1'b1; bin=1'b1; #10;
    end
endmodule
