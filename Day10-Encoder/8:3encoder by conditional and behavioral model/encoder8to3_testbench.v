`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 09:45:10 AM
// Design Name: 
// Module Name: encoder8to3_testbench
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


module encoder8to3_testbench;
    reg [7:0]d;
    wire [2:0]y;
    encoder8to3_design dut(d,y);
        initial begin
            d=8'h00; #10;
            d=8'h02; #10;
            d=8'h04; #10;
            d=8'h08; #10;
            d=8'h10; #10;
            d=8'h20; #10;
            d=8'h40; #10;
            d=8'h80; #10;
        end
endmodule
