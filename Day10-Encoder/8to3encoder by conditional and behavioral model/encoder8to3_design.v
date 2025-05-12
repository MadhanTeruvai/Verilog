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


module encoder8to3_design(
    input [7:0]d, output reg [2:0]y);
//    // condtional statement
        always @(*)begin
            if (d[1]==1) y=3'b001;
            else if (d[2]==1) y=3'b010;
            else if (d[3]==1) y=3'b011;
            else if (d[4]==1) y=3'b100;
            else if (d[5]==1) y=3'b101;
            else if (d[6]==1) y=3'b110;
            else if (d[7]==1) y=3'b111;
            else y=3'b000;
    // behavioral meodel
//          always @(*) begin
//              y[0]=d[1]+d[3]+d[5]+d[7];
//              y[1]=d[2]+d[3]+d[6]+d[7];
//              y[2]=d[4]+d[5]+d[6]+d[7];
          end
endmodule