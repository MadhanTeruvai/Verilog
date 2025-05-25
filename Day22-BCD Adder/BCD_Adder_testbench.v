`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2025 04:46:11 PM
// Design Name: 
// Module Name: BCD_Adder_design
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


module BCD_Adder_testbench;
    reg [3:0]A,B;
    reg Cin;
    wire [3:0]Sum;
    wire Carry;
    BCD_Adder_design dut(A,B,Cin,Sum,Carry);
        initial begin
            A=4'd5; B=4'd9; Cin=1; #10;
            A=4'd1; B=4'd6; Cin=0; #10;
            A=4'd3; B=4'd8; Cin=1; #10;
            A=4'd3; B=4'd6; Cin=0; #10;
            A=4'd8; B=4'd9; Cin=0; #10;
            A=4'd2; B=4'd6; Cin=1; #10;
            A=4'd7; B=4'd8; Cin=1; #10;
            A=4'd4; B=4'd4; Cin=0; #10;
            A=4'd5; B=4'd7; Cin=0; #10;
            A=4'd3; B=4'd5; Cin=0; #10;
            A=4'd9; B=4'd6; Cin=0; #10;
            A=4'd3; B=4'd6; Cin=0; #10;
        end
endmodule
