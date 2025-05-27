`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2025 03:05:03 PM
// Design Name: 
// Module Name: Dlatch_design
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


module Dlatch_testbench;
    reg Nand_Dbar;
    wire Nand_Q;
    wire Nand_Qbar;
    reg Nor_D;
    wire Nor_Q;
    wire Nor_Qbar;
    Dlatch_design 
    uut(Nand_Dbar,Nand_Q,Nand_Qbar,
        Nor_D,Nor_Q,Nor_Qbar);
        initial begin
            Nand_Dbar = 1'b0; #10;
            Nand_Dbar = 1'b1; #10;
        end
        initial begin
            Nor_D = 1'b0; #10;
            Nor_D = 1'b1; #10;
        end
endmodule
