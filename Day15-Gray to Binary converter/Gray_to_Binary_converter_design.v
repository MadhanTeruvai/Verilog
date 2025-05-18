`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2025 10:18:31 AM
// Design Name: 
// Module Name: Gray_to_Binary_converter_design
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


module Gray_to_Binary_converter_design(
    input [3:0]gray,
    output [3:0]binary
    );
    // behavioral model
//        always @(*)begin
//            binary[3] = gray[3];
//            binary[2] = binary[3]^gray[2];
//            binary[1] = binary[2]^gray[1];
//            binary[0] = binary[1]^gray[0];
//        end
    // Gatelevel model
//    xor g1(binary[3],gray[3]);
//    xor g2(binary[2],binary[3]^gray[2]);
//    xor g3(binary[1],binary[2]^gray[1]);
//    xor g4(binary[0],binary[1]^gray[0]);
    // Dataflow model
    assign binary[3] = gray[3];
    assign binary[2] = binary[3]^gray[2];
    assign binary[1] = binary[2]^gray[1];
    assign binary[0] = binary[1]^gray[0];
endmodule
