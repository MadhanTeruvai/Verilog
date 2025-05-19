`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 05:30:27 PM
// Design Name: 
// Module Name: Logic_gates_using_MUX_design
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


module Logic_gates_using_MUX_design(input a,b,
    output reg yand,ynand,yor,ynor,ynot,yxor,yxnor);
        always @(*)begin
            if (a == 0) begin
                yand = 1'b0;
                ynand = 1'b1;
                yor = b;
                ynor = ~b;
                ynot = ~a;
                yxor = b;
                yxnor = ~b;
            end
            else begin
                yand = b;
                ynand = ~b;
                yor = 1'b1;
                ynor = 1'b0;
                ynot = ~a;
                yxor = ~b;
                yxnor = b;
            end
        end
endmodule