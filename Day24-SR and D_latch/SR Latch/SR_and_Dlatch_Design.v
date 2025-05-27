`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2025 12:03:54 PM
// Design Name: 
// Module Name: SR_and_Dlatch_Design
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


module SRlatch_Design(
    input Nand_Sbar,
    input Nand_Rbar,
    output Nand_Q,
    output Nand_Qbar,
    input Nor_S,
    input Nor_R,
    output Nor_Q,
    output Nor_Qbar);
    
    // by using Nand Gate
    nand g1(Nand_Q, Nand_Sbar, Nand_Qbar);
    nand g2(Nand_Qbar, Nand_Rbar, Nand_Q);
    
    // by using Nor Gate
    nor g3(Nor_Qbar, Nor_S, Nor_Q);
    nor g4(Nor_Q, Nor_R, Nor_Qbar);
endmodule

