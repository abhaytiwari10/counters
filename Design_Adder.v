`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 15:46:04
// Design Name: 
// Module Name: Design_Adder
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


module Design_Adder(
input a_in,
input b_in,
input c_in,
output sum_out,
output carry_out
    );
    assign sum_out = (a_in ^ b_in) ^ c_in;
    assign carry_out = (a_in & b_in) | ((a_in ^ b_in) & c_in);
endmodule
