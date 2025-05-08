`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:41:19 PM
// Design Name: 
// Module Name: FullAdder_design
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


module FullSubtractor_design(
    input a,b,bin,
    output diff,bout
    );
    // structural model
    wire w1,w2,w3,w4,w5;
    xor g1(w1,a,b);
    xor g2(diff,w1,bin);
    not g3(w2,w1);
    not g4(w3,a);
    and g5(w4,w3,b);
    and g6(w5,w2,bin);
    or g7(bout,w4,w5);
    
//// behavioural model (reg needed)
//    always @(a,b,bin)begin
//       diff = a^b^bin;
//       bout = (~a & b) | (~(a^b) & bin);
//    end
endmodule