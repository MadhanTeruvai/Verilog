`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 10:31:27 AM
// Design Name: 
// Module Name: Logic_Gates_Behavioural_Model_Testbench
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


module Logic_Gates_Behavioural_Model_Testbench;
reg a, b;
wire yand, ynand, yor, ynor, ynot, yxor, yxnor;
Logic_Gates_Behavioural_Model_design uut(a, b, yand, ynand, yor, ynor, ynot, yxor, yxnor);
    initial begin
        a=1'b0; b=1'b0; #10;
        a=1'b0; b=1'b1; #10;
        a=1'b1; b=1'b0; #10;
        a=1'b1; b=1'b1; #10;
    end
endmodule
