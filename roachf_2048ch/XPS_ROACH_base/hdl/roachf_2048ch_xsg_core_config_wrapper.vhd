-------------------------------------------------------------------------------
-- roachf_2048ch_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity roachf_2048ch_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_led_rx : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_led_tx : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_led_up : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_data : in std_logic_vector(63 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_overrun : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_source_ip : in std_logic_vector(31 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_rx_source_port : in std_logic_vector(15 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_rx_valid : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_tx_afull : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_tx_overflow : in std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rst : out std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_ack : out std_logic;
    roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack : out std_logic;
    roachf_2048ch_2GPU_gbe_gpu_tx_data : out std_logic_vector(63 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip : out std_logic_vector(31 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_tx_dest_port : out std_logic_vector(15 downto 0);
    roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame : out std_logic;
    roachf_2048ch_2GPU_gbe_gpu_tx_valid : out std_logic;
    roachf_2048ch_ADCs_quadc0_adc0_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc0_adc1_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc0_adc2_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc0_adc3_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc0_sync : in std_logic;
    roachf_2048ch_ADCs_quadc0_valid : in std_logic;
    roachf_2048ch_ADCs_quadc1_adc0_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc1_adc1_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc1_adc2_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc1_adc3_data : in std_logic_vector(7 downto 0);
    roachf_2048ch_ADCs_quadc1_sync : in std_logic;
    roachf_2048ch_ADCs_quadc1_valid : in std_logic;
    roachf_2048ch_LEDs_led1_arm_gateway : out std_logic;
    roachf_2048ch_LEDs_led2_sync_gateway : out std_logic;
    roachf_2048ch_LEDs_led4_eq_clip_gateway : out std_logic;
    roachf_2048ch_LEDs_led5_adc_clip_gateway : out std_logic;
    roachf_2048ch_Loopback_loop_cnt0_user_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Loopback_loop_err_cnt0_user_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Loopback_statii_user_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Switch_gbe_sw_led_rx : in std_logic;
    roachf_2048ch_Switch_gbe_sw_led_tx : in std_logic;
    roachf_2048ch_Switch_gbe_sw_led_up : in std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_bad_frame : in std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_data : in std_logic_vector(63 downto 0);
    roachf_2048ch_Switch_gbe_sw_rx_end_of_frame : in std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_overrun : in std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_source_ip : in std_logic_vector(31 downto 0);
    roachf_2048ch_Switch_gbe_sw_rx_source_port : in std_logic_vector(15 downto 0);
    roachf_2048ch_Switch_gbe_sw_rx_valid : in std_logic;
    roachf_2048ch_Switch_gbe_sw_tx_afull : in std_logic;
    roachf_2048ch_Switch_gbe_sw_tx_overflow : in std_logic;
    roachf_2048ch_Switch_gbe_sw_rst : out std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_ack : out std_logic;
    roachf_2048ch_Switch_gbe_sw_rx_overrun_ack : out std_logic;
    roachf_2048ch_Switch_gbe_sw_tx_data : out std_logic_vector(63 downto 0);
    roachf_2048ch_Switch_gbe_sw_tx_dest_ip : out std_logic_vector(31 downto 0);
    roachf_2048ch_Switch_gbe_sw_tx_dest_port : out std_logic_vector(15 downto 0);
    roachf_2048ch_Switch_gbe_sw_tx_end_of_frame : out std_logic;
    roachf_2048ch_Switch_gbe_sw_tx_valid : out std_logic;
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr : out std_logic_vector(14 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we : out std_logic;
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr : out std_logic_vector(14 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we : out std_logic;
    roachf_2048ch_control_ctl_regs_ant_base_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_gpu_port_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_ip_base_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_ctl_regs_my_ip_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_delay_delay_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_insel_insel_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_control_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
    roachf_2048ch_status_gbe_gpu_user_data_in : out std_logic_vector(31 downto 0);
    roachf_2048ch_status_gbe_sw_user_data_in : out std_logic_vector(31 downto 0)
  );

  attribute x_core_info : STRING;
  attribute x_core_info of roachf_2048ch_xsg_core_config_wrapper : entity is "roachf_2048ch_v1_00_a";

end roachf_2048ch_xsg_core_config_wrapper;

architecture STRUCTURE of roachf_2048ch_xsg_core_config_wrapper is

  component roachf_2048ch is
    port (
      clk : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_led_rx : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_led_tx : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_led_up : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_data : in std_logic_vector(63 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_overrun : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_source_ip : in std_logic_vector(31 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_rx_source_port : in std_logic_vector(15 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_rx_valid : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_tx_afull : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_tx_overflow : in std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rst : out std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_ack : out std_logic;
      roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack : out std_logic;
      roachf_2048ch_2GPU_gbe_gpu_tx_data : out std_logic_vector(63 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip : out std_logic_vector(31 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_tx_dest_port : out std_logic_vector(15 downto 0);
      roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame : out std_logic;
      roachf_2048ch_2GPU_gbe_gpu_tx_valid : out std_logic;
      roachf_2048ch_ADCs_quadc0_adc0_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc0_adc1_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc0_adc2_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc0_adc3_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc0_sync : in std_logic;
      roachf_2048ch_ADCs_quadc0_valid : in std_logic;
      roachf_2048ch_ADCs_quadc1_adc0_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc1_adc1_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc1_adc2_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc1_adc3_data : in std_logic_vector(7 downto 0);
      roachf_2048ch_ADCs_quadc1_sync : in std_logic;
      roachf_2048ch_ADCs_quadc1_valid : in std_logic;
      roachf_2048ch_LEDs_led1_arm_gateway : out std_logic;
      roachf_2048ch_LEDs_led2_sync_gateway : out std_logic;
      roachf_2048ch_LEDs_led4_eq_clip_gateway : out std_logic;
      roachf_2048ch_LEDs_led5_adc_clip_gateway : out std_logic;
      roachf_2048ch_Loopback_loop_cnt0_user_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Loopback_loop_err_cnt0_user_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Loopback_statii_user_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Switch_gbe_sw_led_rx : in std_logic;
      roachf_2048ch_Switch_gbe_sw_led_tx : in std_logic;
      roachf_2048ch_Switch_gbe_sw_led_up : in std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_bad_frame : in std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_data : in std_logic_vector(63 downto 0);
      roachf_2048ch_Switch_gbe_sw_rx_end_of_frame : in std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_overrun : in std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_source_ip : in std_logic_vector(31 downto 0);
      roachf_2048ch_Switch_gbe_sw_rx_source_port : in std_logic_vector(15 downto 0);
      roachf_2048ch_Switch_gbe_sw_rx_valid : in std_logic;
      roachf_2048ch_Switch_gbe_sw_tx_afull : in std_logic;
      roachf_2048ch_Switch_gbe_sw_tx_overflow : in std_logic;
      roachf_2048ch_Switch_gbe_sw_rst : out std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_ack : out std_logic;
      roachf_2048ch_Switch_gbe_sw_rx_overrun_ack : out std_logic;
      roachf_2048ch_Switch_gbe_sw_tx_data : out std_logic_vector(63 downto 0);
      roachf_2048ch_Switch_gbe_sw_tx_dest_ip : out std_logic_vector(31 downto 0);
      roachf_2048ch_Switch_gbe_sw_tx_dest_port : out std_logic_vector(15 downto 0);
      roachf_2048ch_Switch_gbe_sw_tx_end_of_frame : out std_logic;
      roachf_2048ch_Switch_gbe_sw_tx_valid : out std_logic;
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr : out std_logic_vector(14 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we : out std_logic;
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr : out std_logic_vector(14 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we : out std_logic;
      roachf_2048ch_control_ctl_regs_ant_base_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_gpu_port_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_ip_base_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_ctl_regs_my_ip_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_delay_delay_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_insel_insel_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_control_seed_seed_data_user_data_out : in std_logic_vector(31 downto 0);
      roachf_2048ch_status_gbe_gpu_user_data_in : out std_logic_vector(31 downto 0);
      roachf_2048ch_status_gbe_sw_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of roachf_2048ch : component is "user_black_box";

begin

  roachf_2048ch_XSG_core_config : roachf_2048ch
    port map (
      clk => clk,
      roachf_2048ch_2GPU_gbe_gpu_led_rx => roachf_2048ch_2GPU_gbe_gpu_led_rx,
      roachf_2048ch_2GPU_gbe_gpu_led_tx => roachf_2048ch_2GPU_gbe_gpu_led_tx,
      roachf_2048ch_2GPU_gbe_gpu_led_up => roachf_2048ch_2GPU_gbe_gpu_led_up,
      roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame => roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame,
      roachf_2048ch_2GPU_gbe_gpu_rx_data => roachf_2048ch_2GPU_gbe_gpu_rx_data,
      roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame => roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame,
      roachf_2048ch_2GPU_gbe_gpu_rx_overrun => roachf_2048ch_2GPU_gbe_gpu_rx_overrun,
      roachf_2048ch_2GPU_gbe_gpu_rx_source_ip => roachf_2048ch_2GPU_gbe_gpu_rx_source_ip,
      roachf_2048ch_2GPU_gbe_gpu_rx_source_port => roachf_2048ch_2GPU_gbe_gpu_rx_source_port,
      roachf_2048ch_2GPU_gbe_gpu_rx_valid => roachf_2048ch_2GPU_gbe_gpu_rx_valid,
      roachf_2048ch_2GPU_gbe_gpu_tx_afull => roachf_2048ch_2GPU_gbe_gpu_tx_afull,
      roachf_2048ch_2GPU_gbe_gpu_tx_overflow => roachf_2048ch_2GPU_gbe_gpu_tx_overflow,
      roachf_2048ch_2GPU_gbe_gpu_rst => roachf_2048ch_2GPU_gbe_gpu_rst,
      roachf_2048ch_2GPU_gbe_gpu_rx_ack => roachf_2048ch_2GPU_gbe_gpu_rx_ack,
      roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack => roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack,
      roachf_2048ch_2GPU_gbe_gpu_tx_data => roachf_2048ch_2GPU_gbe_gpu_tx_data,
      roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip => roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip,
      roachf_2048ch_2GPU_gbe_gpu_tx_dest_port => roachf_2048ch_2GPU_gbe_gpu_tx_dest_port,
      roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame => roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame,
      roachf_2048ch_2GPU_gbe_gpu_tx_valid => roachf_2048ch_2GPU_gbe_gpu_tx_valid,
      roachf_2048ch_ADCs_quadc0_adc0_data => roachf_2048ch_ADCs_quadc0_adc0_data,
      roachf_2048ch_ADCs_quadc0_adc1_data => roachf_2048ch_ADCs_quadc0_adc1_data,
      roachf_2048ch_ADCs_quadc0_adc2_data => roachf_2048ch_ADCs_quadc0_adc2_data,
      roachf_2048ch_ADCs_quadc0_adc3_data => roachf_2048ch_ADCs_quadc0_adc3_data,
      roachf_2048ch_ADCs_quadc0_sync => roachf_2048ch_ADCs_quadc0_sync,
      roachf_2048ch_ADCs_quadc0_valid => roachf_2048ch_ADCs_quadc0_valid,
      roachf_2048ch_ADCs_quadc1_adc0_data => roachf_2048ch_ADCs_quadc1_adc0_data,
      roachf_2048ch_ADCs_quadc1_adc1_data => roachf_2048ch_ADCs_quadc1_adc1_data,
      roachf_2048ch_ADCs_quadc1_adc2_data => roachf_2048ch_ADCs_quadc1_adc2_data,
      roachf_2048ch_ADCs_quadc1_adc3_data => roachf_2048ch_ADCs_quadc1_adc3_data,
      roachf_2048ch_ADCs_quadc1_sync => roachf_2048ch_ADCs_quadc1_sync,
      roachf_2048ch_ADCs_quadc1_valid => roachf_2048ch_ADCs_quadc1_valid,
      roachf_2048ch_LEDs_led1_arm_gateway => roachf_2048ch_LEDs_led1_arm_gateway,
      roachf_2048ch_LEDs_led2_sync_gateway => roachf_2048ch_LEDs_led2_sync_gateway,
      roachf_2048ch_LEDs_led4_eq_clip_gateway => roachf_2048ch_LEDs_led4_eq_clip_gateway,
      roachf_2048ch_LEDs_led5_adc_clip_gateway => roachf_2048ch_LEDs_led5_adc_clip_gateway,
      roachf_2048ch_Loopback_loop_cnt0_user_data_in => roachf_2048ch_Loopback_loop_cnt0_user_data_in,
      roachf_2048ch_Loopback_loop_err_cnt0_user_data_in => roachf_2048ch_Loopback_loop_err_cnt0_user_data_in,
      roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in => roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in,
      roachf_2048ch_Loopback_statii_user_data_in => roachf_2048ch_Loopback_statii_user_data_in,
      roachf_2048ch_Switch_gbe_sw_led_rx => roachf_2048ch_Switch_gbe_sw_led_rx,
      roachf_2048ch_Switch_gbe_sw_led_tx => roachf_2048ch_Switch_gbe_sw_led_tx,
      roachf_2048ch_Switch_gbe_sw_led_up => roachf_2048ch_Switch_gbe_sw_led_up,
      roachf_2048ch_Switch_gbe_sw_rx_bad_frame => roachf_2048ch_Switch_gbe_sw_rx_bad_frame,
      roachf_2048ch_Switch_gbe_sw_rx_data => roachf_2048ch_Switch_gbe_sw_rx_data,
      roachf_2048ch_Switch_gbe_sw_rx_end_of_frame => roachf_2048ch_Switch_gbe_sw_rx_end_of_frame,
      roachf_2048ch_Switch_gbe_sw_rx_overrun => roachf_2048ch_Switch_gbe_sw_rx_overrun,
      roachf_2048ch_Switch_gbe_sw_rx_source_ip => roachf_2048ch_Switch_gbe_sw_rx_source_ip,
      roachf_2048ch_Switch_gbe_sw_rx_source_port => roachf_2048ch_Switch_gbe_sw_rx_source_port,
      roachf_2048ch_Switch_gbe_sw_rx_valid => roachf_2048ch_Switch_gbe_sw_rx_valid,
      roachf_2048ch_Switch_gbe_sw_tx_afull => roachf_2048ch_Switch_gbe_sw_tx_afull,
      roachf_2048ch_Switch_gbe_sw_tx_overflow => roachf_2048ch_Switch_gbe_sw_tx_overflow,
      roachf_2048ch_Switch_gbe_sw_rst => roachf_2048ch_Switch_gbe_sw_rst,
      roachf_2048ch_Switch_gbe_sw_rx_ack => roachf_2048ch_Switch_gbe_sw_rx_ack,
      roachf_2048ch_Switch_gbe_sw_rx_overrun_ack => roachf_2048ch_Switch_gbe_sw_rx_overrun_ack,
      roachf_2048ch_Switch_gbe_sw_tx_data => roachf_2048ch_Switch_gbe_sw_tx_data,
      roachf_2048ch_Switch_gbe_sw_tx_dest_ip => roachf_2048ch_Switch_gbe_sw_tx_dest_ip,
      roachf_2048ch_Switch_gbe_sw_tx_dest_port => roachf_2048ch_Switch_gbe_sw_tx_dest_port,
      roachf_2048ch_Switch_gbe_sw_tx_end_of_frame => roachf_2048ch_Switch_gbe_sw_tx_end_of_frame,
      roachf_2048ch_Switch_gbe_sw_tx_valid => roachf_2048ch_Switch_gbe_sw_tx_valid,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in,
      roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we,
      roachf_2048ch_control_ctl_regs_ant_base_user_data_out => roachf_2048ch_control_ctl_regs_ant_base_user_data_out,
      roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out => roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out,
      roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out => roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out,
      roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out => roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out,
      roachf_2048ch_control_ctl_regs_gpu_port_user_data_out => roachf_2048ch_control_ctl_regs_gpu_port_user_data_out,
      roachf_2048ch_control_ctl_regs_ip_base_user_data_out => roachf_2048ch_control_ctl_regs_ip_base_user_data_out,
      roachf_2048ch_control_ctl_regs_my_ip_user_data_out => roachf_2048ch_control_ctl_regs_my_ip_user_data_out,
      roachf_2048ch_control_delay_delay_user_data_out => roachf_2048ch_control_delay_delay_user_data_out,
      roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out,
      roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out,
      roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out,
      roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out,
      roachf_2048ch_control_insel_insel_user_data_out => roachf_2048ch_control_insel_insel_user_data_out,
      roachf_2048ch_control_seed_seed_data_user_data_out => roachf_2048ch_control_seed_seed_data_user_data_out,
      roachf_2048ch_status_gbe_gpu_user_data_in => roachf_2048ch_status_gbe_gpu_user_data_in,
      roachf_2048ch_status_gbe_sw_user_data_in => roachf_2048ch_status_gbe_sw_user_data_in
    );

end architecture STRUCTURE;

