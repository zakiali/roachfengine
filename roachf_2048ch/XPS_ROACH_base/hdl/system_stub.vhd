-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
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
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
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
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
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
      epb_data => epb_data,
      epb_addr => epb_addr,
      epb_addr_gp => epb_addr_gp,
      epb_cs_n => epb_cs_n,
      epb_be_n => epb_be_n,
      epb_r_w_n => epb_r_w_n,
      epb_oe_n => epb_oe_n,
      epb_rdy => epb_rdy,
      ppc_irq_n => ppc_irq_n,
      mgt_ref_clk_top_n => mgt_ref_clk_top_n,
      mgt_ref_clk_top_p => mgt_ref_clk_top_p,
      mgt_ref_clk_bottom_n => mgt_ref_clk_bottom_n,
      mgt_ref_clk_bottom_p => mgt_ref_clk_bottom_p,
      mgt_rx_top_1_n => mgt_rx_top_1_n,
      mgt_rx_top_1_p => mgt_rx_top_1_p,
      mgt_tx_top_1_n => mgt_tx_top_1_n,
      mgt_tx_top_1_p => mgt_tx_top_1_p,
      mgt_rx_top_0_n => mgt_rx_top_0_n,
      mgt_rx_top_0_p => mgt_rx_top_0_p,
      mgt_tx_top_0_n => mgt_tx_top_0_n,
      mgt_tx_top_0_p => mgt_tx_top_0_p,
      mgt_rx_bottom_1_n => mgt_rx_bottom_1_n,
      mgt_rx_bottom_1_p => mgt_rx_bottom_1_p,
      mgt_tx_bottom_1_n => mgt_tx_bottom_1_n,
      mgt_tx_bottom_1_p => mgt_tx_bottom_1_p,
      mgt_rx_bottom_0_n => mgt_rx_bottom_0_n,
      mgt_rx_bottom_0_p => mgt_rx_bottom_0_p,
      mgt_tx_bottom_0_n => mgt_tx_bottom_0_n,
      mgt_tx_bottom_0_p => mgt_tx_bottom_0_p,
      quadc0_adc0_clk_in_p => quadc0_adc0_clk_in_p,
      quadc0_adc1_clk_in_p => quadc0_adc1_clk_in_p,
      quadc0_adc2_clk_in_p => quadc0_adc2_clk_in_p,
      quadc0_adc3_clk_in_p => quadc0_adc3_clk_in_p,
      quadc0_adc0_data_in_p => quadc0_adc0_data_in_p,
      quadc0_adc1_data_in_p => quadc0_adc1_data_in_p,
      quadc0_adc2_data_in_p => quadc0_adc2_data_in_p,
      quadc0_adc3_data_in_p => quadc0_adc3_data_in_p,
      quadc0_adc0_clk_in_n => quadc0_adc0_clk_in_n,
      quadc0_adc1_clk_in_n => quadc0_adc1_clk_in_n,
      quadc0_adc2_clk_in_n => quadc0_adc2_clk_in_n,
      quadc0_adc3_clk_in_n => quadc0_adc3_clk_in_n,
      quadc0_adc0_data_in_n => quadc0_adc0_data_in_n,
      quadc0_adc1_data_in_n => quadc0_adc1_data_in_n,
      quadc0_adc2_data_in_n => quadc0_adc2_data_in_n,
      quadc0_adc3_data_in_n => quadc0_adc3_data_in_n,
      quadc0_sync_in_p => quadc0_sync_in_p,
      quadc0_sync_in_n => quadc0_sync_in_n,
      quadc1_adc0_clk_in_p => quadc1_adc0_clk_in_p,
      quadc1_adc1_clk_in_p => quadc1_adc1_clk_in_p,
      quadc1_adc2_clk_in_p => quadc1_adc2_clk_in_p,
      quadc1_adc3_clk_in_p => quadc1_adc3_clk_in_p,
      quadc1_adc0_data_in_p => quadc1_adc0_data_in_p,
      quadc1_adc1_data_in_p => quadc1_adc1_data_in_p,
      quadc1_adc2_data_in_p => quadc1_adc2_data_in_p,
      quadc1_adc3_data_in_p => quadc1_adc3_data_in_p,
      quadc1_adc0_clk_in_n => quadc1_adc0_clk_in_n,
      quadc1_adc1_clk_in_n => quadc1_adc1_clk_in_n,
      quadc1_adc2_clk_in_n => quadc1_adc2_clk_in_n,
      quadc1_adc3_clk_in_n => quadc1_adc3_clk_in_n,
      quadc1_adc0_data_in_n => quadc1_adc0_data_in_n,
      quadc1_adc1_data_in_n => quadc1_adc1_data_in_n,
      quadc1_adc2_data_in_n => quadc1_adc2_data_in_n,
      quadc1_adc3_data_in_n => quadc1_adc3_data_in_n,
      quadc1_sync_in_p => quadc1_sync_in_p,
      quadc1_sync_in_n => quadc1_sync_in_n,
      roachf_2048ch_LEDs_led1_arm_ext => roachf_2048ch_LEDs_led1_arm_ext(0 to 0),
      roachf_2048ch_LEDs_led2_sync_ext => roachf_2048ch_LEDs_led2_sync_ext(0 to 0),
      roachf_2048ch_LEDs_led4_eq_clip_ext => roachf_2048ch_LEDs_led4_eq_clip_ext(0 to 0),
      roachf_2048ch_LEDs_led5_adc_clip_ext => roachf_2048ch_LEDs_led5_adc_clip_ext(0 to 0)
    );

end architecture STRUCTURE;

