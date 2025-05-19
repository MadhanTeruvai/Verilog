`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 05:30:27 PM
// Design Name: 
// Module Name: Logic_gates_using_MUX_testbench
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


module Logic_gates_using_MUX_testbench;
    reg a,b;
    wire yand,ynand,yor,ynor,ynot,yxor,yxnor;
    Logic_gates_using_MUX_design 
    uut(a,b,yand,ynand,yor,ynor,ynot,yxor,yxnor);
        initial begin
            a=1'b0; b=1'b0; #10;
            a=1'b0; b=1'b1; #10;
            a=1'b1; b=1'b0; #10;
            a=1'b1; b=1'b1; #10;
        end
endmodule
