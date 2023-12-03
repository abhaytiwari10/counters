`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 15:54:28
// Design Name: 
// Module Name: MOD2_50_DC
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


module MOD2_50_DC(
input clk,
input reset_L,
output clk_out
    );
    reg count = 'b0;
    always @ (posedge clk, negedge reset_L)
    begin
    if(!reset_L)
    count <= 'b0;
    else if (count == 'b1)
    count <= 'b0;
    else
    count <= count + 1'b1;
    end
    
    assign clk_out = count;
endmodule
