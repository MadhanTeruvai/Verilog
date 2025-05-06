`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 04:19:39 PM
// Design Name: 
// Module Name: Logic_Gates_Dataflow_Model_testbench
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

// Logic Gates by using Dataflow Model
module Logic_Gates_Dataflow_Model_Testbench;
reg a, b;
wire yand, ynand, yor, ynor, ynot, yxor, yxnor;
Logic_Gates_Dataflow_Model_design uut(a, b, 
yand, ynand, yor, ynor, ynot, yxor, yxnor);
    initial begin
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
    end
endmodule
