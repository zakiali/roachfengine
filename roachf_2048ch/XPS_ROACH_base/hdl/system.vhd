-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    dly_clk_n : in std_logic;
    dly_clk_p : in std_logic;
    aux0_clk_n : in std_logic;
    aux0_clk_p : in std_logic;
    aux1_clk_n : in std_logic;
    aux1_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(15 downto 0);
    epb_addr : in std_logic_vector(22 downto 0);
    epb_addr_gp : in std_logic_vector(5 downto 0);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(1 downto 0);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    mgt_ref_clk_top_n : in std_logic;
    mgt_ref_clk_top_p : in std_logic;
    mgt_ref_clk_bottom_n : in std_logic;
    mgt_ref_clk_bottom_p : in std_logic;
    mgt_rx_top_1_n : in std_logic_vector(3 downto 0);
    mgt_rx_top_1_p : in std_logic_vector(3 downto 0);
    mgt_tx_top_1_n : out std_logic_vector(3 downto 0);
    mgt_tx_top_1_p : out std_logic_vector(3 downto 0);
    mgt_rx_top_0_n : in std_logic_vector(3 downto 0);
    mgt_rx_top_0_p : in std_logic_vector(3 downto 0);
    mgt_tx_top_0_n : out std_logic_vector(3 downto 0);
    mgt_tx_top_0_p : out std_logic_vector(3 downto 0);
    mgt_rx_bottom_1_n : in std_logic_vector(3 downto 0);
    mgt_rx_bottom_1_p : in std_logic_vector(3 downto 0);
    mgt_tx_bottom_1_n : out std_logic_vector(3 downto 0);
    mgt_tx_bottom_1_p : out std_logic_vector(3 downto 0);
    mgt_rx_bottom_0_n : in std_logic_vector(3 downto 0);
    mgt_rx_bottom_0_p : in std_logic_vector(3 downto 0);
    mgt_tx_bottom_0_n : out std_logic_vector(3 downto 0);
    mgt_tx_bottom_0_p : out std_logic_vector(3 downto 0);
    quadc0_adc0_clk_in_p : in std_logic;
    quadc0_adc1_clk_in_p : in std_logic;
    quadc0_adc2_clk_in_p : in std_logic;
    quadc0_adc3_clk_in_p : in std_logic;
    quadc0_adc0_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc1_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc2_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc3_data_in_p : in std_logic_vector(7 downto 0);
    quadc0_adc0_clk_in_n : in std_logic;
    quadc0_adc1_clk_in_n : in std_logic;
    quadc0_adc2_clk_in_n : in std_logic;
    quadc0_adc3_clk_in_n : in std_logic;
    quadc0_adc0_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc1_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc2_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_adc3_data_in_n : in std_logic_vector(7 downto 0);
    quadc0_sync_in_p : in std_logic;
    quadc0_sync_in_n : in std_logic;
    quadc1_adc0_clk_in_p : in std_logic;
    quadc1_adc1_clk_in_p : in std_logic;
    quadc1_adc2_clk_in_p : in std_logic;
    quadc1_adc3_clk_in_p : in std_logic;
    quadc1_adc0_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc1_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc2_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc3_data_in_p : in std_logic_vector(7 downto 0);
    quadc1_adc0_clk_in_n : in std_logic;
    quadc1_adc1_clk_in_n : in std_logic;
    quadc1_adc2_clk_in_n : in std_logic;
    quadc1_adc3_clk_in_n : in std_logic;
    quadc1_adc0_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc1_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc2_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_adc3_data_in_n : in std_logic_vector(7 downto 0);
    quadc1_sync_in_p : in std_logic;
    quadc1_sync_in_n : in std_logic;
    roachf_2048ch_LEDs_led1_arm_ext : out std_logic_vector(0 to 0);
    roachf_2048ch_LEDs_led2_sync_ext : out std_logic_vector(0 to 0);
    roachf_2048ch_LEDs_led4_eq_clip_ext : out std_logic_vector(0 to 0);
    roachf_2048ch_LEDs_led5_adc_clip_ext : out std_logic_vector(0 to 0)
  );
end system;

