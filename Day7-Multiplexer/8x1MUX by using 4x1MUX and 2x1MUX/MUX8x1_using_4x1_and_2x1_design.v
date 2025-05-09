`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 02:57:35 AM
// Design Name: 
// Module Name: MUX8x1_using_4x1_and_2x1_design
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
module MUX2x1(input i0,i1,s,output y); 
    wire n1,n2;
    not g1(sbar,s); and g2(n1,sbar,i0);
    and g3(n2,s,i1); or g4(y,n1,n2);
endmodule
module MUX4x1(input [3:0]i,[1:0]s,output y);
    wire sbar,n1,n2,n3,n4;
    not g1(sbar0, s[0]); not g2(sbar1, s[1]);
    and g3(n1, sbar0, sbar1, i[0]);
    and g4(n2, sbar0, s[1], i[1]);
    and g5(n3, s[0], sbar1, i[2]);
    and g6(n4, s[0], s[1], i[3]);
    or g7(y,n1,n2,n3,n4);
endmodule
module MUX8x1_using_4x1_and_2x1_design(i,s,y);
    input [7:0]i; input [2:0]s; output y; 
    wire n1,n2;
    MUX4x1 u1(.i(i[3:0]), .s(s[1:0]), .y(n1));
    MUX4x1 u2(.i(i[7:4]), .s(s[1:0]), .y(n2));
    MUX2x1 u3(.i0(n1), .i1(n2), .s(s[2]), .y(y));
endmodule