`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 16:14:45
// Design Name: 
// Module Name: JHONSON_COUNTER
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


module JHONSON_COUNTER(
input clk,
input reset_n,
output reg [3:0]count
    );
   always @ (posedge clk,negedge reset_n)
   begin
   if(!reset_n)
   count <= 'b0;
   else
   case(count)
   4'b0000: count <= 4'b1000;
   4'b1000: count <= 4'b1100;
   4'b1100: count <= 4'b1110;
   4'b1110: count <= 4'b1111;
   4'b1111: count <= 4'b0111;
   4'b0111: count <= 4'b0011;
   4'b0011: count <= 4'b0001;
   4'b0001: count <= 4'b0000;
   default: count <= 'b0;
   endcase
   end
endmodule
