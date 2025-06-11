module blink (
    input  wire clk_i,
    input  wire arst_i,
    output reg  led_o
);
  localparam integer MAX = 25000000; // 1s at 25MHz
  localparam integer WIDTH = $clog2(MAX);

  wire rst_s;
  wire clk_s;

  assign clk_s = clk_i;

  rst_gen rst_inst (
      .clk_i(clk_s),
      .arst_i(arst_i),
      .rst_o(rst_s)
  );

  reg  [WIDTH-1:0] cpt_s;
  wire [WIDTH-1:0] cpt_next_s = cpt_s + 1'b1;

  wire             end_s = cpt_s == MAX - 1;

  `include "reg_blink_list.vs"  /*
    cpt_s, WIDTH, 0, end_s | rst_s,      , cpt_next_s
    led_o,     1, 0,         rst_s, end_s, ~led_o
    */
endmodule
