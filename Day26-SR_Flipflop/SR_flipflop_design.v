`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2025 10:49:14 AM
// Design Name: 
// Module Name: SR_flipflop_design
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


module SR_flipflop_design(
    input S,R,clk,reset,
    output Q,Qbar);
    // The outputs when using NAND and NOR
    // Are similar
    // So we are using either NAND or NOR
    wire nand1,nand2;
    wire Q_temp,Qbar_temp;
    nand g1(nand1,S,clk);
    nand g2(nand2,R,clk);
    nand g3(Q_temp,nand1,Qbar_temp,reset);
    nand g4(Qbar_temp,nand2,Q_temp);
    assign Q = reset ? Q_temp: 1'b0;
    assign Qbar = reset ? Qbar_temp: 1'b1;
endmodule
