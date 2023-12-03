`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 23:18:16
// Design Name: 
// Module Name: SISO
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


module SISO(
input clk,
input reset_n,
input  D,
output Q
    );
    wire Q3,Q2,Q1;
    D_FF D1 (clk, reset_n,D,Q3);
    D_FF D2 (clk, reset_n,Q3,Q2);
    D_FF D3 (clk, reset_n,Q2,Q1);      
    D_FF D4 (clk, reset_n,Q1,Q);

endmodule
