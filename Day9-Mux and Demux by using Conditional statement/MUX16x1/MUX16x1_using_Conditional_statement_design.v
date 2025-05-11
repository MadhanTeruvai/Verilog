`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 10:11:25 AM
// Design Name: 
// Module Name: MUX16x1_using_Conditional_statement_testbench
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


module MUX16x1_using_Conditional_statement_design(
    input [15:0]d, input [3:0]s,output reg y);
    // conditional statement
        always @(*)begin
        if (s==4'h0) y = d[0];
        else if (s==4'h1) y = d[1];
        else if (s==4'h2) y = d[2];
        else if (s==4'h3) y = d[3];
        else if (s==4'h4) y = d[4];
        else if (s==4'h5) y = d[5];
        else if (s==4'h6) y = d[6];
        else if (s==4'h7) y = d[7];
        else if (s==4'h8) y = d[8];
        else if (s==4'h9) y = d[9];
        else if (s==4'ha) y = d[10];
        else if (s==4'hb) y = d[11];
        else if (s==4'hc) y = d[12];
        else if (s==4'hd) y = d[13];
        else if (s==4'he) y = d[14];
        else y = d[15];
        end
endmodule