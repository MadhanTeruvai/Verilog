`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 04:39:11 PM
// Design Name: 
// Module Name: MUX8x1_design
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

module MUX8x1_design(
    input [7:0]i,
    input [2:0]s,
    output reg y
    );
    always @(*)begin
        y=((i[0]& ~s[0]& ~s[1]& ~s[2])|
           (i[1]& ~s[0]& ~s[1]&  s[2])|
           (i[2]& ~s[0]&  s[1]& ~s[2])|
           (i[3]& ~s[0]&  s[1]&  s[2])|
           (i[4]&  s[0]& ~s[1]& ~s[2])|
           (i[5]&  s[0]& ~s[1]&  s[2])|
           (i[6]&  s[0]&  s[1]& ~s[2])|
           (i[7]&  s[0]&  s[1]&  s[2]));
    end
endmodule
