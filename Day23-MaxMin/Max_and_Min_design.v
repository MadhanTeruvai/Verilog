`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2025 06:54:04 PM
// Design Name: 
// Module Name: Max_and_Min_design
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


module Max_and_Min_design(
    input [3:0]a,b,
    output reg [3:0]Max,Min
    );
//    assign Max = (a > b) ? a : b;
//    assign Min = (a < b) ? a : b;
    always @(*)begin
        Max = (a > b) ? a : b;
        Min = (a < b) ? a : b;
    end
endmodule
