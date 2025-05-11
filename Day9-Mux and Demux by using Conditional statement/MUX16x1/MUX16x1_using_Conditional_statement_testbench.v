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


module MUX16x1_using_Conditional_statement_testbench;
    reg [15:0]d; reg [3:0]s; wire y;
    MUX16x1_using_Conditional_statement_design uut(d,s,y);
        initial begin
            d=$random;
            s=4'h0; #10;
            s=4'h1; #10;
            s=4'h2; #10;
            s=4'h3; #10;
            s=4'h4; #10;
            s=4'h5; #10;
            s=4'h6; #10;
            s=4'h7; #10;
            s=4'h8; #10;
            s=4'h9; #10;
            s=4'ha; #10;
            s=4'hb; #10;
            s=4'hc; #10;
            s=4'hd; #10;
            s=4'he; #10;
            s=4'hf; #10; 
        end
endmodule