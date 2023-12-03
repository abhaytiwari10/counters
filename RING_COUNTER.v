`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2023 15:59:56
// Design Name: 
// Module Name: RING_COUNTER
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


module RING_COUNTER(
input clk,
input reset_n,
output reg [3:0] count
    );
    
    always @ (posedge clk, negedge reset_n)
    begin
    if(!reset_n) 
    count <= 'b0;
    else
    begin
    case(count)
    4'b0000: count <= 4'b1000;
    4'b1000: count <= 4'b0100;
    4'b0100: count <= 4'b0010;
    4'b0010: count <= 4'b0001;
    4'b0001: count <= 4'b1000;
    default: count <= 'b0;
    endcase
    end
    end
endmodule
