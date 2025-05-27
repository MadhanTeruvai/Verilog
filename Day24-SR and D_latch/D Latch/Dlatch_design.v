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


module Dlatch_design(
    input Nand_Dbar,
    output Nand_Q,
    output Nand_Qbar,
    input Nor_D,
    output Nor_Q, 
    output Nor_Qbar);
    // By using Nand Gate
    wire Not_Dbar,Not_D;
    assign Not_Dbar = ~Nand_Dbar;
    assign Nand_Q = ~(Nand_Dbar & Nand_Qbar);
    assign Nand_Qbar = ~(Not_Dbar & Nand_Q);
    // By using Nor Gate
    assign Not_D = ~Nor_D;
    assign Nor_Qbar = ~(Nor_D | Nor_Q);
    assign Nor_Q = ~(Not_D | Nor_Qbar);
endmodule
