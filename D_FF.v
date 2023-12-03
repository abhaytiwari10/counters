`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 23:12:46
// Design Name: 
// Module Name: D_FF
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


module D_FF(
input clk,
input reset_n,
input D,
output reg Q
    );
    
 always @ (posedge clk, negedge reset_n)
 begin
 if(!reset_n)
 Q <= 'b0;
 else
 Q <= D;
 end
endmodule
