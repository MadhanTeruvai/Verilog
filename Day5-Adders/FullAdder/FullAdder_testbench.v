`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:41:19 PM
// Design Name: 
// Module Name: FullAdder_testbench
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


module FullAdder_testbench;
reg a,b,cin;
wire sum,cout;
FullAdder_design uut(a,b,cin,sum,cout);
    initial begin
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
