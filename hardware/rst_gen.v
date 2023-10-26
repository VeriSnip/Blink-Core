module rst_gen (
    input  clk_i,
    input  arst_i,
    output rst_o
);

  /* try to generate a reset */
  reg [2:0] rst_cpt;
  `include "reg_rst_cpt.vs" // 3, 0, , rst_cpt == 3'b100, rst_cpt + 3'b1

  assign rst_o = !rst_cpt[2];

endmodule
