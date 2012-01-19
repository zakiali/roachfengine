//-----------------------------------------------------------------------------
// roachf_2048ch_adcs_quadc0_wrapper.v
//-----------------------------------------------------------------------------

  (* x_core_info = "quadc_interface_v1_00_a" *)
module roachf_2048ch_adcs_quadc0_wrapper
  (
    adc0_clk_in_p,
    adc0_clk_in_n,
    adc1_clk_in_p,
    adc1_clk_in_n,
    adc2_clk_in_p,
    adc2_clk_in_n,
    adc3_clk_in_p,
    adc3_clk_in_n,
    adc0_data_in_p,
    adc0_data_in_n,
    adc1_data_in_p,
    adc1_data_in_n,
    adc2_data_in_p,
    adc2_data_in_n,
    adc3_data_in_p,
    adc3_data_in_n,
    sync_in_p,
    sync_in_n,
    user_clk,
    dcm_reset,
    reset,
    adc0_clk,
    adc1_clk,
    adc2_clk,
    adc3_clk,
    adc0_clk90,
    adc0_data,
    adc1_data,
    adc2_data,
    adc3_data,
    valid,
    sync
  );
  input adc0_clk_in_p;
  input adc0_clk_in_n;
  input adc1_clk_in_p;
  input adc1_clk_in_n;
  input adc2_clk_in_p;
  input adc2_clk_in_n;
  input adc3_clk_in_p;
  input adc3_clk_in_n;
  input [7:0] adc0_data_in_p;
  input [7:0] adc0_data_in_n;
  input [7:0] adc1_data_in_p;
  input [7:0] adc1_data_in_n;
  input [7:0] adc2_data_in_p;
  input [7:0] adc2_data_in_n;
  input [7:0] adc3_data_in_p;
  input [7:0] adc3_data_in_n;
  input sync_in_p;
  input sync_in_n;
  input user_clk;
  input dcm_reset;
  input reset;
  output adc0_clk;
  output adc1_clk;
  output adc2_clk;
  output adc3_clk;
  output adc0_clk90;
  output [7:0] adc0_data;
  output [7:0] adc1_data;
  output [7:0] adc2_data;
  output [7:0] adc3_data;
  output valid;
  output sync;

  quadc_interface
    #(
      .CLK_FREQ ( 200 )
    )
    roachf_2048ch_ADCs_quadc0 (
      .adc0_clk_in_p ( adc0_clk_in_p ),
      .adc0_clk_in_n ( adc0_clk_in_n ),
      .adc1_clk_in_p ( adc1_clk_in_p ),
      .adc1_clk_in_n ( adc1_clk_in_n ),
      .adc2_clk_in_p ( adc2_clk_in_p ),
      .adc2_clk_in_n ( adc2_clk_in_n ),
      .adc3_clk_in_p ( adc3_clk_in_p ),
      .adc3_clk_in_n ( adc3_clk_in_n ),
      .adc0_data_in_p ( adc0_data_in_p ),
      .adc0_data_in_n ( adc0_data_in_n ),
      .adc1_data_in_p ( adc1_data_in_p ),
      .adc1_data_in_n ( adc1_data_in_n ),
      .adc2_data_in_p ( adc2_data_in_p ),
      .adc2_data_in_n ( adc2_data_in_n ),
      .adc3_data_in_p ( adc3_data_in_p ),
      .adc3_data_in_n ( adc3_data_in_n ),
      .sync_in_p ( sync_in_p ),
      .sync_in_n ( sync_in_n ),
      .user_clk ( user_clk ),
      .dcm_reset ( dcm_reset ),
      .reset ( reset ),
      .adc0_clk ( adc0_clk ),
      .adc1_clk ( adc1_clk ),
      .adc2_clk ( adc2_clk ),
      .adc3_clk ( adc3_clk ),
      .adc0_clk90 ( adc0_clk90 ),
      .adc0_data ( adc0_data ),
      .adc1_data ( adc1_data ),
      .adc2_data ( adc2_data ),
      .adc3_data ( adc3_data ),
      .valid ( valid ),
      .sync ( sync )
    );

endmodule

