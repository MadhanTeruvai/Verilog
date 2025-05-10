`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2025 09:15:49 PM
// Design Name: 
// Module Name: DEMUX1x4_testbench
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


module DEMUX1x4_testbench;
reg i;
reg [1:0]s;
wire [3:0]y;
DEMUX1x4_design uut(i,s,y);
    initial begin
        i=0; s[0]=1; s[1]=1; #10;
        i=1; s[0]=0; s[1]=0; #10;
        i=0; s[0]=1; s[1]=0; #10;
        i=1; s[0]=0; s[1]=1; #10;
        i=0; s[0]=0; s[1]=1; #10;
        i=1; s[0]=1; s[1]=0; #10;
        i=0; s[0]=0; s[1]=0; #10;
        i=1; s[0]=1; s[1]=1; #10;
    end
endmodule
