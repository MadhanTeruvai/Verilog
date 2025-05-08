`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:16:49 AM
// Design Name: 
// Module Name: FullSubtractor_by_using_2Halfsubtractors_testbench
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
//////////////////////////////////////////////////////////////////////////////////`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 06:35:08 PM
// Design Name: 
// Module Name: Fulladder_using_2HA_testbench
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


module FullSubtractor_using_2HS_testbench;
reg a,b,bin;
wire diff,bout;
FullSubtractor_using_2HS_design uut(a,b,bin,
diff,bout);
    initial begin
    $monitor("Time=%0t,a=%b,b=%b,bin=%b,diff=%b,bout=%b"
    ,$time,a,b,bin,diff,bout);
        a=1'b0; b=1'b0; bin=1'b0; #10;
        a=1'b0; b=1'b0; bin=1'b1; #10;
        a=1'b0; b=1'b1; bin=1'b0; #10;
        a=1'b0; b=1'b1; bin=1'b1; #10;
        a=1'b1; b=1'b0; bin=1'b0; #10;
        a=1'b1; b=1'b0; bin=1'b1; #10;
        a=1'b1; b=1'b1; bin=1'b0; #10;
        a=1'b1; b=1'b1; bin=1'b1; #10;
    end
endmodule