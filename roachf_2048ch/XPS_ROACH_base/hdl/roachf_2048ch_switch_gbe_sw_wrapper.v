//-----------------------------------------------------------------------------
// roachf_2048ch_switch_gbe_sw_wrapper.v
//-----------------------------------------------------------------------------

  (* x_core_info = "kat_ten_gb_eth_v1_00_a" *)
module roachf_2048ch_switch_gbe_sw_wrapper
  (
    clk,
    rst,
    tx_valid,
    tx_afull,
    tx_overflow,
    tx_end_of_frame,
    tx_data,
    tx_dest_ip,
    tx_dest_port,
    rx_valid,
    rx_end_of_frame,
    rx_data,
    rx_source_ip,
    rx_source_port,
    rx_bad_frame,
    rx_overrun,
    rx_overrun_ack,
    rx_ack,
    led_up,
    led_rx,
    led_tx,
    xaui_clk,
    xgmii_txd,
    xgmii_txc,
    xgmii_rxd,
    xgmii_rxc,
    xaui_reset,
    xaui_status,
    mgt_rxeqmix,
    mgt_rxeqpole,
    mgt_txpreemphasis,
    mgt_txdiffctrl,
    OPB_Clk,
    OPB_Rst,
    Sl_DBus,
    Sl_errAck,
    Sl_retry,
    Sl_toutSup,
    Sl_xferAck,
    OPB_ABus,
    OPB_BE,
    OPB_DBus,
    OPB_RNW,
    OPB_select,
    OPB_seqAddr
  );
  input clk;
  input rst;
  input tx_valid;
  output tx_afull;
  output tx_overflow;
  input tx_end_of_frame;
  input [63:0] tx_data;
  input [31:0] tx_dest_ip;
  input [15:0] tx_dest_port;
  output rx_valid;
  output rx_end_of_frame;
  output [63:0] rx_data;
  output [31:0] rx_source_ip;
  output [15:0] rx_source_port;
  output rx_bad_frame;
  output rx_overrun;
  input rx_overrun_ack;
  input rx_ack;
  output led_up;
  output led_rx;
  output led_tx;
  input xaui_clk;
  output [63:0] xgmii_txd;
  output [7:0] xgmii_txc;
  input [63:0] xgmii_rxd;
  input [7:0] xgmii_rxc;
  input xaui_reset;
  input [7:0] xaui_status;
  output [1:0] mgt_rxeqmix;
  output [3:0] mgt_rxeqpole;
  output [2:0] mgt_txpreemphasis;
  output [2:0] mgt_txdiffctrl;
  input OPB_Clk;
  input OPB_Rst;
  output [0:31] Sl_DBus;
  output Sl_errAck;
  output Sl_retry;
  output Sl_toutSup;
  output Sl_xferAck;
  input [0:31] OPB_ABus;
  input [0:3] OPB_BE;
  input [0:31] OPB_DBus;
  input OPB_RNW;
  input OPB_select;
  input OPB_seqAddr;

  kat_ten_gb_eth
    #(
      .SWING ( "800" ),
      .PREEMPHASYS ( "3" ),
      .FABRIC_MAC ( 48'h123456780000 ),
      .FABRIC_IP ( 32'hC0A80514 ),
      .FABRIC_GATEWAY ( 8'h01 ),
      .FABRIC_PORT ( 16'h2710 ),
      .FABRIC_ENABLE ( 0 ),
      .RX_DIST_RAM ( 0 ),
      .CPU_RX_ENABLE ( 1 ),
      .CPU_TX_ENABLE ( 1 ),
      .LARGE_PACKETS ( 1 ),
      .C_BASEADDR ( 32'h01008000 ),
      .C_HIGHADDR ( 32'h0100BFFF ),
      .C_OPB_AWIDTH ( 32 ),
      .C_OPB_DWIDTH ( 32 )
    )
    roachf_2048ch_Switch_gbe_sw (
      .clk ( clk ),
      .rst ( rst ),
      .tx_valid ( tx_valid ),
      .tx_afull ( tx_afull ),
      .tx_overflow ( tx_overflow ),
      .tx_end_of_frame ( tx_end_of_frame ),
      .tx_data ( tx_data ),
      .tx_dest_ip ( tx_dest_ip ),
      .tx_dest_port ( tx_dest_port ),
      .rx_valid ( rx_valid ),
      .rx_end_of_frame ( rx_end_of_frame ),
      .rx_data ( rx_data ),
      .rx_source_ip ( rx_source_ip ),
      .rx_source_port ( rx_source_port ),
      .rx_bad_frame ( rx_bad_frame ),
      .rx_overrun ( rx_overrun ),
      .rx_overrun_ack ( rx_overrun_ack ),
      .rx_ack ( rx_ack ),
      .led_up ( led_up ),
      .led_rx ( led_rx ),
      .led_tx ( led_tx ),
      .xaui_clk ( xaui_clk ),
      .xgmii_txd ( xgmii_txd ),
      .xgmii_txc ( xgmii_txc ),
      .xgmii_rxd ( xgmii_rxd ),
      .xgmii_rxc ( xgmii_rxc ),
      .xaui_reset ( xaui_reset ),
      .xaui_status ( xaui_status ),
      .mgt_rxeqmix ( mgt_rxeqmix ),
      .mgt_rxeqpole ( mgt_rxeqpole ),
      .mgt_txpreemphasis ( mgt_txpreemphasis ),
      .mgt_txdiffctrl ( mgt_txdiffctrl ),
      .OPB_Clk ( OPB_Clk ),
      .OPB_Rst ( OPB_Rst ),
      .Sl_DBus ( Sl_DBus ),
      .Sl_errAck ( Sl_errAck ),
      .Sl_retry ( Sl_retry ),
      .Sl_toutSup ( Sl_toutSup ),
      .Sl_xferAck ( Sl_xferAck ),
      .OPB_ABus ( OPB_ABus ),
      .OPB_BE ( OPB_BE ),
      .OPB_DBus ( OPB_DBus ),
      .OPB_RNW ( OPB_RNW ),
      .OPB_select ( OPB_select ),
      .OPB_seqAddr ( OPB_seqAddr )
    );

endmodule

