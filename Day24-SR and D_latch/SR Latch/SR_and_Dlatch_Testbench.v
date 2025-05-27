`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2025 12:03:54 PM
// Design Name: 
// Module Name: SR_and_Dlatch_Testbench
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


module SRlatch_Testbench;
    reg Nand_Sbar, Nand_Rbar, Nor_S, Nor_R;
    wire Nand_Q, Nand_Qbar, Nor_Q, Nor_Qbar;
    
    SRlatch_Design 
    uut(Nand_Sbar, Nand_Rbar, Nand_Q, Nand_Qbar, 
        Nor_S, Nor_R, Nor_Q, Nor_Qbar);
        initial begin
            {Nand_Sbar, Nand_Rbar} = 2'b00; #10;
            {Nand_Sbar, Nand_Rbar} = 2'b01; #10;
            {Nand_Sbar, Nand_Rbar} = 2'b10; #10;
            {Nand_Sbar, Nand_Rbar} = 2'b11; #10;
        end
        initial begin
            {Nor_S, Nor_R} = 2'b11; #10;
            {Nor_S, Nor_R} = 2'b10; #10;
            {Nor_S, Nor_R} = 2'b01; #10;
            {Nor_S, Nor_R} = 2'b00; #10;
        end
endmodule
