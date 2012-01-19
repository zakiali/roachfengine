//-----------------------------------------------------------------------------
// xaui_phy_3_wrapper.v
//-----------------------------------------------------------------------------

  (* x_core_info = "xaui_phy_v1_00_a" *)
module xaui_phy_3_wrapper
  (
    reset,
    mgt_clk,
    mgt_txdata,
    mgt_txcharisk,
    mgt_rxdata,
    mgt_rxcharisk,
    mgt_enable_align,
    mgt_code_valid,
    mgt_code_comma,
    mgt_rxlock,
    mgt_rxbufferr,
    mgt_loopback,
    mgt_syncok,
    mgt_en_chan_sync,
    mgt_powerdown,
    mgt_rx_reset,
    mgt_tx_reset,
    xgmii_txd,
    xgmii_txc,
    xgmii_rxd,
    xgmii_rxc,
    xaui_reset,
    xaui_status
  );
  input reset;
  input mgt_clk;
  output [63:0] mgt_txdata;
  output [7:0] mgt_txcharisk;
  input [63:0] mgt_rxdata;
  input [7:0] mgt_rxcharisk;
  output [3:0] mgt_enable_align;
  input [7:0] mgt_code_valid;
  input [7:0] mgt_code_comma;
  input [3:0] mgt_rxlock;
  input [3:0] mgt_rxbufferr;
  output mgt_loopback;
  input [3:0] mgt_syncok;
  output mgt_en_chan_sync;
  output mgt_powerdown;
  output [3:0] mgt_rx_reset;
  output [3:0] mgt_tx_reset;
  input [63:0] xgmii_txd;
  input [7:0] xgmii_txc;
  output [63:0] xgmii_rxd;
  output [7:0] xgmii_rxc;
  input xaui_reset;
  output [7:0] xaui_status;

  xaui_phy
    #(
      .USE_KAT_XAUI ( 0 )
    )
    xaui_phy_3 (
      .reset ( reset ),
      .mgt_clk ( mgt_clk ),
      .mgt_txdata ( mgt_txdata ),
      .mgt_txcharisk ( mgt_txcharisk ),
      .mgt_rxdata ( mgt_rxdata ),
      .mgt_rxcharisk ( mgt_rxcharisk ),
      .mgt_enable_align ( mgt_enable_align ),
      .mgt_code_valid ( mgt_code_valid ),
      .mgt_code_comma ( mgt_code_comma ),
      .mgt_rxlock ( mgt_rxlock ),
      .mgt_rxbufferr ( mgt_rxbufferr ),
      .mgt_loopback ( mgt_loopback ),
      .mgt_syncok ( mgt_syncok ),
      .mgt_en_chan_sync ( mgt_en_chan_sync ),
      .mgt_powerdown ( mgt_powerdown ),
      .mgt_rx_reset ( mgt_rx_reset ),
      .mgt_tx_reset ( mgt_tx_reset ),
      .xgmii_txd ( xgmii_txd ),
      .xgmii_txc ( xgmii_txc ),
      .xgmii_rxd ( xgmii_rxd ),
      .xgmii_rxc ( xgmii_rxc ),
      .xaui_reset ( xaui_reset ),
      .xaui_status ( xaui_status )
    );

endmodule

