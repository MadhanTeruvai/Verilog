`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 06:35:08 PM
// Design Name: 
// Module Name: Fulladder_using_2HA_design
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

module HS(a,b,diff,bout);
    input a,b;
    output diff,bout;
    not (not_a,a);
    xor (diff,a,b);
    and (bout,not_a,b);
endmodule

module FullSubtractor_using_2HS_design(
a,b,bin,diff,bout);
    input a,b,bin;
    output diff,bout;
    wire n1,n2,n3;
    HS u1(.a(a),.b(b),.diff(n1),
        .bout(n2));
    HS u2(.a(n1),.b(bin),.diff(diff),
        .bout(n3));
    or g1(bout,n2,n3);
endmodule
