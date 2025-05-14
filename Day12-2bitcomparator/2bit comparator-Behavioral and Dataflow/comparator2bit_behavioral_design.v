`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 09:49:18 AM
// Design Name: 
// Module Name: comparator2bit_behavioral_design
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


module comparator2bit_behavioral_design(
  input A0,A1,B0,B1,output reg AgtB,AeqB,AltB);
  // Behavioral
      always @(*)begin
         AgtB=(A1&~B1)|(A0&~B1&~B0)|(A0&A1&~B0);
         AeqB= ~(A1^B1)&~(A0^B0);
         AltB=(~A1&B1)|(~A0&B0&B1)|(~A0&~A1&B0);
      end
  // dataflow (reg not required)
//     assign AgtB=(A1&~B1)|(A0&~B1&~B0)|(A0&A1&~B0);
//     assign AeqB= ~(A1^B1)&~(A0^B0);
//     assign AltB=(~A1&B1)|(~A0&B0&B1)|(~A0&~A1&B0);
  // if, else condition
//      always @(*)begin
//         AgtB = 0;
//         AeqB = 0;
//         AltB = 0;
//         if ({A0, A1} > {B0, B1}) AgtB = 1;
//         else if ({A0, A1} == {B0, B1}) AeqB = 1;
//         else AltB = 1;
//      end
endmodule