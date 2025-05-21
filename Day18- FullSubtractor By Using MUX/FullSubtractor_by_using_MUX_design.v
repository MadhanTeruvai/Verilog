`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 02:26:20 PM
// Design Name: 
// Module Name: FullSubtractor_by_using_MUX_design
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


module FullSubtractor_by_using_MUX_design(
    input a,b,bin,
    output reg diff,bout
    );
        always @(*)begin
            if ({a,b}==2'b00) diff = bin;
            else if ({a,b}==2'b01) diff = ~bin;
            else if ({a,b}==2'b10) diff = ~bin;
            else diff = bin;
        end
        always @(*)begin
            if ({a,b}==2'b00) bout = bin;
            else if ({a,b}==2'b01) bout = 1;
            else if ({a,b}==2'b10) bout = 0;
            else bout = bin;
        end
endmodule
