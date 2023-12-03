`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 23:08:10
// Design Name: 
// Module Name: up_counter
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


module up_counter(
input clock,
input reset_L,
output [3:0] count_out
    );
    reg [3:0] count = 'b0;
    assign count_out = count;
    
    always @ (posedge clock, negedge reset_L)
    begin
    if(!reset_L)
    count <= 'b0;
    else
    count <= count + 1'b1;
    end
endmodule
