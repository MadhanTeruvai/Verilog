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


module FullAdder_design(
    input a,b,cin,
    output sum,cout
    );
    // structural model
    wire w1,w2,w3,w4;
    xor g1(w1,a,b);
    xor g2(sum,w1,cin);
    
    and g3(w2,a,b);
    and g4(w3,b,cin);
    and g5(w4,a,cin);
    or g6(cout,w2,w3,w4);
    
    // behavioural model (reg needed)
//        always @(a,b,cin)begin
//            sum = a^b^cin;
//            carry = a & b | b & cin | cin & a;
//        end
endmodule
