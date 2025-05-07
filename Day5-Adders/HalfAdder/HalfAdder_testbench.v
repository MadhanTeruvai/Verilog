`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:12:44 PM
// Design Name: 
// Module Name: HalfAdder_testbench
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


module HalfAdder_testbench;
reg a,b;
wire sum,carry;
HalfAdder_design dut(a,b,sum,carry);
    initial begin
    $monitor("Time=%0t,a=%b,b=%b,sum=%b,carry=%b"
    ,$time,a,b,sum,carry);
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
    end
endmodule
