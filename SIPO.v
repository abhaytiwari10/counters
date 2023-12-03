`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 00:10:26
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input clk,
input reset_n,
input  D,
output [3:0] Q
    );
    D_FF D1 (clk, reset_n,D,Q[3]);
    D_FF D2 (clk, reset_n,Q[3],Q[2]);
    D_FF D3 (clk, reset_n,Q[2],Q[1]);      
    D_FF D4 (clk, reset_n,Q[1],Q[0]);
endmodule
