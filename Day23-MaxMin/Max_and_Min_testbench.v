`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2025 06:54:04 PM
// Design Name: 
// Module Name: Max_and_Min_testbench
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


module Max_and_Min_testbench;
    reg [3:0]a,b;
    wire [3:0]Max,Min;
    Max_and_Min_design uut(a,b,Max,Min);
        initial begin
            repeat(10)begin
                {a,b}=$urandom; #10;
            end
        end
endmodule
