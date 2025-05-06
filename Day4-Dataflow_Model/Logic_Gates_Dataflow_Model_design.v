`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 04:09:24 PM
// Design Name: 
// Module Name: Logic_Gates_Dataflow_Model_design
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


module Logic_Gates_Dataflow_Model_design(
    input a,b,
    output yand, ynand, yor, ynor, ynot,
    yxor, yxnor
    );
    assign yand = a & b;
    assign ynand = ~(a & b);
    assign yor = a|b;
    assign ynor = ~(a|b);
    assign ynot = ~a;
    assign yxor = a^b;
    assign yxnor = ~(a^b);
endmodule
