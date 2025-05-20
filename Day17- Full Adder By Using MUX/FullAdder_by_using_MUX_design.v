`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2025 03:52:30 PM
// Design Name: 
// Module Name: FullAdder_by_using_MUX_design
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


module FullAdder_by_using_MUX_design(
    input a,b,cin,
    output reg sum, cout
    );
        always @(a,b)begin
            if ({a,b}==2'b00) sum = cin;
            else if ({a,b}==2'b01) sum = ~cin;
            else if ({a,b}==2'b10) sum = ~cin;
            else sum = cin;
        end
        always @(*)begin
            if ({a,b}==2'b00) cout = 0;
            else if ({a,b}==2'b01) cout = cin;
            else if ({a,b}==2'b10) cout = cin;
            else cout = 1;
        end
endmodule
