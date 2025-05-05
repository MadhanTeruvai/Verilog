`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 03:33:30 PM
// Design Name: 
// Module Name: Logic_Gates_Behavioural_Model_design
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


module Logic_Gates_Behavioural_Model_design(
    input a,b,
    output reg yand, ynand, yor, ynor, ynot,
    yxor, yxnor
    );
        always @(a,b)begin
            yand = a & b;
            ynand = ~(a & b);
            yor = a|b;
            ynor = ~(a|b);
            ynot = ~a;
            yxor = a^b;
            yxnor = ~(a^b);
        end
endmodule