`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 04:14:57 AM
// Design Name: 
// Module Name: MUX8x1_using_4x1_and_2x1_testbench
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

module MUX8x1_testbench;
reg [7:0]i;
reg [2:0]s;
wire y;
MUX8x1_using_4x1_and_2x1_design uut(i,s,y);
    initial begin
        i=4'b0101;
        s=3'b000; #10;
        s=3'b001; #10;
        s=3'b010; #10;
        s=3'b011; #10;
        s=3'b100; #10;
        s=3'b101; #10;
        s=3'b110; #10;
        s=3'b111; #10;
    end
endmodule
