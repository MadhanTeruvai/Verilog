`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2025 02:41:33 PM
// Design Name: 
// Module Name: Logic_gates_Gateflow_model_design
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


module Logic_gates_Gateflow_model_design(
    input a,b,
    output yand, ynand ,yor, ynor, ynot, 
    yxor, yxnor
    );
    and (yand,a,b);
    nand (ynand,a,b);
    or (yor,a,b);
    nor (ynor,a,b);
    not (ynot,a);
    xor (yxor,a,b);
    xnor (yxnor,a,b);
endmodule
