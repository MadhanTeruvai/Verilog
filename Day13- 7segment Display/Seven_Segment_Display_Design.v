`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 09:44:09 AM
// Design Name: 
// Module Name: Seven_Segment_Display_Design
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


module Seven_Segment_Display_Design(
    input [3:0]Data,
    output reg [6:0]Segment
    );
        always @(*)begin
            case (Data)
                4'b0000: Segment=7'b111_1110;
                4'b0001: Segment=7'b011_0000;
                4'b0010: Segment=7'b110_1101;
                4'b0011: Segment=7'b111_1001;
                4'b0100: Segment=7'b011_0011;
                4'b0101: Segment=7'b101_1011;
                4'b0110: Segment=7'b101_1111;
                4'b0111: Segment=7'b111_0000;
                4'b1000: Segment=7'b111_1111;
                4'b1001: Segment=7'b111_1011;
                default: Segment=7'b000_0000;
            endcase
        end
endmodule
