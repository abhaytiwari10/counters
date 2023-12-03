`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 16:43:50
// Design Name: 
// Module Name: MOD6_50_DC
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


module MOD6_50_DC(
input clk,
input reset_L,
output clk_out,
output [2:0] count_out
    );
     reg [2:0] count = 'b0;
    reg temp = 'b0;
    always @ (posedge clk, negedge reset_L)
    begin
    if(!reset_L)
    count <= 'b0;
    else if(count == 'b101)
    count <= 'b0;
    else
    count <= count + 1'b1;
    end
    
    always @ (posedge clk, negedge reset_L)
    begin
    if(!reset_L)
    temp <= 'b0;
    else
    temp <= count[1];
    end
    
    assign count_out = count;
    assign clk_out = temp | count[1];
endmodule
