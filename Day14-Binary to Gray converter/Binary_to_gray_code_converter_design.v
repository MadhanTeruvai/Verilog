`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 05:32:42 PM
// Design Name: 
// Module Name: Binary_to_gray_code_converter_design
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


module Binary_to_gray_code_converter_design(
    input [3:0]binary,
    output [3:0]gray
    );
    // Dataflow model
//    assign gray[3] = binary[3];
//    assign gray[2] = binary[3]^binary[2];
//    assign gray[1] = binary[2]^binary[1];
//    assign gray[0] = binary[1]^binary[0];
    // Behavioral model (reg required)
//        always @(*)begin
//            gray[3] = binary[3];
//            gray[2] = binary[3]^binary[2];
//            gray[1] = binary[2]^binary[1];
//            gray[0] = binary[1]^binary[0]; 
//        end
    // Gatalevel model   
    xor g0(gray[0],binary[1],binary[0]);   
    xor g1(gray[1],binary[2],binary[1]);    
    xor g2(gray[2],binary[3],binary[2]);    
    xor g3(gray[3],binary[3]);    
endmodule