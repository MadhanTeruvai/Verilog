`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 11:15:46 AM
// Design Name: 
// Module Name: comparator2bit_Gateflow_design
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

module comparator_2bit_Gatelevel_design (
    input A0, A1, B0, B1, output AgtB, AeqB, AltB);
    wire not_A1, not_A0, not_B1, not_B0;
    wire xnor_A1_B1, xnor_A0_B0;
    wire and1, and2, and3, and4, and5, and6, and7;
    not (not_A1, A1);  not (not_A0, A0);
    not (not_B1, B1);  not (not_B0, B0);
    // A > B: A1B1' + A0B1'B0' + A1A0B0'
    and (and1, A1, not_B1);
    and (and2, A0, not_B1, not_B0);
    and (and3, A1, A0, not_B0);
    or  (AgtB, and1, and2, and3);
    // A = B: (A1 XNOR B1)(A0 XNOR B0)
    xnor (xnor_A1_B1, A1, B1);
    xnor (xnor_A0_B0, A0, B0);
    and  (AeqB, xnor_A1_B1, xnor_A0_B0);
    // A < B: A1'B1 + A0'B1B0 + A1'A0'B0
    and (and4, not_A1, B1);
    and (and5, not_A0, B1, B0);
    and (and6, not_A1, not_A0, B0);
    or  (AltB, and4, and5, and6);
endmodule