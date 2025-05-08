`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 09:48:49 AM
// Design Name: 
// Module Name: HalfSubtractor_design
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

module HalfSubtractor_design(
    input a,b,
    output reg diff,barrow
    );
    // Behavioral model
    always @(*)begin
    diff = a^b;
    barrow = ~a & b;
    
// Dataflow Model (reg not required)
//    assign diff = a^b;
//    assign barrow = ~a & b;

// Gatelevel Model (reg not required)
//    not (not_a,a);
//    xor (diff,a,b);
//    and (barrow,not_a,b);
    end
endmodule
