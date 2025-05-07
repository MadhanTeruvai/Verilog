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

module HA(a,b,sum,c);
    input a,b;
    output sum,c;
    xor (sum,a,b);
    and (c,a,b);
endmodule

module Fulladder_using_2HA_design(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire n1,n2,n3;
    HA u1(.a(a),.b(b),.sum(n1),.c(n2));
    HA u2(.a(n1),.b(cin),.sum(sum),.c(n3));
    or g1(cout,n2,n3);
endmodule
