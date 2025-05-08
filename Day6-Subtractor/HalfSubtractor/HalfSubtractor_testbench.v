`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 09:48:49 AM
// Design Name: 
// Module Name: HalfSubtractor_testbench
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

module HalfSubtractor_testbench;
reg a,b;
wire diff,barrow;
HalfSubtractor_design dut(a,b,diff,barrow);
    initial begin
    $monitor("Time=%0t,a=%b,b=%b,diff=%b,barrow=%b"
    ,$time,a,b,diff,barrow);
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
    end
endmodule
