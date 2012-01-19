//-----------------------------------------------------------------------------
// xaui_infrastructure_inst_wrapper.v
//-----------------------------------------------------------------------------

  (* x_core_info = "xaui_infrastructure_v1_00_a" *)
module xaui_infrastructure_inst_wrapper
  (
    mgt_refclk_t_n,
    mgt_refclk_t_p,
    mgt_refclk_b_n,
    mgt_refclk_b_p,
    mgt_rx_t1_n,
    mgt_rx_t1_p,
    mgt_tx_t1_n,
    mgt_tx_t1_p,
    mgt_rx_t0_n,
    mgt_rx_t0_p,
    mgt_tx_t0_n,
    mgt_tx_t0_p,
    mgt_rx_b1_n,
    mgt_rx_b1_p,
    mgt_tx_b1_n,
    mgt_tx_b1_p,
    mgt_rx_b0_n,
    mgt_rx_b0_p,
    mgt_tx_b0_n,
    mgt_tx_b0_p,
    reset,
    mgt_clk_1,
    mgt_clk_0,
    mgt_tx_reset_3,
    mgt_rx_reset_3,
    mgt_rxdata_3,
    mgt_rxcharisk_3,
    mgt_txdata_3,
    mgt_txcharisk_3,
    mgt_code_comma_3,
    mgt_enchansync_3,
    mgt_enable_align_3,
    mgt_loopback_3,
    mgt_powerdown_3,
    mgt_rxlock_3,
    mgt_syncok_3,
    mgt_codevalid_3,
    mgt_rxbufferr_3,
    mgt_rxeqmix_3,
    mgt_rxeqpole_3,
    mgt_txpreemphasis_3,
    mgt_txdiffctrl_3,
    mgt_tx_reset_2,
    mgt_rx_reset_2,
    mgt_rxdata_2,
    mgt_rxcharisk_2,
    mgt_txdata_2,
    mgt_txcharisk_2,
    mgt_code_comma_2,
    mgt_enchansync_2,
    mgt_enable_align_2,
    mgt_loopback_2,
    mgt_powerdown_2,
    mgt_rxlock_2,
    mgt_syncok_2,
    mgt_codevalid_2,
    mgt_rxbufferr_2,
    mgt_rxeqmix_2,
    mgt_rxeqpole_2,
    mgt_txpreemphasis_2,
    mgt_txdiffctrl_2,
    mgt_tx_reset_1,
    mgt_rx_reset_1,
    mgt_rxdata_1,
    mgt_rxcharisk_1,
    mgt_txdata_1,
    mgt_txcharisk_1,
    mgt_code_comma_1,
    mgt_enchansync_1,
    mgt_enable_align_1,
    mgt_loopback_1,
    mgt_powerdown_1,
    mgt_rxlock_1,
    mgt_syncok_1,
    mgt_codevalid_1,
    mgt_rxbufferr_1,
    mgt_rxeqmix_1,
    mgt_rxeqpole_1,
    mgt_txpreemphasis_1,
    mgt_txdiffctrl_1,
    mgt_tx_reset_0,
    mgt_rx_reset_0,
    mgt_rxdata_0,
    mgt_rxcharisk_0,
    mgt_txdata_0,
    mgt_txcharisk_0,
    mgt_code_comma_0,
    mgt_enchansync_0,
    mgt_enable_align_0,
    mgt_loopback_0,
    mgt_powerdown_0,
    mgt_rxlock_0,
    mgt_syncok_0,
    mgt_codevalid_0,
    mgt_rxbufferr_0,
    mgt_rxeqmix_0,
    mgt_rxeqpole_0,
    mgt_txpreemphasis_0,
    mgt_txdiffctrl_0
  );
  input mgt_refclk_t_n;
  input mgt_refclk_t_p;
  input mgt_refclk_b_n;
  input mgt_refclk_b_p;
  input [3:0] mgt_rx_t1_n;
  input [3:0] mgt_rx_t1_p;
  output [3:0] mgt_tx_t1_n;
  output [3:0] mgt_tx_t1_p;
  input [3:0] mgt_rx_t0_n;
  input [3:0] mgt_rx_t0_p;
  output [3:0] mgt_tx_t0_n;
  output [3:0] mgt_tx_t0_p;
  input [3:0] mgt_rx_b1_n;
  input [3:0] mgt_rx_b1_p;
  output [3:0] mgt_tx_b1_n;
  output [3:0] mgt_tx_b1_p;
  input [3:0] mgt_rx_b0_n;
  input [3:0] mgt_rx_b0_p;
  output [3:0] mgt_tx_b0_n;
  output [3:0] mgt_tx_b0_p;
  input reset;
  output mgt_clk_1;
  output mgt_clk_0;
  input [3:0] mgt_tx_reset_3;
  input [3:0] mgt_rx_reset_3;
  output [63:0] mgt_rxdata_3;
  output [7:0] mgt_rxcharisk_3;
  input [63:0] mgt_txdata_3;
  input [7:0] mgt_txcharisk_3;
  output [7:0] mgt_code_comma_3;
  input mgt_enchansync_3;
  input [3:0] mgt_enable_align_3;
  input mgt_loopback_3;
  input mgt_powerdown_3;
  output [3:0] mgt_rxlock_3;
  output [3:0] mgt_syncok_3;
  output [7:0] mgt_codevalid_3;
  output [3:0] mgt_rxbufferr_3;
  input [1:0] mgt_rxeqmix_3;
  input [3:0] mgt_rxeqpole_3;
  input [2:0] mgt_txpreemphasis_3;
  input [2:0] mgt_txdiffctrl_3;
  input [3:0] mgt_tx_reset_2;
  input [3:0] mgt_rx_reset_2;
  output [63:0] mgt_rxdata_2;
  output [7:0] mgt_rxcharisk_2;
  input [63:0] mgt_txdata_2;
  input [7:0] mgt_txcharisk_2;
  output [7:0] mgt_code_comma_2;
  input mgt_enchansync_2;
  input [3:0] mgt_enable_align_2;
  input mgt_loopback_2;
  input mgt_powerdown_2;
  output [3:0] mgt_rxlock_2;
  output [3:0] mgt_syncok_2;
  output [7:0] mgt_codevalid_2;
  output [3:0] mgt_rxbufferr_2;
  input [1:0] mgt_rxeqmix_2;
  input [3:0] mgt_rxeqpole_2;
  input [2:0] mgt_txpreemphasis_2;
  input [2:0] mgt_txdiffctrl_2;
  input [3:0] mgt_tx_reset_1;
  input [3:0] mgt_rx_reset_1;
  output [63:0] mgt_rxdata_1;
  output [7:0] mgt_rxcharisk_1;
  input [63:0] mgt_txdata_1;
  input [7:0] mgt_txcharisk_1;
  output [7:0] mgt_code_comma_1;
  input mgt_enchansync_1;
  input [3:0] mgt_enable_align_1;
  input mgt_loopback_1;
  input mgt_powerdown_1;
  output [3:0] mgt_rxlock_1;
  output [3:0] mgt_syncok_1;
  output [7:0] mgt_codevalid_1;
  output [3:0] mgt_rxbufferr_1;
  input [1:0] mgt_rxeqmix_1;
  input [3:0] mgt_rxeqpole_1;
  input [2:0] mgt_txpreemphasis_1;
  input [2:0] mgt_txdiffctrl_1;
  input [3:0] mgt_tx_reset_0;
  input [3:0] mgt_rx_reset_0;
  output [63:0] mgt_rxdata_0;
  output [7:0] mgt_rxcharisk_0;
  input [63:0] mgt_txdata_0;
  input [7:0] mgt_txcharisk_0;
  output [7:0] mgt_code_comma_0;
  input mgt_enchansync_0;
  input [3:0] mgt_enable_align_0;
  input mgt_loopback_0;
  input mgt_powerdown_0;
  output [3:0] mgt_rxlock_0;
  output [3:0] mgt_syncok_0;
  output [7:0] mgt_codevalid_0;
  output [3:0] mgt_rxbufferr_0;
  input [1:0] mgt_rxeqmix_0;
  input [3:0] mgt_rxeqpole_0;
  input [2:0] mgt_txpreemphasis_0;
  input [2:0] mgt_txdiffctrl_0;

  xaui_infrastructure
    #(
      .DIFF_BOOST ( "TRUE" ),
      .DISABLE_0 ( 0 ),
      .DISABLE_1 ( 1 ),
      .DISABLE_2 ( 1 ),
      .DISABLE_3 ( 0 )
    )
    xaui_infrastructure_inst (
      .mgt_refclk_t_n ( mgt_refclk_t_n ),
      .mgt_refclk_t_p ( mgt_refclk_t_p ),
      .mgt_refclk_b_n ( mgt_refclk_b_n ),
      .mgt_refclk_b_p ( mgt_refclk_b_p ),
      .mgt_rx_t1_n ( mgt_rx_t1_n ),
      .mgt_rx_t1_p ( mgt_rx_t1_p ),
      .mgt_tx_t1_n ( mgt_tx_t1_n ),
      .mgt_tx_t1_p ( mgt_tx_t1_p ),
      .mgt_rx_t0_n ( mgt_rx_t0_n ),
      .mgt_rx_t0_p ( mgt_rx_t0_p ),
      .mgt_tx_t0_n ( mgt_tx_t0_n ),
      .mgt_tx_t0_p ( mgt_tx_t0_p ),
      .mgt_rx_b1_n ( mgt_rx_b1_n ),
      .mgt_rx_b1_p ( mgt_rx_b1_p ),
      .mgt_tx_b1_n ( mgt_tx_b1_n ),
      .mgt_tx_b1_p ( mgt_tx_b1_p ),
      .mgt_rx_b0_n ( mgt_rx_b0_n ),
      .mgt_rx_b0_p ( mgt_rx_b0_p ),
      .mgt_tx_b0_n ( mgt_tx_b0_n ),
      .mgt_tx_b0_p ( mgt_tx_b0_p ),
      .reset ( reset ),
      .mgt_clk_1 ( mgt_clk_1 ),
      .mgt_clk_0 ( mgt_clk_0 ),
      .mgt_tx_reset_3 ( mgt_tx_reset_3 ),
      .mgt_rx_reset_3 ( mgt_rx_reset_3 ),
      .mgt_rxdata_3 ( mgt_rxdata_3 ),
      .mgt_rxcharisk_3 ( mgt_rxcharisk_3 ),
      .mgt_txdata_3 ( mgt_txdata_3 ),
      .mgt_txcharisk_3 ( mgt_txcharisk_3 ),
      .mgt_code_comma_3 ( mgt_code_comma_3 ),
      .mgt_enchansync_3 ( mgt_enchansync_3 ),
      .mgt_enable_align_3 ( mgt_enable_align_3 ),
      .mgt_loopback_3 ( mgt_loopback_3 ),
      .mgt_powerdown_3 ( mgt_powerdown_3 ),
      .mgt_rxlock_3 ( mgt_rxlock_3 ),
      .mgt_syncok_3 ( mgt_syncok_3 ),
      .mgt_codevalid_3 ( mgt_codevalid_3 ),
      .mgt_rxbufferr_3 ( mgt_rxbufferr_3 ),
      .mgt_rxeqmix_3 ( mgt_rxeqmix_3 ),
      .mgt_rxeqpole_3 ( mgt_rxeqpole_3 ),
      .mgt_txpreemphasis_3 ( mgt_txpreemphasis_3 ),
      .mgt_txdiffctrl_3 ( mgt_txdiffctrl_3 ),
      .mgt_tx_reset_2 ( mgt_tx_reset_2 ),
      .mgt_rx_reset_2 ( mgt_rx_reset_2 ),
      .mgt_rxdata_2 ( mgt_rxdata_2 ),
      .mgt_rxcharisk_2 ( mgt_rxcharisk_2 ),
      .mgt_txdata_2 ( mgt_txdata_2 ),
      .mgt_txcharisk_2 ( mgt_txcharisk_2 ),
      .mgt_code_comma_2 ( mgt_code_comma_2 ),
      .mgt_enchansync_2 ( mgt_enchansync_2 ),
      .mgt_enable_align_2 ( mgt_enable_align_2 ),
      .mgt_loopback_2 ( mgt_loopback_2 ),
      .mgt_powerdown_2 ( mgt_powerdown_2 ),
      .mgt_rxlock_2 ( mgt_rxlock_2 ),
      .mgt_syncok_2 ( mgt_syncok_2 ),
      .mgt_codevalid_2 ( mgt_codevalid_2 ),
      .mgt_rxbufferr_2 ( mgt_rxbufferr_2 ),
      .mgt_rxeqmix_2 ( mgt_rxeqmix_2 ),
      .mgt_rxeqpole_2 ( mgt_rxeqpole_2 ),
      .mgt_txpreemphasis_2 ( mgt_txpreemphasis_2 ),
      .mgt_txdiffctrl_2 ( mgt_txdiffctrl_2 ),
      .mgt_tx_reset_1 ( mgt_tx_reset_1 ),
      .mgt_rx_reset_1 ( mgt_rx_reset_1 ),
      .mgt_rxdata_1 ( mgt_rxdata_1 ),
      .mgt_rxcharisk_1 ( mgt_rxcharisk_1 ),
      .mgt_txdata_1 ( mgt_txdata_1 ),
      .mgt_txcharisk_1 ( mgt_txcharisk_1 ),
      .mgt_code_comma_1 ( mgt_code_comma_1 ),
      .mgt_enchansync_1 ( mgt_enchansync_1 ),
      .mgt_enable_align_1 ( mgt_enable_align_1 ),
      .mgt_loopback_1 ( mgt_loopback_1 ),
      .mgt_powerdown_1 ( mgt_powerdown_1 ),
      .mgt_rxlock_1 ( mgt_rxlock_1 ),
      .mgt_syncok_1 ( mgt_syncok_1 ),
      .mgt_codevalid_1 ( mgt_codevalid_1 ),
      .mgt_rxbufferr_1 ( mgt_rxbufferr_1 ),
      .mgt_rxeqmix_1 ( mgt_rxeqmix_1 ),
      .mgt_rxeqpole_1 ( mgt_rxeqpole_1 ),
      .mgt_txpreemphasis_1 ( mgt_txpreemphasis_1 ),
      .mgt_txdiffctrl_1 ( mgt_txdiffctrl_1 ),
      .mgt_tx_reset_0 ( mgt_tx_reset_0 ),
      .mgt_rx_reset_0 ( mgt_rx_reset_0 ),
      .mgt_rxdata_0 ( mgt_rxdata_0 ),
      .mgt_rxcharisk_0 ( mgt_rxcharisk_0 ),
      .mgt_txdata_0 ( mgt_txdata_0 ),
      .mgt_txcharisk_0 ( mgt_txcharisk_0 ),
      .mgt_code_comma_0 ( mgt_code_comma_0 ),
      .mgt_enchansync_0 ( mgt_enchansync_0 ),
      .mgt_enable_align_0 ( mgt_enable_align_0 ),
      .mgt_loopback_0 ( mgt_loopback_0 ),
      .mgt_powerdown_0 ( mgt_powerdown_0 ),
      .mgt_rxlock_0 ( mgt_rxlock_0 ),
      .mgt_syncok_0 ( mgt_syncok_0 ),
      .mgt_codevalid_0 ( mgt_codevalid_0 ),
      .mgt_rxbufferr_0 ( mgt_rxbufferr_0 ),
      .mgt_rxeqmix_0 ( mgt_rxeqmix_0 ),
      .mgt_rxeqpole_0 ( mgt_rxeqpole_0 ),
      .mgt_txpreemphasis_0 ( mgt_txpreemphasis_0 ),
      .mgt_txdiffctrl_0 ( mgt_txdiffctrl_0 )
    );

endmodule

