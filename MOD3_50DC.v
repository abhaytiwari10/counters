`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 16:06:41
// Design Name: 
// Module Name: MOD3_50_DC
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


module MOD3_50_DC(
input clk,
input reset_L,
output [1:0] count_out,
output clk_out
    );
reg [1:0] count = 'b0;
reg temp ='b0;

always @ (posedge clk, negedge reset_L)
begin 
if(!reset_L)
count <= 'b0;
else if(count == 2'b10)
count <= 'b0;
else 
count <= count + 1'b1;
end 
always @ (negedge clk, negedge reset_L)
begin 
if(!reset_L)
temp <='b0;
else
temp <= count[1];
end 

assign count_out = count;
assign clk_out =  count[1] | temp;   
endmodule
