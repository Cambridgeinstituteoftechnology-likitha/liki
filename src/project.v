module project (
    input  [7:0] ui_in,
    output [7:0] uo_out,

    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,

    input  ena,
    input  clk,
    input  rst_n
);

wire entropy_feedback_a;
wire entropy_feedback_b;

assign entropy_feedback_a =
        ui_in[7] ^
        ui_in[5];

assign entropy_feedback_b =
        ui_in[3] ^
        ui_in[1];

assign uo_out[0] =
        ui_in[0] ^ entropy_feedback_a;

assign uo_out[1] =
        ui_in[1] ^ entropy_feedback_b;

assign uo_out[2] =
        ui_in[2] ^ entropy_feedback_a;

assign uo_out[3] =
        ui_in[3] ^ entropy_feedback_b;

assign uo_out[4] =
        ui_in[4] ^ entropy_feedback_a;

assign uo_out[5] =
        ui_in[5] ^ entropy_feedback_b;

assign uo_out[6] =
        ui_in[6] ^ entropy_feedback_a;

assign uo_out[7] =
        ui_in[7] ^ entropy_feedback_b;

assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

endmodule
