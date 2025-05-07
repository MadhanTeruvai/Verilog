`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:03:24 PM
// Design Name: 
// Module Name: HalfAdder_design
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


module HalfAdder_design(
    input a,b,
    output reg sum,carry
    );
    // Behavioral model (reg not required)
    always @(*)begin
    sum = a^b;
    carry = a & b;
    
    // Dataflow Model (reg not required)
//    assign sum = a^b;
//    assign carry = a & b;

    // Gatelevel Model 
//    xor (sum,a,b);
//    and (carry,a,b);
    end
endmodule
