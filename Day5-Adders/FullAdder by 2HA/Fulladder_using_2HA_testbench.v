`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 06:35:08 PM
// Design Name: 
// Module Name: Fulladder_using_2HA_testbench
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


module Fulladder_using_2HA_testbench;
reg a,b,cin;
wire sum,cout;
Fulladder_using_2HA_design uut(a,b,cin,sum,cout);
    initial begin
    $monitor("Time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
        a=1'b0; b=1'b0; cin=1'b0; #10;
        a=1'b0; b=1'b0; cin=1'b1; #10;
        a=1'b0; b=1'b1; cin=1'b0; #10;
        a=1'b0; b=1'b1; cin=1'b1; #10;
        a=1'b1; b=1'b0; cin=1'b0; #10;
        a=1'b1; b=1'b0; cin=1'b1; #10;
        a=1'b1; b=1'b1; cin=1'b0; #10;
        a=1'b1; b=1'b1; cin=1'b1; #10;
    end
endmodule
