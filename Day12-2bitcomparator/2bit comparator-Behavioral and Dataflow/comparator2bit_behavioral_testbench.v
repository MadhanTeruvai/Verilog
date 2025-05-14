`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 09:49:18 AM
// Design Name: 
// Module Name: comparator2bit_behavioral_design
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


module comparator2bit_behavioral_testbench;
    reg A0,A1,B0,B1; wire AgtB,AeqB,AltB;
    comparator2bit_behavioral_design 
    uut(A0,A1,B0,B1,AgtB,AeqB,AltB);
      initial begin
         A1=0; A0=0; B1=0; B0=0; #10; //0
         A1=0; A0=0; B1=0; B0=1; #10; //1
         A1=0; A0=0; B1=1; B0=0; #10; //2
         A1=0; A0=0; B1=1; B0=1; #10; //3
         A1=0; A0=1; B1=0; B0=0; #10; //4
         A1=0; A0=1; B1=0; B0=1; #10; //5
         A1=0; A0=1; B1=1; B0=0; #10; //6
         A1=0; A0=1; B1=1; B0=1; #10; //7
         A1=1; A0=0; B1=0; B0=0; #10; //8
         A1=1; A0=0; B1=0; B0=1; #10; //9
         A1=1; A0=0; B1=1; B0=0; #10; //10
         A1=1; A0=0; B1=1; B0=1; #10; //11
         A1=1; A0=1; B1=0; B0=0; #10; //12
         A1=1; A0=1; B1=0; B0=1; #10; //13
         A1=1; A0=1; B1=1; B0=0; #10; //14
         A1=1; A0=1; B1=1; B0=1; #10; //15
      end
endmodule