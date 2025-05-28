`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2025 11:58:53 AM
// Design Name: 
// Module Name: JK_Latch_design
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


module JK_Latch_design(
    input J, K, clk,
    output reg Q, Qbar);
    wire n1,n2,n3,n4;
    // The outputs from Nand and Nor Gates are Similar
    nand g1(n1,J,clk,Qbar);
    nand g2(n2,K,clk,Q);
    nand g3(n3,n1,Qbar);
    nand g4(n4,n2,Q);
        always @(posedge clk)begin
            Q <= n3;
            Qbar <= n4;
        end
        initial begin
            Q = 0;
            Qbar = 1;
        end
endmodule
//        always @(*)begin
//            case ({J,K})
//                2'b00: begin
//                        Q=0; Qbar=1;
//                       end
//                2'b01: begin
//                        Q=0; Qbar=1;
//                       end
//                2'b10: begin
//                        Q=1; Qbar=1;
//                       end
//                2'b11: begin
//                        Q=~Q; Qbar=~Qbar;
//                       end
//            endcase
//        end