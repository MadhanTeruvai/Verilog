`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 10:27:10 PM
// Design Name: 
// Module Name: DEMUX1x9_using_1x4DEMUX_testbench
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


module DEMUX1x9_using_1x4DEMUX_testbench;
reg i;
reg [3:0]s;
wire [8:0]y;
DEMUX1x9_using_1x4DEMUX_design uut(i,s,y);
    initial begin
        repeat(10)begin;
        i=1; #0;
        s=$random; #10;
//        i=0; s=3'b000; #10;
//        i=1; s=3'b001; #10;
//        i=0; s=3'b010; #10;
//        i=1; s=3'b011; #10;
//        i=0; s=3'b100; #10;
//        i=1; s=3'b001; #10;
        end
    end
endmodule
