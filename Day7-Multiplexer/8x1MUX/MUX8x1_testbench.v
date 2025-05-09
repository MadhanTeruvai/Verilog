`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 04:36:35 PM
// Design Name: 
// Module Name: MUX8x1_testbench
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


module MUX8x1_using_4x1_and_2x1_testbench;
reg [7:0]i;
reg [2:0]s;
wire y;
MUX8x1_design uut(i,s,y);
    initial begin
        repeat(10)begin
            {i}=$random;
            {s}=$random;
            #10;
        $display("Time=%0t,i=%b,s=%b,y=%b",
        $time,i,s,y);
        end
    end
endmodule