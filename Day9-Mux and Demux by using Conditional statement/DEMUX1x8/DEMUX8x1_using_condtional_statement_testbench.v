`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 10:11:25 AM
// Design Name: 
// Module Name: MUX16x1_using_Conditional_statement_testbench
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


module DEMUX1x8_using_Conditional_statement_testbench;
    reg i; reg [2:0]s; wire [7:0]y;
    DEMUX1x8_using_Conditional_statement_design 
    uut(i,s,y);
        initial begin
            i=1; s=3'b0;   #10;
            i=0; s=3'b1;   #10;
            i=1; s=3'b10;  #10;
            i=1; s=3'b11;  #10;
            i=1; s=3'b100; #10;
            i=1; s=3'b101; #10;
            i=0; s=3'b110; #10;
            i=1; s=3'b111; #10;
            i=1; s=3'b000; #10;
            i=1; s=3'b100; #10;
            i=1; s=3'b110; #10;
            i=1; s=3'b011; #10; 
            i=1; s=3'b110; #10; 
            i=1; s=3'b1; #10;                                  
        end
endmodule