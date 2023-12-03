`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 00:17:07
// Design Name: 
// Module Name: PIPO
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


module PIPO(
input clk,
input reset_n,
input [3:0] D,
output reg [3:0] Q
    );
    
  /*  genvar i;
    generate
    for(i=0; i<4; i=i+1)
    begin
    D_FF DU( clk,reset_n,D[i],Q[i]);
    end
    endgenerate*/
     always @ (posedge clk, negedge reset_n)
 begin
 if(!reset_n)
 Q <= 'b0;
 else
 Q <= D;
 end
endmodule
