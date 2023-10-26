module rst_gen (
    input  wire clk_i,
    input  wire arst_i,
    output wire rst_o
);

  /* try to generate a reset */
  reg [2:0] rst_cpt;
  `include "reg_rst_cpt.vs"  // 3, 0, , rst_cpt == 3'b100, rst_cpt + 3'b001

  assign rst_o = !rst_cpt[2];

endmodule
