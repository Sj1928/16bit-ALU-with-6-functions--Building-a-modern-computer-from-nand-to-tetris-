`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2025 12:50:53
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Hack-style ALU (from Nand2Tetris)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alu(
    input [15:0] x,
    input [15:0] y,
    input zx, nx, zy, ny, f, no,
    output [15:0] out,
    output zr, ng
);

    wire [15:0] x1, x2;
    wire [15:0] y1, y2;
    wire [15:0] and_out, add_out, f_out, not_f_out;

    // Stage 1: preprocess x
    assign x1 = zx ? 16'b0 : x;
    assign x2 = nx ? ~x1 : x1;

    // Stage 2: preprocess y
    assign y1 = zy ? 16'b0 : y;
    assign y2 = ny ? ~y1 : y1;

    // Stage 3: function
    assign and_out = x2 & y2;
    assign add_out = x2 + y2;
    assign f_out = f ? add_out : and_out;

    // Stage 4: optional NOT
    assign not_f_out = ~f_out;
    assign out = no ? not_f_out : f_out;

    // Output flags
    assign ng = out[15];                     // Negative flag
    assign zr = (out == 16'b0) ? 1'b1 : 1'b0; // Zero flag

endmodule
