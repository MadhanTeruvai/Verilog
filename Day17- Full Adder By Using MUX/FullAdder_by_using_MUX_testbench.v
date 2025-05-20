`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2025 03:52:30 PM
// Design Name: 
// Module Name: FullAdder_by_using_MUX_testbench
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


module FullAdder_by_using_MUX_testbench;
    reg a,b,cin;
    wire sum,cout;
    FullAdder_by_using_MUX_design 
    uut(a,b,cin,sum,cout);
        initial begin
            {cin,a,b}=3'b000; #10;
            {cin,a,b}=3'b001; #10;
            {cin,a,b}=3'b010; #10;
            {cin,a,b}=3'b011; #10;
            {cin,a,b}=3'b100; #10;
            {cin,a,b}=3'b101; #10;
            {cin,a,b}=3'b110; #10;
            {cin,a,b}=3'b111; #10;    
        end
endmodule
