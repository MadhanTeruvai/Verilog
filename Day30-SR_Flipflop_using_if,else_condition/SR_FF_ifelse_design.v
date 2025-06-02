`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025 11:53:26 AM
// Design Name: 
// Module Name: SR_FF_ifelse_design
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

// SR Flipflop by using if,else condition
module SR_FF_ifelse_design(
    input S,R,clk,
    output reg Q,Qbar);
        always @(posedge clk)begin
        if (~S && ~R)
            Q = Q;
        else if (~S && R)
            Q = 1'b0;
        else if (S && ~R)
            Q = 1'b1;
        else
            Q = 1'bx;
        Qbar = ~Q;
        end
endmodule