architecture STRUCTURE of system is

  component infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      dly_clk_n : in std_logic;
      dly_clk_p : in std_logic;
      aux0_clk_n : in std_logic;
      aux0_clk_p : in std_logic;
      aux1_clk_n : in std_logic;
      aux1_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      dly_clk : out std_logic;
      aux0_clk : out std_logic;
      aux0_clk90 : out std_logic;
      aux0_clk180 : out std_logic;
      aux0_clk270 : out std_logic;
      aux1_clk : out std_logic;
      aux1_clk90 : out std_logic;
      aux1_clk180 : out std_logic;
      aux1_clk270 : out std_logic;
      aux0_clk2x : out std_logic;
      aux0_clk2x90 : out std_logic;
      aux0_clk2x180 : out std_logic;
      aux0_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic
    );
  end component;

  component reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      async_reset_i : in std_logic;
      reset_i : in std_logic;
      reset_o : out std_logic
    );
  end component;

  component opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 24);
      Sl_DBus : in std_logic_vector(0 to 799);
      Sl_DBusEn : in std_logic_vector(0 to 24);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 24);
      Sl_errAck : in std_logic_vector(0 to 24);
      Sl_dwAck : in std_logic_vector(0 to 24);
      Sl_fwAck : in std_logic_vector(0 to 24);
      Sl_hwAck : in std_logic_vector(0 to 24);
      Sl_retry : in std_logic_vector(0 to 24);
      Sl_toutSup : in std_logic_vector(0 to 24);
      Sl_xferAck : in std_logic_vector(0 to 24);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component epb_opb_bridge_inst_wrapper is
    port (
      sys_reset : in std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(1 downto 0);
      epb_addr : in std_logic_vector(22 downto 0);
      epb_addr_gp : in std_logic_vector(5 downto 0);
      epb_data_i : in std_logic_vector(15 downto 0);
      epb_data_o : out std_logic_vector(15 downto 0);
      epb_rdy : out std_logic;
      epb_rdy_oe : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(15 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(15 downto 0);
      epb_data_in_o : out std_logic_vector(15 downto 0);
      epb_oe_n_buf : in std_logic;
      epb_oe_n : out std_logic;
      epb_cs_n_buf : in std_logic;
      epb_cs_n : out std_logic;
      epb_r_w_n_buf : in std_logic;
      epb_r_w_n : out std_logic;
      epb_be_n_buf : in std_logic_vector(1 downto 0);
      epb_be_n : out std_logic_vector(1 downto 0);
      epb_addr_buf : in std_logic_vector(22 downto 0);
      epb_addr : out std_logic_vector(22 downto 0);
      epb_addr_gp_buf : in std_logic_vector(5 downto 0);
      epb_addr_gp : out std_logic_vector(5 downto 0);
      epb_rdy_buf : out std_logic;
      epb_rdy : in std_logic;
      epb_rdy_oe : in std_logic
    );
  end component;

  component sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component xaui_infrastructure_inst_wrapper is
    port (
      mgt_refclk_t_n : in std_logic;
      mgt_refclk_t_p : in std_logic;
      mgt_refclk_b_n : in std_logic;
      mgt_refclk_b_p : in std_logic;
      mgt_rx_t1_n : in std_logic_vector(3 downto 0);
      mgt_rx_t1_p : in std_logic_vector(3 downto 0);
      mgt_tx_t1_n : out std_logic_vector(3 downto 0);
      mgt_tx_t1_p : out std_logic_vector(3 downto 0);
      mgt_rx_t0_n : in std_logic_vector(3 downto 0);
      mgt_rx_t0_p : in std_logic_vector(3 downto 0);
      mgt_tx_t0_n : out std_logic_vector(3 downto 0);
      mgt_tx_t0_p : out std_logic_vector(3 downto 0);
      mgt_rx_b1_n : in std_logic_vector(3 downto 0);
      mgt_rx_b1_p : in std_logic_vector(3 downto 0);
      mgt_tx_b1_n : out std_logic_vector(3 downto 0);
      mgt_tx_b1_p : out std_logic_vector(3 downto 0);
      mgt_rx_b0_n : in std_logic_vector(3 downto 0);
      mgt_rx_b0_p : in std_logic_vector(3 downto 0);
      mgt_tx_b0_n : out std_logic_vector(3 downto 0);
      mgt_tx_b0_p : out std_logic_vector(3 downto 0);
      reset : in std_logic;
      mgt_clk_1 : out std_logic;
      mgt_clk_0 : out std_logic;
      mgt_tx_reset_3 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_3 : in std_logic_vector(3 downto 0);
      mgt_rxdata_3 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_3 : out std_logic_vector(7 downto 0);
      mgt_txdata_3 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_3 : in std_logic_vector(7 downto 0);
      mgt_code_comma_3 : out std_logic_vector(7 downto 0);
      mgt_enchansync_3 : in std_logic;
      mgt_enable_align_3 : in std_logic_vector(3 downto 0);
      mgt_loopback_3 : in std_logic;
      mgt_powerdown_3 : in std_logic;
      mgt_rxlock_3 : out std_logic_vector(3 downto 0);
      mgt_syncok_3 : out std_logic_vector(3 downto 0);
      mgt_codevalid_3 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_3 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_3 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_3 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_3 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_3 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_2 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_2 : in std_logic_vector(3 downto 0);
      mgt_rxdata_2 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_2 : out std_logic_vector(7 downto 0);
      mgt_txdata_2 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_2 : in std_logic_vector(7 downto 0);
      mgt_code_comma_2 : out std_logic_vector(7 downto 0);
      mgt_enchansync_2 : in std_logic;
      mgt_enable_align_2 : in std_logic_vector(3 downto 0);
      mgt_loopback_2 : in std_logic;
      mgt_powerdown_2 : in std_logic;
      mgt_rxlock_2 : out std_logic_vector(3 downto 0);
      mgt_syncok_2 : out std_logic_vector(3 downto 0);
      mgt_codevalid_2 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_2 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_2 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_2 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_2 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_2 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_1 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_1 : in std_logic_vector(3 downto 0);
      mgt_rxdata_1 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_1 : out std_logic_vector(7 downto 0);
      mgt_txdata_1 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_1 : in std_logic_vector(7 downto 0);
      mgt_code_comma_1 : out std_logic_vector(7 downto 0);
      mgt_enchansync_1 : in std_logic;
      mgt_enable_align_1 : in std_logic_vector(3 downto 0);
      mgt_loopback_1 : in std_logic;
      mgt_powerdown_1 : in std_logic;
      mgt_rxlock_1 : out std_logic_vector(3 downto 0);
      mgt_syncok_1 : out std_logic_vector(3 downto 0);
      mgt_codevalid_1 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_1 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_1 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_1 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_1 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_1 : in std_logic_vector(2 downto 0);
      mgt_tx_reset_0 : in std_logic_vector(3 downto 0);
      mgt_rx_reset_0 : in std_logic_vector(3 downto 0);
      mgt_rxdata_0 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk_0 : out std_logic_vector(7 downto 0);
      mgt_txdata_0 : in std_logic_vector(63 downto 0);
      mgt_txcharisk_0 : in std_logic_vector(7 downto 0);
      mgt_code_comma_0 : out std_logic_vector(7 downto 0);
      mgt_enchansync_0 : in std_logic;
      mgt_enable_align_0 : in std_logic_vector(3 downto 0);
      mgt_loopback_0 : in std_logic;
      mgt_powerdown_0 : in std_logic;
      mgt_rxlock_0 : out std_logic_vector(3 downto 0);
      mgt_syncok_0 : out std_logic_vector(3 downto 0);
      mgt_codevalid_0 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr_0 : out std_logic_vector(3 downto 0);
      mgt_rxeqmix_0 : in std_logic_vector(1 downto 0);
      mgt_rxeqpole_0 : in std_logic_vector(3 downto 0);
      mgt_txpreemphasis_0 : in std_logic_vector(2 downto 0);
      mgt_txdiffctrl_0 : in std_logic_vector(2 downto 0)
    );
  end component;

  component roachf_2048ch_xsg_core_config_wrapper is
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

  component arb_clk_dcm_wrapper is
    port (
      RST : in std_logic;
      CLKIN : in std_logic;
      CLKFB : in std_logic;
      PSEN : in std_logic;
      PSINCDEC : in std_logic;
      PSCLK : in std_logic;
      DSSEN : in std_logic;
      CLK0 : out std_logic;
      CLK90 : out std_logic;
      CLK180 : out std_logic;
      CLK270 : out std_logic;
      CLKDV : out std_logic;
      CLK2X : out std_logic;
      CLK2X180 : out std_logic;
      CLKFX : out std_logic;
      CLKFX180 : out std_logic;
      STATUS : out std_logic_vector(7 downto 0);
      LOCKED : out std_logic;
      PSDONE : out std_logic
    );
  end component;

  component arb_clk_dcm_phasegen_wrapper is
    port (
      RST : in std_logic;
      CLKIN : in std_logic;
      CLKFB : in std_logic;
      PSEN : in std_logic;
      PSINCDEC : in std_logic;
      PSCLK : in std_logic;
      DSSEN : in std_logic;
      CLK0 : out std_logic;
      CLK90 : out std_logic;
      CLK180 : out std_logic;
      CLK270 : out std_logic;
      CLKDV : out std_logic;
      CLK2X : out std_logic;
      CLK2X180 : out std_logic;
      CLKFX : out std_logic;
      CLKFX180 : out std_logic;
      STATUS : out std_logic_vector(7 downto 0);
      LOCKED : out std_logic;
      PSDONE : out std_logic
    );
  end component;

  component rename_fab_clk_wrapper is
    port (
      sig_in : in std_logic;
      sig_out : out std_logic
    );
  end component;

  component roachf_2048ch_2gpu_gbe_gpu_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : in std_logic_vector(7 downto 0);
      mgt_rxeqmix : out std_logic_vector(1 downto 0);
      mgt_rxeqpole : out std_logic_vector(3 downto 0);
      mgt_txpreemphasis : out std_logic_vector(2 downto 0);
      mgt_txdiffctrl : out std_logic_vector(2 downto 0);
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic
    );
  end component;

  component xaui_phy_3_wrapper is
    port (
      reset : in std_logic;
      mgt_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_loopback : out std_logic;
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_powerdown : out std_logic;
      mgt_rx_reset : out std_logic_vector(3 downto 0);
      mgt_tx_reset : out std_logic_vector(3 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : out std_logic_vector(7 downto 0)
    );
  end component;

  component roachf_2048ch_adcs_quadc0_wrapper is
    port (
      adc0_clk_in_p : in std_logic;
      adc0_clk_in_n : in std_logic;
      adc1_clk_in_p : in std_logic;
      adc1_clk_in_n : in std_logic;
      adc2_clk_in_p : in std_logic;
      adc2_clk_in_n : in std_logic;
      adc3_clk_in_p : in std_logic;
      adc3_clk_in_n : in std_logic;
      adc0_data_in_p : in std_logic_vector(7 downto 0);
      adc0_data_in_n : in std_logic_vector(7 downto 0);
      adc1_data_in_p : in std_logic_vector(7 downto 0);
      adc1_data_in_n : in std_logic_vector(7 downto 0);
      adc2_data_in_p : in std_logic_vector(7 downto 0);
      adc2_data_in_n : in std_logic_vector(7 downto 0);
      adc3_data_in_p : in std_logic_vector(7 downto 0);
      adc3_data_in_n : in std_logic_vector(7 downto 0);
      sync_in_p : in std_logic;
      sync_in_n : in std_logic;
      user_clk : in std_logic;
      dcm_reset : in std_logic;
      reset : in std_logic;
      adc0_clk : out std_logic;
      adc1_clk : out std_logic;
      adc2_clk : out std_logic;
      adc3_clk : out std_logic;
      adc0_clk90 : out std_logic;
      adc0_data : out std_logic_vector(7 downto 0);
      adc1_data : out std_logic_vector(7 downto 0);
      adc2_data : out std_logic_vector(7 downto 0);
      adc3_data : out std_logic_vector(7 downto 0);
      valid : out std_logic;
      sync : out std_logic
    );
  end component;

  component roachf_2048ch_adcs_quadc1_wrapper is
    port (
      adc0_clk_in_p : in std_logic;
      adc0_clk_in_n : in std_logic;
      adc1_clk_in_p : in std_logic;
      adc1_clk_in_n : in std_logic;
      adc2_clk_in_p : in std_logic;
      adc2_clk_in_n : in std_logic;
      adc3_clk_in_p : in std_logic;
      adc3_clk_in_n : in std_logic;
      adc0_data_in_p : in std_logic_vector(7 downto 0);
      adc0_data_in_n : in std_logic_vector(7 downto 0);
      adc1_data_in_p : in std_logic_vector(7 downto 0);
      adc1_data_in_n : in std_logic_vector(7 downto 0);
      adc2_data_in_p : in std_logic_vector(7 downto 0);
      adc2_data_in_n : in std_logic_vector(7 downto 0);
      adc3_data_in_p : in std_logic_vector(7 downto 0);
      adc3_data_in_n : in std_logic_vector(7 downto 0);
      sync_in_p : in std_logic;
      sync_in_n : in std_logic;
      user_clk : in std_logic;
      dcm_reset : in std_logic;
      reset : in std_logic;
      adc0_clk : out std_logic;
      adc1_clk : out std_logic;
      adc2_clk : out std_logic;
      adc3_clk : out std_logic;
      adc0_clk90 : out std_logic;
      adc0_data : out std_logic_vector(7 downto 0);
      adc1_data : out std_logic_vector(7 downto 0);
      adc2_data : out std_logic_vector(7 downto 0);
      adc3_data : out std_logic_vector(7 downto 0);
      valid : out std_logic;
      sync : out std_logic
    );
  end component;

  component roachf_2048ch_leds_led1_arm_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_2048ch_leds_led2_sync_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_2048ch_leds_led4_eq_clip_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_2048ch_leds_led5_adc_clip_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component roachf_2048ch_loopback_loop_cnt0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_loopback_loop_err_cnt0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_loopback_loopback_mux0_mcnt_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_loopback_statii_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_switch_gbe_sw_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : in std_logic_vector(7 downto 0);
      mgt_rxeqmix : out std_logic_vector(1 downto 0);
      mgt_rxeqpole : out std_logic_vector(3 downto 0);
      mgt_txpreemphasis : out std_logic_vector(2 downto 0);
      mgt_txdiffctrl : out std_logic_vector(2 downto 0);
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic
    );
  end component;

  component xaui_phy_0_wrapper is
    port (
      reset : in std_logic;
      mgt_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_loopback : out std_logic;
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_powerdown : out std_logic;
      mgt_rx_reset : out std_logic_vector(3 downto 0);
      mgt_tx_reset : out std_logic_vector(3 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      xaui_status : out std_logic_vector(7 downto 0)
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(14 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramif_wrapper is
    port (
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31);
      clk_in : in std_logic;
      addr : in std_logic_vector(14 downto 0);
      data_in : in std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0);
      we : in std_logic
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramblk_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component roachf_2048ch_control_ctl_regs_ant_base_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_feng_ctl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_gbe_sw_port_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_gpu_ip_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_gpu_port_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_ip_base_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_ctl_regs_my_ip_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_delay_delay_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_eq_coefs_eq0_ctl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_eq_coefs_eq1_ctl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_eq_coefs_eq2_ctl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_eq_coefs_eq3_ctl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_insel_insel_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_control_seed_seed_data_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_status_gbe_gpu_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component roachf_2048ch_status_gbe_sw_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  -- Internal signals

  signal arb_clk : std_logic;
  signal arb_clk90 : std_logic;
  signal arb_clk_fb : std_logic;
  signal arb_clk_int : std_logic;
  signal arb_clk_lock : std_logic;
  signal epb_addr_gp_int : std_logic_vector(5 downto 0);
  signal epb_addr_int : std_logic_vector(22 downto 0);
  signal epb_be_n_int : std_logic_vector(1 downto 0);
  signal epb_clk : std_logic;
  signal epb_cs_n_int : std_logic;
  signal epb_data_i : std_logic_vector(15 downto 0);
  signal epb_data_o : std_logic_vector(15 downto 0);
  signal epb_data_oe_n : std_logic;
  signal epb_oe_n_int : std_logic;
  signal epb_r_w_n_int : std_logic;
  signal epb_rdy_buf : std_logic;
  signal epb_rdy_oe : std_logic;
  signal mgt_clk_0 : std_logic;
  signal mgt_clk_1 : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd2 : std_logic_vector(1 downto 0);
  signal net_gnd3 : std_logic_vector(2 downto 0);
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd25 : std_logic_vector(0 to 24);
  signal net_gnd64 : std_logic_vector(63 downto 0);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc25 : std_logic_vector(0 to 24);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 799);
  signal opb0_Sl_errAck : std_logic_vector(0 to 24);
  signal opb0_Sl_retry : std_logic_vector(0 to 24);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 24);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 24);
  signal pgassign1 : std_logic;
  signal pgassign2 : std_logic_vector(15 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_led_rx : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_led_tx : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_led_up : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rst : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_ack : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_data : std_logic_vector(63 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_overrun : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_rx_source_ip : std_logic_vector(31 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_rx_source_port : std_logic_vector(15 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_rx_valid : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_tx_afull : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_tx_data : std_logic_vector(63 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_tx_dest_port : std_logic_vector(15 downto 0);
  signal roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_tx_overflow : std_logic;
  signal roachf_2048ch_2GPU_gbe_gpu_tx_valid : std_logic;
  signal roachf_2048ch_ADCs_quadc0_adc0_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc0_adc1_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc0_adc2_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc0_adc3_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc0_sync : std_logic;
  signal roachf_2048ch_ADCs_quadc0_valid : std_logic;
  signal roachf_2048ch_ADCs_quadc1_adc0_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc1_adc1_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc1_adc2_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc1_adc3_data : std_logic_vector(7 downto 0);
  signal roachf_2048ch_ADCs_quadc1_sync : std_logic;
  signal roachf_2048ch_ADCs_quadc1_valid : std_logic;
  signal roachf_2048ch_LEDs_led1_arm_gateway : std_logic_vector(0 to 0);
  signal roachf_2048ch_LEDs_led2_sync_gateway : std_logic_vector(0 to 0);
  signal roachf_2048ch_LEDs_led4_eq_clip_gateway : std_logic_vector(0 to 0);
  signal roachf_2048ch_LEDs_led5_adc_clip_gateway : std_logic_vector(0 to 0);
  signal roachf_2048ch_Loopback_loop_cnt0_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Loopback_loop_err_cnt0_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Loopback_statii_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_led_rx : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_led_tx : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_led_up : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rst : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_ack : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_bad_frame : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_data : std_logic_vector(63 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_rx_end_of_frame : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_overrun : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_overrun_ack : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_rx_source_ip : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_rx_source_port : std_logic_vector(15 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_rx_valid : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_tx_afull : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_tx_data : std_logic_vector(63 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_tx_dest_port : std_logic_vector(15 downto 0);
  signal roachf_2048ch_Switch_gbe_sw_tx_end_of_frame : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_tx_overflow : std_logic;
  signal roachf_2048ch_Switch_gbe_sw_tx_valid : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr : std_logic_vector(14 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Clk : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_EN : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Rst : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Clk : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_EN : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Rst : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr : std_logic_vector(14 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Clk : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_EN : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Rst : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Clk : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_EN : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Rst : std_logic;
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we : std_logic;
  signal roachf_2048ch_control_ctl_regs_ant_base_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_port_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_ip_base_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_my_ip_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_delay_delay_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_insel_insel_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_seed_seed_data_user_data_out : std_logic_vector(31 downto 0);
  signal roachf_2048ch_status_gbe_gpu_user_data_in : std_logic_vector(31 downto 0);
  signal roachf_2048ch_status_gbe_sw_user_data_in : std_logic_vector(31 downto 0);
  signal sys_clk : std_logic;
  signal sys_clk_lock : std_logic;
  signal sys_reset : std_logic;
  signal xaui0_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui0_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui0_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui0_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui0_ref_clk_n : std_logic;
  signal xaui0_ref_clk_p : std_logic;
  signal xaui1_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui1_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui1_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui1_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui2_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui2_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui2_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui2_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui2_ref_clk_n : std_logic;
  signal xaui2_ref_clk_p : std_logic;
  signal xaui3_mgt_rx_n : std_logic_vector(3 downto 0);
  signal xaui3_mgt_rx_p : std_logic_vector(3 downto 0);
  signal xaui3_mgt_tx_n : std_logic_vector(3 downto 0);
  signal xaui3_mgt_tx_p : std_logic_vector(3 downto 0);
  signal xaui_conf0_mgt_rxeqmix : std_logic_vector(1 downto 0);
  signal xaui_conf0_mgt_rxeqpole : std_logic_vector(3 downto 0);
  signal xaui_conf0_mgt_txdiffctrl : std_logic_vector(2 downto 0);
  signal xaui_conf0_mgt_txpreemphasis : std_logic_vector(2 downto 0);
  signal xaui_conf3_mgt_rxeqmix : std_logic_vector(1 downto 0);
  signal xaui_conf3_mgt_rxeqpole : std_logic_vector(3 downto 0);
  signal xaui_conf3_mgt_txdiffctrl : std_logic_vector(2 downto 0);
  signal xaui_conf3_mgt_txpreemphasis : std_logic_vector(2 downto 0);
  signal xaui_sys0_mgt_code_comma : std_logic_vector(7 downto 0);
  signal xaui_sys0_mgt_code_valid : std_logic_vector(7 downto 0);
  signal xaui_sys0_mgt_en_chan_sync : std_logic;
  signal xaui_sys0_mgt_enable_align : std_logic_vector(3 downto 0);
  signal xaui_sys0_mgt_loopback : std_logic;
  signal xaui_sys0_mgt_powerdown : std_logic;
  signal xaui_sys0_mgt_rx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys0_mgt_rx_data : std_logic_vector(63 downto 0);
  signal xaui_sys0_mgt_rx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys0_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys0_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys0_mgt_syncok : std_logic_vector(3 downto 0);
  signal xaui_sys0_mgt_tx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys0_mgt_tx_data : std_logic_vector(63 downto 0);
  signal xaui_sys0_mgt_tx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_code_comma : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_code_valid : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_en_chan_sync : std_logic;
  signal xaui_sys3_mgt_enable_align : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_loopback : std_logic;
  signal xaui_sys3_mgt_powerdown : std_logic;
  signal xaui_sys3_mgt_rx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_rx_data : std_logic_vector(63 downto 0);
  signal xaui_sys3_mgt_rx_reset : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_syncok : std_logic_vector(3 downto 0);
  signal xaui_sys3_mgt_tx_charisk : std_logic_vector(7 downto 0);
  signal xaui_sys3_mgt_tx_data : std_logic_vector(63 downto 0);
  signal xaui_sys3_mgt_tx_reset : std_logic_vector(3 downto 0);
  signal xgmii0_xaui_status : std_logic_vector(7 downto 0);
  signal xgmii0_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii0_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii0_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii0_xgmii_txd : std_logic_vector(63 downto 0);
  signal xgmii3_xaui_status : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii3_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii3_xgmii_txd : std_logic_vector(63 downto 0);

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of arb_clk_dcm_wrapper : component is "user_black_box";
  attribute BOX_TYPE of arb_clk_dcm_phasegen_wrapper : component is "user_black_box";
  attribute BOX_TYPE of rename_fab_clk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_2gpu_gbe_gpu_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_phy_3_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_adcs_quadc0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_adcs_quadc1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_leds_led1_arm_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_leds_led2_sync_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_leds_led4_eq_clip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_leds_led5_adc_clip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_loopback_loop_cnt0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_loopback_loop_err_cnt0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_loopback_loopback_mux0_mcnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_loopback_statii_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_switch_gbe_sw_wrapper : component is "user_black_box";
  attribute BOX_TYPE of xaui_phy_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramif_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_ant_base_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_feng_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_gbe_sw_port_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_gpu_ip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_gpu_port_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_ip_base_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_ctl_regs_my_ip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_delay_delay_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_eq_coefs_eq0_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_eq_coefs_eq1_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_eq_coefs_eq2_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_eq_coefs_eq3_ctl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_insel_insel_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_control_seed_seed_data_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_status_gbe_gpu_wrapper : component is "user_black_box";
  attribute BOX_TYPE of roachf_2048ch_status_gbe_sw_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  xaui2_ref_clk_n <= mgt_ref_clk_top_n;
  xaui2_ref_clk_p <= mgt_ref_clk_top_p;
  xaui0_ref_clk_n <= mgt_ref_clk_bottom_n;
  xaui0_ref_clk_p <= mgt_ref_clk_bottom_p;
  xaui3_mgt_rx_n <= mgt_rx_top_1_n;
  xaui3_mgt_rx_p <= mgt_rx_top_1_p;
  mgt_tx_top_1_n <= xaui3_mgt_tx_n;
  mgt_tx_top_1_p <= xaui3_mgt_tx_p;
  xaui2_mgt_rx_n <= mgt_rx_top_0_n;
  xaui2_mgt_rx_p <= mgt_rx_top_0_p;
  mgt_tx_top_0_n <= xaui2_mgt_tx_n;
  mgt_tx_top_0_p <= xaui2_mgt_tx_p;
  xaui1_mgt_rx_n <= mgt_rx_bottom_1_n;
  xaui1_mgt_rx_p <= mgt_rx_bottom_1_p;
  mgt_tx_bottom_1_n <= xaui1_mgt_tx_n;
  mgt_tx_bottom_1_p <= xaui1_mgt_tx_p;
  xaui0_mgt_rx_n <= mgt_rx_bottom_0_n;
  xaui0_mgt_rx_p <= mgt_rx_bottom_0_p;
  mgt_tx_bottom_0_n <= xaui0_mgt_tx_n;
  mgt_tx_bottom_0_p <= xaui0_mgt_tx_p;
  pgassign1 <= '0';
  pgassign2(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd2(1 downto 0) <= B"00";
  net_gnd25(0 to 24) <= B"0000000000000000000000000";
  net_gnd3(2 downto 0) <= B"000";
  net_gnd4(3 downto 0) <= B"0000";
  net_gnd64(63 downto 0) <= B"0000000000000000000000000000000000000000000000000000000000000000";
  net_gnd8(7 downto 0) <= B"00000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc25(0 to 24) <= B"1111111111111111111111111";

  infrastructure_inst : infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      dly_clk_n => dly_clk_n,
      dly_clk_p => dly_clk_p,
      aux0_clk_n => aux0_clk_n,
      aux0_clk_p => aux0_clk_p,
      aux1_clk_n => aux1_clk_n,
      aux1_clk_p => aux1_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => sys_clk,
      sys_clk90 => open,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => sys_clk_lock,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      dly_clk => open,
      aux0_clk => open,
      aux0_clk90 => open,
      aux0_clk180 => open,
      aux0_clk270 => open,
      aux1_clk => open,
      aux1_clk90 => open,
      aux1_clk180 => open,
      aux1_clk270 => open,
      aux0_clk2x => open,
      aux0_clk2x90 => open,
      aux0_clk2x180 => open,
      aux0_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => sys_reset,
      idelay_rdy => open
    );

  reset_block_inst : reset_block_inst_wrapper
    port map (
      clk => epb_clk,
      async_reset_i => pgassign1,
      reset_i => pgassign1,
      reset_o => sys_reset
    );

  opb0 : opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => pgassign1,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd25,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc25,
      Sl_DBusEn32_63 => net_vcc25,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd25,
      Sl_fwAck => net_gnd25,
      Sl_hwAck => net_gnd25,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : epb_opb_bridge_inst_wrapper
    port map (
      sys_reset => pgassign1,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n_int,
      epb_oe_n => epb_oe_n_int,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n => epb_be_n_int,
      epb_addr => epb_addr_int,
      epb_addr_gp => epb_addr_gp_int,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data,
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i,
      epb_oe_n_buf => epb_oe_n,
      epb_oe_n => epb_oe_n_int,
      epb_cs_n_buf => epb_cs_n,
      epb_cs_n => epb_cs_n_int,
      epb_r_w_n_buf => epb_r_w_n,
      epb_r_w_n => epb_r_w_n_int,
      epb_be_n_buf => epb_be_n,
      epb_be_n => epb_be_n_int,
      epb_addr_buf => epb_addr,
      epb_addr => epb_addr_int,
      epb_addr_gp_buf => epb_addr_gp,
      epb_addr_gp => epb_addr_gp_int,
      epb_rdy_buf => epb_rdy,
      epb_rdy => epb_rdy_buf,
      epb_rdy_oe => epb_rdy_oe
    );

  sys_block_inst : sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign2,
      fab_clk => arb_clk
    );

  xaui_infrastructure_inst : xaui_infrastructure_inst_wrapper
    port map (
      mgt_refclk_t_n => xaui2_ref_clk_n,
      mgt_refclk_t_p => xaui2_ref_clk_p,
      mgt_refclk_b_n => xaui0_ref_clk_n,
      mgt_refclk_b_p => xaui0_ref_clk_p,
      mgt_rx_t1_n => xaui3_mgt_rx_n,
      mgt_rx_t1_p => xaui3_mgt_rx_p,
      mgt_tx_t1_n => xaui3_mgt_tx_n,
      mgt_tx_t1_p => xaui3_mgt_tx_p,
      mgt_rx_t0_n => xaui2_mgt_rx_n,
      mgt_rx_t0_p => xaui2_mgt_rx_p,
      mgt_tx_t0_n => xaui2_mgt_tx_n,
      mgt_tx_t0_p => xaui2_mgt_tx_p,
      mgt_rx_b1_n => xaui1_mgt_rx_n,
      mgt_rx_b1_p => xaui1_mgt_rx_p,
      mgt_tx_b1_n => xaui1_mgt_tx_n,
      mgt_tx_b1_p => xaui1_mgt_tx_p,
      mgt_rx_b0_n => xaui0_mgt_rx_n,
      mgt_rx_b0_p => xaui0_mgt_rx_p,
      mgt_tx_b0_n => xaui0_mgt_tx_n,
      mgt_tx_b0_p => xaui0_mgt_tx_p,
      reset => sys_reset,
      mgt_clk_1 => mgt_clk_1,
      mgt_clk_0 => mgt_clk_0,
      mgt_tx_reset_3 => xaui_sys3_mgt_tx_reset,
      mgt_rx_reset_3 => xaui_sys3_mgt_rx_reset,
      mgt_rxdata_3 => xaui_sys3_mgt_rx_data,
      mgt_rxcharisk_3 => xaui_sys3_mgt_rx_charisk,
      mgt_txdata_3 => xaui_sys3_mgt_tx_data,
      mgt_txcharisk_3 => xaui_sys3_mgt_tx_charisk,
      mgt_code_comma_3 => xaui_sys3_mgt_code_comma,
      mgt_enchansync_3 => xaui_sys3_mgt_en_chan_sync,
      mgt_enable_align_3 => xaui_sys3_mgt_enable_align,
      mgt_loopback_3 => xaui_sys3_mgt_loopback,
      mgt_powerdown_3 => xaui_sys3_mgt_powerdown,
      mgt_rxlock_3 => xaui_sys3_mgt_rxlock,
      mgt_syncok_3 => xaui_sys3_mgt_syncok,
      mgt_codevalid_3 => xaui_sys3_mgt_code_valid,
      mgt_rxbufferr_3 => xaui_sys3_mgt_rxbufferr,
      mgt_rxeqmix_3 => xaui_conf3_mgt_rxeqmix,
      mgt_rxeqpole_3 => xaui_conf3_mgt_rxeqpole,
      mgt_txpreemphasis_3 => xaui_conf3_mgt_txpreemphasis,
      mgt_txdiffctrl_3 => xaui_conf3_mgt_txdiffctrl,
      mgt_tx_reset_2 => net_gnd4,
      mgt_rx_reset_2 => net_gnd4,
      mgt_rxdata_2 => open,
      mgt_rxcharisk_2 => open,
      mgt_txdata_2 => net_gnd64,
      mgt_txcharisk_2 => net_gnd8,
      mgt_code_comma_2 => open,
      mgt_enchansync_2 => net_gnd0,
      mgt_enable_align_2 => net_gnd4,
      mgt_loopback_2 => net_gnd0,
      mgt_powerdown_2 => net_gnd0,
      mgt_rxlock_2 => open,
      mgt_syncok_2 => open,
      mgt_codevalid_2 => open,
      mgt_rxbufferr_2 => open,
      mgt_rxeqmix_2 => net_gnd2,
      mgt_rxeqpole_2 => net_gnd4,
      mgt_txpreemphasis_2 => net_gnd3,
      mgt_txdiffctrl_2 => net_gnd3,
      mgt_tx_reset_1 => net_gnd4,
      mgt_rx_reset_1 => net_gnd4,
      mgt_rxdata_1 => open,
      mgt_rxcharisk_1 => open,
      mgt_txdata_1 => net_gnd64,
      mgt_txcharisk_1 => net_gnd8,
      mgt_code_comma_1 => open,
      mgt_enchansync_1 => net_gnd0,
      mgt_enable_align_1 => net_gnd4,
      mgt_loopback_1 => net_gnd0,
      mgt_powerdown_1 => net_gnd0,
      mgt_rxlock_1 => open,
      mgt_syncok_1 => open,
      mgt_codevalid_1 => open,
      mgt_rxbufferr_1 => open,
      mgt_rxeqmix_1 => net_gnd2,
      mgt_rxeqpole_1 => net_gnd4,
      mgt_txpreemphasis_1 => net_gnd3,
      mgt_txdiffctrl_1 => net_gnd3,
      mgt_tx_reset_0 => xaui_sys0_mgt_tx_reset,
      mgt_rx_reset_0 => xaui_sys0_mgt_rx_reset,
      mgt_rxdata_0 => xaui_sys0_mgt_rx_data,
      mgt_rxcharisk_0 => xaui_sys0_mgt_rx_charisk,
      mgt_txdata_0 => xaui_sys0_mgt_tx_data,
      mgt_txcharisk_0 => xaui_sys0_mgt_tx_charisk,
      mgt_code_comma_0 => xaui_sys0_mgt_code_comma,
      mgt_enchansync_0 => xaui_sys0_mgt_en_chan_sync,
      mgt_enable_align_0 => xaui_sys0_mgt_enable_align,
      mgt_loopback_0 => xaui_sys0_mgt_loopback,
      mgt_powerdown_0 => xaui_sys0_mgt_powerdown,
      mgt_rxlock_0 => xaui_sys0_mgt_rxlock,
      mgt_syncok_0 => xaui_sys0_mgt_syncok,
      mgt_codevalid_0 => xaui_sys0_mgt_code_valid,
      mgt_rxbufferr_0 => xaui_sys0_mgt_rxbufferr,
      mgt_rxeqmix_0 => xaui_conf0_mgt_rxeqmix,
      mgt_rxeqpole_0 => xaui_conf0_mgt_rxeqpole,
      mgt_txpreemphasis_0 => xaui_conf0_mgt_txpreemphasis,
      mgt_txdiffctrl_0 => xaui_conf0_mgt_txdiffctrl
    );

  roachf_2048ch_XSG_core_config : roachf_2048ch_xsg_core_config_wrapper
    port map (
      clk => arb_clk,
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
      roachf_2048ch_LEDs_led1_arm_gateway => roachf_2048ch_LEDs_led1_arm_gateway(0),
      roachf_2048ch_LEDs_led2_sync_gateway => roachf_2048ch_LEDs_led2_sync_gateway(0),
      roachf_2048ch_LEDs_led4_eq_clip_gateway => roachf_2048ch_LEDs_led4_eq_clip_gateway(0),
      roachf_2048ch_LEDs_led5_adc_clip_gateway => roachf_2048ch_LEDs_led5_adc_clip_gateway(0),
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

  arb_clk_dcm : arb_clk_dcm_wrapper
    port map (
      RST => sys_clk_lock,
      CLKIN => sys_clk,
      CLKFB => arb_clk_fb,
      PSEN => net_gnd0,
      PSINCDEC => net_gnd0,
      PSCLK => net_gnd0,
      DSSEN => net_gnd0,
      CLK0 => arb_clk_fb,
      CLK90 => open,
      CLK180 => open,
      CLK270 => open,
      CLKDV => open,
      CLK2X => open,
      CLK2X180 => open,
      CLKFX => arb_clk_int,
      CLKFX180 => open,
      STATUS => open,
      LOCKED => arb_clk_lock,
      PSDONE => open
    );

  arb_clk_dcm_phasegen : arb_clk_dcm_phasegen_wrapper
    port map (
      RST => arb_clk_lock,
      CLKIN => arb_clk_int,
      CLKFB => arb_clk,
      PSEN => net_gnd0,
      PSINCDEC => net_gnd0,
      PSCLK => net_gnd0,
      DSSEN => net_gnd0,
      CLK0 => arb_clk,
      CLK90 => arb_clk90,
      CLK180 => open,
      CLK270 => open,
      CLKDV => open,
      CLK2X => open,
      CLK2X180 => open,
      CLKFX => open,
      CLKFX180 => open,
      STATUS => open,
      LOCKED => open,
      PSDONE => open
    );

  rename_fab_clk : rename_fab_clk_wrapper
    port map (
      sig_in => arb_clk,
      sig_out => open
    );

  roachf_2048ch_2GPU_gbe_gpu : roachf_2048ch_2gpu_gbe_gpu_wrapper
    port map (
      clk => arb_clk,
      rst => roachf_2048ch_2GPU_gbe_gpu_rst,
      tx_valid => roachf_2048ch_2GPU_gbe_gpu_tx_valid,
      tx_afull => roachf_2048ch_2GPU_gbe_gpu_tx_afull,
      tx_overflow => roachf_2048ch_2GPU_gbe_gpu_tx_overflow,
      tx_end_of_frame => roachf_2048ch_2GPU_gbe_gpu_tx_end_of_frame,
      tx_data => roachf_2048ch_2GPU_gbe_gpu_tx_data,
      tx_dest_ip => roachf_2048ch_2GPU_gbe_gpu_tx_dest_ip,
      tx_dest_port => roachf_2048ch_2GPU_gbe_gpu_tx_dest_port,
      rx_valid => roachf_2048ch_2GPU_gbe_gpu_rx_valid,
      rx_end_of_frame => roachf_2048ch_2GPU_gbe_gpu_rx_end_of_frame,
      rx_data => roachf_2048ch_2GPU_gbe_gpu_rx_data,
      rx_source_ip => roachf_2048ch_2GPU_gbe_gpu_rx_source_ip,
      rx_source_port => roachf_2048ch_2GPU_gbe_gpu_rx_source_port,
      rx_bad_frame => roachf_2048ch_2GPU_gbe_gpu_rx_bad_frame,
      rx_overrun => roachf_2048ch_2GPU_gbe_gpu_rx_overrun,
      rx_overrun_ack => roachf_2048ch_2GPU_gbe_gpu_rx_overrun_ack,
      rx_ack => roachf_2048ch_2GPU_gbe_gpu_rx_ack,
      led_up => roachf_2048ch_2GPU_gbe_gpu_led_up,
      led_rx => roachf_2048ch_2GPU_gbe_gpu_led_rx,
      led_tx => roachf_2048ch_2GPU_gbe_gpu_led_tx,
      xaui_clk => mgt_clk_1,
      xgmii_txd => xgmii3_xgmii_txd,
      xgmii_txc => xgmii3_xgmii_txc,
      xgmii_rxd => xgmii3_xgmii_rxd,
      xgmii_rxc => xgmii3_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii3_xaui_status,
      mgt_rxeqmix => xaui_conf3_mgt_rxeqmix,
      mgt_rxeqpole => xaui_conf3_mgt_rxeqpole,
      mgt_txpreemphasis => xaui_conf3_mgt_txpreemphasis,
      mgt_txdiffctrl => xaui_conf3_mgt_txdiffctrl,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr
    );

  xaui_phy_3 : xaui_phy_3_wrapper
    port map (
      reset => sys_reset,
      mgt_clk => mgt_clk_1,
      mgt_txdata => xaui_sys3_mgt_tx_data,
      mgt_txcharisk => xaui_sys3_mgt_tx_charisk,
      mgt_rxdata => xaui_sys3_mgt_rx_data,
      mgt_rxcharisk => xaui_sys3_mgt_rx_charisk,
      mgt_enable_align => xaui_sys3_mgt_enable_align,
      mgt_code_valid => xaui_sys3_mgt_code_valid,
      mgt_code_comma => xaui_sys3_mgt_code_comma,
      mgt_rxlock => xaui_sys3_mgt_rxlock,
      mgt_rxbufferr => xaui_sys3_mgt_rxbufferr,
      mgt_loopback => xaui_sys3_mgt_loopback,
      mgt_syncok => xaui_sys3_mgt_syncok,
      mgt_en_chan_sync => xaui_sys3_mgt_en_chan_sync,
      mgt_powerdown => xaui_sys3_mgt_powerdown,
      mgt_rx_reset => xaui_sys3_mgt_rx_reset,
      mgt_tx_reset => xaui_sys3_mgt_tx_reset,
      xgmii_txd => xgmii3_xgmii_txd,
      xgmii_txc => xgmii3_xgmii_txc,
      xgmii_rxd => xgmii3_xgmii_rxd,
      xgmii_rxc => xgmii3_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii3_xaui_status
    );

  roachf_2048ch_ADCs_quadc0 : roachf_2048ch_adcs_quadc0_wrapper
    port map (
      adc0_clk_in_p => quadc0_adc0_clk_in_p,
      adc0_clk_in_n => quadc0_adc0_clk_in_n,
      adc1_clk_in_p => quadc0_adc1_clk_in_p,
      adc1_clk_in_n => quadc0_adc1_clk_in_n,
      adc2_clk_in_p => quadc0_adc2_clk_in_p,
      adc2_clk_in_n => quadc0_adc2_clk_in_n,
      adc3_clk_in_p => quadc0_adc3_clk_in_p,
      adc3_clk_in_n => quadc0_adc3_clk_in_n,
      adc0_data_in_p => quadc0_adc0_data_in_p,
      adc0_data_in_n => quadc0_adc0_data_in_n,
      adc1_data_in_p => quadc0_adc1_data_in_p,
      adc1_data_in_n => quadc0_adc1_data_in_n,
      adc2_data_in_p => quadc0_adc2_data_in_p,
      adc2_data_in_n => quadc0_adc2_data_in_n,
      adc3_data_in_p => quadc0_adc3_data_in_p,
      adc3_data_in_n => quadc0_adc3_data_in_n,
      sync_in_p => quadc0_sync_in_p,
      sync_in_n => quadc0_sync_in_n,
      user_clk => arb_clk,
      dcm_reset => net_gnd0,
      reset => net_gnd0,
      adc0_clk => open,
      adc1_clk => open,
      adc2_clk => open,
      adc3_clk => open,
      adc0_clk90 => open,
      adc0_data => roachf_2048ch_ADCs_quadc0_adc0_data,
      adc1_data => roachf_2048ch_ADCs_quadc0_adc1_data,
      adc2_data => roachf_2048ch_ADCs_quadc0_adc2_data,
      adc3_data => roachf_2048ch_ADCs_quadc0_adc3_data,
      valid => roachf_2048ch_ADCs_quadc0_valid,
      sync => roachf_2048ch_ADCs_quadc0_sync
    );

  roachf_2048ch_ADCs_quadc1 : roachf_2048ch_adcs_quadc1_wrapper
    port map (
      adc0_clk_in_p => quadc1_adc0_clk_in_p,
      adc0_clk_in_n => quadc1_adc0_clk_in_n,
      adc1_clk_in_p => quadc1_adc1_clk_in_p,
      adc1_clk_in_n => quadc1_adc1_clk_in_n,
      adc2_clk_in_p => quadc1_adc2_clk_in_p,
      adc2_clk_in_n => quadc1_adc2_clk_in_n,
      adc3_clk_in_p => quadc1_adc3_clk_in_p,
      adc3_clk_in_n => quadc1_adc3_clk_in_n,
      adc0_data_in_p => quadc1_adc0_data_in_p,
      adc0_data_in_n => quadc1_adc0_data_in_n,
      adc1_data_in_p => quadc1_adc1_data_in_p,
      adc1_data_in_n => quadc1_adc1_data_in_n,
      adc2_data_in_p => quadc1_adc2_data_in_p,
      adc2_data_in_n => quadc1_adc2_data_in_n,
      adc3_data_in_p => quadc1_adc3_data_in_p,
      adc3_data_in_n => quadc1_adc3_data_in_n,
      sync_in_p => quadc1_sync_in_p,
      sync_in_n => quadc1_sync_in_n,
      user_clk => arb_clk,
      dcm_reset => net_gnd0,
      reset => net_gnd0,
      adc0_clk => open,
      adc1_clk => open,
      adc2_clk => open,
      adc3_clk => open,
      adc0_clk90 => open,
      adc0_data => roachf_2048ch_ADCs_quadc1_adc0_data,
      adc1_data => roachf_2048ch_ADCs_quadc1_adc1_data,
      adc2_data => roachf_2048ch_ADCs_quadc1_adc2_data,
      adc3_data => roachf_2048ch_ADCs_quadc1_adc3_data,
      valid => roachf_2048ch_ADCs_quadc1_valid,
      sync => roachf_2048ch_ADCs_quadc1_sync
    );

  roachf_2048ch_LEDs_led1_arm : roachf_2048ch_leds_led1_arm_wrapper
    port map (
      gateway => roachf_2048ch_LEDs_led1_arm_gateway(0 to 0),
      io_pad => roachf_2048ch_LEDs_led1_arm_ext(0 to 0),
      clk => arb_clk,
      clk90 => arb_clk90
    );

  roachf_2048ch_LEDs_led2_sync : roachf_2048ch_leds_led2_sync_wrapper
    port map (
      gateway => roachf_2048ch_LEDs_led2_sync_gateway(0 to 0),
      io_pad => roachf_2048ch_LEDs_led2_sync_ext(0 to 0),
      clk => arb_clk,
      clk90 => arb_clk90
    );

  roachf_2048ch_LEDs_led4_eq_clip : roachf_2048ch_leds_led4_eq_clip_wrapper
    port map (
      gateway => roachf_2048ch_LEDs_led4_eq_clip_gateway(0 to 0),
      io_pad => roachf_2048ch_LEDs_led4_eq_clip_ext(0 to 0),
      clk => arb_clk,
      clk90 => arb_clk90
    );

  roachf_2048ch_LEDs_led5_adc_clip : roachf_2048ch_leds_led5_adc_clip_wrapper
    port map (
      gateway => roachf_2048ch_LEDs_led5_adc_clip_gateway(0 to 0),
      io_pad => roachf_2048ch_LEDs_led5_adc_clip_ext(0 to 0),
      clk => arb_clk,
      clk90 => arb_clk90
    );

  roachf_2048ch_Loopback_loop_cnt0 : roachf_2048ch_loopback_loop_cnt0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(64 to 95),
      Sl_errAck => opb0_Sl_errAck(2),
      Sl_retry => opb0_Sl_retry(2),
      Sl_toutSup => opb0_Sl_toutSup(2),
      Sl_xferAck => opb0_Sl_xferAck(2),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_Loopback_loop_cnt0_user_data_in,
      user_clk => arb_clk
    );

  roachf_2048ch_Loopback_loop_err_cnt0 : roachf_2048ch_loopback_loop_err_cnt0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(96 to 127),
      Sl_errAck => opb0_Sl_errAck(3),
      Sl_retry => opb0_Sl_retry(3),
      Sl_toutSup => opb0_Sl_toutSup(3),
      Sl_xferAck => opb0_Sl_xferAck(3),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_Loopback_loop_err_cnt0_user_data_in,
      user_clk => arb_clk
    );

  roachf_2048ch_Loopback_loopback_mux0_mcnt : roachf_2048ch_loopback_loopback_mux0_mcnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(128 to 159),
      Sl_errAck => opb0_Sl_errAck(4),
      Sl_retry => opb0_Sl_retry(4),
      Sl_toutSup => opb0_Sl_toutSup(4),
      Sl_xferAck => opb0_Sl_xferAck(4),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_Loopback_loopback_mux0_mcnt_user_data_in,
      user_clk => arb_clk
    );

  roachf_2048ch_Loopback_statii : roachf_2048ch_loopback_statii_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(160 to 191),
      Sl_errAck => opb0_Sl_errAck(5),
      Sl_retry => opb0_Sl_retry(5),
      Sl_toutSup => opb0_Sl_toutSup(5),
      Sl_xferAck => opb0_Sl_xferAck(5),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_Loopback_statii_user_data_in,
      user_clk => arb_clk
    );

  roachf_2048ch_Switch_gbe_sw : roachf_2048ch_switch_gbe_sw_wrapper
    port map (
      clk => arb_clk,
      rst => roachf_2048ch_Switch_gbe_sw_rst,
      tx_valid => roachf_2048ch_Switch_gbe_sw_tx_valid,
      tx_afull => roachf_2048ch_Switch_gbe_sw_tx_afull,
      tx_overflow => roachf_2048ch_Switch_gbe_sw_tx_overflow,
      tx_end_of_frame => roachf_2048ch_Switch_gbe_sw_tx_end_of_frame,
      tx_data => roachf_2048ch_Switch_gbe_sw_tx_data,
      tx_dest_ip => roachf_2048ch_Switch_gbe_sw_tx_dest_ip,
      tx_dest_port => roachf_2048ch_Switch_gbe_sw_tx_dest_port,
      rx_valid => roachf_2048ch_Switch_gbe_sw_rx_valid,
      rx_end_of_frame => roachf_2048ch_Switch_gbe_sw_rx_end_of_frame,
      rx_data => roachf_2048ch_Switch_gbe_sw_rx_data,
      rx_source_ip => roachf_2048ch_Switch_gbe_sw_rx_source_ip,
      rx_source_port => roachf_2048ch_Switch_gbe_sw_rx_source_port,
      rx_bad_frame => roachf_2048ch_Switch_gbe_sw_rx_bad_frame,
      rx_overrun => roachf_2048ch_Switch_gbe_sw_rx_overrun,
      rx_overrun_ack => roachf_2048ch_Switch_gbe_sw_rx_overrun_ack,
      rx_ack => roachf_2048ch_Switch_gbe_sw_rx_ack,
      led_up => roachf_2048ch_Switch_gbe_sw_led_up,
      led_rx => roachf_2048ch_Switch_gbe_sw_led_rx,
      led_tx => roachf_2048ch_Switch_gbe_sw_led_tx,
      xaui_clk => mgt_clk_0,
      xgmii_txd => xgmii0_xgmii_txd,
      xgmii_txc => xgmii0_xgmii_txc,
      xgmii_rxd => xgmii0_xgmii_rxd,
      xgmii_rxc => xgmii0_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii0_xaui_status,
      mgt_rxeqmix => xaui_conf0_mgt_rxeqmix,
      mgt_rxeqpole => xaui_conf0_mgt_rxeqpole,
      mgt_txpreemphasis => xaui_conf0_mgt_txpreemphasis,
      mgt_txdiffctrl => xaui_conf0_mgt_txdiffctrl,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(192 to 223),
      Sl_errAck => opb0_Sl_errAck(6),
      Sl_retry => opb0_Sl_retry(6),
      Sl_toutSup => opb0_Sl_toutSup(6),
      Sl_xferAck => opb0_Sl_xferAck(6),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr
    );

  xaui_phy_0 : xaui_phy_0_wrapper
    port map (
      reset => sys_reset,
      mgt_clk => mgt_clk_0,
      mgt_txdata => xaui_sys0_mgt_tx_data,
      mgt_txcharisk => xaui_sys0_mgt_tx_charisk,
      mgt_rxdata => xaui_sys0_mgt_rx_data,
      mgt_rxcharisk => xaui_sys0_mgt_rx_charisk,
      mgt_enable_align => xaui_sys0_mgt_enable_align,
      mgt_code_valid => xaui_sys0_mgt_code_valid,
      mgt_code_comma => xaui_sys0_mgt_code_comma,
      mgt_rxlock => xaui_sys0_mgt_rxlock,
      mgt_rxbufferr => xaui_sys0_mgt_rxbufferr,
      mgt_loopback => xaui_sys0_mgt_loopback,
      mgt_syncok => xaui_sys0_mgt_syncok,
      mgt_en_chan_sync => xaui_sys0_mgt_en_chan_sync,
      mgt_powerdown => xaui_sys0_mgt_powerdown,
      mgt_rx_reset => xaui_sys0_mgt_rx_reset,
      mgt_tx_reset => xaui_sys0_mgt_tx_reset,
      xgmii_txd => xgmii0_xgmii_txd,
      xgmii_txc => xgmii0_xgmii_txc,
      xgmii_rxd => xgmii0_xgmii_rxd,
      xgmii_rxc => xgmii0_xgmii_rxc,
      xaui_reset => net_gnd0,
      xaui_status => xgmii0_xaui_status
    );

  roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramif : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramif_wrapper
    port map (
      bram_rst => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Rst,
      bram_clk => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Clk,
      bram_en => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_EN,
      bram_wen => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_WEN,
      bram_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Addr,
      bram_din => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Din,
      bram_dout => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Dout,
      clk_in => arb_clk,
      addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr,
      data_in => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_in,
      data_out => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_data_out,
      we => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_we
    );

  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramblk : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_ramblk_wrapper
    port map (
      BRAM_Rst_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(224 to 255),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(7),
      sln_errack => opb0_Sl_errAck(7),
      sln_toutsup => opb0_Sl_toutSup(7),
      sln_retry => opb0_Sl_retry(7),
      bram_rst => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Rst,
      bram_clk => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Clk,
      bram_en => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_EN,
      bram_wen => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_WEN,
      bram_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Addr,
      bram_din => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Din,
      bram_dout => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ramblk_portb_BRAM_Dout
    );

  roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramif : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramif_wrapper
    port map (
      bram_rst => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Rst,
      bram_clk => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Clk,
      bram_en => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_EN,
      bram_wen => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_WEN,
      bram_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Addr,
      bram_din => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Din,
      bram_dout => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Dout,
      clk_in => arb_clk,
      addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr,
      data_in => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_in,
      data_out => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_data_out,
      we => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_we
    );

  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramblk : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_ramblk_wrapper
    port map (
      BRAM_Rst_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Rst,
      BRAM_Clk_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Clk,
      BRAM_EN_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_EN,
      BRAM_WEN_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_WEN,
      BRAM_Addr_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Addr,
      BRAM_Din_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Din,
      BRAM_Dout_A => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_porta_BRAM_Dout,
      BRAM_Rst_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Dout
    );

  roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1 : roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(256 to 287),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(8),
      sln_errack => opb0_Sl_errAck(8),
      sln_toutsup => opb0_Sl_toutSup(8),
      sln_retry => opb0_Sl_retry(8),
      bram_rst => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Rst,
      bram_clk => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Clk,
      bram_en => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_EN,
      bram_wen => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_WEN,
      bram_addr => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Addr,
      bram_din => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Din,
      bram_dout => roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ramblk_portb_BRAM_Dout
    );

  roachf_2048ch_control_ctl_regs_ant_base : roachf_2048ch_control_ctl_regs_ant_base_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(288 to 319),
      Sl_errAck => opb0_Sl_errAck(9),
      Sl_retry => opb0_Sl_retry(9),
      Sl_toutSup => opb0_Sl_toutSup(9),
      Sl_xferAck => opb0_Sl_xferAck(9),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_ant_base_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_feng_ctl : roachf_2048ch_control_ctl_regs_feng_ctl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(320 to 351),
      Sl_errAck => opb0_Sl_errAck(10),
      Sl_retry => opb0_Sl_retry(10),
      Sl_toutSup => opb0_Sl_toutSup(10),
      Sl_xferAck => opb0_Sl_xferAck(10),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_gbe_sw_port : roachf_2048ch_control_ctl_regs_gbe_sw_port_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(352 to 383),
      Sl_errAck => opb0_Sl_errAck(11),
      Sl_retry => opb0_Sl_retry(11),
      Sl_toutSup => opb0_Sl_toutSup(11),
      Sl_xferAck => opb0_Sl_xferAck(11),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_gpu_ip : roachf_2048ch_control_ctl_regs_gpu_ip_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(384 to 415),
      Sl_errAck => opb0_Sl_errAck(12),
      Sl_retry => opb0_Sl_retry(12),
      Sl_toutSup => opb0_Sl_toutSup(12),
      Sl_xferAck => opb0_Sl_xferAck(12),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_gpu_port : roachf_2048ch_control_ctl_regs_gpu_port_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(416 to 447),
      Sl_errAck => opb0_Sl_errAck(13),
      Sl_retry => opb0_Sl_retry(13),
      Sl_toutSup => opb0_Sl_toutSup(13),
      Sl_xferAck => opb0_Sl_xferAck(13),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_gpu_port_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_ip_base : roachf_2048ch_control_ctl_regs_ip_base_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(448 to 479),
      Sl_errAck => opb0_Sl_errAck(14),
      Sl_retry => opb0_Sl_retry(14),
      Sl_toutSup => opb0_Sl_toutSup(14),
      Sl_xferAck => opb0_Sl_xferAck(14),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_ip_base_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_ctl_regs_my_ip : roachf_2048ch_control_ctl_regs_my_ip_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(480 to 511),
      Sl_errAck => opb0_Sl_errAck(15),
      Sl_retry => opb0_Sl_retry(15),
      Sl_toutSup => opb0_Sl_toutSup(15),
      Sl_xferAck => opb0_Sl_xferAck(15),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_ctl_regs_my_ip_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_delay_delay : roachf_2048ch_control_delay_delay_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(512 to 543),
      Sl_errAck => opb0_Sl_errAck(16),
      Sl_retry => opb0_Sl_retry(16),
      Sl_toutSup => opb0_Sl_toutSup(16),
      Sl_xferAck => opb0_Sl_xferAck(16),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_delay_delay_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_eq_coefs_eq0_ctl : roachf_2048ch_control_eq_coefs_eq0_ctl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(544 to 575),
      Sl_errAck => opb0_Sl_errAck(17),
      Sl_retry => opb0_Sl_retry(17),
      Sl_toutSup => opb0_Sl_toutSup(17),
      Sl_xferAck => opb0_Sl_xferAck(17),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_eq_coefs_eq1_ctl : roachf_2048ch_control_eq_coefs_eq1_ctl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(576 to 607),
      Sl_errAck => opb0_Sl_errAck(18),
      Sl_retry => opb0_Sl_retry(18),
      Sl_toutSup => opb0_Sl_toutSup(18),
      Sl_xferAck => opb0_Sl_xferAck(18),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_eq_coefs_eq2_ctl : roachf_2048ch_control_eq_coefs_eq2_ctl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(608 to 639),
      Sl_errAck => opb0_Sl_errAck(19),
      Sl_retry => opb0_Sl_retry(19),
      Sl_toutSup => opb0_Sl_toutSup(19),
      Sl_xferAck => opb0_Sl_xferAck(19),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_eq_coefs_eq3_ctl : roachf_2048ch_control_eq_coefs_eq3_ctl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(640 to 671),
      Sl_errAck => opb0_Sl_errAck(20),
      Sl_retry => opb0_Sl_retry(20),
      Sl_toutSup => opb0_Sl_toutSup(20),
      Sl_xferAck => opb0_Sl_xferAck(20),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_insel_insel : roachf_2048ch_control_insel_insel_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(672 to 703),
      Sl_errAck => opb0_Sl_errAck(21),
      Sl_retry => opb0_Sl_retry(21),
      Sl_toutSup => opb0_Sl_toutSup(21),
      Sl_xferAck => opb0_Sl_xferAck(21),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_insel_insel_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_control_seed_seed_data : roachf_2048ch_control_seed_seed_data_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(704 to 735),
      Sl_errAck => opb0_Sl_errAck(22),
      Sl_retry => opb0_Sl_retry(22),
      Sl_toutSup => opb0_Sl_toutSup(22),
      Sl_xferAck => opb0_Sl_xferAck(22),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roachf_2048ch_control_seed_seed_data_user_data_out,
      user_clk => arb_clk
    );

  roachf_2048ch_status_gbe_gpu : roachf_2048ch_status_gbe_gpu_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(736 to 767),
      Sl_errAck => opb0_Sl_errAck(23),
      Sl_retry => opb0_Sl_retry(23),
      Sl_toutSup => opb0_Sl_toutSup(23),
      Sl_xferAck => opb0_Sl_xferAck(23),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_status_gbe_gpu_user_data_in,
      user_clk => arb_clk
    );

  roachf_2048ch_status_gbe_sw : roachf_2048ch_status_gbe_sw_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(768 to 799),
      Sl_errAck => opb0_Sl_errAck(24),
      Sl_retry => opb0_Sl_retry(24),
      Sl_toutSup => opb0_Sl_toutSup(24),
      Sl_xferAck => opb0_Sl_xferAck(24),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roachf_2048ch_status_gbe_sw_user_data_in,
      user_clk => arb_clk
    );

end architecture STRUCTURE;

