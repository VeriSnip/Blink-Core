module rst_gen (
    input  wire clk_i,
    input  wire arst_i,
    output wire rst_o
);

  /* generate a syncronized reset */
  reg [2:0] rst_cpt;
  wire [2:0] rst_cpt_n;
  wire rst_cpt_e;

  assign rst_o = ~rst_cpt[2];
  assign rst_cpt_e = rst_cpt != 3'b100;
  assign rst_cpt_n = rst_cpt + 3'b001;

  `include "reg_rst_cpt.vs"  // 3, 0, , _e, _n

endmodule
