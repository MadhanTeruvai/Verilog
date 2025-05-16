`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 09:44:09 AM
// Design Name: 
// Module Name: Seven_Segment_Display_Testbench
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


module Seven_Segment_Display_Testbench;
    reg [3:0]Data;
    wire [6:0]Segment;
    Seven_Segment_Display_Design 
    uut(Data, Segment);
        initial begin
            Data=4'b0000; #10;
            Data=4'b0001; #10;
            Data=4'b0010; #10;
            Data=4'b0011; #10;
            Data=4'b0100; #10;
            Data=4'b0101; #10;
            Data=4'b0110; #10;
            Data=4'b0111; #10;
            Data=4'b1000; #10;
            Data=4'b1001; #10;
        end
endmodule
