`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2025 04:46:11 PM
// Design Name: 
// Module Name: BCD_Adder_design
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


module BCD_Adder_design(
    input [3:0]A,B,
    input Cin,
    output reg [3:0]Sum,
    output reg Carry);
    wire [4:0]temp_sum;
    assign temp_sum = A + B + Cin;
        always @(*)begin
            if (temp_sum > 9)begin
                Sum = temp_sum + 6;
                Carry = 1;
            end else begin
                Sum = temp_sum[3:0];
                Carry = 0;
            end
        end
endmodule
