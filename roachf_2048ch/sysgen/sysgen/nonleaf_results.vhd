library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/2GPU/gbe_gpu"

entity gbe_gpu_entity_812522528c is
  port (
    rst: in std_logic; 
    rx_ack: in std_logic; 
    rx_overrun_ack: in std_logic; 
    tx_data: in std_logic_vector(63 downto 0); 
    tx_dest_ip: in std_logic_vector(31 downto 0); 
    tx_dest_port: in std_logic_vector(31 downto 0); 
    tx_end_of_frame: in std_logic; 
    tx_valid: in std_logic; 
    convert_rst_x0: out std_logic; 
    convert_rx_ack_x0: out std_logic; 
    convert_rx_overrun_ack_x0: out std_logic; 
    convert_tx_data_x0: out std_logic_vector(63 downto 0); 
    convert_tx_dest_ip_x0: out std_logic_vector(31 downto 0); 
    convert_tx_end_of_frame_x0: out std_logic; 
    convert_tx_port_x0: out std_logic_vector(15 downto 0); 
    convert_tx_valid_x0: out std_logic
  );
end gbe_gpu_entity_812522528c;

architecture structural of gbe_gpu_entity_812522528c is
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_rst_dout_net_x0: std_logic;
  signal convert_rx_ack_dout_net_x0: std_logic;
  signal convert_rx_overrun_ack_dout_net_x0: std_logic;
  signal convert_tx_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x0: std_logic;
  signal convert_tx_port_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x0: std_logic;
  signal delay1_q_net_x0: std_logic_vector(63 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal delay6_q_net_x0: std_logic_vector(31 downto 0);
  signal delay7_q_net_x0: std_logic_vector(31 downto 0);
  signal logical2_y_net_x0: std_logic;
  signal slice10_y_net_x0: std_logic;

begin
  slice10_y_net_x0 <= rst;
  constant_op_net_x0 <= rx_ack;
  constant1_op_net_x0 <= rx_overrun_ack;
  delay1_q_net_x0 <= tx_data;
  delay6_q_net_x0 <= tx_dest_ip;
  delay7_q_net_x0 <= tx_dest_port;
  delay3_q_net_x0 <= tx_end_of_frame;
  logical2_y_net_x0 <= tx_valid;
  convert_rst_x0 <= convert_rst_dout_net_x0;
  convert_rx_ack_x0 <= convert_rx_ack_dout_net_x0;
  convert_rx_overrun_ack_x0 <= convert_rx_overrun_ack_dout_net_x0;
  convert_tx_data_x0 <= convert_tx_data_dout_net_x0;
  convert_tx_dest_ip_x0 <= convert_tx_dest_ip_dout_net_x0;
  convert_tx_end_of_frame_x0 <= convert_tx_end_of_frame_dout_net_x0;
  convert_tx_port_x0 <= convert_tx_port_dout_net_x0;
  convert_tx_valid_x0 <= convert_tx_valid_dout_net_x0;

  convert_rst: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => slice10_y_net_x0,
      dout(0) => convert_rst_dout_net_x0
    );

  convert_rx_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => constant_op_net_x0,
      dout(0) => convert_rx_ack_dout_net_x0
    );

  convert_rx_overrun_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => constant1_op_net_x0,
      dout(0) => convert_rx_overrun_ack_dout_net_x0
    );

  convert_tx_data: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => delay1_q_net_x0,
      dout => convert_tx_data_dout_net_x0
    );

  convert_tx_dest_ip: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => delay6_q_net_x0,
      dout => convert_tx_dest_ip_dout_net_x0
    );

  convert_tx_end_of_frame: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay3_q_net_x0,
      dout(0) => convert_tx_end_of_frame_dout_net_x0
    );

  convert_tx_port: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => delay7_q_net_x0,
      dout => convert_tx_port_dout_net_x0
    );

  convert_tx_valid: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => logical2_y_net_x0,
      dout(0) => convert_tx_valid_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/2GPU/pack-it"

entity pack_it_entity_5b269f0234 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data: in std_logic_vector(63 downto 0); 
    eof: in std_logic; 
    flag: in std_logic; 
    valid: in std_logic; 
    dataout: out std_logic_vector(63 downto 0); 
    eof_out: out std_logic; 
    valid_out: out std_logic
  );
end pack_it_entity_5b269f0234;

architecture structural of pack_it_entity_5b269f0234 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(65 downto 0);
  signal convert20_dout_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal counter_op_net: std_logic;
  signal delay1_q_net_x1: std_logic_vector(63 downto 0);
  signal delay2_q_net: std_logic;
  signal delay3_q_net_x1: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal fifo_af_net: std_logic;
  signal fifo_dout_net: std_logic_vector(65 downto 0);
  signal fifo_empty_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic_vector(63 downto 0);
  signal register5_q_net_x0: std_logic;
  signal slice1_y_net: std_logic_vector(63 downto 0);
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice_y_net: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  mux_y_net_x0 <= data;
  convert20_dout_net_x0 <= eof;
  register5_q_net_x0 <= flag;
  convert_dout_net_x0 <= valid;
  dataout <= delay1_q_net_x1;
  eof_out <= delay3_q_net_x1;
  valid_out <= logical2_y_net_x1;

  concat: entity work.concat_54b15613a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert20_dout_net_x0,
      in1(0) => convert_dout_net_x0,
      in2 => mux_y_net_x0,
      y => concat_y_net
    );

  counter: entity work.counter_8ec3f4ab23
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      op(0) => counter_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 64
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => slice1_y_net,
      en => '1',
      q => delay1_q_net_x1
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => slice2_y_net,
      en => '1',
      q(0) => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => slice3_y_net,
      en => '1',
      q(0) => delay3_q_net_x1
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => logical_y_net,
      en => '1',
      q(0) => delay4_q_net
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => delay4_q_net,
      en => '1',
      q(0) => delay5_q_net
    );

  fifo: entity work.xlfifogen
    generic map (
      core_name0 => "fifo_fg53_e01c93fed44dafc4",
      data_count_width => 12,
      data_width => 66,
      has_ae => 1,
      has_af => 1,
      percent_full_width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      din => concat_y_net,
      en => '1',
      re => logical_y_net,
      re_ce => ce_1_sg_x0,
      rst => '0',
      we => logical1_y_net,
      we_ce => ce_1_sg_x0,
      af => fifo_af_net,
      dout => fifo_dout_net,
      empty => fifo_empty_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => fifo_empty_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => register5_q_net_x0,
      op(0) => inverter1_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => fifo_af_net,
      op(0) => inverter2_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net_x0,
      d1(0) => inverter1_op_net,
      d2(0) => inverter2_op_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0(0) => delay2_q_net,
      d1(0) => delay5_q_net,
      y(0) => logical2_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => counter_op_net,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 66,
      y_width => 64
    )
    port map (
      x => fifo_dout_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 66,
      y_width => 1
    )
    port map (
      x => fifo_dout_net,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 65,
      new_msb => 65,
      x_width => 66,
      y_width => 1
    )
    port map (
      x => fifo_dout_net,
      y(0) => slice3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/2GPU"

entity x2gpu_entity_3a72aaf025 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbe_gpu_rst: in std_logic; 
    gpu_ip: in std_logic_vector(31 downto 0); 
    gpu_port: in std_logic_vector(31 downto 0); 
    lb_mux_data: in std_logic_vector(63 downto 0); 
    lb_mux_eof: in std_logic; 
    lb_mux_flag: in std_logic; 
    lb_mux_valid: in std_logic; 
    gbe_gpu: out std_logic; 
    gbe_gpu_x0: out std_logic; 
    gbe_gpu_x1: out std_logic; 
    gbe_gpu_x2: out std_logic_vector(63 downto 0); 
    gbe_gpu_x3: out std_logic_vector(31 downto 0); 
    gbe_gpu_x4: out std_logic; 
    gbe_gpu_x5: out std_logic_vector(15 downto 0); 
    gbe_gpu_x6: out std_logic
  );
end x2gpu_entity_3a72aaf025;

architecture structural of x2gpu_entity_3a72aaf025 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert20_dout_net_x1: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal convert_rst_dout_net_x1: std_logic;
  signal convert_rx_ack_dout_net_x1: std_logic;
  signal convert_rx_overrun_ack_dout_net_x1: std_logic;
  signal convert_tx_data_dout_net_x1: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x1: std_logic;
  signal convert_tx_port_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x1: std_logic;
  signal delay1_q_net_x1: std_logic_vector(63 downto 0);
  signal delay3_q_net_x1: std_logic;
  signal delay6_q_net_x1: std_logic_vector(31 downto 0);
  signal delay7_q_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x1: std_logic;
  signal mux_y_net_x1: std_logic_vector(63 downto 0);
  signal register5_q_net_x1: std_logic;
  signal slice10_y_net_x1: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  slice10_y_net_x1 <= gbe_gpu_rst;
  delay6_q_net_x1 <= gpu_ip;
  delay7_q_net_x1 <= gpu_port;
  mux_y_net_x1 <= lb_mux_data;
  convert20_dout_net_x1 <= lb_mux_eof;
  register5_q_net_x1 <= lb_mux_flag;
  convert_dout_net_x1 <= lb_mux_valid;
  gbe_gpu <= convert_rst_dout_net_x1;
  gbe_gpu_x0 <= convert_rx_ack_dout_net_x1;
  gbe_gpu_x1 <= convert_rx_overrun_ack_dout_net_x1;
  gbe_gpu_x2 <= convert_tx_data_dout_net_x1;
  gbe_gpu_x3 <= convert_tx_dest_ip_dout_net_x1;
  gbe_gpu_x4 <= convert_tx_end_of_frame_dout_net_x1;
  gbe_gpu_x5 <= convert_tx_port_dout_net_x1;
  gbe_gpu_x6 <= convert_tx_valid_dout_net_x1;

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  gbe_gpu_812522528c: entity work.gbe_gpu_entity_812522528c
    port map (
      rst => slice10_y_net_x1,
      rx_ack => constant_op_net_x0,
      rx_overrun_ack => constant1_op_net_x0,
      tx_data => delay1_q_net_x1,
      tx_dest_ip => delay6_q_net_x1,
      tx_dest_port => delay7_q_net_x1,
      tx_end_of_frame => delay3_q_net_x1,
      tx_valid => logical2_y_net_x1,
      convert_rst_x0 => convert_rst_dout_net_x1,
      convert_rx_ack_x0 => convert_rx_ack_dout_net_x1,
      convert_rx_overrun_ack_x0 => convert_rx_overrun_ack_dout_net_x1,
      convert_tx_data_x0 => convert_tx_data_dout_net_x1,
      convert_tx_dest_ip_x0 => convert_tx_dest_ip_dout_net_x1,
      convert_tx_end_of_frame_x0 => convert_tx_end_of_frame_dout_net_x1,
      convert_tx_port_x0 => convert_tx_port_dout_net_x1,
      convert_tx_valid_x0 => convert_tx_valid_dout_net_x1
    );

  pack_it_5b269f0234: entity work.pack_it_entity_5b269f0234
    port map (
      ce_1 => ce_1_sg_x1,
      clk_1 => clk_1_sg_x1,
      data => mux_y_net_x1,
      eof => convert20_dout_net_x1,
      flag => register5_q_net_x1,
      valid => convert_dout_net_x1,
      dataout => delay1_q_net_x1,
      eof_out => delay3_q_net_x1,
      valid_out => logical2_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/ADC_monitor/adc_clip_detect0"

entity adc_clip_detect0_entity_a311d87c68 is
  port (
    adc_in: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    clip: out std_logic
  );
end adc_clip_detect0_entity_a311d87c68;

architecture structural of adc_clip_detect0_entity_a311d87c68 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant_op_net: std_logic_vector(16 downto 0);
  signal mult_p_net: std_logic_vector(15 downto 0);
  signal relational_op_net_x0: std_logic;
  signal roachf_2048ch_adcs_quadc0_adc0_data_net_x0: std_logic_vector(7 downto 0);

begin
  roachf_2048ch_adcs_quadc0_adc0_data_net_x0 <= adc_in;
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  clip <= relational_op_net_x0;

  constant_x0: entity work.constant_75c298d4bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 7,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 0,
      c_a_width => 8,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 8,
      c_output_width => 16,
      c_type => 0,
      core_name0 => "mlt_11_2_2e9321d80be8bb8a",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => roachf_2048ch_adcs_quadc0_adc0_data_net_x0,
      b => roachf_2048ch_adcs_quadc0_adc0_data_net_x0,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      core_ce => ce_1_sg_x2,
      core_clk => clk_1_sg_x2,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  relational: entity work.relational_93c11c0f86
    port map (
      a => mult_p_net,
      b => constant_op_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      op(0) => relational_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/ADC_monitor"

entity adc_monitor_entity_35caae8101 is
  port (
    adc0: in std_logic_vector(7 downto 0); 
    adc1: in std_logic_vector(7 downto 0); 
    adc2: in std_logic_vector(7 downto 0); 
    adc3: in std_logic_vector(7 downto 0); 
    adc4: in std_logic_vector(7 downto 0); 
    adc5: in std_logic_vector(7 downto 0); 
    adc6: in std_logic_vector(7 downto 0); 
    adc7: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    adc_clip: out std_logic
  );
end adc_monitor_entity_35caae8101;

architecture structural of adc_monitor_entity_35caae8101 is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x2: std_logic;
  signal relational_op_net_x3: std_logic;
  signal relational_op_net_x4: std_logic;
  signal relational_op_net_x5: std_logic;
  signal relational_op_net_x6: std_logic;
  signal relational_op_net_x7: std_logic;
  signal roachf_2048ch_adcs_quadc0_adc0_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc1_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc2_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc3_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc0_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc1_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc2_data_net_x1: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc3_data_net_x1: std_logic_vector(7 downto 0);

begin
  roachf_2048ch_adcs_quadc0_adc0_data_net_x1 <= adc0;
  roachf_2048ch_adcs_quadc0_adc1_data_net_x1 <= adc1;
  roachf_2048ch_adcs_quadc0_adc2_data_net_x1 <= adc2;
  roachf_2048ch_adcs_quadc0_adc3_data_net_x1 <= adc3;
  roachf_2048ch_adcs_quadc1_adc0_data_net_x1 <= adc4;
  roachf_2048ch_adcs_quadc1_adc1_data_net_x1 <= adc5;
  roachf_2048ch_adcs_quadc1_adc2_data_net_x1 <= adc6;
  roachf_2048ch_adcs_quadc1_adc3_data_net_x1 <= adc7;
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  adc_clip <= logical1_y_net_x0;

  adc_clip_detect0_a311d87c68: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc0_adc0_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x0
    );

  adc_clip_detect1_57a68c51f3: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc0_adc1_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x1
    );

  adc_clip_detect2_e2b23294fd: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc0_adc2_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x2
    );

  adc_clip_detect3_c46c61ef63: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc0_adc3_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x3
    );

  adc_clip_detect4_c10fb777d1: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc1_adc0_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x4
    );

  adc_clip_detect5_e0089f24d1: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc1_adc1_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x5
    );

  adc_clip_detect6_57609e1b9e: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc1_adc2_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x6
    );

  adc_clip_detect7_2ba197cf7b: entity work.adc_clip_detect0_entity_a311d87c68
    port map (
      adc_in => roachf_2048ch_adcs_quadc1_adc3_data_net_x1,
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      clip => relational_op_net_x7
    );

  logical1: entity work.logical_19a8cd80c8
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d0(0) => relational_op_net_x0,
      d1(0) => relational_op_net_x1,
      d2(0) => relational_op_net_x2,
      d3(0) => relational_op_net_x3,
      d4(0) => relational_op_net_x4,
      d5(0) => relational_op_net_x5,
      d6(0) => relational_op_net_x6,
      d7(0) => relational_op_net_x7,
      y(0) => logical1_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/EQ/eq0/round1"

entity round1_entity_99dae1512b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(35 downto 0); 
    scale: in std_logic_vector(17 downto 0); 
    clip: out std_logic; 
    dout: out std_logic_vector(7 downto 0)
  );
end round1_entity_99dae1512b;

architecture structural of round1_entity_99dae1512b is
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal concat1_y_net: std_logic_vector(1 downto 0);
  signal concat2_y_net: std_logic_vector(1 downto 0);
  signal concat_y_net_x0: std_logic_vector(7 downto 0);
  signal constant1_op_net: std_logic_vector(26 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net: std_logic_vector(3 downto 0);
  signal constant4_op_net: std_logic_vector(26 downto 0);
  signal constant5_op_net: std_logic_vector(26 downto 0);
  signal constant6_op_net: std_logic_vector(3 downto 0);
  signal constant7_op_net: std_logic_vector(3 downto 0);
  signal constant_op_net: std_logic_vector(26 downto 0);
  signal convert2_dout_net: std_logic_vector(3 downto 0);
  signal convert3_dout_net: std_logic_vector(3 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux1_y_net: std_logic_vector(3 downto 0);
  signal mux_y_net: std_logic_vector(3 downto 0);
  signal register1_q_net_x0: std_logic_vector(17 downto 0);
  signal register_q_net_x0: std_logic_vector(35 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(3 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(3 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice4_y_net: std_logic_vector(17 downto 0);
  signal slice5_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  register_q_net_x0 <= din;
  register1_q_net_x0 <= scale;
  clip <= logical1_y_net_x0;
  dout <= concat_y_net_x0;

  concat: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret2_output_port_net,
      in1 => reinterpret3_output_port_net,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational1_op_net,
      in1(0) => relational_op_net,
      y => concat1_y_net
    );

  concat2: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational3_op_net,
      in1(0) => relational2_op_net,
      y => concat2_y_net
    );

  constant1: entity work.constant_3d1b04c74c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a3d619979c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_3ee5f91fcf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_3d1b04c74c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant6: entity work.constant_a3d619979c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net
    );

  constant7: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant_x0: entity work.constant_3ee5f91fcf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 36,
      dout_arith => 2,
      dout_bin_pt => 3,
      dout_width => 4,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => mult_p_net,
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 36,
      dout_arith => 2,
      dout_bin_pt => 3,
      dout_width => 4,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => mult1_p_net,
      dout => convert3_dout_net
    );

  logical1: entity work.logical_127a315f20
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => relational1_op_net,
      d2(0) => relational3_op_net,
      d3(0) => relational2_op_net,
      y(0) => logical1_y_net_x0
    );

  mult: entity work.mult_ce1935c401
    port map (
      a => reinterpret_output_port_net,
      b => reinterpret4_output_port_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_ce1935c401
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret4_output_port_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      p => mult1_p_net
    );

  mux: entity work.mux_9723c3381b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert2_dout_net,
      d1 => constant2_op_net,
      d2 => constant3_op_net,
      sel => concat1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_9723c3381b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert3_dout_net,
      d1 => constant6_op_net,
      d2 => constant7_op_net,
      sel => concat2_y_net,
      y => mux1_y_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice5_y_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_df53fd8fe7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_df53fd8fe7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux1_y_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_9306b5127f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register1_q_net_x0,
      output_port => reinterpret4_output_port_net
    );

  relational: entity work.relational_5fd910f16d
    port map (
      a => mult_p_net,
      b => constant_op_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_ec7072e854
    port map (
      a => mult_p_net,
      b => constant1_op_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_5fd910f16d
    port map (
      a => mult1_p_net,
      b => constant4_op_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_ec7072e854
    port map (
      a => mult1_p_net,
      b => constant5_op_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      op(0) => relational3_op_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => register_q_net_x0,
      y => slice4_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => register_q_net_x0,
      y => slice5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/EQ/eq0"

entity eq0_entity_ddb3a018ef is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(17 downto 0); 
    coeff_addr: in std_logic_vector(5 downto 0); 
    coeff_we: in std_logic; 
    in_x0: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    clip: out std_logic; 
    dout: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end eq0_entity_ddb3a018ef;

architecture structural of eq0_entity_ddb3a018ef is
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal concat_y_net_x1: std_logic_vector(7 downto 0);
  signal constant4_op_net: std_logic_vector(17 downto 0);
  signal constant5_op_net: std_logic;
  signal counter2_op_net: std_logic_vector(11 downto 0);
  signal delay11_q_net: std_logic_vector(35 downto 0);
  signal delay4_q_net_x0: std_logic;
  signal dual_port_ram_douta_net: std_logic_vector(17 downto 0);
  signal fft_bb0_pol02_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_bb0_sync_out_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal register1_q_net_x0: std_logic_vector(17 downto 0);
  signal register1_q_net_x1: std_logic_vector(17 downto 0);
  signal register2_q_net_x0: std_logic_vector(5 downto 0);
  signal register_q_net_x0: std_logic_vector(35 downto 0);
  signal slice_y_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  register1_q_net_x1 <= coeff;
  register2_q_net_x0 <= coeff_addr;
  logical_y_net_x0 <= coeff_we;
  fft_bb0_pol02_out_net_x0 <= in_x0;
  fft_bb0_sync_out_net_x0 <= sync;
  clip <= logical1_y_net_x1;
  dout <= concat_y_net_x1;
  sync_out <= delay4_q_net_x0;

  constant4: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      en => "1",
      rst(0) => fft_bb0_sync_out_net_x0,
      op => counter2_op_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => fft_bb0_pol02_out_net_x0,
      en => '1',
      q => delay11_q_net
    );

  delay4: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d(0) => fft_bb0_sync_out_net_x0,
      en => '1',
      q(0) => delay4_q_net_x0
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 18,
      c_width_b => 18,
      core_name0 => "bmg_33_c09e2494d7a7b5a4",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x12,
      a_clk => clk_1_sg_x12,
      addra => slice_y_net,
      addrb => register2_q_net_x0,
      b_ce => ce_1_sg_x12,
      b_clk => clk_1_sg_x12,
      dina => constant4_op_net,
      dinb => register1_q_net_x1,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant5_op_net,
      web(0) => logical_y_net_x0,
      douta => dual_port_ram_douta_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => dual_port_ram_douta_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => delay11_q_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  round1_99dae1512b: entity work.round1_entity_99dae1512b
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      din => register_q_net_x0,
      scale => register1_q_net_x0,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 11,
      x_width => 12,
      y_width => 6
    )
    port map (
      x => counter2_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/EQ/eq1"

entity eq1_entity_90d6feae64 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(17 downto 0); 
    coeff_addr: in std_logic_vector(5 downto 0); 
    coeff_we: in std_logic; 
    in_x0: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    clip: out std_logic; 
    dout: out std_logic_vector(7 downto 0)
  );
end eq1_entity_90d6feae64;

architecture structural of eq1_entity_90d6feae64 is
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal concat_y_net_x1: std_logic_vector(7 downto 0);
  signal constant4_op_net: std_logic_vector(17 downto 0);
  signal constant5_op_net: std_logic;
  signal counter2_op_net: std_logic_vector(11 downto 0);
  signal delay11_q_net: std_logic_vector(35 downto 0);
  signal dual_port_ram_douta_net: std_logic_vector(17 downto 0);
  signal fft_bb0_pol13_out_net_x0: std_logic_vector(35 downto 0);
  signal fft_bb0_sync_out_net_x1: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal register1_q_net_x0: std_logic_vector(35 downto 0);
  signal register1_q_net_x1: std_logic_vector(17 downto 0);
  signal register2_q_net_x0: std_logic_vector(17 downto 0);
  signal register2_q_net_x1: std_logic_vector(5 downto 0);
  signal slice_y_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  register1_q_net_x1 <= coeff;
  register2_q_net_x1 <= coeff_addr;
  logical_y_net_x0 <= coeff_we;
  fft_bb0_pol13_out_net_x0 <= in_x0;
  fft_bb0_sync_out_net_x1 <= sync;
  clip <= logical1_y_net_x1;
  dout <= concat_y_net_x1;

  constant4: entity work.constant_95b0f967bc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      en => "1",
      rst(0) => fft_bb0_sync_out_net_x1,
      op => counter2_op_net
    );

  delay11: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => fft_bb0_pol13_out_net_x0,
      en => '1',
      q => delay11_q_net
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 18,
      c_width_b => 18,
      core_name0 => "bmg_33_c09e2494d7a7b5a4",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x14,
      a_clk => clk_1_sg_x14,
      addra => slice_y_net,
      addrb => register2_q_net_x1,
      b_ce => ce_1_sg_x14,
      b_clk => clk_1_sg_x14,
      dina => constant4_op_net,
      dinb => register1_q_net_x1,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant5_op_net,
      web(0) => logical_y_net_x0,
      douta => dual_port_ram_douta_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => delay11_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d => dual_port_ram_douta_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x0
    );

  round1_91ba3a93df: entity work.round1_entity_99dae1512b
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din => register1_q_net_x0,
      scale => register2_q_net_x0,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 11,
      x_width => 12,
      y_width => 6
    )
    port map (
      x => counter2_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/EQ"

entity eq_entity_5c2c12863f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq_addr_0: in std_logic_vector(5 downto 0); 
    eq_addr_1: in std_logic_vector(5 downto 0); 
    eq_addr_2: in std_logic_vector(5 downto 0); 
    eq_addr_3: in std_logic_vector(5 downto 0); 
    eq_data_0: in std_logic_vector(17 downto 0); 
    eq_data_1: in std_logic_vector(17 downto 0); 
    eq_data_2: in std_logic_vector(17 downto 0); 
    eq_data_3: in std_logic_vector(17 downto 0); 
    eq_en_0: in std_logic; 
    eq_en_1: in std_logic; 
    eq_en_2: in std_logic; 
    eq_en_3: in std_logic; 
    fft0: in std_logic_vector(35 downto 0); 
    fft1: in std_logic_vector(35 downto 0); 
    fft2: in std_logic_vector(35 downto 0); 
    fft3: in std_logic_vector(35 downto 0); 
    sync_fft0: in std_logic; 
    eq_clip: out std_logic; 
    eq_out: out std_logic_vector(31 downto 0); 
    sync_rnd: out std_logic
  );
end eq_entity_5c2c12863f;

architecture structural of eq_entity_5c2c12863f is
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal concat3_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x1: std_logic_vector(7 downto 0);
  signal concat_y_net_x2: std_logic_vector(7 downto 0);
  signal concat_y_net_x3: std_logic_vector(7 downto 0);
  signal concat_y_net_x4: std_logic_vector(7 downto 0);
  signal delay4_q_net_x1: std_logic;
  signal fft_bb0_pol02_out_net_x1: std_logic_vector(35 downto 0);
  signal fft_bb0_pol13_out_net_x1: std_logic_vector(35 downto 0);
  signal fft_bb0_sync_out_net_x4: std_logic;
  signal fft_bb1_pol02_out_net_x1: std_logic_vector(35 downto 0);
  signal fft_bb1_pol13_out_net_x1: std_logic_vector(35 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical1_y_net_x4: std_logic;
  signal logical5_y_net_x0: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal logical_y_net_x6: std_logic;
  signal logical_y_net_x7: std_logic;
  signal register1_q_net_x5: std_logic_vector(17 downto 0);
  signal register1_q_net_x6: std_logic_vector(17 downto 0);
  signal register1_q_net_x7: std_logic_vector(17 downto 0);
  signal register1_q_net_x8: std_logic_vector(17 downto 0);
  signal register2_q_net_x4: std_logic_vector(5 downto 0);
  signal register2_q_net_x5: std_logic_vector(5 downto 0);
  signal register2_q_net_x6: std_logic_vector(5 downto 0);
  signal register2_q_net_x7: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
  register2_q_net_x4 <= eq_addr_0;
  register2_q_net_x5 <= eq_addr_1;
  register2_q_net_x6 <= eq_addr_2;
  register2_q_net_x7 <= eq_addr_3;
  register1_q_net_x5 <= eq_data_0;
  register1_q_net_x6 <= eq_data_1;
  register1_q_net_x7 <= eq_data_2;
  register1_q_net_x8 <= eq_data_3;
  logical_y_net_x4 <= eq_en_0;
  logical_y_net_x5 <= eq_en_1;
  logical_y_net_x6 <= eq_en_2;
  logical_y_net_x7 <= eq_en_3;
  fft_bb0_pol02_out_net_x1 <= fft0;
  fft_bb0_pol13_out_net_x1 <= fft1;
  fft_bb1_pol02_out_net_x1 <= fft2;
  fft_bb1_pol13_out_net_x1 <= fft3;
  fft_bb0_sync_out_net_x4 <= sync_fft0;
  eq_clip <= logical5_y_net_x0;
  eq_out <= concat3_y_net_x0;
  sync_rnd <= delay4_q_net_x1;

  concat3: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x1,
      in1 => concat_y_net_x2,
      in2 => concat_y_net_x3,
      in3 => concat_y_net_x4,
      y => concat3_y_net_x0
    );

  eq0_ddb3a018ef: entity work.eq0_entity_ddb3a018ef
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      coeff => register1_q_net_x5,
      coeff_addr => register2_q_net_x4,
      coeff_we => logical_y_net_x4,
      in_x0 => fft_bb0_pol02_out_net_x1,
      sync => fft_bb0_sync_out_net_x4,
      clip => logical1_y_net_x1,
      dout => concat_y_net_x1,
      sync_out => delay4_q_net_x1
    );

  eq1_90d6feae64: entity work.eq1_entity_90d6feae64
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      coeff => register1_q_net_x6,
      coeff_addr => register2_q_net_x5,
      coeff_we => logical_y_net_x5,
      in_x0 => fft_bb0_pol13_out_net_x1,
      sync => fft_bb0_sync_out_net_x4,
      clip => logical1_y_net_x2,
      dout => concat_y_net_x2
    );

  eq2_a11cafe4bc: entity work.eq1_entity_90d6feae64
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      coeff => register1_q_net_x7,
      coeff_addr => register2_q_net_x6,
      coeff_we => logical_y_net_x6,
      in_x0 => fft_bb1_pol02_out_net_x1,
      sync => fft_bb0_sync_out_net_x4,
      clip => logical1_y_net_x3,
      dout => concat_y_net_x3
    );

  eq3_f5fa254781: entity work.eq1_entity_90d6feae64
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      coeff => register1_q_net_x8,
      coeff_addr => register2_q_net_x7,
      coeff_we => logical_y_net_x7,
      in_x0 => fft_bb1_pol13_out_net_x1,
      sync => fft_bb0_sync_out_net_x4,
      clip => logical1_y_net_x4,
      dout => concat_y_net_x4
    );

  logical5: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x1,
      d1(0) => logical1_y_net_x2,
      d2(0) => logical1_y_net_x3,
      d3(0) => logical1_y_net_x4,
      y(0) => logical5_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/LEDs/led1_arm"

entity led1_arm_entity_bfb1c8c0b9 is
  port (
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end led1_arm_entity_bfb1c8c0b9;

architecture structural of led1_arm_entity_bfb1c8c0b9 is
  signal convert_dout_net_x0: std_logic;
  signal inverter_op_net_x0: std_logic;

begin
  inverter_op_net_x0 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => inverter_op_net_x0,
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/LEDs/pulse_ext2/posedge"

entity posedge_entity_cdb830dc95 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge_entity_cdb830dc95;

architecture structural of posedge_entity_cdb830dc95 is
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  logical3_y_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d(0) => logical3_y_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical3_y_net_x0,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/LEDs/pulse_ext2"

entity pulse_ext2_entity_418120b57d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext2_entity_418120b57d;

architecture structural of pulse_ext2_entity_418120b57d is
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal constant5_op_net: std_logic_vector(23 downto 0);
  signal counter3_op_net: std_logic_vector(23 downto 0);
  signal logical3_y_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  logical3_y_net_x1 <= in_x0;
  out_x0 <= relational5_op_net_x1;

  constant5: entity work.constant_bdd7f47790
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_7a62a1023205fc04",
      op_arith => xlUnsigned,
      op_width => 24
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      en(0) => relational5_op_net_x1,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_cdb830dc95: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      in_x0 => logical3_y_net_x1,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_831189b190
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/LEDs/pulse_ext3"

entity pulse_ext3_entity_abbc5087ad is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end pulse_ext3_entity_abbc5087ad;

architecture structural of pulse_ext3_entity_abbc5087ad is
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal constant5_op_net: std_logic_vector(18 downto 0);
  signal counter3_op_net: std_logic_vector(18 downto 0);
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  logical1_y_net_x2 <= in_x0;
  out_x0 <= relational5_op_net_x1;

  constant5: entity work.constant_b713aad2a7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_7082ab16cd93bab0",
      op_arith => xlUnsigned,
      op_width => 19
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      en(0) => relational5_op_net_x1,
      rst(0) => logical_y_net_x0,
      op => counter3_op_net
    );

  posedge_f00b8bdaf6: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      in_x0 => logical1_y_net_x2,
      out_x0 => logical_y_net_x0
    );

  relational5: entity work.relational_502d6cf7c0
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/LEDs"

entity leds_entity_6eba8e3f58 is
  port (
    adc_clip: in std_logic; 
    armed: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq_clip: in std_logic; 
    sync_gen: in std_logic; 
    led1_arm: out std_logic; 
    led2_sync: out std_logic; 
    led4_eq_clip: out std_logic; 
    led5_adc_clip: out std_logic
  );
end leds_entity_6eba8e3f58;

architecture structural of leds_entity_6eba8e3f58 is
  signal ce_1_sg_x26: std_logic;
  signal clk_1_sg_x26: std_logic;
  signal convert_dout_net_x4: std_logic;
  signal convert_dout_net_x5: std_logic;
  signal convert_dout_net_x6: std_logic;
  signal convert_dout_net_x7: std_logic;
  signal inverter_op_net_x1: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical3_y_net_x2: std_logic;
  signal logical5_y_net_x3: std_logic;
  signal relational5_op_net_x1: std_logic;
  signal relational5_op_net_x2: std_logic;
  signal relational5_op_net_x3: std_logic;

begin
  logical1_y_net_x3 <= adc_clip;
  inverter_op_net_x1 <= armed;
  ce_1_sg_x26 <= ce_1;
  clk_1_sg_x26 <= clk_1;
  logical5_y_net_x3 <= eq_clip;
  logical3_y_net_x2 <= sync_gen;
  led1_arm <= convert_dout_net_x4;
  led2_sync <= convert_dout_net_x5;
  led4_eq_clip <= convert_dout_net_x6;
  led5_adc_clip <= convert_dout_net_x7;

  led1_arm_bfb1c8c0b9: entity work.led1_arm_entity_bfb1c8c0b9
    port map (
      gpio_out => inverter_op_net_x1,
      convert_x0 => convert_dout_net_x4
    );

  led2_sync_4bb6b75837: entity work.led1_arm_entity_bfb1c8c0b9
    port map (
      gpio_out => relational5_op_net_x1,
      convert_x0 => convert_dout_net_x5
    );

  led4_eq_clip_1d9dbdd03e: entity work.led1_arm_entity_bfb1c8c0b9
    port map (
      gpio_out => relational5_op_net_x3,
      convert_x0 => convert_dout_net_x6
    );

  led5_adc_clip_e7573b4783: entity work.led1_arm_entity_bfb1c8c0b9
    port map (
      gpio_out => relational5_op_net_x2,
      convert_x0 => convert_dout_net_x7
    );

  pulse_ext2_418120b57d: entity work.pulse_ext2_entity_418120b57d
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      in_x0 => logical3_y_net_x2,
      out_x0 => relational5_op_net_x1
    );

  pulse_ext3_abbc5087ad: entity work.pulse_ext3_entity_abbc5087ad
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      in_x0 => logical1_y_net_x3,
      out_x0 => relational5_op_net_x2
    );

  pulse_ext4_e5a08205d0: entity work.pulse_ext3_entity_abbc5087ad
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      in_x0 => logical5_y_net_x3,
      out_x0 => relational5_op_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/Delay14"

entity delay14_entity_aaea730e0a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(63 downto 0); 
    q: out std_logic_vector(63 downto 0)
  );
end delay14_entity_aaea730e0a;

architecture structural of delay14_entity_aaea730e0a is
  signal ce_1_sg_x27: std_logic;
  signal clk_1_sg_x27: std_logic;
  signal register0_q_net_x0: std_logic_vector(63 downto 0);
  signal register_q_net_x0: std_logic_vector(63 downto 0);

begin
  ce_1_sg_x27 <= ce_1;
  clk_1_sg_x27 <= clk_1;
  register_q_net_x0 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      d => register_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/Delay15"

entity delay15_entity_1b3340233c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end delay15_entity_1b3340233c;

architecture structural of delay15_entity_1b3340233c is
  signal ce_1_sg_x28: std_logic;
  signal clk_1_sg_x28: std_logic;
  signal register0_q_net_x0: std_logic;
  signal register2_q_net_x0: std_logic;

begin
  ce_1_sg_x28 <= ce_1;
  clk_1_sg_x28 <= clk_1;
  register2_q_net_x0 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      d(0) => register2_q_net_x0,
      en => "1",
      rst => "0",
      q(0) => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/Delay16"

entity delay16_entity_ae22af2a7f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end delay16_entity_ae22af2a7f;

architecture structural of delay16_entity_ae22af2a7f is
  signal ce_1_sg_x29: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal register0_q_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x29 <= ce_1;
  clk_1_sg_x29 <= clk_1;
  slice2_y_net_x0 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      d => slice2_y_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/Subsystem12"

entity subsystem12_entity_d73b4e9e36 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof: in std_logic; 
    overflow: in std_logic; 
    rst: in std_logic; 
    we: in std_logic; 
    err_cnt: out std_logic_vector(31 downto 0); 
    rx_cnt: out std_logic_vector(31 downto 0)
  );
end subsystem12_entity_d73b4e9e36;

architecture structural of subsystem12_entity_d73b4e9e36 is
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal delay1_q_net: std_logic;
  signal delay1_q_net_x1: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay3_q_net_x1: std_logic;
  signal delay40_q_net: std_logic;
  signal delay5_q_net_x0: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal payload_cnt1_op_net_x0: std_logic_vector(31 downto 0);
  signal payload_cnt2_op_net_x0: std_logic_vector(31 downto 0);
  signal slice4_y_net_x0: std_logic;

begin
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  delay1_q_net_x1 <= eof;
  delay5_q_net_x0 <= overflow;
  slice4_y_net_x0 <= rst;
  delay3_q_net_x1 <= we;
  err_cnt <= payload_cnt2_op_net_x0;
  rx_cnt <= payload_cnt1_op_net_x0;

  delay1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d(0) => delay1_q_net_x1,
      q(0) => delay1_q_net
    );

  delay2: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d(0) => slice4_y_net_x0,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d(0) => delay5_q_net_x0,
      q(0) => delay3_q_net
    );

  delay40: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d(0) => delay3_q_net_x1,
      q(0) => delay40_q_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay40_q_net,
      d1(0) => delay1_q_net,
      y(0) => logical2_y_net_x0
    );

  payload_cnt1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_87d335e994d59139",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en(0) => logical_y_net_x0,
      rst(0) => delay2_q_net,
      op => payload_cnt1_op_net_x0
    );

  payload_cnt2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_87d335e994d59139",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en(0) => delay3_q_net,
      rst(0) => delay2_q_net,
      op => payload_cnt2_op_net_x0
    );

  posedge_1a78fa92ca: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      in_x0 => logical2_y_net_x0,
      out_x0 => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loop_cnt0"

entity loop_cnt0_entity_50bec196fd is
  port (
    reg_out: in std_logic_vector(31 downto 0); 
    convert_x0: out std_logic_vector(31 downto 0)
  );
end loop_cnt0_entity_50bec196fd;

architecture structural of loop_cnt0_entity_50bec196fd is
  signal convert_dout_net_x0: std_logic_vector(31 downto 0);
  signal payload_cnt1_op_net_x1: std_logic_vector(31 downto 0);

begin
  payload_cnt1_op_net_x1 <= reg_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => payload_cnt1_op_net_x1,
      dout => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_fifo0/fifo"

entity fifo_entity_a1400fd5ba is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d_in: in std_logic_vector(63 downto 0); 
    eof_in: in std_logic; 
    re: in std_logic; 
    valid_in: in std_logic; 
    data: out std_logic_vector(63 downto 0); 
    data_rdy: out std_logic; 
    eof: out std_logic; 
    full: out std_logic; 
    valid: out std_logic
  );
end fifo_entity_a1400fd5ba;

architecture structural of fifo_entity_a1400fd5ba is
  signal buf_data3_y_net: std_logic_vector(63 downto 0);
  signal buf_eof3_y_net: std_logic;
  signal ce_1_sg_x39: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal concat_y_net: std_logic_vector(64 downto 0);
  signal convert11_dout_net: std_logic;
  signal convert12_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic_vector(63 downto 0);
  signal convert_dout_net: std_logic;
  signal data_fifo_ae_net: std_logic;
  signal data_fifo_dout_net: std_logic_vector(64 downto 0);
  signal data_fifo_empty_net: std_logic;
  signal data_fifo_full_net: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay1_q_net_x2: std_logic;
  signal delay2_q_net_x0: std_logic_vector(63 downto 0);
  signal delay3_q_net_x2: std_logic;
  signal delay47_q_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay5_q_net_x1: std_logic;
  signal delay_q_net: std_logic;
  signal fifo_empty1_y_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal reinterpret_output_port_net: std_logic_vector(63 downto 0);
  signal slice1_y_net_x0: std_logic_vector(63 downto 0);
  signal slice_y_net_x0: std_logic;
  signal valid_eof_0_y_net: std_logic;

begin
  ce_1_sg_x39 <= ce_1;
  clk_1_sg_x39 <= clk_1;
  slice1_y_net_x0 <= d_in;
  slice_y_net_x0 <= eof_in;
  delay47_q_net_x0 <= re;
  delay1_q_net_x0 <= valid_in;
  data <= delay2_q_net_x0;
  data_rdy <= delay4_q_net_x0;
  eof <= delay1_q_net_x2;
  full <= delay5_q_net_x1;
  valid <= delay3_q_net_x2;

  buf_data3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 65,
      y_width => 64
    )
    port map (
      x => data_fifo_dout_net,
      y => buf_data3_y_net
    );

  buf_eof3: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 65,
      y_width => 1
    )
    port map (
      x => data_fifo_dout_net,
      y(0) => buf_eof3_y_net
    );

  concat: entity work.concat_39a9232e16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert6_dout_net,
      in1 => convert7_dout_net,
      y => concat_y_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay1_q_net_x0,
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => convert5_dout_net,
      dout(0) => convert1_dout_net
    );

  convert11: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => convert12_dout_net,
      dout(0) => convert11_dout_net
    );

  convert12: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => data_fifo_ae_net,
      dout(0) => convert12_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => slice_y_net_x0,
      dout(0) => convert2_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay47_q_net_x0,
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => data_fifo_full_net,
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => valid_eof_0_y_net,
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => reinterpret_output_port_net,
      dout => convert7_dout_net
    );

  data_fifo: entity work.xlfifogen
    generic map (
      core_name0 => "fifo_fg53_d5c899ca81df0776",
      data_count_width => 11,
      data_width => 65,
      has_ae => 1,
      has_af => 1,
      percent_full_width => 1
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      din => concat_y_net,
      en => '1',
      re => fifo_empty1_y_net,
      re_ce => ce_1_sg_x39,
      rst => '0',
      we => convert_dout_net,
      we_ce => ce_1_sg_x39,
      ae => data_fifo_ae_net,
      dout => data_fifo_dout_net,
      empty => data_fifo_empty_net,
      full => data_fifo_full_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      d(0) => fifo_empty1_y_net,
      en => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      d(0) => buf_eof3_y_net,
      q(0) => delay1_q_net_x2
    );

  delay2: entity work.delay_6b2b456c91
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      d => buf_data3_y_net,
      q => delay2_q_net_x0
    );

  delay3: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      d(0) => delay_q_net,
      q(0) => delay3_q_net_x2
    );

  delay4: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      d(0) => inverter3_op_net,
      q(0) => delay4_q_net_x0
    );

  delay5: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      d(0) => convert1_dout_net,
      q(0) => delay5_q_net_x1
    );

  fifo_empty1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert4_dout_net,
      d1(0) => inverter1_op_net,
      y(0) => fifo_empty1_y_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      ip(0) => data_fifo_empty_net,
      op(0) => inverter1_op_net
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      ip(0) => convert11_dout_net,
      op(0) => inverter3_op_net
    );

  reinterpret: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  valid_eof_0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => convert2_dout_net,
      y(0) => valid_eof_0_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_fifo0/rollback_fifo/set_cnt"

entity set_cnt_entity_103deff16c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    set: in std_logic; 
    undo: in std_logic; 
    cnt: out std_logic_vector(11 downto 0); 
    set_cnt: out std_logic_vector(11 downto 0)
  );
end set_cnt_entity_103deff16c;

architecture structural of set_cnt_entity_103deff16c is
  signal ce_1_sg_x40: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal counter4_op_net_x0: std_logic_vector(11 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical4_y_net_x1: std_logic;
  signal register2_q_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x40 <= ce_1;
  clk_1_sg_x40 <= clk_1;
  logical3_y_net_x0 <= en;
  logical4_y_net_x1 <= set;
  logical1_y_net_x1 <= undo;
  cnt <= counter4_op_net_x0;
  set_cnt <= register2_q_net_x0;

  counter4: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_a26a02e5fda52d58",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      din => register2_q_net_x0,
      en(0) => logical3_y_net_x0,
      load(0) => logical1_y_net_x0,
      rst => "0",
      op => counter4_op_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip(0) => logical1_y_net_x1,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip(0) => logical4_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x1,
      d1(0) => logical3_y_net_x0,
      d2(0) => inverter1_op_net,
      y(0) => logical1_y_net_x0
    );

  logical4: entity work.logical_e82b2f8c26
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      d0(0) => logical4_y_net_x1,
      d1(0) => logical3_y_net_x0,
      d2(0) => inverter_op_net,
      y(0) => logical4_y_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => counter4_op_net_x0,
      en(0) => logical4_y_net_x0,
      rst => "0",
      q => register2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_fifo0/rollback_fifo"

entity rollback_fifo_entity_603c345505 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    commit: in std_logic; 
    din: in std_logic_vector(64 downto 0); 
    discard: in std_logic; 
    re: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(64 downto 0); 
    valid: out std_logic
  );
end rollback_fifo_entity_603c345505;

architecture structural of rollback_fifo_entity_603c345505 is
  signal ce_1_sg_x41: std_logic;
  signal clk_1_sg_x41: std_logic;
  signal concat_y_net_x0: std_logic_vector(64 downto 0);
  signal constant1_op_net_x0: std_logic;
  signal constant5_op_net: std_logic;
  signal counter4_op_net_x0: std_logic_vector(11 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic_vector(64 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal rd_cnt_op_net: std_logic_vector(11 downto 0);
  signal register0_q_net_x1: std_logic;
  signal register2_q_net_x0: std_logic_vector(11 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(10 downto 0);
  signal slice3_y_net: std_logic;
  signal slice_y_net: std_logic_vector(10 downto 0);

begin
  ce_1_sg_x41 <= ce_1;
  clk_1_sg_x41 <= clk_1;
  logical4_y_net_x2 <= commit;
  concat_y_net_x0 <= din;
  logical1_y_net_x2 <= discard;
  constant1_op_net_x0 <= re;
  register0_q_net_x1 <= we;
  dout <= dual_port_ram_doutb_net_x0;
  valid <= delay1_q_net_x1;

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      d(0) => logical4_y_net,
      en => '1',
      q(0) => delay1_q_net_x1
    );

  dual_port_ram: entity work.xldpram
    generic map (
      c_address_width_a => 11,
      c_address_width_b => 11,
      c_width_a => 65,
      c_width_b => 65,
      core_name0 => "bmg_33_ea646125a4d80bcf",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x41,
      a_clk => clk_1_sg_x41,
      addra => slice2_y_net,
      addrb => slice_y_net,
      b_ce => ce_1_sg_x41,
      b_clk => clk_1_sg_x41,
      dina => concat_y_net_x0,
      dinb => concat_y_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => logical3_y_net_x0,
      web(0) => constant5_op_net,
      doutb => dual_port_ram_doutb_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      ip(0) => logical1_y_net,
      op(0) => inverter1_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      ip(0) => logical6_y_net,
      op(0) => inverter2_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => inverter2_op_net,
      y(0) => logical1_y_net
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter2_op_net,
      d1(0) => register0_q_net_x1,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical4_y_net
    );

  logical5: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice3_y_net,
      d1(0) => slice1_y_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical5_y_net,
      d1(0) => relational1_op_net,
      y(0) => logical6_y_net
    );

  rd_cnt: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      en(0) => logical4_y_net,
      rst => "0",
      op => rd_cnt_op_net
    );

  relational1: entity work.relational_2147430058
    port map (
      a => slice2_y_net,
      b => slice_y_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_d36fe12c1c
    port map (
      a => register2_q_net_x0,
      b => rd_cnt_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  set_cnt_103deff16c: entity work.set_cnt_entity_103deff16c
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      en => logical3_y_net_x0,
      set => logical4_y_net_x2,
      undo => logical1_y_net_x2,
      cnt => counter4_op_net_x0,
      set_cnt => register2_q_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 12,
      y_width => 11
    )
    port map (
      x => rd_cnt_op_net,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 12,
      y_width => 1
    )
    port map (
      x => rd_cnt_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 12,
      y_width => 11
    )
    port map (
      x => counter4_op_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 12,
      y_width => 1
    )
    port map (
      x => counter4_op_net_x0,
      y(0) => slice3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_fifo0"

entity loopback_fifo0_entity_f997a30533 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dest_ip: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(63 downto 0); 
    discard: in std_logic; 
    eof: in std_logic; 
    my_ip: in std_logic_vector(31 downto 0); 
    re: in std_logic; 
    we: in std_logic; 
    data_rdy: out std_logic; 
    dout: out std_logic_vector(63 downto 0); 
    eof_out: out std_logic; 
    overflow: out std_logic; 
    valid: out std_logic
  );
end loopback_fifo0_entity_f997a30533;

architecture structural of loopback_fifo0_entity_f997a30533 is
  signal ce_1_sg_x42: std_logic;
  signal clk_1_sg_x42: std_logic;
  signal concat_y_net_x0: std_logic_vector(64 downto 0);
  signal constant1_op_net_x0: std_logic;
  signal convert_dout_net: std_logic;
  signal delay1_q_net_x1: std_logic;
  signal delay1_q_net_x3: std_logic;
  signal delay2_q_net_x1: std_logic_vector(63 downto 0);
  signal delay3_q_net_x3: std_logic;
  signal delay47_q_net_x1: std_logic;
  signal delay4_q_net_x1: std_logic;
  signal delay5_q_net_x2: std_logic;
  signal dual_port_ram_doutb_net_x0: std_logic_vector(64 downto 0);
  signal inverter1_op_net: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal register0_q_net_x10: std_logic;
  signal register0_q_net_x11: std_logic_vector(31 downto 0);
  signal register0_q_net_x6: std_logic_vector(63 downto 0);
  signal register0_q_net_x7: std_logic;
  signal register0_q_net_x8: std_logic_vector(31 downto 0);
  signal register0_q_net_x9: std_logic;
  signal relational1_op_net: std_logic;
  signal slice1_y_net_x0: std_logic_vector(63 downto 0);
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x42 <= ce_1;
  clk_1_sg_x42 <= clk_1;
  register0_q_net_x8 <= dest_ip;
  register0_q_net_x6 <= din;
  register0_q_net_x10 <= discard;
  register0_q_net_x9 <= eof;
  register0_q_net_x11 <= my_ip;
  delay47_q_net_x1 <= re;
  register0_q_net_x7 <= we;
  data_rdy <= delay4_q_net_x1;
  dout <= delay2_q_net_x1;
  eof_out <= delay1_q_net_x3;
  overflow <= delay5_q_net_x2;
  valid <= delay3_q_net_x3;

  concat: entity work.concat_39a9232e16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net,
      in1 => register0_q_net_x6,
      y => concat_y_net_x0
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => register0_q_net_x9,
      dout(0) => convert_dout_net
    );

  fifo_a1400fd5ba: entity work.fifo_entity_a1400fd5ba
    port map (
      ce_1 => ce_1_sg_x42,
      clk_1 => clk_1_sg_x42,
      d_in => slice1_y_net_x0,
      eof_in => slice_y_net_x0,
      re => delay47_q_net_x1,
      valid_in => delay1_q_net_x1,
      data => delay2_q_net_x1,
      data_rdy => delay4_q_net_x1,
      eof => delay1_q_net_x3,
      full => delay5_q_net_x2,
      valid => delay3_q_net_x3
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      ip(0) => relational1_op_net,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical2_y_net,
      d1(0) => register0_q_net_x10,
      y(0) => logical1_y_net_x2
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x9,
      d1(0) => inverter1_op_net,
      y(0) => logical2_y_net
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x9,
      d1(0) => relational1_op_net,
      y(0) => logical4_y_net_x2
    );

  relational1: entity work.relational_770e12e4ab
    port map (
      a => register0_q_net_x8,
      b => register0_q_net_x11,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      op(0) => relational1_op_net
    );

  rollback_fifo_603c345505: entity work.rollback_fifo_entity_603c345505
    port map (
      ce_1 => ce_1_sg_x42,
      clk_1 => clk_1_sg_x42,
      commit => logical4_y_net_x2,
      din => concat_y_net_x0,
      discard => logical1_y_net_x2,
      re => constant1_op_net_x0,
      we => register0_q_net_x7,
      dout => dual_port_ram_doutb_net_x0,
      valid => delay1_q_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 65,
      y_width => 1
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 65,
      y_width => 64
    )
    port map (
      x => dual_port_ram_doutb_net_x0,
      y => slice1_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_mux0/rd_pkt_gbe/negedge1"

entity negedge1_entity_482fc0ff88 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end negedge1_entity_482fc0ff88;

architecture structural of negedge1_entity_482fc0ff88 is
  signal ce_1_sg_x49: std_logic;
  signal clk_1_sg_x49: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  ce_1_sg_x49 <= ce_1;
  clk_1_sg_x49 <= clk_1;
  relational5_op_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      d(0) => relational5_op_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      clr => '0',
      ip(0) => relational5_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_mux0/rd_pkt_gbe"

entity rd_pkt_gbe_entity_7eff7ba846 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof_rx: in std_logic; 
    start: in std_logic; 
    out_x0: out std_logic; 
    pkt_oversize_err: out std_logic; 
    pkt_undersize_err: out std_logic
  );
end rd_pkt_gbe_entity_7eff7ba846;

architecture structural of rd_pkt_gbe_entity_7eff7ba846 is
  signal ce_1_sg_x51: std_logic;
  signal clk_1_sg_x51: std_logic;
  signal constant1_op_net: std_logic_vector(10 downto 0);
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal counter3_op_net: std_logic_vector(10 downto 0);
  signal delay3_q_net: std_logic;
  signal inverter8_op_net: std_logic;
  signal logical12_y_net_x0: std_logic;
  signal logical23_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal relational5_op_net_x1: std_logic;

begin
  ce_1_sg_x51 <= ce_1;
  clk_1_sg_x51 <= clk_1;
  logical_y_net_x4 <= eof_rx;
  logical_y_net_x5 <= start;
  out_x0 <= relational5_op_net_x1;
  pkt_oversize_err <= logical12_y_net_x0;
  pkt_undersize_err <= logical23_y_net_x0;

  constant1: entity work.constant_418a7c3a16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_0604807f72
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b77d302451b8d8f9",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      din => constant1_op_net,
      en(0) => relational5_op_net_x1,
      load(0) => logical23_y_net_x0,
      rst(0) => logical_y_net_x3,
      op => counter3_op_net
    );

  delay3: entity work.delay_23d71a76f2
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d(0) => logical_y_net_x2,
      q(0) => delay3_q_net
    );

  inverter8: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      ip(0) => logical_y_net_x4,
      op(0) => inverter8_op_net
    );

  logical12: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter8_op_net,
      d1(0) => delay3_q_net,
      y(0) => logical12_y_net_x0
    );

  logical23: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x4,
      d1(0) => relational5_op_net_x1,
      y(0) => logical23_y_net_x0
    );

  negedge1_482fc0ff88: entity work.negedge1_entity_482fc0ff88
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      in_x0 => relational5_op_net_x1,
      out_x0 => logical_y_net_x2
    );

  posedge_32577e17f7: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      in_x0 => logical_y_net_x5,
      out_x0 => logical_y_net_x3
    );

  relational5: entity work.relational_b4b277ae0f
    port map (
      a => counter3_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_mux0/rd_pkt_loop"

entity rd_pkt_loop_entity_9849abb26b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eof_rx: in std_logic; 
    start: in std_logic; 
    out_x0: out std_logic; 
    pkt_oversize_err: out std_logic; 
    pkt_undersize_err: out std_logic
  );
end rd_pkt_loop_entity_9849abb26b;

architecture structural of rd_pkt_loop_entity_9849abb26b is
  signal ce_1_sg_x54: std_logic;
  signal clk_1_sg_x54: std_logic;
  signal constant1_op_net: std_logic_vector(10 downto 0);
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal counter3_op_net: std_logic_vector(10 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal inverter8_op_net: std_logic;
  signal logical12_y_net_x0: std_logic;
  signal logical23_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal relational5_op_net_x0: std_logic;

begin
  ce_1_sg_x54 <= ce_1;
  clk_1_sg_x54 <= clk_1;
  logical_y_net_x4 <= eof_rx;
  logical_y_net_x5 <= start;
  out_x0 <= relational5_op_net_x0;
  pkt_oversize_err <= logical12_y_net_x0;
  pkt_undersize_err <= logical23_y_net_x0;

  constant1: entity work.constant_418a7c3a16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_0604807f72
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b77d302451b8d8f9",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      din => constant1_op_net,
      en(0) => relational5_op_net_x0,
      load(0) => logical23_y_net_x0,
      rst(0) => logical_y_net_x3,
      op => counter3_op_net
    );

  delay3: entity work.delay_23d71a76f2
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d(0) => relational5_op_net_x0,
      q(0) => delay3_q_net_x0
    );

  inverter8: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      ip(0) => logical_y_net_x4,
      op(0) => inverter8_op_net
    );

  logical12: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter8_op_net,
      d1(0) => logical_y_net_x2,
      y(0) => logical12_y_net_x0
    );

  logical23: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x4,
      d1(0) => relational5_op_net_x0,
      y(0) => logical23_y_net_x0
    );

  negedge1_b562c81630: entity work.negedge1_entity_482fc0ff88
    port map (
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
      in_x0 => delay3_q_net_x0,
      out_x0 => logical_y_net_x2
    );

  posedge_77770698c1: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
      in_x0 => logical_y_net_x5,
      out_x0 => logical_y_net_x3
    );

  relational5: entity work.relational_b4b277ae0f
    port map (
      a => counter3_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/loopback_mux0"

entity loopback_mux0_entity_a214b462fb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbe_data_rdy: in std_logic; 
    gbe_din: in std_logic_vector(63 downto 0); 
    gbe_eof: in std_logic; 
    gbe_valid: in std_logic; 
    loop_data_rdy: in std_logic; 
    loop_din: in std_logic_vector(63 downto 0); 
    loop_eof: in std_logic; 
    loop_valid: in std_logic; 
    rst: in std_logic; 
    dout: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    err: out std_logic; 
    flag: out std_logic; 
    gbe_re: out std_logic; 
    loop_re: out std_logic; 
    mcnt: out std_logic_vector(31 downto 0); 
    valid: out std_logic
  );
end loopback_mux0_entity_a214b462fb;

architecture structural of loopback_mux0_entity_a214b462fb is
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal concat2_y_net: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic_vector(1 downto 0);
  signal constant4_op_net: std_logic_vector(1 downto 0);
  signal convert10_dout_net: std_logic;
  signal convert14_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert20_dout_net_x2: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert9_dout_net: std_logic;
  signal convert_dout_net_x2: std_logic;
  signal convert_dout_net_x3: std_logic_vector(31 downto 0);
  signal counter2_op_net: std_logic_vector(27 downto 0);
  signal counter_op_net: std_logic_vector(27 downto 0);
  signal delay10_q_net_x0: std_logic;
  signal delay13_q_net: std_logic;
  signal delay15_q_net: std_logic;
  signal delay16_q_net: std_logic;
  signal delay19_q_net_x0: std_logic_vector(31 downto 0);
  signal delay1_q_net_x4: std_logic;
  signal delay20_q_net: std_logic;
  signal delay21_q_net: std_logic;
  signal delay22_q_net: std_logic;
  signal delay2_q_net_x2: std_logic_vector(63 downto 0);
  signal delay3_q_net_x4: std_logic;
  signal delay4_q_net_x2: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic;
  signal delay7_q_net: std_logic;
  signal delay7_q_net_x1: std_logic;
  signal delay8_q_net: std_logic;
  signal delay8_q_net_x1: std_logic_vector(63 downto 0);
  signal delay9_q_net_x0: std_logic;
  signal gbe_mcnt_q_net: std_logic_vector(63 downto 0);
  signal inverter10_op_net: std_logic;
  signal inverter11_op_net: std_logic;
  signal inverter12_op_net: std_logic;
  signal inverter13_op_net: std_logic;
  signal inverter14_op_net: std_logic;
  signal inverter15_op_net: std_logic;
  signal inverter18_op_net: std_logic;
  signal inverter19_op_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter4_op_net: std_logic;
  signal inverter5_op_net: std_logic;
  signal inverter6_op_net: std_logic;
  signal inverter7_op_net: std_logic;
  signal logical10_y_net: std_logic;
  signal logical12_y_net_x0: std_logic;
  signal logical12_y_net_x1: std_logic;
  signal logical13_y_net_x0: std_logic;
  signal logical14_y_net_x0: std_logic;
  signal logical15_y_net_x0: std_logic;
  signal logical18_y_net_x0: std_logic;
  signal logical19_y_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical20_y_net: std_logic;
  signal logical22_y_net: std_logic;
  signal logical23_y_net: std_logic;
  signal logical23_y_net_x0: std_logic;
  signal logical23_y_net_x1: std_logic;
  signal logical24_y_net: std_logic;
  signal logical25_y_net: std_logic;
  signal logical26_y_net_x0: std_logic;
  signal logical28_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal logical7_y_net: std_logic;
  signal logical8_y_net: std_logic;
  signal logical9_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal logical_y_net_x6: std_logic;
  signal logical_y_net_x7: std_logic;
  signal loop_mcnt_q_net: std_logic_vector(63 downto 0);
  signal mux1_y_net: std_logic;
  signal mux2_y_net: std_logic;
  signal mux_y_net_x2: std_logic_vector(63 downto 0);
  signal payload_cnt1_op_net: std_logic_vector(2 downto 0);
  signal payload_cnt2_op_net: std_logic_vector(2 downto 0);
  signal payload_cnt3_op_net: std_logic_vector(2 downto 0);
  signal payload_cnt4_op_net: std_logic_vector(2 downto 0);
  signal register1_q_net: std_logic;
  signal register2_q_net: std_logic;
  signal register3_q_net: std_logic;
  signal register4_q_net: std_logic;
  signal register5_q_net_x2: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational5_op_net_x0: std_logic;
  signal relational5_op_net_x1: std_logic;
  signal slice10_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(15 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal slice4_y_net: std_logic_vector(15 downto 0);
  signal slice6_y_net: std_logic;
  signal slice7_y_net: std_logic_vector(47 downto 0);
  signal slice8_y_net: std_logic_vector(47 downto 0);

begin
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  delay9_q_net_x0 <= gbe_data_rdy;
  delay8_q_net_x1 <= gbe_din;
  delay7_q_net_x1 <= gbe_eof;
  delay10_q_net_x0 <= gbe_valid;
  delay4_q_net_x2 <= loop_data_rdy;
  delay2_q_net_x2 <= loop_din;
  delay1_q_net_x4 <= loop_eof;
  delay3_q_net_x4 <= loop_valid;
  slice3_y_net_x0 <= rst;
  dout <= mux_y_net_x2;
  eof <= convert20_dout_net_x2;
  err <= logical18_y_net_x0;
  flag <= register5_q_net_x2;
  gbe_re <= logical13_y_net_x0;
  loop_re <= logical3_y_net_x0;
  mcnt <= convert_dout_net_x3;
  valid <= convert_dout_net_x2;

  concat2: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => slice2_y_net,
      in1 => slice4_y_net,
      y => concat2_y_net
    );

  constant1: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => mux1_y_net,
      dout(0) => convert_dout_net_x2
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => slice3_y_net_x0,
      dout(0) => convert1_dout_net
    );

  convert10: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay7_q_net_x1,
      dout(0) => convert10_dout_net
    );

  convert14: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => register3_q_net,
      dout(0) => convert14_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay4_q_net_x2,
      dout(0) => convert2_dout_net
    );

  convert20: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => mux2_y_net,
      dout(0) => convert20_dout_net_x2
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay3_q_net_x4,
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay10_q_net_x0,
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay1_q_net_x4,
      dout(0) => convert5_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay9_q_net_x0,
      dout(0) => convert7_dout_net
    );

  convert9: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => register2_q_net,
      dout(0) => convert9_dout_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05e2750227d8d748",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en => "1",
      rst(0) => logical9_y_net,
      op => counter_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05e2750227d8d748",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en => "1",
      rst(0) => logical19_y_net,
      op => counter2_op_net
    );

  delay13: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => inverter5_op_net,
      q(0) => delay13_q_net
    );

  delay15: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => inverter13_op_net,
      q(0) => delay15_q_net
    );

  delay16: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational1_op_net,
      q(0) => delay16_q_net
    );

  delay19: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d => concat2_y_net,
      q => delay19_q_net_x0
    );

  delay20: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational5_op_net_x0,
      q(0) => delay20_q_net
    );

  delay21: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => inverter18_op_net,
      q(0) => delay21_q_net
    );

  delay22: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => inverter19_op_net,
      q(0) => delay22_q_net
    );

  delay5: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational5_op_net_x0,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational5_op_net_x1,
      q(0) => delay6_q_net
    );

  delay7: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational5_op_net_x0,
      q(0) => delay7_q_net
    );

  delay8: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => relational5_op_net_x0,
      q(0) => delay8_q_net
    );

  gbe_mcnt: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => delay8_q_net_x1,
      en(0) => logical2_y_net,
      rst => "0",
      q => gbe_mcnt_q_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register1_q_net,
      op(0) => inverter1_op_net
    );

  inverter10: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register4_q_net,
      op(0) => inverter10_op_net
    );

  inverter11: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register1_q_net,
      op(0) => inverter11_op_net
    );

  inverter12: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register4_q_net,
      op(0) => inverter12_op_net
    );

  inverter13: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => relational5_op_net_x0,
      op(0) => inverter13_op_net
    );

  inverter14: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => logical22_y_net,
      op(0) => inverter14_op_net
    );

  inverter15: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => logical23_y_net,
      op(0) => inverter15_op_net
    );

  inverter18: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register1_q_net,
      op(0) => inverter18_op_net
    );

  inverter19: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => register4_q_net,
      op(0) => inverter19_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => convert9_dout_net,
      op(0) => inverter2_op_net
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => logical28_y_net,
      op(0) => inverter3_op_net
    );

  inverter4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => convert14_dout_net,
      op(0) => inverter4_op_net
    );

  inverter5: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => relational5_op_net_x1,
      op(0) => inverter5_op_net
    );

  inverter6: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => convert2_dout_net,
      op(0) => inverter6_op_net
    );

  inverter7: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      ip(0) => convert7_dout_net,
      op(0) => inverter7_op_net
    );

  logical1: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice10_y_net,
      d1(0) => convert1_dout_net,
      d2(0) => logical12_y_net_x0,
      d3(0) => logical23_y_net_x0,
      y(0) => logical1_y_net_x0
    );

  logical10: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay20_q_net,
      d1(0) => delay22_q_net,
      y(0) => logical10_y_net
    );

  logical13: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational5_op_net_x1,
      d1(0) => relational2_op_net,
      d2(0) => relational4_op_net,
      y(0) => logical13_y_net_x0
    );

  logical14: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert4_dout_net,
      d1(0) => convert10_dout_net,
      y(0) => logical14_y_net_x0
    );

  logical15: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert3_dout_net,
      d1(0) => convert5_dout_net,
      y(0) => logical15_y_net_x0
    );

  logical18: entity work.logical_5773759131
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical_y_net_x1,
      d2(0) => logical25_y_net,
      y(0) => logical18_y_net_x0
    );

  logical19: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical13_y_net_x0,
      d1(0) => inverter7_op_net,
      y(0) => logical19_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical22_y_net,
      d1(0) => convert4_dout_net,
      y(0) => logical2_y_net
    );

  logical20: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x4,
      d1(0) => logical23_y_net,
      y(0) => logical20_y_net
    );

  logical22: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter2_op_net,
      d1(0) => inverter11_op_net,
      y(0) => logical22_y_net
    );

  logical23: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter4_op_net,
      d1(0) => inverter12_op_net,
      y(0) => logical23_y_net
    );

  logical24: entity work.logical_3640e86e6c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay13_q_net,
      d1(0) => delay15_q_net,
      d2(0) => inverter13_op_net,
      d3(0) => inverter5_op_net,
      y(0) => logical24_y_net
    );

  logical25: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational5_op_net_x1,
      d1(0) => relational5_op_net_x0,
      y(0) => logical25_y_net
    );

  logical26: entity work.logical_bbdaa33b63
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical28_y_net,
      d1(0) => inverter15_op_net,
      d2(0) => convert2_dout_net,
      d3(0) => inverter10_op_net,
      d4(0) => logical24_y_net,
      y(0) => logical26_y_net_x0
    );

  logical28: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert2_dout_net,
      d1(0) => delay16_q_net,
      y(0) => logical28_y_net
    );

  logical3: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational5_op_net_x0,
      d1(0) => relational3_op_net,
      d2(0) => relational5_op_net,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice6_y_net,
      d1(0) => convert1_dout_net,
      d2(0) => logical12_y_net_x1,
      d3(0) => logical23_y_net_x1,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical23_y_net,
      d1(0) => convert3_dout_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_bbdaa33b63
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical24_y_net,
      d1(0) => convert7_dout_net,
      d2(0) => inverter14_op_net,
      d3(0) => inverter1_op_net,
      d4(0) => inverter3_op_net,
      y(0) => logical6_y_net_x0
    );

  logical7: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay6_q_net,
      d1(0) => delay21_q_net,
      y(0) => logical7_y_net
    );

  logical8: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x5,
      d1(0) => logical22_y_net,
      y(0) => logical8_y_net
    );

  logical9: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical3_y_net_x0,
      d1(0) => inverter6_op_net,
      y(0) => logical9_y_net
    );

  loop_mcnt: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => delay2_q_net_x2,
      en(0) => logical5_y_net,
      rst => "0",
      q => loop_mcnt_q_net
    );

  mcnt_f5e9fe3395: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => delay19_q_net_x0,
      convert_x0 => convert_dout_net_x3
    );

  mux: entity work.mux_66e06093b2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay8_q_net_x1,
      d1 => delay2_q_net_x2,
      sel(0) => delay5_q_net,
      y => mux_y_net_x2
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical7_y_net,
      d1(0) => logical10_y_net,
      sel(0) => delay7_q_net,
      y(0) => mux1_y_net
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x5,
      d1(0) => logical_y_net_x4,
      sel(0) => delay8_q_net,
      y(0) => mux2_y_net
    );

  payload_cnt1: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 5,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_4766397a2cb82e6c",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en(0) => logical8_y_net,
      rst(0) => convert4_dout_net,
      op => payload_cnt1_op_net
    );

  payload_cnt2: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 5,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_4766397a2cb82e6c",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en(0) => register1_q_net,
      rst(0) => logical_y_net_x5,
      op => payload_cnt2_op_net
    );

  payload_cnt3: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 5,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_4766397a2cb82e6c",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en(0) => logical20_y_net,
      rst(0) => convert3_dout_net,
      op => payload_cnt3_op_net
    );

  payload_cnt4: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 5,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_4766397a2cb82e6c",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en(0) => register4_q_net,
      rst(0) => logical_y_net_x4,
      op => payload_cnt4_op_net
    );

  posedge1_920422ceeb: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical4_y_net_x0,
      out_x0 => logical_y_net_x0
    );

  posedge2_3763103175: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical1_y_net_x0,
      out_x0 => logical_y_net_x1
    );

  posedge3_88de5c7271: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical15_y_net_x0,
      out_x0 => logical_y_net_x4
    );

  posedge4_b49a7e041f: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical14_y_net_x0,
      out_x0 => logical_y_net_x5
    );

  posedge5_7545433f3a: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical6_y_net_x0,
      out_x0 => logical_y_net_x6
    );

  posedge6_c7a5d17a31: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => logical26_y_net_x0,
      out_x0 => logical_y_net_x7
    );

  rd_pkt_gbe_7eff7ba846: entity work.rd_pkt_gbe_entity_7eff7ba846
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      eof_rx => logical_y_net_x5,
      start => logical_y_net_x6,
      out_x0 => relational5_op_net_x1,
      pkt_oversize_err => logical12_y_net_x0,
      pkt_undersize_err => logical23_y_net_x0
    );

  rd_pkt_loop_9849abb26b: entity work.rd_pkt_loop_entity_9849abb26b
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      eof_rx => logical_y_net_x4,
      start => logical_y_net_x7,
      out_x0 => relational5_op_net_x0,
      pkt_oversize_err => logical12_y_net_x1,
      pkt_undersize_err => logical23_y_net_x1
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => logical_y_net_x1,
      en(0) => logical_y_net_x1,
      rst(0) => logical_y_net_x5,
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => convert4_dout_net,
      en(0) => convert4_dout_net,
      rst(0) => logical_y_net_x5,
      q(0) => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => convert3_dout_net,
      en(0) => convert3_dout_net,
      rst(0) => logical_y_net_x4,
      q(0) => register3_q_net
    );

  register4: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => logical_y_net_x0,
      en(0) => logical_y_net_x0,
      rst(0) => logical_y_net_x4,
      q(0) => register4_q_net
    );

  register5: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => logical18_y_net_x0,
      en(0) => logical18_y_net_x0,
      rst(0) => convert20_dout_net_x2,
      q(0) => register5_q_net_x2
    );

  relational1: entity work.relational_464c5d53fc
    port map (
      a => slice7_y_net,
      b => slice8_y_net,
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_632978e9ce
    port map (
      a => constant1_op_net,
      b => payload_cnt1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_632978e9ce
    port map (
      a => constant2_op_net,
      b => payload_cnt3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  relational4: entity work.relational_632978e9ce
    port map (
      a => constant3_op_net,
      b => payload_cnt2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_632978e9ce
    port map (
      a => constant4_op_net,
      b => payload_cnt4_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 27,
      new_msb => 27,
      x_width => 28,
      y_width => 1
    )
    port map (
      x => counter2_op_net,
      y(0) => slice10_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 48,
      y_width => 16
    )
    port map (
      x => slice7_y_net,
      y => slice2_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 48,
      y_width => 16
    )
    port map (
      x => slice8_y_net,
      y => slice4_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 27,
      new_msb => 27,
      x_width => 28,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice6_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 63,
      x_width => 64,
      y_width => 48
    )
    port map (
      x => loop_mcnt_q_net,
      y => slice7_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 63,
      x_width => 64,
      y_width => 48
    )
    port map (
      x => gbe_mcnt_q_net,
      y => slice8_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback/rx_pkt_fifo0"

entity rx_pkt_fifo0_entity_060e97aac2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d_in: in std_logic_vector(63 downto 0); 
    dest_ip_0: in std_logic_vector(31 downto 0); 
    eof_in: in std_logic; 
    re: in std_logic; 
    valid_in: in std_logic; 
    buffer_empty: out std_logic; 
    buffer_overflow: out std_logic; 
    d_in_x0: out std_logic_vector(63 downto 0); 
    d_out: out std_logic_vector(63 downto 0); 
    data: out std_logic_vector(63 downto 0); 
    data_full: out std_logic; 
    data_rdy: out std_logic; 
    eof: out std_logic; 
    eof_out: out std_logic; 
    in_valid_eof: out std_logic; 
    ip_addr: out std_logic_vector(31 downto 0); 
    ip_commit: out std_logic; 
    ip_fetch: out std_logic; 
    re_x0: out std_logic; 
    v_in: out std_logic; 
    v_out: out std_logic; 
    valid: out std_logic; 
    we: out std_logic
  );
end rx_pkt_fifo0_entity_060e97aac2;

architecture structural of rx_pkt_fifo0_entity_060e97aac2 is
  signal buf_data3_y_net_x0: std_logic_vector(63 downto 0);
  signal buf_eof3_y_net_x0: std_logic;
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal commit1_y_net_x0: std_logic;
  signal commit_y_net_x0: std_logic;
  signal concat_y_net: std_logic_vector(64 downto 0);
  signal convert10_dout_net: std_logic;
  signal convert11_dout_net: std_logic;
  signal convert12_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net_x0: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_dout_net_x0: std_logic;
  signal data_fifo_ae_net: std_logic;
  signal data_fifo_af_net: std_logic;
  signal data_fifo_dout_net: std_logic_vector(64 downto 0);
  signal data_fifo_empty_net: std_logic;
  signal data_fifo_full_net: std_logic;
  signal delay10_q_net_x1: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal delay3_q_net: std_logic;
  signal delay48_q_net_x0: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic_vector(64 downto 0);
  signal delay6_q_net_x0: std_logic;
  signal delay7_q_net_x2: std_logic;
  signal delay8_q_net_x2: std_logic_vector(63 downto 0);
  signal delay9_q_net_x1: std_logic;
  signal delay_q_net: std_logic;
  signal fifo_empty1_y_net: std_logic;
  signal fifo_empty_y_net_x0: std_logic;
  signal fifo_full_y_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net_x0: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter4_op_net: std_logic;
  signal ip_fifo_dout_net_x0: std_logic_vector(31 downto 0);
  signal ip_fifo_empty_net: std_logic;
  signal ip_fifo_full_net: std_logic;
  signal register0_q_net_x4: std_logic;
  signal register0_q_net_x5: std_logic_vector(31 downto 0);
  signal register0_q_net_x6: std_logic;
  signal register0_q_net_x7: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(63 downto 0);
  signal valid_eof_0_y_net_x0: std_logic;

begin
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  register0_q_net_x7 <= d_in;
  register0_q_net_x5 <= dest_ip_0;
  register0_q_net_x4 <= eof_in;
  delay48_q_net_x0 <= re;
  register0_q_net_x6 <= valid_in;
  buffer_empty <= fifo_empty_y_net_x0;
  buffer_overflow <= fifo_full_y_net_x0;
  d_in_x0 <= convert7_dout_net_x0;
  d_out <= buf_data3_y_net_x0;
  data <= delay8_q_net_x2;
  data_full <= delay2_q_net_x0;
  data_rdy <= delay9_q_net_x1;
  eof <= delay7_q_net_x2;
  eof_out <= buf_eof3_y_net_x0;
  in_valid_eof <= valid_eof_0_y_net_x0;
  ip_addr <= ip_fifo_dout_net_x0;
  ip_commit <= commit_y_net_x0;
  ip_fetch <= commit1_y_net_x0;
  re_x0 <= convert4_dout_net_x0;
  v_in <= convert_dout_net_x0;
  v_out <= delay6_q_net_x0;
  valid <= delay10_q_net_x1;
  we <= inverter2_op_net_x0;

  buf_data3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 63,
      x_width => 65,
      y_width => 64
    )
    port map (
      x => delay5_q_net,
      y => buf_data3_y_net_x0
    );

  buf_eof3: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 64,
      x_width => 65,
      y_width => 1
    )
    port map (
      x => delay5_q_net,
      y(0) => buf_eof3_y_net_x0
    );

  commit: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => valid_eof_0_y_net_x0,
      d1(0) => inverter4_op_net,
      y(0) => commit_y_net_x0
    );

  commit1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay6_q_net_x0,
      d1(0) => buf_eof3_y_net_x0,
      y(0) => commit1_y_net_x0
    );

  concat: entity work.concat_39a9232e16
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert6_dout_net,
      in1 => convert7_dout_net_x0,
      y => concat_y_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => register0_q_net_x6,
      dout(0) => convert_dout_net_x0
    );

  convert10: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => convert3_dout_net,
      dout(0) => convert10_dout_net
    );

  convert11: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => convert12_dout_net,
      dout(0) => convert11_dout_net
    );

  convert12: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay3_q_net,
      dout(0) => convert12_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => register0_q_net_x4,
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay4_q_net,
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay48_q_net_x0,
      dout(0) => convert4_dout_net_x0
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => valid_eof_0_y_net_x0,
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => reinterpret_output_port_net,
      dout => convert7_dout_net_x0
    );

  data_fifo: entity work.xlfifogen
    generic map (
      core_name0 => "fifo_fg53_d5c899ca81df0776",
      data_count_width => 11,
      data_width => 65,
      has_ae => 1,
      has_af => 1,
      percent_full_width => 1
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      din => concat_y_net,
      en => '1',
      re => fifo_empty1_y_net,
      re_ce => ce_1_sg_x56,
      rst => '0',
      we => convert_dout_net_x0,
      we_ce => ce_1_sg_x56,
      ae => data_fifo_ae_net,
      af => data_fifo_af_net,
      dout => data_fifo_dout_net,
      empty => data_fifo_empty_net,
      full => data_fifo_full_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => fifo_empty1_y_net,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => data_fifo_empty_net,
      q(0) => delay1_q_net
    );

  delay10: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => delay6_q_net_x0,
      q(0) => delay10_q_net_x1
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => data_fifo_full_net,
      q(0) => delay2_q_net_x0
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => data_fifo_ae_net,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => data_fifo_af_net,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_15f5a81b1f
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d => data_fifo_dout_net,
      q => delay5_q_net
    );

  delay6: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => delay_q_net,
      q(0) => delay6_q_net_x0
    );

  delay7: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => buf_eof3_y_net_x0,
      q(0) => delay7_q_net_x2
    );

  delay8: entity work.delay_e2d047c154
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d => buf_data3_y_net_x0,
      q => delay8_q_net_x2
    );

  delay9: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      d(0) => inverter3_op_net,
      q(0) => delay9_q_net_x1
    );

  fifo_empty: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => ip_fifo_empty_net,
      d1(0) => delay1_q_net,
      y(0) => fifo_empty_y_net_x0
    );

  fifo_empty1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert4_dout_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => fifo_empty1_y_net
    );

  fifo_full: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => ip_fifo_full_net,
      d1(0) => delay2_q_net_x0,
      y(0) => fifo_full_y_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      ip(0) => delay1_q_net,
      op(0) => inverter1_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      ip(0) => convert10_dout_net,
      op(0) => inverter2_op_net_x0
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      ip(0) => convert11_dout_net,
      op(0) => inverter3_op_net
    );

  inverter4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      ip(0) => delay2_q_net_x0,
      op(0) => inverter4_op_net
    );

  ip_fifo: entity work.xlfifogen
    generic map (
      core_name0 => "fifo_fg53_e06690cdbc1dc7ca",
      data_count_width => 6,
      data_width => 32,
      has_ae => 0,
      has_af => 0,
      percent_full_width => 2
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      din => register0_q_net_x5,
      en => '1',
      re => commit1_y_net_x0,
      re_ce => ce_1_sg_x56,
      rst => '0',
      we => commit_y_net_x0,
      we_ce => ce_1_sg_x56,
      dout => ip_fifo_dout_net_x0,
      empty => ip_fifo_empty_net,
      full => ip_fifo_full_net
    );

  reinterpret: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register0_q_net_x7,
      output_port => reinterpret_output_port_net
    );

  valid_eof_0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net_x0,
      d1(0) => convert2_dout_net,
      y(0) => valid_eof_0_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Loopback"

entity loopback_entity_20081bd26d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cnt_rst: in std_logic; 
    gbe_sw_eof: in std_logic; 
    gbe_sw_rx: in std_logic_vector(63 downto 0); 
    gbe_sw_rx_valid: in std_logic; 
    gbe_sw_srcip: in std_logic_vector(31 downto 0); 
    gbe_sw_tx_data: in std_logic_vector(63 downto 0); 
    gbe_sw_tx_discard: in std_logic; 
    gbe_sw_tx_eof: in std_logic; 
    gbe_sw_tx_ip: in std_logic_vector(31 downto 0); 
    gbe_sw_tx_vld: in std_logic; 
    loopback_mux_rst: in std_logic; 
    my_ip: in std_logic_vector(31 downto 0); 
    delay75: out std_logic_vector(31 downto 0); 
    lb_mux_data: out std_logic_vector(63 downto 0); 
    lb_mux_eof: out std_logic; 
    lb_mux_flag: out std_logic; 
    lb_mux_valid: out std_logic; 
    loop_cnt0: out std_logic_vector(31 downto 0); 
    loop_err_cnt0: out std_logic_vector(31 downto 0); 
    loopback_mux0: out std_logic_vector(31 downto 0); 
    rx_pkt_fifo0: out std_logic; 
    rx_pkt_fifo0_x0: out std_logic; 
    rx_pkt_fifo0_x1: out std_logic_vector(63 downto 0); 
    rx_pkt_fifo0_x2: out std_logic; 
    rx_pkt_fifo0_x3: out std_logic; 
    rx_pkt_fifo0_x4: out std_logic_vector(63 downto 0); 
    rx_pkt_fifo0_x5: out std_logic; 
    rx_pkt_fifo0_x6: out std_logic; 
    rx_pkt_fifo0_x7: out std_logic; 
    rx_pkt_fifo0_x8: out std_logic_vector(31 downto 0); 
    rx_pkt_fifo0_x9: out std_logic; 
    statii: out std_logic_vector(31 downto 0)
  );
end loopback_entity_20081bd26d;

architecture structural of loopback_entity_20081bd26d is
  signal buf_data3_y_net_x1: std_logic_vector(63 downto 0);
  signal buf_eof3_y_net_x1: std_logic;
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal commit1_y_net_x1: std_logic;
  signal commit_y_net_x1: std_logic;
  signal concat1_y_net_x0: std_logic_vector(31 downto 0);
  signal constant_op_net: std_logic_vector(27 downto 0);
  signal convert20_dout_net_x3: std_logic;
  signal convert4_dout_net_x1: std_logic;
  signal convert7_dout_net_x1: std_logic_vector(63 downto 0);
  signal convert_dout_net_x10: std_logic;
  signal convert_dout_net_x11: std_logic_vector(31 downto 0);
  signal convert_dout_net_x6: std_logic_vector(31 downto 0);
  signal convert_dout_net_x7: std_logic_vector(31 downto 0);
  signal convert_dout_net_x8: std_logic;
  signal convert_dout_net_x9: std_logic_vector(31 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay1_q_net_x4: std_logic;
  signal delay2_q_net_x1: std_logic;
  signal delay2_q_net_x2: std_logic_vector(63 downto 0);
  signal delay3_q_net_x4: std_logic;
  signal delay47_q_net_x1: std_logic;
  signal delay48_q_net_x0: std_logic;
  signal delay4_q_net_x1: std_logic_vector(31 downto 0);
  signal delay4_q_net_x2: std_logic;
  signal delay5_q_net_x2: std_logic;
  signal delay6_q_net_x1: std_logic;
  signal delay7_q_net_x2: std_logic;
  signal delay8_q_net_x2: std_logic_vector(63 downto 0);
  signal delay9_q_net_x1: std_logic;
  signal fifo_empty_y_net_x0: std_logic;
  signal fifo_full_y_net_x0: std_logic;
  signal inverter2_op_net_x0: std_logic;
  signal ip_fifo_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical13_y_net_x0: std_logic;
  signal logical18_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal mux_y_net_x3: std_logic_vector(63 downto 0);
  signal payload_cnt1_op_net_x1: std_logic_vector(31 downto 0);
  signal payload_cnt2_op_net_x1: std_logic_vector(31 downto 0);
  signal register0_q_net_x10: std_logic;
  signal register0_q_net_x11: std_logic_vector(31 downto 0);
  signal register0_q_net_x12: std_logic;
  signal register0_q_net_x13: std_logic_vector(63 downto 0);
  signal register0_q_net_x14: std_logic_vector(31 downto 0);
  signal register0_q_net_x4: std_logic;
  signal register0_q_net_x6: std_logic_vector(63 downto 0);
  signal register0_q_net_x7: std_logic;
  signal register0_q_net_x8: std_logic_vector(31 downto 0);
  signal register0_q_net_x9: std_logic;
  signal register2_q_net_x1: std_logic;
  signal register3_q_net_x1: std_logic;
  signal register5_q_net_x3: std_logic;
  signal register_q_net_x1: std_logic_vector(63 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x1: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_data_net_x1: std_logic_vector(63 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net_x1: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_source_ip_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_valid_net_x1: std_logic;
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice3_y_net_x1: std_logic;
  signal slice4_y_net_x1: std_logic;
  signal valid_eof_0_y_net_x1: std_logic;

begin
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  slice4_y_net_x1 <= cnt_rst;
  roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net_x1 <= gbe_sw_eof;
  roachf_2048ch_switch_gbe_sw_rx_data_net_x1 <= gbe_sw_rx;
  roachf_2048ch_switch_gbe_sw_rx_valid_net_x1 <= gbe_sw_rx_valid;
  roachf_2048ch_switch_gbe_sw_rx_source_ip_net_x1 <= gbe_sw_srcip;
  register_q_net_x1 <= gbe_sw_tx_data;
  roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x1 <= gbe_sw_tx_discard;
  register3_q_net_x1 <= gbe_sw_tx_eof;
  slice2_y_net_x1 <= gbe_sw_tx_ip;
  register2_q_net_x1 <= gbe_sw_tx_vld;
  slice3_y_net_x1 <= loopback_mux_rst;
  delay4_q_net_x1 <= my_ip;
  delay75 <= register0_q_net_x14;
  lb_mux_data <= mux_y_net_x3;
  lb_mux_eof <= convert20_dout_net_x3;
  lb_mux_flag <= register5_q_net_x3;
  lb_mux_valid <= convert_dout_net_x8;
  loop_cnt0 <= convert_dout_net_x6;
  loop_err_cnt0 <= convert_dout_net_x7;
  loopback_mux0 <= convert_dout_net_x9;
  rx_pkt_fifo0 <= convert_dout_net_x10;
  rx_pkt_fifo0_x0 <= convert4_dout_net_x1;
  rx_pkt_fifo0_x1 <= convert7_dout_net_x1;
  rx_pkt_fifo0_x2 <= delay2_q_net_x1;
  rx_pkt_fifo0_x3 <= delay6_q_net_x1;
  rx_pkt_fifo0_x4 <= buf_data3_y_net_x1;
  rx_pkt_fifo0_x5 <= buf_eof3_y_net_x1;
  rx_pkt_fifo0_x6 <= commit_y_net_x1;
  rx_pkt_fifo0_x7 <= commit1_y_net_x1;
  rx_pkt_fifo0_x8 <= ip_fifo_dout_net_x1;
  rx_pkt_fifo0_x9 <= valid_eof_0_y_net_x1;
  statii <= convert_dout_net_x11;

  concat1: entity work.concat_5ac5b45345
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1(0) => logical18_y_net_x0,
      in2(0) => fifo_full_y_net_x0,
      in3(0) => fifo_empty_y_net_x0,
      in4(0) => inverter2_op_net_x0,
      y => concat1_y_net_x0
    );

  constant_x0: entity work.constant_98b461a391
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  delay14_aaea730e0a: entity work.delay14_entity_aaea730e0a
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => register_q_net_x1,
      q => register0_q_net_x6
    );

  delay15_1b3340233c: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => register2_q_net_x1,
      q => register0_q_net_x7
    );

  delay16_ae22af2a7f: entity work.delay16_entity_ae22af2a7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => slice2_y_net_x1,
      q => register0_q_net_x8
    );

  delay24_a4ed6c7274: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net_x1,
      q => register0_q_net_x4
    );

  delay44_cf4853696e: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => register3_q_net_x1,
      q => register0_q_net_x9
    );

  delay45_21100aeab5: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x1,
      q => register0_q_net_x10
    );

  delay46_fa15e97585: entity work.delay16_entity_ae22af2a7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => delay4_q_net_x1,
      q => register0_q_net_x11
    );

  delay47: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d(0) => logical3_y_net_x0,
      q(0) => delay47_q_net_x1
    );

  delay48: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d(0) => logical13_y_net_x0,
      q(0) => delay48_q_net_x0
    );

  delay75_251c71ecf0: entity work.delay16_entity_ae22af2a7f
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roachf_2048ch_switch_gbe_sw_rx_source_ip_net_x1,
      q => register0_q_net_x14
    );

  delay76_ec0da4df59: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roachf_2048ch_switch_gbe_sw_rx_valid_net_x1,
      q => register0_q_net_x12
    );

  delay79_81f5eecf00: entity work.delay14_entity_aaea730e0a
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roachf_2048ch_switch_gbe_sw_rx_data_net_x1,
      q => register0_q_net_x13
    );

  loop_cnt0_50bec196fd: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => payload_cnt1_op_net_x1,
      convert_x0 => convert_dout_net_x6
    );

  loop_err_cnt0_abfc376326: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => payload_cnt2_op_net_x1,
      convert_x0 => convert_dout_net_x7
    );

  loopback_fifo0_f997a30533: entity work.loopback_fifo0_entity_f997a30533
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      dest_ip => register0_q_net_x8,
      din => register0_q_net_x6,
      discard => register0_q_net_x10,
      eof => register0_q_net_x9,
      my_ip => register0_q_net_x11,
      re => delay47_q_net_x1,
      we => register0_q_net_x7,
      data_rdy => delay4_q_net_x2,
      dout => delay2_q_net_x2,
      eof_out => delay1_q_net_x4,
      overflow => delay5_q_net_x2,
      valid => delay3_q_net_x4
    );

  loopback_mux0_a214b462fb: entity work.loopback_mux0_entity_a214b462fb
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      gbe_data_rdy => delay9_q_net_x1,
      gbe_din => delay8_q_net_x2,
      gbe_eof => delay7_q_net_x2,
      gbe_valid => delay10_q_net_x1,
      loop_data_rdy => delay4_q_net_x2,
      loop_din => delay2_q_net_x2,
      loop_eof => delay1_q_net_x4,
      loop_valid => delay3_q_net_x4,
      rst => slice3_y_net_x1,
      dout => mux_y_net_x3,
      eof => convert20_dout_net_x3,
      err => logical18_y_net_x0,
      flag => register5_q_net_x3,
      gbe_re => logical13_y_net_x0,
      loop_re => logical3_y_net_x0,
      mcnt => convert_dout_net_x9,
      valid => convert_dout_net_x8
    );

  rx_pkt_fifo0_060e97aac2: entity work.rx_pkt_fifo0_entity_060e97aac2
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d_in => register0_q_net_x13,
      dest_ip_0 => register0_q_net_x14,
      eof_in => register0_q_net_x4,
      re => delay48_q_net_x0,
      valid_in => register0_q_net_x12,
      buffer_empty => fifo_empty_y_net_x0,
      buffer_overflow => fifo_full_y_net_x0,
      d_in_x0 => convert7_dout_net_x1,
      d_out => buf_data3_y_net_x1,
      data => delay8_q_net_x2,
      data_full => delay2_q_net_x1,
      data_rdy => delay9_q_net_x1,
      eof => delay7_q_net_x2,
      eof_out => buf_eof3_y_net_x1,
      in_valid_eof => valid_eof_0_y_net_x1,
      ip_addr => ip_fifo_dout_net_x1,
      ip_commit => commit_y_net_x1,
      ip_fetch => commit1_y_net_x1,
      re_x0 => convert4_dout_net_x1,
      v_in => convert_dout_net_x10,
      v_out => delay6_q_net_x1,
      valid => delay10_q_net_x1,
      we => inverter2_op_net_x0
    );

  statii_076956a904: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => concat1_y_net_x0,
      convert_x0 => convert_dout_net_x11
    );

  subsystem12_d73b4e9e36: entity work.subsystem12_entity_d73b4e9e36
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      eof => delay1_q_net_x4,
      overflow => delay5_q_net_x2,
      rst => slice4_y_net_x1,
      we => delay3_q_net_x4,
      err_cnt => payload_cnt2_op_net_x1,
      rx_cnt => payload_cnt1_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/PFBs/preshift0/preshift0/convert"

entity convert_entity_c1e8df0c72 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(23 downto 0); 
    out_x0: out std_logic_vector(17 downto 0)
  );
end convert_entity_c1e8df0c72;

architecture structural of convert_entity_c1e8df0c72 is
  signal adder_s_net_x0: std_logic_vector(17 downto 0);
  signal almost_half_op_net: std_logic_vector(20 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal concat_y_net: std_logic_vector(24 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(24 downto 0);
  signal force2_output_port_net: std_logic_vector(20 downto 0);
  signal mux_y_net_x0: std_logic_vector(23 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(23 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  mux_y_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_2969055f39
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_9a2c97cce5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux_y_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_f133931c1f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1(0) => tweak_op_y_net,
      y => concat_y_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  force1: entity work.reinterpret_60ea556961
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_299ca43e25
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_938d99ac11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => bit_y_net,
      d1(0) => constant_op_net,
      y(0) => tweak_op_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/PFBs/preshift0/preshift0"

entity preshift0_entity_1fa9bc3eb3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    fft_preshift: in std_logic_vector(1 downto 0); 
    in1: in std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0)
  );
end preshift0_entity_1fa9bc3eb3;

architecture structural of preshift0_entity_1fa9bc3eb3 is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal convert_dout_net: std_logic_vector(20 downto 0);
  signal mux_y_net_x0: std_logic_vector(23 downto 0);
  signal pfb_fir_bb0_out0_net_x0: std_logic_vector(17 downto 0);
  signal scale1_op_net: std_logic_vector(20 downto 0);
  signal scale2_op_net: std_logic_vector(20 downto 0);
  signal scale_op_net: std_logic_vector(20 downto 0);
  signal slice2_y_net_x0: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
  slice2_y_net_x0 <= fft_preshift;
  pfb_fir_bb0_out0_net_x0 <= in1;
  out1 <= adder_s_net_x1;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 21,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => pfb_fir_bb0_out0_net_x0,
      dout => convert_dout_net
    );

  convert_c1e8df0c72: entity work.convert_entity_c1e8df0c72
    port map (
      ce_1 => ce_1_sg_x59,
      clk_1 => clk_1_sg_x59,
      in_x0 => mux_y_net_x0,
      out_x0 => adder_s_net_x1
    );

  mux: entity work.mux_aa8aa9d15c
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      d0 => convert_dout_net,
      d1 => scale_op_net,
      d2 => scale1_op_net,
      d3 => scale2_op_net,
      sel => slice2_y_net_x0,
      y => mux_y_net_x0
    );

  scale: entity work.scale_fb1609b028
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => convert_dout_net,
      op => scale_op_net
    );

  scale1: entity work.scale_fb1609b028
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => convert_dout_net,
      op => scale1_op_net
    );

  scale2: entity work.scale_fb1609b028
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => convert_dout_net,
      op => scale2_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/PFBs/preshift0"

entity preshift0_entity_8b881f3c82 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(17 downto 0); 
    in1: in std_logic_vector(17 downto 0); 
    slice2: in std_logic_vector(1 downto 0); 
    sync_in: in std_logic; 
    out0: out std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end preshift0_entity_8b881f3c82;

architecture structural of preshift0_entity_8b881f3c82 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal delay_q_net_x0: std_logic;
  signal pfb_fir_bb0_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb0_out1_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb0_sync_out_net_x0: std_logic;
  signal slice2_y_net_x2: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  pfb_fir_bb0_out0_net_x1 <= in0;
  pfb_fir_bb0_out1_net_x1 <= in1;
  slice2_y_net_x2 <= slice2;
  pfb_fir_bb0_sync_out_net_x0 <= sync_in;
  out0 <= adder_s_net_x3;
  out1 <= adder_s_net_x4;
  sync_out <= delay_q_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d(0) => pfb_fir_bb0_sync_out_net_x0,
      en => '1',
      q(0) => delay_q_net_x0
    );

  preshift0_1fa9bc3eb3: entity work.preshift0_entity_1fa9bc3eb3
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      fft_preshift => slice2_y_net_x2,
      in1 => pfb_fir_bb0_out0_net_x1,
      out1 => adder_s_net_x3
    );

  preshift1_b02c73b36f: entity work.preshift0_entity_1fa9bc3eb3
    port map (
      ce_1 => ce_1_sg_x62,
      clk_1 => clk_1_sg_x62,
      fft_preshift => slice2_y_net_x2,
      in1 => pfb_fir_bb0_out1_net_x1,
      out1 => adder_s_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/PFBs/preshift1"

entity preshift1_entity_6253c6acf0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(17 downto 0); 
    in1: in std_logic_vector(17 downto 0); 
    slice2: in std_logic_vector(1 downto 0); 
    out0: out std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0)
  );
end preshift1_entity_6253c6acf0;

architecture structural of preshift1_entity_6253c6acf0 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal ce_1_sg_x67: std_logic;
  signal clk_1_sg_x67: std_logic;
  signal pfb_fir_bb1_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb1_out1_net_x1: std_logic_vector(17 downto 0);
  signal slice2_y_net_x5: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x67 <= ce_1;
  clk_1_sg_x67 <= clk_1;
  pfb_fir_bb1_out0_net_x1 <= in0;
  pfb_fir_bb1_out1_net_x1 <= in1;
  slice2_y_net_x5 <= slice2;
  out0 <= adder_s_net_x3;
  out1 <= adder_s_net_x4;

  preshift0_62f0f2a929: entity work.preshift0_entity_1fa9bc3eb3
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      fft_preshift => slice2_y_net_x5,
      in1 => pfb_fir_bb1_out0_net_x1,
      out1 => adder_s_net_x3
    );

  preshift1_bf96fe1fae: entity work.preshift0_entity_1fa9bc3eb3
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      fft_preshift => slice2_y_net_x5,
      in1 => pfb_fir_bb1_out1_net_x1,
      out1 => adder_s_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/PFBs"

entity pfbs_entity_f76fcc13f8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    fft_shift: in std_logic_vector(15 downto 0); 
    in0: in std_logic_vector(7 downto 0); 
    in1: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    in5: in std_logic_vector(7 downto 0); 
    in6: in std_logic_vector(7 downto 0); 
    in7: in std_logic_vector(7 downto 0); 
    pfb_sync: in std_logic; 
    slice2: in std_logic_vector(1 downto 0); 
    fft0: out std_logic_vector(35 downto 0); 
    fft1: out std_logic_vector(35 downto 0); 
    fft2: out std_logic_vector(35 downto 0); 
    fft3: out std_logic_vector(35 downto 0); 
    sync_fft0: out std_logic
  );
end pfbs_entity_f76fcc13f8;

architecture structural of pfbs_entity_f76fcc13f8 is
  signal adder_s_net_x10: std_logic_vector(17 downto 0);
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal adder_s_net_x7: std_logic_vector(17 downto 0);
  signal adder_s_net_x8: std_logic_vector(17 downto 0);
  signal adder_s_net_x9: std_logic_vector(17 downto 0);
  signal addressable_shift_register_q_net_x10: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x11: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x12: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x13: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x14: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x7: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x8: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x9: std_logic_vector(7 downto 0);
  signal ce_1_sg_x78: std_logic;
  signal clk_1_sg_x78: std_logic;
  signal delay_q_net_x0: std_logic;
  signal delay_q_net_x1: std_logic;
  signal fft_bb0_oflow_net: std_logic;
  signal fft_bb0_pol02_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb0_pol13_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb0_sync_out_net_x5: std_logic;
  signal fft_bb1_oflow_net: std_logic;
  signal fft_bb1_pol02_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb1_pol13_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb1_sync_out_net: std_logic;
  signal pfb_fir_bb0_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb0_out1_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb0_sync_out_net_x0: std_logic;
  signal pfb_fir_bb1_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb1_out1_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb1_sync_out_net: std_logic;
  signal pfb_fir_bb2_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb2_out1_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb2_sync_out_net: std_logic;
  signal pfb_fir_bb3_out0_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb3_out1_net_x1: std_logic_vector(17 downto 0);
  signal pfb_fir_bb3_sync_out_net: std_logic;
  signal slice21_y_net_x0: std_logic_vector(15 downto 0);
  signal slice2_y_net_x12: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x78 <= ce_1;
  clk_1_sg_x78 <= clk_1;
  slice21_y_net_x0 <= fft_shift;
  addressable_shift_register_q_net_x7 <= in0;
  addressable_shift_register_q_net_x8 <= in1;
  addressable_shift_register_q_net_x9 <= in2;
  addressable_shift_register_q_net_x10 <= in3;
  addressable_shift_register_q_net_x11 <= in4;
  addressable_shift_register_q_net_x12 <= in5;
  addressable_shift_register_q_net_x13 <= in6;
  addressable_shift_register_q_net_x14 <= in7;
  delay_q_net_x1 <= pfb_sync;
  slice2_y_net_x12 <= slice2;
  fft0 <= fft_bb0_pol02_out_net_x2;
  fft1 <= fft_bb0_pol13_out_net_x2;
  fft2 <= fft_bb1_pol02_out_net_x2;
  fft3 <= fft_bb1_pol13_out_net_x2;
  sync_fft0 <= fft_bb0_sync_out_net_x5;

  fft_bb0: entity work.fft_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      pol0 => adder_s_net_x3,
      pol1 => adder_s_net_x5,
      pol2 => adder_s_net_x4,
      pol3 => adder_s_net_x6,
      shift => slice21_y_net_x0,
      sync => delay_q_net_x0,
      oflow => fft_bb0_oflow_net,
      pol02_out => fft_bb0_pol02_out_net_x2,
      pol13_out => fft_bb0_pol13_out_net_x2,
      sync_out => fft_bb0_sync_out_net_x5
    );

  fft_bb1: entity work.fft_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      pol0 => adder_s_net_x7,
      pol1 => adder_s_net_x9,
      pol2 => adder_s_net_x8,
      pol3 => adder_s_net_x10,
      shift => slice21_y_net_x0,
      sync => delay_q_net_x0,
      oflow => fft_bb1_oflow_net,
      pol02_out => fft_bb1_pol02_out_net_x2,
      pol13_out => fft_bb1_pol13_out_net_x2,
      sync_out => fft_bb1_sync_out_net
    );

  pfb_fir_bb0: entity work.pfb_fir_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => addressable_shift_register_q_net_x7,
      in1 => addressable_shift_register_q_net_x8,
      sync => delay_q_net_x1,
      out0 => pfb_fir_bb0_out0_net_x1,
      out1 => pfb_fir_bb0_out1_net_x1,
      sync_out => pfb_fir_bb0_sync_out_net_x0
    );

  pfb_fir_bb1: entity work.pfb_fir_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => addressable_shift_register_q_net_x9,
      in1 => addressable_shift_register_q_net_x10,
      sync => delay_q_net_x1,
      out0 => pfb_fir_bb1_out0_net_x1,
      out1 => pfb_fir_bb1_out1_net_x1,
      sync_out => pfb_fir_bb1_sync_out_net
    );

  pfb_fir_bb2: entity work.pfb_fir_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => addressable_shift_register_q_net_x11,
      in1 => addressable_shift_register_q_net_x12,
      sync => delay_q_net_x1,
      out0 => pfb_fir_bb2_out0_net_x1,
      out1 => pfb_fir_bb2_out1_net_x1,
      sync_out => pfb_fir_bb2_sync_out_net
    );

  pfb_fir_bb3: entity work.pfb_fir_core
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => addressable_shift_register_q_net_x13,
      in1 => addressable_shift_register_q_net_x14,
      sync => delay_q_net_x1,
      out0 => pfb_fir_bb3_out0_net_x1,
      out1 => pfb_fir_bb3_out1_net_x1,
      sync_out => pfb_fir_bb3_sync_out_net
    );

  preshift0_8b881f3c82: entity work.preshift0_entity_8b881f3c82
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => pfb_fir_bb0_out0_net_x1,
      in1 => pfb_fir_bb0_out1_net_x1,
      slice2 => slice2_y_net_x12,
      sync_in => pfb_fir_bb0_sync_out_net_x0,
      out0 => adder_s_net_x3,
      out1 => adder_s_net_x4,
      sync_out => delay_q_net_x0
    );

  preshift1_6253c6acf0: entity work.preshift1_entity_6253c6acf0
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => pfb_fir_bb1_out0_net_x1,
      in1 => pfb_fir_bb1_out1_net_x1,
      slice2 => slice2_y_net_x12,
      out0 => adder_s_net_x5,
      out1 => adder_s_net_x6
    );

  preshift2_bc46ca966e: entity work.preshift1_entity_6253c6acf0
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => pfb_fir_bb2_out0_net_x1,
      in1 => pfb_fir_bb2_out1_net_x1,
      slice2 => slice2_y_net_x12,
      out0 => adder_s_net_x7,
      out1 => adder_s_net_x8
    );

  preshift3_11f87b5262: entity work.preshift1_entity_6253c6acf0
    port map (
      ce_1 => ce_1_sg_x78,
      clk_1 => clk_1_sg_x78,
      in0 => pfb_fir_bb3_out0_net_x1,
      in1 => pfb_fir_bb3_out1_net_x1,
      slice2 => slice2_y_net_x12,
      out0 => adder_s_net_x9,
      out1 => adder_s_net_x10
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Switch/ip_generator"

entity ip_generator_entity_af302315d5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(63 downto 0); 
    eof_in: in std_logic; 
    header_valid: in std_logic; 
    ip_base: in std_logic_vector(31 downto 0); 
    valid_in: in std_logic; 
    data_out: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    ip: out std_logic_vector(31 downto 0); 
    valid_out: out std_logic
  );
end ip_generator_entity_af302315d5;

architecture structural of ip_generator_entity_af302315d5 is
  signal addsub_s_net: std_logic_vector(32 downto 0);
  signal ce_1_sg_x79: std_logic;
  signal clk_1_sg_x79: std_logic;
  signal convert_dout_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay3_q_net_x0: std_logic_vector(31 downto 0);
  signal logical2_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(63 downto 0);
  signal register1_q_net: std_logic_vector(63 downto 0);
  signal register2_q_net_x3: std_logic;
  signal register3_q_net_x3: std_logic;
  signal register_q_net_x3: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net_x3: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic_vector(23 downto 0);

begin
  ce_1_sg_x79 <= ce_1;
  clk_1_sg_x79 <= clk_1;
  mux_y_net_x0 <= data_in;
  logical3_y_net_x0 <= eof_in;
  delay1_q_net_x0 <= header_valid;
  delay3_q_net_x0 <= ip_base;
  logical2_y_net_x0 <= valid_in;
  data_out <= register_q_net_x3;
  eof <= register3_q_net_x3;
  ip <= slice2_y_net_x3;
  valid_out <= register2_q_net_x3;

  addsub: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 24,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 32,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 33,
      core_name0 => "addsb_11_0_a25ab30f6829c208",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 33,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 33
    )
    port map (
      a => slice_y_net,
      b => convert_dout_net,
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => reinterpret_output_port_net,
      dout => convert_dout_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d => mux_y_net_x0,
      en(0) => delay1_q_net_x0,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d(0) => logical2_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register2_q_net_x3
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d(0) => logical3_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net_x3
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d => mux_y_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net_x3
    );

  reinterpret: entity work.reinterpret_f21e7f2ddf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 31,
      x_width => 32,
      y_width => 24
    )
    port map (
      x => delay3_q_net_x0,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 64,
      y_width => 8
    )
    port map (
      x => register1_q_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 33,
      y_width => 32
    )
    port map (
      x => addsub_s_net,
      y => slice2_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Switch/packetiser/edge2"

entity edge2_entity_e8d0c540c2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge2_entity_e8d0c540c2;

architecture structural of edge2_entity_e8d0c540c2 is
  signal ce_1_sg_x80: std_logic;
  signal clk_1_sg_x80: std_logic;
  signal delay4_q_net: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical3_y_net_x2: std_logic;

begin
  ce_1_sg_x80 <= ce_1;
  clk_1_sg_x80 <= clk_1;
  logical3_y_net_x1 <= in_x0;
  out_x0 <= logical3_y_net_x2;

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      d(0) => logical3_y_net_x1,
      en => '1',
      q(0) => delay4_q_net
    );

  logical3: entity work.logical_e77c53f8bd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay4_q_net,
      d1(0) => logical3_y_net_x1,
      y(0) => logical3_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Switch/packetiser"

entity packetiser_entity_0516551d20 is
  port (
    ant_base: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    mrst_in: in std_logic; 
    sync_in: in std_logic; 
    data_out: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    header_out: out std_logic; 
    mcnt: out std_logic_vector(47 downto 0); 
    slice1_x0: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic; 
    valid_out: out std_logic
  );
end packetiser_entity_0516551d20;

architecture structural of packetiser_entity_0516551d20 is
  signal bram0_data_out_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x81: std_logic;
  signal clk_1_sg_x81: std_logic;
  signal clk_cnt1_op_net: std_logic_vector(62 downto 0);
  signal concat10_y_net: std_logic_vector(63 downto 0);
  signal concat1_y_net: std_logic_vector(63 downto 0);
  signal constant_op_net: std_logic_vector(3 downto 0);
  signal convert4_dout_net: std_logic;
  signal delay11_q_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal delay2_q_net: std_logic_vector(31 downto 0);
  signal delay2_q_net_x1: std_logic_vector(31 downto 0);
  signal delay3_q_net_x0: std_logic_vector(47 downto 0);
  signal delay4_q_net: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical3_y_net_x3: std_logic;
  signal mux_y_net_x1: std_logic;
  signal mux_y_net_x2: std_logic_vector(63 downto 0);
  signal post_sync_delay_q_net_x0: std_logic;
  signal register1_q_net_x0: std_logic;
  signal register2_q_net: std_logic;
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);
  signal slice5_y_net: std_logic_vector(7 downto 0);
  signal slice6_y_net: std_logic_vector(3 downto 0);
  signal slice7_y_net: std_logic_vector(47 downto 0);
  signal slice8_y_net: std_logic;
  signal slice9_y_net: std_logic;

begin
  delay2_q_net_x1 <= ant_base;
  ce_1_sg_x81 <= ce_1;
  clk_1_sg_x81 <= clk_1;
  bram0_data_out_net_x0 <= data_in;
  mux_y_net_x1 <= mrst_in;
  post_sync_delay_q_net_x0 <= sync_in;
  data_out <= mux_y_net_x2;
  eof <= logical3_y_net_x3;
  header_out <= delay1_q_net_x1;
  mcnt <= delay3_q_net_x0;
  slice1_x0 <= slice1_y_net_x0;
  sync_out <= register1_q_net_x0;
  valid_out <= logical2_y_net_x1;

  clk_cnt1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_286e61d5bf87dbe2",
      op_arith => xlUnsigned,
      op_width => 63
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      en => "1",
      rst(0) => register2_q_net,
      op => clk_cnt1_op_net
    );

  concat1: entity work.concat_c148231f61
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => delay3_q_net_x0,
      in1 => slice5_y_net,
      in2 => constant_op_net,
      in3 => slice6_y_net,
      y => concat1_y_net
    );

  concat10: entity work.concat_62c4475a80
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => delay11_q_net,
      in1 => delay2_q_net,
      y => concat10_y_net
    );

  constant_x0: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => delay1_q_net_x1,
      dout(0) => convert4_dout_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      d(0) => logical3_y_net_x3,
      q(0) => delay1_q_net_x1
    );

  delay11: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      d => delay2_q_net,
      q => delay11_q_net
    );

  delay2: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      d => bram0_data_out_net_x0,
      q => delay2_q_net
    );

  delay3: entity work.delay_d8eaaced1c
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      d => slice7_y_net,
      q => delay3_q_net_x0
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      d(0) => slice8_y_net,
      q(0) => delay4_q_net
    );

  edge2_e8d0c540c2: entity work.edge2_entity_e8d0c540c2
    port map (
      ce_1 => ce_1_sg_x81,
      clk_1 => clk_1_sg_x81,
      in_x0 => logical3_y_net_x1,
      out_x0 => logical3_y_net_x3
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay1_q_net_x1,
      d1(0) => delay4_q_net,
      y(0) => logical2_y_net_x1
    );

  logical3: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice9_y_net,
      d1(0) => register2_q_net,
      y(0) => logical3_y_net_x1
    );

  mux: entity work.mux_dc8b84fd59
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => concat10_y_net,
      d1 => concat1_y_net,
      sel(0) => convert4_dout_net,
      y => mux_y_net_x2
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      d(0) => post_sync_delay_q_net_x0,
      en(0) => post_sync_delay_q_net_x0,
      rst(0) => logical2_y_net_x1,
      q(0) => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      d(0) => mux_y_net_x1,
      en(0) => mux_y_net_x1,
      rst(0) => post_sync_delay_q_net_x0,
      q(0) => register2_q_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => mux_y_net_x2,
      y => slice1_y_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 9,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => delay2_q_net_x1,
      y => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 14,
      x_width => 63,
      y_width => 4
    )
    port map (
      x => clk_cnt1_op_net,
      y => slice6_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 62,
      x_width => 63,
      y_width => 48
    )
    port map (
      x => clk_cnt1_op_net,
      y => slice7_y_net
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 63,
      y_width => 1
    )
    port map (
      x => clk_cnt1_op_net,
      y(0) => slice8_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 63,
      y_width => 1
    )
    port map (
      x => clk_cnt1_op_net,
      y(0) => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Switch"

entity switch_entity_100927dfbc is
  port (
    ant12_pol12_reorder: in std_logic_vector(31 downto 0); 
    ant_base_offset: in std_logic_vector(31 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gbe_sw_rst: in std_logic; 
    ip_base: in std_logic_vector(31 downto 0); 
    mrst: in std_logic; 
    port_x0: in std_logic_vector(31 downto 0); 
    sync_reorder: in std_logic; 
    gbe_sw: out std_logic; 
    gbe_sw_tx_data: out std_logic_vector(63 downto 0); 
    gbe_sw_tx_eof: out std_logic; 
    gbe_sw_tx_ip: out std_logic_vector(31 downto 0); 
    gbe_sw_tx_vld: out std_logic; 
    gbe_sw_x0: out std_logic; 
    gbe_sw_x1: out std_logic; 
    gbe_sw_x2: out std_logic_vector(63 downto 0); 
    gbe_sw_x3: out std_logic_vector(31 downto 0); 
    gbe_sw_x4: out std_logic; 
    gbe_sw_x5: out std_logic_vector(15 downto 0); 
    gbe_sw_x6: out std_logic; 
    packetiser: out std_logic; 
    packetiser_x0: out std_logic_vector(47 downto 0); 
    packetiser_x1: out std_logic; 
    packetiser_x2: out std_logic; 
    packetiser_x3: out std_logic_vector(31 downto 0); 
    packetiser_x4: out std_logic
  );
end switch_entity_100927dfbc;

architecture structural of switch_entity_100927dfbc is
  signal bram0_data_out_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x82: std_logic;
  signal clk_1_sg_x82: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_rst_dout_net_x1: std_logic;
  signal convert_rx_ack_dout_net_x1: std_logic;
  signal convert_rx_overrun_ack_dout_net_x1: std_logic;
  signal convert_tx_data_dout_net_x1: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x1: std_logic;
  signal convert_tx_port_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x1: std_logic;
  signal delay1_q_net_x2: std_logic;
  signal delay2_q_net_x2: std_logic_vector(31 downto 0);
  signal delay3_q_net_x2: std_logic_vector(31 downto 0);
  signal delay3_q_net_x3: std_logic_vector(47 downto 0);
  signal delay5_q_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x2: std_logic;
  signal logical3_y_net_x4: std_logic;
  signal mux_y_net_x2: std_logic_vector(63 downto 0);
  signal mux_y_net_x3: std_logic;
  signal post_sync_delay_q_net_x1: std_logic;
  signal register1_q_net_x1: std_logic;
  signal register2_q_net_x4: std_logic;
  signal register3_q_net_x4: std_logic;
  signal register_q_net_x4: std_logic_vector(63 downto 0);
  signal slice1_y_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x4: std_logic_vector(31 downto 0);
  signal slice5_y_net_x1: std_logic;

begin
  bram0_data_out_net_x1 <= ant12_pol12_reorder;
  delay2_q_net_x2 <= ant_base_offset;
  ce_1_sg_x82 <= ce_1;
  clk_1_sg_x82 <= clk_1;
  slice5_y_net_x1 <= gbe_sw_rst;
  delay3_q_net_x2 <= ip_base;
  mux_y_net_x3 <= mrst;
  delay5_q_net_x1 <= port_x0;
  post_sync_delay_q_net_x1 <= sync_reorder;
  gbe_sw <= convert_rst_dout_net_x1;
  gbe_sw_tx_data <= register_q_net_x4;
  gbe_sw_tx_eof <= register3_q_net_x4;
  gbe_sw_tx_ip <= slice2_y_net_x4;
  gbe_sw_tx_vld <= register2_q_net_x4;
  gbe_sw_x0 <= convert_rx_ack_dout_net_x1;
  gbe_sw_x1 <= convert_rx_overrun_ack_dout_net_x1;
  gbe_sw_x2 <= convert_tx_data_dout_net_x1;
  gbe_sw_x3 <= convert_tx_dest_ip_dout_net_x1;
  gbe_sw_x4 <= convert_tx_end_of_frame_dout_net_x1;
  gbe_sw_x5 <= convert_tx_port_dout_net_x1;
  gbe_sw_x6 <= convert_tx_valid_dout_net_x1;
  packetiser <= delay1_q_net_x2;
  packetiser_x0 <= delay3_q_net_x3;
  packetiser_x1 <= logical2_y_net_x2;
  packetiser_x2 <= register1_q_net_x1;
  packetiser_x3 <= slice1_y_net_x1;
  packetiser_x4 <= logical3_y_net_x4;

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  gbe_sw_9b0fb1a076: entity work.gbe_gpu_entity_812522528c
    port map (
      rst => slice5_y_net_x1,
      rx_ack => constant_op_net_x0,
      rx_overrun_ack => constant1_op_net_x0,
      tx_data => register_q_net_x4,
      tx_dest_ip => slice2_y_net_x4,
      tx_dest_port => delay5_q_net_x1,
      tx_end_of_frame => register3_q_net_x4,
      tx_valid => register2_q_net_x4,
      convert_rst_x0 => convert_rst_dout_net_x1,
      convert_rx_ack_x0 => convert_rx_ack_dout_net_x1,
      convert_rx_overrun_ack_x0 => convert_rx_overrun_ack_dout_net_x1,
      convert_tx_data_x0 => convert_tx_data_dout_net_x1,
      convert_tx_dest_ip_x0 => convert_tx_dest_ip_dout_net_x1,
      convert_tx_end_of_frame_x0 => convert_tx_end_of_frame_dout_net_x1,
      convert_tx_port_x0 => convert_tx_port_dout_net_x1,
      convert_tx_valid_x0 => convert_tx_valid_dout_net_x1
    );

  ip_generator_af302315d5: entity work.ip_generator_entity_af302315d5
    port map (
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      data_in => mux_y_net_x2,
      eof_in => logical3_y_net_x4,
      header_valid => delay1_q_net_x2,
      ip_base => delay3_q_net_x2,
      valid_in => logical2_y_net_x2,
      data_out => register_q_net_x4,
      eof => register3_q_net_x4,
      ip => slice2_y_net_x4,
      valid_out => register2_q_net_x4
    );

  packetiser_0516551d20: entity work.packetiser_entity_0516551d20
    port map (
      ant_base => delay2_q_net_x2,
      ce_1 => ce_1_sg_x82,
      clk_1 => clk_1_sg_x82,
      data_in => bram0_data_out_net_x1,
      mrst_in => mux_y_net_x3,
      sync_in => post_sync_delay_q_net_x1,
      data_out => mux_y_net_x2,
      eof => logical3_y_net_x4,
      header_out => delay1_q_net_x2,
      mcnt => delay3_q_net_x3,
      slice1_x0 => slice1_y_net_x1,
      sync_out => register1_q_net_x1,
      valid_out => logical2_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Timebase/sync_gen/sync_delay"

entity sync_delay_entity_4578d9610d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_4578d9610d;

architecture structural of sync_delay_entity_4578d9610d is
  signal ce_1_sg_x86: std_logic;
  signal clk_1_sg_x86: std_logic;
  signal constant1_op_net: std_logic_vector(27 downto 0);
  signal constant2_op_net: std_logic_vector(27 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(27 downto 0);
  signal counter_op_net: std_logic_vector(27 downto 0);
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux_y_net_x4: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x86 <= ce_1;
  clk_1_sg_x86 <= clk_1;
  logical_y_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x4;

  constant1: entity work.constant_98b461a391
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_3afb0a580d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_c1bd3afa8c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_f02c881303926bfa",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => logical_y_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x4
    );

  relational: entity work.relational_1ea7543d62
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_8759749125
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Timebase/sync_gen"

entity sync_gen_entity_d47ed84510 is
  port (
    arm: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    armed: out std_logic; 
    mrst: out std_logic; 
    sync: out std_logic
  );
end sync_gen_entity_d47ed84510;

architecture structural of sync_gen_entity_d47ed84510 is
  signal ce_1_sg_x87: std_logic;
  signal clk_1_sg_x87: std_logic;
  signal constant10_op_net: std_logic;
  signal counter_op_net: std_logic_vector(27 downto 0);
  signal inverter_op_net_x2: std_logic;
  signal logical3_y_net_x4: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux_y_net_x5: std_logic;
  signal register_q_net_x0: std_logic;
  signal slice7_y_net_x1: std_logic;
  signal slice8_y_net_x0: std_logic;

begin
  slice7_y_net_x1 <= arm;
  ce_1_sg_x87 <= ce_1;
  clk_1_sg_x87 <= clk_1;
  logical7_y_net_x0 <= rst;
  armed <= inverter_op_net_x2;
  mrst <= mux_y_net_x5;
  sync <= logical3_y_net_x4;

  constant10: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant10_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05e2750227d8d748",
      op_arith => xlUnsigned,
      op_width => 28
    )
    port map (
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      clr => '0',
      en => "1",
      rst(0) => logical_y_net_x1,
      op => counter_op_net
    );

  edge_7d76c0c564: entity work.edge2_entity_e8d0c540c2
    port map (
      ce_1 => ce_1_sg_x87,
      clk_1 => clk_1_sg_x87,
      in_x0 => slice8_y_net_x0,
      out_x0 => logical3_y_net_x4
    );

  inverter: entity work.inverter_251f82b86b
    port map (
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      clr => '0',
      ip(0) => register_q_net_x0,
      op(0) => inverter_op_net_x2
    );

  posedge1_721a65444b: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x87,
      clk_1 => clk_1_sg_x87,
      in_x0 => register_q_net_x0,
      out_x0 => logical_y_net_x1
    );

  posedge2_d733d19ef7: entity work.posedge_entity_cdb830dc95
    port map (
      ce_1 => ce_1_sg_x87,
      clk_1 => clk_1_sg_x87,
      in_x0 => slice7_y_net_x1,
      out_x0 => logical_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      d(0) => constant10_op_net,
      en(0) => logical7_y_net_x0,
      rst(0) => logical_y_net_x0,
      q(0) => register_q_net_x0
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 27,
      new_msb => 27,
      x_width => 28,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice8_y_net_x0
    );

  sync_delay_4578d9610d: entity work.sync_delay_entity_4578d9610d
    port map (
      ce_1 => ce_1_sg_x87,
      clk_1 => clk_1_sg_x87,
      in_x0 => logical_y_net_x1,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Timebase"

entity timebase_entity_3df436d1fe is
  port (
    arm_rst: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync_adc0: in std_logic; 
    sync_adc1: in std_logic; 
    sync_rst: in std_logic; 
    armed: out std_logic; 
    mrst: out std_logic; 
    sync_gen: out std_logic
  );
end timebase_entity_3df436d1fe;

architecture structural of timebase_entity_3df436d1fe is
  signal ce_1_sg_x88: std_logic;
  signal clk_1_sg_x88: std_logic;
  signal inverter_op_net_x3: std_logic;
  signal logical3_y_net_x5: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal mux_y_net_x6: std_logic;
  signal roachf_2048ch_adcs_quadc0_sync_net_x0: std_logic;
  signal roachf_2048ch_adcs_quadc1_sync_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic;
  signal slice7_y_net_x2: std_logic;

begin
  slice7_y_net_x2 <= arm_rst;
  ce_1_sg_x88 <= ce_1;
  clk_1_sg_x88 <= clk_1;
  roachf_2048ch_adcs_quadc0_sync_net_x0 <= sync_adc0;
  roachf_2048ch_adcs_quadc1_sync_net_x0 <= sync_adc1;
  slice6_y_net_x0 <= sync_rst;
  armed <= inverter_op_net_x3;
  mrst <= mux_y_net_x6;
  sync_gen <= logical3_y_net_x5;

  logical7: entity work.logical_5773759131
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d0(0) => roachf_2048ch_adcs_quadc0_sync_net_x0,
      d1(0) => slice6_y_net_x0,
      d2(0) => roachf_2048ch_adcs_quadc1_sync_net_x0,
      y(0) => logical7_y_net_x0
    );

  sync_gen_d47ed84510: entity work.sync_gen_entity_d47ed84510
    port map (
      arm => slice7_y_net_x2,
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      rst => logical7_y_net_x0,
      armed => inverter_op_net_x3,
      mrst => mux_y_net_x6,
      sync => logical3_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/dbuf_ct_bram/Shared BRAM/calc_add"

entity calc_add_entity_0cbd79f346 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(14 downto 0); 
    out_x0: out std_logic_vector(14 downto 0)
  );
end calc_add_entity_0cbd79f346;

architecture structural of calc_add_entity_0cbd79f346 is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
  signal concat_y_net: std_logic_vector(14 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(14 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(13 downto 0);
  signal mux1_y_net_x0: std_logic_vector(14 downto 0);
  signal mux_y_net_x0: std_logic_vector(14 downto 0);

begin
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
  mux1_y_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_798afc5ec0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => mux1_y_net_x0,
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 15,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 14,
      x_width => 15,
      y_width => 14
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_e463a7ff8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/dbuf_ct_bram/Shared BRAM"

entity shared_bram_entity_738a1b8876 is
  port (
    addr: in std_logic_vector(14 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(14 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end shared_bram_entity_738a1b8876;

architecture structural of shared_bram_entity_738a1b8876 is
  signal ce_1_sg_x94: std_logic;
  signal clk_1_sg_x94: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_din_dout_net: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal inverter_op_net_x0: std_logic;
  signal mux1_y_net_x1: std_logic_vector(14 downto 0);
  signal mux_y_net_x0: std_logic_vector(14 downto 0);
  signal register0_q_net_x1: std_logic_vector(31 downto 0);

begin
  mux1_y_net_x1 <= addr;
  ce_1_sg_x94 <= ce_1;
  clk_1_sg_x94 <= clk_1;
  register0_q_net_x1 <= data_in;
  inverter_op_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_0cbd79f346: entity work.calc_add_entity_0cbd79f346
    port map (
      ce_1 => ce_1_sg_x94,
      clk_1 => clk_1_sg_x94,
      in_x0 => mux1_y_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 15,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => mux_y_net_x0,
      dout => convert_addr_dout_net_x0
    );

  convert_din: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => register0_q_net_x1,
      dout => convert_din_dout_net
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din => convert_din_dout_net,
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      din(0) => inverter_op_net_x0,
      dout(0) => convert_we_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/dbuf_ct_bram/addrMaker_real"

entity addrmaker_real_entity_9abd237bd6 is
  port (
    counter: in std_logic_vector(14 downto 0); 
    readaddr: out std_logic_vector(14 downto 0)
  );
end addrmaker_real_entity_9abd237bd6;

architecture structural of addrmaker_real_entity_9abd237bd6 is
  signal concat_y_net_x0: std_logic_vector(14 downto 0);
  signal slice1_y_net_x0: std_logic_vector(6 downto 0);
  signal slice1_y_net_x1: std_logic_vector(14 downto 0);
  signal slice2_y_net: std_logic_vector(3 downto 0);
  signal slice_y_net: std_logic_vector(3 downto 0);

begin
  slice1_y_net_x1 <= counter;
  readaddr <= concat_y_net_x0;

  concat: entity work.concat_423465bf23
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => slice_y_net,
      in1 => slice1_y_net_x0,
      in2 => slice2_y_net,
      y => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 15,
      y_width => 4
    )
    port map (
      x => slice1_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 10,
      x_width => 15,
      y_width => 7
    )
    port map (
      x => slice1_y_net_x1,
      y => slice1_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 14,
      x_width => 15,
      y_width => 4
    )
    port map (
      x => slice1_y_net_x1,
      y => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/dbuf_ct_bram/sync_delay1"

entity sync_delay1_entity_ca80a8dca7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay1_entity_ca80a8dca7;

architecture structural of sync_delay1_entity_ca80a8dca7 is
  signal ce_1_sg_x97: std_logic;
  signal clk_1_sg_x97: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal logical_y_net: std_logic;
  signal mux_y_net_x1: std_logic;
  signal register0_q_net_x1: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x97 <= ce_1;
  clk_1_sg_x97 <= clk_1;
  register0_q_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x1;

  constant1: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_f334f9895c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_3e48e6bb94d6d577",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => register0_q_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register0_q_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x1
    );

  relational: entity work.relational_7a7af7b80d
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_c203b1da99
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/dbuf_ct_bram"

entity dbuf_ct_bram_entity_5b8d605eb7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    sync_in: in std_logic; 
    out_x0: out std_logic_vector(31 downto 0); 
    shared_bram: out std_logic_vector(14 downto 0); 
    shared_bram1: out std_logic_vector(14 downto 0); 
    shared_bram1_x0: out std_logic_vector(31 downto 0); 
    shared_bram1_x1: out std_logic; 
    shared_bram_x0: out std_logic_vector(31 downto 0); 
    shared_bram_x1: out std_logic; 
    sync_out: out std_logic
  );
end dbuf_ct_bram_entity_5b8d605eb7;

architecture structural of dbuf_ct_bram_entity_5b8d605eb7 is
  signal ce_1_sg_x98: std_logic;
  signal clk_1_sg_x98: std_logic;
  signal concat_y_net_x0: std_logic_vector(14 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(14 downto 0);
  signal convert_addr_dout_net_x3: std_logic_vector(14 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x3: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal convert_we_dout_net_x3: std_logic;
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal delay_q_net: std_logic;
  signal inverter_op_net_x0: std_logic;
  signal mux1_y_net_x1: std_logic_vector(14 downto 0);
  signal mux2_y_net_x1: std_logic_vector(14 downto 0);
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net_x2: std_logic;
  signal register0_q_net_x3: std_logic;
  signal register0_q_net_x4: std_logic_vector(31 downto 0);
  signal register1_q_net: std_logic_vector(31 downto 0);
  signal register2_q_net: std_logic_vector(31 downto 0);
  signal register_q_net: std_logic;
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice1_y_net_x1: std_logic_vector(14 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x98 <= ce_1;
  clk_1_sg_x98 <= clk_1;
  register0_q_net_x4 <= din;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x0 <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x0 <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out;
  register0_q_net_x3 <= sync_in;
  out_x0 <= slice2_y_net_x1;
  shared_bram <= convert_addr_dout_net_x2;
  shared_bram1 <= convert_addr_dout_net_x3;
  shared_bram1_x0 <= convert_din1_dout_net_x3;
  shared_bram1_x1 <= convert_we_dout_net_x3;
  shared_bram_x0 <= convert_din1_dout_net_x2;
  shared_bram_x1 <= convert_we_dout_net_x2;
  sync_out <= mux_y_net_x2;

  addrmaker_real_9abd237bd6: entity work.addrmaker_real_entity_9abd237bd6
    port map (
      counter => slice1_y_net_x1,
      readaddr => concat_y_net_x0
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9b19b69f1946892e",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      en => "1",
      rst(0) => register0_q_net_x3,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      d(0) => inverter_op_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      clr => '0',
      ip(0) => slice_y_net_x0,
      op(0) => inverter_op_net_x0
    );

  mux: entity work.mux_286b77e019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register1_q_net,
      d1 => register2_q_net,
      sel(0) => register_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_087d0a62e6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => slice1_y_net_x1,
      d1 => concat_y_net_x0,
      sel(0) => slice_y_net_x0,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_087d0a62e6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => slice1_y_net_x1,
      d1 => concat_y_net_x0,
      sel(0) => inverter_op_net_x0,
      y => mux2_y_net_x1
    );

  register1: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      d => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      d => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x0,
      en => "1",
      rst => "0",
      q => register2_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x98,
      clk => clk_1_sg_x98,
      d(0) => delay_q_net,
      en => "1",
      rst => "0",
      q(0) => register_q_net
    );

  shared_bram1_9369b8afd2: entity work.shared_bram_entity_738a1b8876
    port map (
      addr => mux2_y_net_x1,
      ce_1 => ce_1_sg_x98,
      clk_1 => clk_1_sg_x98,
      data_in => register0_q_net_x4,
      we => slice_y_net_x0,
      convert_addr_x0 => convert_addr_dout_net_x3,
      convert_din1_x0 => convert_din1_dout_net_x3,
      convert_we_x0 => convert_we_dout_net_x3
    );

  shared_bram_738a1b8876: entity work.shared_bram_entity_738a1b8876
    port map (
      addr => mux1_y_net_x1,
      ce_1 => ce_1_sg_x98,
      clk_1 => clk_1_sg_x98,
      data_in => register0_q_net_x4,
      we => inverter_op_net_x0,
      convert_addr_x0 => convert_addr_dout_net_x2,
      convert_din1_x0 => convert_din1_dout_net_x2,
      convert_we_x0 => convert_we_dout_net_x2
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 14,
      x_width => 16,
      y_width => 15
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net_x1
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => mux_y_net,
      y => slice2_y_net_x1
    );

  sync_delay1_ca80a8dca7: entity work.sync_delay1_entity_ca80a8dca7
    port map (
      ce_1 => ce_1_sg_x98,
      clk_1 => clk_1_sg_x98,
      in_x0 => register0_q_net_x3,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/fft2x_tvg/delay_bram"

entity delay_bram_entity_1e14eed5d0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(7 downto 0)
  );
end delay_bram_entity_1e14eed5d0;

architecture structural of delay_bram_entity_1e14eed5d0 is
  signal ce_1_sg_x99: std_logic;
  signal clk_1_sg_x99: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(7 downto 0);
  signal slice4_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x99 <= ce_1;
  clk_1_sg_x99 <= clk_1;
  slice4_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x0;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2044,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_ae406e50e98e0e45",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_33_ceba1f83ce9d2509",
      latency => 2
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      data_in => slice4_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/fft2x_tvg"

entity fft2x_tvg_entity_c6501e0603 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    use_tvg: in std_logic_vector(1 downto 0); 
    dout: out std_logic_vector(31 downto 0)
  );
end fft2x_tvg_entity_c6501e0603;

architecture structural of fft2x_tvg_entity_c6501e0603 is
  signal ce_1_sg_x100: std_logic;
  signal clk_1_sg_x100: std_logic;
  signal concat17_y_net: std_logic_vector(31 downto 0);
  signal concat1_y_net: std_logic_vector(31 downto 0);
  signal concat2_y_net: std_logic_vector(3 downto 0);
  signal concat3_y_net: std_logic_vector(3 downto 0);
  signal concat3_y_net_x1: std_logic_vector(31 downto 0);
  signal concat4_y_net: std_logic_vector(3 downto 0);
  signal concat5_y_net: std_logic_vector(7 downto 0);
  signal concat6_y_net: std_logic_vector(7 downto 0);
  signal concat7_y_net: std_logic_vector(7 downto 0);
  signal concat8_y_net: std_logic_vector(7 downto 0);
  signal concat9_y_net: std_logic_vector(15 downto 0);
  signal concat_y_net: std_logic_vector(3 downto 0);
  signal constant1_op_net: std_logic_vector(2 downto 0);
  signal constant2_op_net: std_logic_vector(2 downto 0);
  signal constant3_op_net: std_logic_vector(2 downto 0);
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal counter2_op_net: std_logic_vector(16 downto 0);
  signal counter3_op_net: std_logic_vector(11 downto 0);
  signal delay4_q_net_x3: std_logic;
  signal mux1_y_net_x1: std_logic_vector(31 downto 0);
  signal mux2_y_net: std_logic_vector(7 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(7 downto 0);
  signal slice11_y_net: std_logic;
  signal slice1_y_net: std_logic_vector(3 downto 0);
  signal slice2_y_net: std_logic_vector(10 downto 0);
  signal slice3_y_net: std_logic_vector(4 downto 0);
  signal slice4_y_net_x0: std_logic_vector(7 downto 0);
  signal slice5_y_net: std_logic_vector(7 downto 0);
  signal slice6_y_net: std_logic;
  signal slice8_y_net_x0: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x100 <= ce_1;
  clk_1_sg_x100 <= clk_1;
  concat3_y_net_x1 <= din;
  delay4_q_net_x3 <= sync;
  slice8_y_net_x0 <= use_tvg;
  dout <= mux1_y_net_x1;

  concat: entity work.concat_d90e7950ae
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1(0) => slice11_y_net,
      y => concat_y_net
    );

  concat1: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat5_y_net,
      in1 => concat6_y_net,
      in2 => concat7_y_net,
      in3 => concat8_y_net,
      y => concat1_y_net
    );

  concat17: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => mux2_y_net,
      in1 => mux2_y_net,
      in2 => mux2_y_net,
      in3 => mux2_y_net,
      y => concat17_y_net
    );

  concat2: entity work.concat_d90e7950ae
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant1_op_net,
      in1(0) => slice11_y_net,
      y => concat2_y_net
    );

  concat3: entity work.concat_d90e7950ae
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant2_op_net,
      in1(0) => slice11_y_net,
      y => concat3_y_net
    );

  concat4: entity work.concat_d90e7950ae
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant3_op_net,
      in1(0) => slice11_y_net,
      y => concat4_y_net
    );

  concat5: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net,
      in1 => slice1_y_net,
      y => concat5_y_net
    );

  concat6: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat2_y_net,
      in1 => slice1_y_net,
      y => concat6_y_net
    );

  concat7: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat3_y_net,
      in1 => slice1_y_net,
      y => concat7_y_net
    );

  concat8: entity work.concat_1a070f1f35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat4_y_net,
      in1 => slice1_y_net,
      y => concat8_y_net
    );

  concat9: entity work.concat_ca389bcebb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => slice3_y_net,
      in1 => slice2_y_net,
      y => concat9_y_net
    );

  constant1: entity work.constant_a1c496ea88
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_1f5cc32f1e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_0f59f02ba5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant_x0: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter2: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_39c11ed0260a265a",
      op_arith => xlUnsigned,
      op_width => 17
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      en => "1",
      rst(0) => delay4_q_net_x3,
      op => counter2_op_net
    );

  counter3: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_29076546cca80226",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      en => "1",
      rst(0) => delay4_q_net_x3,
      op => counter3_op_net
    );

  delay_bram_1e14eed5d0: entity work.delay_bram_entity_1e14eed5d0
    port map (
      ce_1 => ce_1_sg_x100,
      clk_1 => clk_1_sg_x100,
      in1 => slice4_y_net_x0,
      out1 => single_port_ram_data_out_net_x0
    );

  mux1: entity work.mux_9d682a1165
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => concat3_y_net_x1,
      d1 => concat1_y_net,
      d2 => concat17_y_net,
      sel => slice8_y_net_x0,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_2af8d8c05a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => slice5_y_net,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice6_y_net,
      y => mux2_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 12,
      y_width => 4
    )
    port map (
      x => counter3_op_net,
      y => slice1_y_net
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 12,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => slice11_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 17,
      y_width => 11
    )
    port map (
      x => counter2_op_net,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 16,
      x_width => 17,
      y_width => 5
    )
    port map (
      x => counter2_op_net,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => concat9_y_net,
      y => slice4_y_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => concat9_y_net,
      y => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 17,
      y_width => 1
    )
    port map (
      x => counter2_op_net,
      y(0) => slice6_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/one_ant_a_time/reorder/sync_delay_en"

entity sync_delay_en_entity_f168686ccc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_f168686ccc;

architecture structural of sync_delay_en_entity_f168686ccc is
  signal ce_1_sg_x101: std_logic;
  signal clk_1_sg_x101: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x101 <= ce_1;
  clk_1_sg_x101 <= clk_1;
  or_y_net_x0 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_4a391b9a0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_b4ec9de7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_8869969bd2303665",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical1_y_net,
      load(0) => pre_sync_delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => or_y_net_x0,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_6c3ee657fa
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_78eac2928d
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/one_ant_a_time/reorder"

entity reorder_entity_b57ba908cb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end reorder_entity_b57ba908cb;

architecture structural of reorder_entity_b57ba908cb is
  signal bram0_data_out_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x102: std_logic;
  signal clk_1_sg_x102: std_logic;
  signal concat2_y_net_x0: std_logic_vector(31 downto 0);
  signal constant2_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal delay0_q_net_x0: std_logic;
  signal delay_d0_q_net: std_logic_vector(7 downto 0);
  signal delay_din0_q_net: std_logic_vector(31 downto 0);
  signal delay_map1_q_net: std_logic_vector(7 downto 0);
  signal delay_map2_q_net: std_logic_vector(7 downto 0);
  signal delay_map3_q_net: std_logic_vector(7 downto 0);
  signal delay_sel_q_net: std_logic_vector(1 downto 0);
  signal delay_we_q_net: std_logic;
  signal map1_data_net: std_logic_vector(7 downto 0);
  signal map2_data_net: std_logic_vector(7 downto 0);
  signal map3_data_net: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x2: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal slice1_y_net: std_logic_vector(1 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x102 <= ce_1;
  clk_1_sg_x102 <= clk_1;
  concat2_y_net_x0 <= din0;
  constant2_op_net_x0 <= en;
  delay0_q_net_x0 <= sync;
  dout0 <= bram0_data_out_net_x2;
  sync_out <= post_sync_delay_q_net_x2;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 32,
      core_name0 => "bmg_33_2ddf565839052280",
      latency => 1
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x2
    );

  counter: entity work.counter_0b5ddaeff2
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      en(0) => constant2_op_net_x0,
      rst(0) => delay0_q_net_x0,
      op => counter_op_net
    );

  delay_d0: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => slice2_y_net,
      en => '1',
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => concat2_y_net_x0,
      en => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => map1_data_net,
      en => '1',
      q => delay_map1_q_net
    );

  delay_map2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => map2_data_net,
      en => '1',
      q => delay_map2_q_net
    );

  delay_map3: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map3_data_net,
      q => delay_map3_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => slice1_y_net,
      en => '1',
      q => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d(0) => constant2_op_net_x0,
      en => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_43_7b326199bbc0575c",
      latency => 2
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      en => "1",
      data => map1_data_net
    );

  map2: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_43_7b326199bbc0575c",
      latency => 2
    )
    port map (
      addr => map1_data_net,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      en => "1",
      data => map2_data_net
    );

  map3: entity work.xlsprom_dist
    generic map (
      addr_width => 8,
      c_address_width => 8,
      c_width => 8,
      core_name0 => "dmg_43_7b326199bbc0575c",
      latency => 2
    )
    port map (
      addr => map2_data_net,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      en => "1",
      data => map3_data_net
    );

  mux: entity work.mux_81f00cece7
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      d2 => delay_map2_q_net,
      d3 => delay_map3_q_net,
      sel => delay_sel_q_net,
      y => mux_y_net
    );

  or_x0: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => pre_sync_delay_q_net_x0,
      d1(0) => delay_we_q_net,
      y(0) => or_y_net_x0
    );

  post_sync_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d(0) => mux_y_net_x0,
      en => '1',
      q(0) => post_sync_delay_q_net_x2
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d(0) => delay0_q_net_x0,
      en => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 9,
      x_width => 10,
      y_width => 2
    )
    port map (
      x => counter_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 10,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_f168686ccc: entity work.sync_delay_en_entity_f168686ccc
    port map (
      ce_1 => ce_1_sg_x102,
      clk_1 => clk_1_sg_x102,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/one_ant_a_time/square_transposer1/barrel_switcher"

entity barrel_switcher_entity_15309d9171 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    sel: in std_logic_vector(1 downto 0); 
    sync_in: in std_logic; 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end barrel_switcher_entity_15309d9171;

architecture structural of barrel_switcher_entity_15309d9171 is
  signal ce_1_sg_x103: std_logic;
  signal clk_1_sg_x103: std_logic;
  signal counter_op_net_x0: std_logic_vector(1 downto 0);
  signal delay1_q_net: std_logic_vector(1 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_sync_q_net_x0: std_logic;
  signal delayf1_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf2_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf3_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf4_q_net_x0: std_logic_vector(7 downto 0);
  signal mux11_y_net: std_logic_vector(7 downto 0);
  signal mux12_y_net_x0: std_logic_vector(7 downto 0);
  signal mux21_y_net: std_logic_vector(7 downto 0);
  signal mux22_y_net_x0: std_logic_vector(7 downto 0);
  signal mux31_y_net: std_logic_vector(7 downto 0);
  signal mux32_y_net_x0: std_logic_vector(7 downto 0);
  signal mux41_y_net: std_logic_vector(7 downto 0);
  signal mux42_y_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;

begin
  ce_1_sg_x103 <= ce_1;
  clk_1_sg_x103 <= clk_1;
  delayf1_q_net_x0 <= in1;
  delayf4_q_net_x0 <= in2;
  delayf3_q_net_x0 <= in3;
  delayf2_q_net_x0 <= in4;
  counter_op_net_x0 <= sel;
  delay2_q_net_x0 <= sync_in;
  out1 <= mux12_y_net_x0;
  out2 <= mux22_y_net_x0;
  out3 <= mux32_y_net_x0;
  out4 <= mux42_y_net_x0;
  sync_out <= delay_sync_q_net_x0;

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      d => counter_op_net_x0,
      en => '1',
      q => delay1_q_net
    );

  delay_sync: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      d(0) => delay2_q_net_x0,
      en => '1',
      q(0) => delay_sync_q_net_x0
    );

  mux11: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => delayf1_q_net_x0,
      d1 => delayf3_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux11_y_net
    );

  mux12: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => mux11_y_net,
      d1 => mux21_y_net,
      sel(0) => slice2_y_net,
      y => mux12_y_net_x0
    );

  mux21: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => delayf4_q_net_x0,
      d1 => delayf2_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux21_y_net
    );

  mux22: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => mux21_y_net,
      d1 => mux31_y_net,
      sel(0) => slice2_y_net,
      y => mux22_y_net_x0
    );

  mux31: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => delayf3_q_net_x0,
      d1 => delayf1_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux31_y_net
    );

  mux32: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => mux31_y_net,
      d1 => mux41_y_net,
      sel(0) => slice2_y_net,
      y => mux32_y_net_x0
    );

  mux41: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => delayf2_q_net_x0,
      d1 => delayf4_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux41_y_net
    );

  mux42: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      d0 => mux41_y_net,
      d1 => mux11_y_net,
      sel(0) => slice2_y_net,
      y => mux42_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => counter_op_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/one_ant_a_time/square_transposer1"

entity square_transposer1_entity_19803c4e55 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end square_transposer1_entity_19803c4e55;

architecture structural of square_transposer1_entity_19803c4e55 is
  signal ce_1_sg_x104: std_logic;
  signal clk_1_sg_x104: std_logic;
  signal counter_op_net_x0: std_logic_vector(1 downto 0);
  signal delay0_q_net_x1: std_logic;
  signal delay2_q_net_x1: std_logic;
  signal delay_sync_q_net_x0: std_logic;
  signal delayb1_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb2_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb3_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb4_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf1_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf2_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf3_q_net_x0: std_logic_vector(7 downto 0);
  signal delayf4_q_net_x0: std_logic_vector(7 downto 0);
  signal mux12_y_net_x0: std_logic_vector(7 downto 0);
  signal mux22_y_net_x0: std_logic_vector(7 downto 0);
  signal mux32_y_net_x0: std_logic_vector(7 downto 0);
  signal mux42_y_net_x0: std_logic_vector(7 downto 0);
  signal slice11_y_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(7 downto 0);
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);
  signal slice7_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x104 <= ce_1;
  clk_1_sg_x104 <= clk_1;
  slice1_y_net_x0 <= in1;
  slice2_y_net_x0 <= in2;
  slice11_y_net_x0 <= in3;
  slice7_y_net_x0 <= in4;
  delay2_q_net_x1 <= sync;
  out1 <= delayb1_q_net_x0;
  out2 <= delayb2_q_net_x0;
  out3 <= delayb3_q_net_x0;
  out4 <= delayb4_q_net_x0;
  sync_out <= delay0_q_net_x1;

  barrel_switcher_15309d9171: entity work.barrel_switcher_entity_15309d9171
    port map (
      ce_1 => ce_1_sg_x104,
      clk_1 => clk_1_sg_x104,
      in1 => delayf1_q_net_x0,
      in2 => delayf4_q_net_x0,
      in3 => delayf3_q_net_x0,
      in4 => delayf2_q_net_x0,
      sel => counter_op_net_x0,
      sync_in => delay2_q_net_x1,
      out1 => mux12_y_net_x0,
      out2 => mux22_y_net_x0,
      out3 => mux32_y_net_x0,
      out4 => mux42_y_net_x0,
      sync_out => delay_sync_q_net_x0
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_dc314b8b6483eda0",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      en => "1",
      rst(0) => delay2_q_net_x1,
      op => counter_op_net_x0
    );

  delay0: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d(0) => delay_sync_q_net_x0,
      en => '1',
      q(0) => delay0_q_net_x1
    );

  delayb1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => mux12_y_net_x0,
      en => '1',
      q => delayb1_q_net_x0
    );

  delayb2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => mux22_y_net_x0,
      en => '1',
      q => delayb2_q_net_x0
    );

  delayb3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => mux32_y_net_x0,
      en => '1',
      q => delayb3_q_net_x0
    );

  delayb4: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => mux42_y_net_x0,
      q => delayb4_q_net_x0
    );

  delayf1: entity work.delay_423c6c1400
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => slice1_y_net_x0,
      q => delayf1_q_net_x0
    );

  delayf2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => slice2_y_net_x0,
      en => '1',
      q => delayf2_q_net_x0
    );

  delayf3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => slice11_y_net_x0,
      en => '1',
      q => delayf3_q_net_x0
    );

  delayf4: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => slice7_y_net_x0,
      en => '1',
      q => delayf4_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/one_ant_a_time"

entity one_ant_a_time_entity_c184c2cce3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end one_ant_a_time_entity_c184c2cce3;

architecture structural of one_ant_a_time_entity_c184c2cce3 is
  signal bram0_data_out_net_x3: std_logic_vector(31 downto 0);
  signal ce_1_sg_x105: std_logic;
  signal clk_1_sg_x105: std_logic;
  signal concat2_y_net_x0: std_logic_vector(31 downto 0);
  signal constant2_op_net_x0: std_logic;
  signal delay0_q_net_x1: std_logic;
  signal delay2_q_net_x2: std_logic;
  signal delayb1_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb2_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb3_q_net_x0: std_logic_vector(7 downto 0);
  signal delayb4_q_net_x0: std_logic_vector(7 downto 0);
  signal mux3_y_net_x0: std_logic_vector(31 downto 0);
  signal post_sync_delay_q_net_x3: std_logic;
  signal slice11_y_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(7 downto 0);
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);
  signal slice7_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x105 <= ce_1;
  clk_1_sg_x105 <= clk_1;
  mux3_y_net_x0 <= din;
  delay2_q_net_x2 <= sync;
  dout <= bram0_data_out_net_x3;
  sync_out <= post_sync_delay_q_net_x3;

  concat2: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => delayb1_q_net_x0,
      in1 => delayb2_q_net_x0,
      in2 => delayb3_q_net_x0,
      in3 => delayb4_q_net_x0,
      y => concat2_y_net_x0
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  reorder_b57ba908cb: entity work.reorder_entity_b57ba908cb
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      din0 => concat2_y_net_x0,
      en => constant2_op_net_x0,
      sync => delay0_q_net_x1,
      dout0 => bram0_data_out_net_x3,
      sync_out => post_sync_delay_q_net_x3
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => mux3_y_net_x0,
      y => slice1_y_net_x0
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => mux3_y_net_x0,
      y => slice11_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => mux3_y_net_x0,
      y => slice2_y_net_x0
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => mux3_y_net_x0,
      y => slice7_y_net_x0
    );

  square_transposer1_19803c4e55: entity work.square_transposer1_entity_19803c4e55
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      in1 => slice1_y_net_x0,
      in2 => slice2_y_net_x0,
      in3 => slice11_y_net_x0,
      in4 => slice7_y_net_x0,
      sync => delay2_q_net_x2,
      out1 => delayb1_q_net_x0,
      out2 => delayb2_q_net_x0,
      out3 => delayb3_q_net_x0,
      out4 => delayb4_q_net_x0,
      sync_out => delay0_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose/sram_tvg"

entity sram_tvg_entity_f462de9464 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    use_tvg: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end sram_tvg_entity_f462de9464;

architecture structural of sram_tvg_entity_f462de9464 is
  signal ce_1_sg_x106: std_logic;
  signal clk_1_sg_x106: std_logic;
  signal concat10_y_net: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(7 downto 0);
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal counter1_op_net: std_logic_vector(7 downto 0);
  signal delay2_q_net_x3: std_logic;
  signal mux3_y_net_x1: std_logic_vector(31 downto 0);
  signal register0_q_net_x2: std_logic;
  signal register0_q_net_x3: std_logic_vector(31 downto 0);
  signal slice9_y_net_x0: std_logic;

begin
  ce_1_sg_x106 <= ce_1;
  clk_1_sg_x106 <= clk_1;
  register0_q_net_x3 <= din;
  register0_q_net_x2 <= sync;
  slice9_y_net_x0 <= use_tvg;
  dout <= mux3_y_net_x1;
  sync_out <= delay2_q_net_x3;

  concat10: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant1_op_net,
      in1 => counter1_op_net,
      in2 => constant2_op_net,
      in3 => counter1_op_net,
      y => concat10_y_net
    );

  constant1: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_b437b02512
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_8b305ccf84a90afe",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      clr => '0',
      en => "1",
      rst(0) => register0_q_net_x2,
      op => counter1_op_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      d(0) => register0_q_net_x2,
      en => '1',
      q(0) => delay2_q_net_x3
    );

  mux3: entity work.mux_52ae77d946
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      clr => '0',
      d0 => register0_q_net_x3,
      d1 => concat10_y_net,
      sel(0) => slice9_y_net_x0,
      y => mux3_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/Transpose"

entity transpose_entity_198441fceb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    eq_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    sync_rnd: in std_logic; 
    use_fft_tvg: in std_logic_vector(1 downto 0); 
    use_sram_tvg: in std_logic; 
    ant12_pol12_reorder: out std_logic_vector(31 downto 0); 
    dbuf_ct_bram: out std_logic_vector(14 downto 0); 
    dbuf_ct_bram_x0: out std_logic_vector(31 downto 0); 
    dbuf_ct_bram_x1: out std_logic; 
    dbuf_ct_bram_x2: out std_logic_vector(14 downto 0); 
    dbuf_ct_bram_x3: out std_logic_vector(31 downto 0); 
    dbuf_ct_bram_x4: out std_logic; 
    sync_reorder: out std_logic
  );
end transpose_entity_198441fceb;

architecture structural of transpose_entity_198441fceb is
  signal bram0_data_out_net_x4: std_logic_vector(31 downto 0);
  signal ce_1_sg_x107: std_logic;
  signal clk_1_sg_x107: std_logic;
  signal concat3_y_net_x2: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x4: std_logic_vector(14 downto 0);
  signal convert_addr_dout_net_x5: std_logic_vector(14 downto 0);
  signal convert_din1_dout_net_x4: std_logic_vector(31 downto 0);
  signal convert_din1_dout_net_x5: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x4: std_logic;
  signal convert_we_dout_net_x5: std_logic;
  signal delay2_q_net_x3: std_logic;
  signal delay4_q_net_x4: std_logic;
  signal mux1_y_net_x1: std_logic_vector(31 downto 0);
  signal mux3_y_net_x1: std_logic_vector(31 downto 0);
  signal mux_y_net_x2: std_logic;
  signal post_sync_delay_q_net_x4: std_logic;
  signal register0_q_net_x2: std_logic;
  signal register0_q_net_x3: std_logic;
  signal register0_q_net_x4: std_logic_vector(31 downto 0);
  signal register0_q_net_x5: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice8_y_net_x1: std_logic_vector(1 downto 0);
  signal slice9_y_net_x1: std_logic;

begin
  ce_1_sg_x107 <= ce_1;
  clk_1_sg_x107 <= clk_1;
  concat3_y_net_x2 <= eq_out;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x1 <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x1 <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out;
  delay4_q_net_x4 <= sync_rnd;
  slice8_y_net_x1 <= use_fft_tvg;
  slice9_y_net_x1 <= use_sram_tvg;
  ant12_pol12_reorder <= bram0_data_out_net_x4;
  dbuf_ct_bram <= convert_addr_dout_net_x4;
  dbuf_ct_bram_x0 <= convert_din1_dout_net_x4;
  dbuf_ct_bram_x1 <= convert_we_dout_net_x4;
  dbuf_ct_bram_x2 <= convert_addr_dout_net_x5;
  dbuf_ct_bram_x3 <= convert_din1_dout_net_x5;
  dbuf_ct_bram_x4 <= convert_we_dout_net_x5;
  sync_reorder <= post_sync_delay_q_net_x4;

  dbuf_ct_bram_5b8d605eb7: entity work.dbuf_ct_bram_entity_5b8d605eb7
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      din => register0_q_net_x4,
      roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net_x1,
      roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net_x1,
      sync_in => register0_q_net_x3,
      out_x0 => slice2_y_net_x1,
      shared_bram => convert_addr_dout_net_x4,
      shared_bram1 => convert_addr_dout_net_x5,
      shared_bram1_x0 => convert_din1_dout_net_x5,
      shared_bram1_x1 => convert_we_dout_net_x5,
      shared_bram_x0 => convert_din1_dout_net_x4,
      shared_bram_x1 => convert_we_dout_net_x4,
      sync_out => mux_y_net_x2
    );

  delay1_95b11ab9ee: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      d => mux_y_net_x2,
      q => register0_q_net_x2
    );

  delay2_5799f64f89: entity work.delay15_entity_1b3340233c
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      d => delay4_q_net_x4,
      q => register0_q_net_x3
    );

  delay3_7dc2383610: entity work.delay16_entity_ae22af2a7f
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      d => mux1_y_net_x1,
      q => register0_q_net_x4
    );

  delay79_83d8b3a7e1: entity work.delay16_entity_ae22af2a7f
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      d => slice2_y_net_x1,
      q => register0_q_net_x5
    );

  fft2x_tvg_c6501e0603: entity work.fft2x_tvg_entity_c6501e0603
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      din => concat3_y_net_x2,
      sync => delay4_q_net_x4,
      use_tvg => slice8_y_net_x1,
      dout => mux1_y_net_x1
    );

  one_ant_a_time_c184c2cce3: entity work.one_ant_a_time_entity_c184c2cce3
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      din => mux3_y_net_x1,
      sync => delay2_q_net_x3,
      dout => bram0_data_out_net_x4,
      sync_out => post_sync_delay_q_net_x4
    );

  sram_tvg_f462de9464: entity work.sram_tvg_entity_f462de9464
    port map (
      ce_1 => ce_1_sg_x107,
      clk_1 => clk_1_sg_x107,
      din => register0_q_net_x5,
      sync => register0_q_net_x2,
      use_tvg => slice9_y_net_x1,
      dout => mux3_y_net_x1,
      sync_out => delay2_q_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/convert"

entity convert_entity_04484d0c91 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(16 downto 0); 
    out_x0: out std_logic_vector(7 downto 0)
  );
end convert_entity_04484d0c91;

architecture structural of convert_entity_04484d0c91 is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal almost_half_op_net: std_logic_vector(10 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x108: std_logic;
  signal clk_1_sg_x108: std_logic;
  signal concat_y_net: std_logic_vector(17 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(17 downto 0);
  signal force2_output_port_net: std_logic_vector(10 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x108 <= ce_1;
  clk_1_sg_x108 <= clk_1;
  scale_op_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_542df25df6
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_f5d769813d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 17,
      y_width => 1
    )
    port map (
      x => scale_op_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_66f3e02bd3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1(0) => tweak_op_y_net,
      y => concat_y_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  force1: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_6b1adb5d55
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_573890e1c0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => scale_op_net_x0,
      output_port => reinterpret_output_port_net
    );

  tweak_op: entity work.logical_9d76333483
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => bit_y_net,
      d1(0) => constant_op_net,
      y(0) => tweak_op_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_engine/output"

entity output_entity_f6d0a24100 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(31 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end output_entity_f6d0a24100;

architecture structural of output_entity_f6d0a24100 is
  signal b_op_net: std_logic_vector(31 downto 0);
  signal c_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x110: std_logic;
  signal clk_1_sg_x110: std_logic;
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal logical1_y_net: std_logic_vector(31 downto 0);
  signal logical2_y_net_x0: std_logic_vector(31 downto 0);
  signal logical3_y_net: std_logic_vector(31 downto 0);
  signal logical4_y_net: std_logic_vector(31 downto 0);
  signal lshift_s_op_net: std_logic_vector(31 downto 0);
  signal lshift_t_op_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x110 <= ce_1;
  clk_1_sg_x110 <= clk_1;
  x_l_q_net_x0 <= in_x0;
  out_x0 <= logical2_y_net_x0;

  b: entity work.constant_f8d41441cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => b_op_net
    );

  c: entity work.constant_7a5a41eeb1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => c_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      d => x_l_q_net_x0,
      en => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      d => logical1_y_net,
      en => '1',
      q => delay1_q_net
    );

  logical1: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      d0 => delay_q_net,
      d1 => logical3_y_net,
      y => logical1_y_net
    );

  logical2: entity work.logical_1e8142cab4
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      d0 => delay1_q_net,
      d1 => logical4_y_net,
      y => logical2_y_net_x0
    );

  logical3: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      d0 => lshift_s_op_net,
      d1 => b_op_net,
      y => logical3_y_net
    );

  logical4: entity work.logical_0fa52c7c40
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      d0 => lshift_t_op_net,
      d1 => c_op_net,
      y => logical4_y_net
    );

  lshift_s: entity work.shift_a3d6e8e72f
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      ip => x_l_q_net_x0,
      op => lshift_s_op_net
    );

  lshift_t: entity work.shift_9c14cd27bd
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      ip => logical1_y_net,
      op => lshift_t_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_engine"

entity tt800_engine_entity_75f178c1cb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    seed_en: in std_logic; 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_engine_entity_75f178c1cb;

architecture structural of tt800_engine_entity_75f178c1cb is
  signal a_op_net: std_logic_vector(31 downto 0);
  signal ce_1_sg_x111: std_logic;
  signal clk_1_sg_x111: std_logic;
  signal constant3_op_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal expression_dout_net_x0: std_logic;
  signal lfsr_dout_net_x0: std_logic_vector(31 downto 0);
  signal logical2_y_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic_vector(31 downto 0);
  signal lsb_y_net: std_logic;
  signal mux1_y_net: std_logic_vector(31 downto 0);
  signal mux_y_net: std_logic_vector(31 downto 0);
  signal rshift_1_op_net: std_logic_vector(31 downto 0);
  signal x_l_m_q_net: std_logic_vector(31 downto 0);
  signal x_l_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x111 <= ce_1;
  clk_1_sg_x111 <= clk_1;
  lfsr_dout_net_x0 <= seed;
  expression_dout_net_x0 <= seed_en;
  u <= logical2_y_net_x1;

  a: entity work.constant_79cd191324
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => a_op_net
    );

  constant3: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      d => x_l_m_q_net,
      en => '1',
      q => delay_q_net
    );

  logical: entity work.logical_f1acd27428
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d0 => delay_q_net,
      d1 => rshift_1_op_net,
      d2 => mux_y_net,
      y => logical_y_net
    );

  lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => x_l_q_net_x0,
      y(0) => lsb_y_net
    );

  mux: entity work.mux_52ae77d946
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d0 => constant3_op_net,
      d1 => a_op_net,
      sel(0) => lsb_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_86a34309e7
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      d0 => logical_y_net,
      d1 => lfsr_dout_net_x0,
      sel(0) => expression_dout_net_x0,
      y => mux1_y_net
    );

  output_f6d0a24100: entity work.output_entity_f6d0a24100
    port map (
      ce_1 => ce_1_sg_x111,
      clk_1 => clk_1_sg_x111,
      in_x0 => x_l_q_net_x0,
      out_x0 => logical2_y_net_x1
    );

  rshift_1: entity work.shift_82822b2849
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      ip => x_l_q_net_x0,
      op => rshift_1_op_net
    );

  x_l: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      d => x_l_m_q_net,
      en => '1',
      q => x_l_q_net_x0
    );

  x_l_m: entity work.xldelay
    generic map (
      latency => 15,
      reg_retiming => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      d => mux1_y_net,
      en => '1',
      q => x_l_m_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/bootstrap"

entity bootstrap_entity_63cba6091d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_x0: out std_logic
  );
end bootstrap_entity_63cba6091d;

architecture structural of bootstrap_entity_63cba6091d is
  signal ce_1_sg_x112: std_logic;
  signal clk_1_sg_x112: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x112 <= ce_1;
  clk_1_sg_x112 <= clk_1;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 25,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      d(0) => constant3_op_net,
      en => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      d(0) => constant3_op_net,
      en(0) => constant3_op_net,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/p24_extender"

entity p24_extender_entity_d3d592de41 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end p24_extender_entity_d3d592de41;

architecture structural of p24_extender_entity_d3d592de41 is
  signal ce_1_sg_x113: std_logic;
  signal clk_1_sg_x113: std_logic;
  signal constant3_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x113 <= ce_1;
  clk_1_sg_x113 <= clk_1;
  expression_dout_net_x0 <= in_x0;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 24,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d(0) => expression_dout_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d(0) => constant3_op_net,
      en(0) => expression_dout_net_x0,
      rst(0) => delay_q_net,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen/r_edge_detect"

entity r_edge_detect_entity_9800ee55f4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end r_edge_detect_entity_9800ee55f4;

architecture structural of r_edge_detect_entity_9800ee55f4 is
  signal ce_1_sg_x114: std_logic;
  signal clk_1_sg_x114: std_logic;
  signal delay_q_net: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal logical_y_net_x0: std_logic;

begin
  ce_1_sg_x114 <= ce_1;
  clk_1_sg_x114 <= clk_1;
  logical_y_net_x0 <= in_x0;
  out_x0 <= expression_dout_net_x1;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      d(0) => logical_y_net_x0,
      en => '1',
      q(0) => delay_q_net
    );

  expression: entity work.expr_c255d1cf74
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      curr(0) => logical_y_net_x0,
      prev(0) => delay_q_net,
      dout(0) => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng/tt800_seed_gen"

entity tt800_seed_gen_entity_c2328df602 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed_in: in std_logic_vector(31 downto 0); 
    seed_en: out std_logic; 
    seed_out: out std_logic_vector(31 downto 0)
  );
end tt800_seed_gen_entity_c2328df602;

architecture structural of tt800_seed_gen_entity_c2328df602 is
  signal bitbasher_seed0_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x115: std_logic;
  signal clk_1_sg_x115: std_logic;
  signal expression_dout_net_x1: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x0: std_logic;
  signal register_q_net_x1: std_logic;

begin
  ce_1_sg_x115 <= ce_1;
  clk_1_sg_x115 <= clk_1;
  logical_y_net_x1 <= ld;
  bitbasher_seed0_net_x0 <= seed_in;
  seed_en <= expression_dout_net_x2;
  seed_out <= lfsr_dout_net_x1;

  bootstrap_63cba6091d: entity work.bootstrap_entity_63cba6091d
    port map (
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      out_x0 => register_q_net_x0
    );

  expression: entity work.expr_52ec6336d5
    port map (
      bootstrap(0) => register_q_net_x0,
      ce => ce_1_sg_x115,
      clk => clk_1_sg_x115,
      clr => '0',
      ld(0) => logical_y_net_x1,
      ld_ext(0) => register_q_net_x1,
      dout(0) => expression_dout_net_x2
    );

  lfsr: entity work.lfsr_49df07576f
    port map (
      ce => ce_1_sg_x115,
      clk => clk_1_sg_x115,
      clr => '0',
      din => bitbasher_seed0_net_x0,
      load(0) => logical_y_net_x1,
      dout => lfsr_dout_net_x1
    );

  p24_extender_d3d592de41: entity work.p24_extender_entity_d3d592de41
    port map (
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      in_x0 => expression_dout_net_x1,
      out_x0 => register_q_net_x1
    );

  r_edge_detect_9800ee55f4: entity work.r_edge_detect_entity_9800ee55f4
    port map (
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      in_x0 => logical_y_net_x1,
      out_x0 => expression_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/tt800_uprng"

entity tt800_uprng_entity_5cb037c292 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    u: out std_logic_vector(31 downto 0)
  );
end tt800_uprng_entity_5cb037c292;

architecture structural of tt800_uprng_entity_5cb037c292 is
  signal bitbasher_seed0_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x116: std_logic;
  signal clk_1_sg_x116: std_logic;
  signal expression_dout_net_x2: std_logic;
  signal lfsr_dout_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;

begin
  ce_1_sg_x116 <= ce_1;
  clk_1_sg_x116 <= clk_1;
  logical_y_net_x2 <= ld;
  bitbasher_seed0_net_x1 <= seed;
  u <= logical2_y_net_x2;

  tt800_engine_75f178c1cb: entity work.tt800_engine_entity_75f178c1cb
    port map (
      ce_1 => ce_1_sg_x116,
      clk_1 => clk_1_sg_x116,
      seed => lfsr_dout_net_x1,
      seed_en => expression_dout_net_x2,
      u => logical2_y_net_x2
    );

  tt800_seed_gen_c2328df602: entity work.tt800_seed_gen_entity_c2328df602
    port map (
      ce_1 => ce_1_sg_x116,
      clk_1 => clk_1_sg_x116,
      ld => logical_y_net_x2,
      seed_in => bitbasher_seed0_net_x1,
      seed_en => expression_dout_net_x2,
      seed_out => lfsr_dout_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/u2n/sincos"

entity sincos_entity_06b178f3a8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    theta: in std_logic_vector(10 downto 0); 
    cos: out std_logic_vector(7 downto 0); 
    sine: out std_logic_vector(7 downto 0)
  );
end sincos_entity_06b178f3a8;

architecture structural of sincos_entity_06b178f3a8 is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x117: std_logic;
  signal clk_1_sg_x117: std_logic;
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x117 <= ce_1;
  clk_1_sg_x117 <= clk_1;
  bottom_11_y_net_x0 <= theta;
  cos <= rom1_data_net_x0;
  sine <= rom0_data_net_x0;

  rom0: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_33_e4cac21e8ed012aa",
      latency => 1
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      en => "1",
      rst => "0",
      data => rom0_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_33_7de9efda5baafcf4",
      latency => 1
    )
    port map (
      addr => bottom_11_y_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn/u2n"

entity u2n_entity_1c7835b1a8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    u: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end u2n_entity_1c7835b1a8;

architecture structural of u2n_entity_1c7835b1a8 is
  signal bottom_11_y_net_x0: std_logic_vector(10 downto 0);
  signal ce_1_sg_x118: std_logic;
  signal clk_1_sg_x118: std_logic;
  signal log_lut_data_net: std_logic_vector(8 downto 0);
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal r_cos_p_net_x0: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x0: std_logic_vector(16 downto 0);
  signal rom0_data_net_x0: std_logic_vector(7 downto 0);
  signal rom1_data_net_x0: std_logic_vector(7 downto 0);
  signal top_11_y_net: std_logic_vector(10 downto 0);

begin
  ce_1_sg_x118 <= ce_1;
  clk_1_sg_x118 <= clk_1;
  logical2_y_net_x3 <= u;
  n1 <= r_sin_p_net_x0;
  n2 <= r_cos_p_net_x0;

  bottom_11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 10,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => bottom_11_y_net_x0
    );

  log_lut: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 9,
      core_name0 => "bmg_33_4c2b84f72036519d",
      latency => 1
    )
    port map (
      addr => top_11_y_net,
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      en => "1",
      rst => "0",
      data => log_lut_data_net
    );

  r_cos: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mlt_11_2_fb712a1e6f4360e8",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom1_data_net_x0,
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      core_ce => ce_1_sg_x118,
      core_clk => clk_1_sg_x118,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_cos_p_net_x0
    );

  r_sin: entity work.xlmult
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 7,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 7,
      b_width => 8,
      c_a_type => 1,
      c_a_width => 9,
      c_b_type => 0,
      c_b_width => 8,
      c_baat => 9,
      c_output_width => 17,
      c_type => 0,
      core_name0 => "mlt_11_2_fb712a1e6f4360e8",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => log_lut_data_net,
      b => rom0_data_net_x0,
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      core_ce => ce_1_sg_x118,
      core_clk => clk_1_sg_x118,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => r_sin_p_net_x0
    );

  sincos_06b178f3a8: entity work.sincos_entity_06b178f3a8
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      theta => bottom_11_y_net_x0,
      cos => rom1_data_net_x0,
      sine => rom0_data_net_x0
    );

  top_11: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 31,
      x_width => 32,
      y_width => 11
    )
    port map (
      x => logical2_y_net_x3,
      y => top_11_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0/wgn"

entity wgn_entity_34e4d5f785 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(16 downto 0); 
    n2: out std_logic_vector(16 downto 0)
  );
end wgn_entity_34e4d5f785;

architecture structural of wgn_entity_34e4d5f785 is
  signal bitbasher_seed0_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x119: std_logic;
  signal clk_1_sg_x119: std_logic;
  signal logical2_y_net_x3: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x119 <= ce_1;
  clk_1_sg_x119 <= clk_1;
  logical_y_net_x3 <= ld;
  bitbasher_seed0_net_x2 <= seed;
  n1 <= r_sin_p_net_x1;
  n2 <= r_cos_p_net_x1;

  tt800_uprng_5cb037c292: entity work.tt800_uprng_entity_5cb037c292
    port map (
      ce_1 => ce_1_sg_x119,
      clk_1 => clk_1_sg_x119,
      ld => logical_y_net_x3,
      seed => bitbasher_seed0_net_x2,
      u => logical2_y_net_x3
    );

  u2n_1c7835b1a8: entity work.u2n_entity_1c7835b1a8
    port map (
      ce_1 => ce_1_sg_x119,
      clk_1 => clk_1_sg_x119,
      u => logical2_y_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs/noise0"

entity noise0_entity_b1b8512dea is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ld: in std_logic; 
    seed: in std_logic_vector(31 downto 0); 
    n1: out std_logic_vector(7 downto 0); 
    n2: out std_logic_vector(7 downto 0)
  );
end noise0_entity_b1b8512dea;

architecture structural of noise0_entity_b1b8512dea is
  signal adder_s_net_x0: std_logic_vector(7 downto 0);
  signal adder_s_net_x1: std_logic_vector(7 downto 0);
  signal bitbasher_seed0_net_x3: std_logic_vector(31 downto 0);
  signal ce_1_sg_x120: std_logic;
  signal clk_1_sg_x120: std_logic;
  signal logical_y_net_x4: std_logic;
  signal r_cos_p_net_x1: std_logic_vector(16 downto 0);
  signal r_sin_p_net_x1: std_logic_vector(16 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal scale1_op_net_x0: std_logic_vector(16 downto 0);
  signal scale_op_net_x0: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x120 <= ce_1;
  clk_1_sg_x120 <= clk_1;
  logical_y_net_x4 <= ld;
  bitbasher_seed0_net_x3 <= seed;
  n1 <= reinterpret_output_port_net_x0;
  n2 <= reinterpret1_output_port_net_x0;

  convert1_92a72c83a6: entity work.convert_entity_04484d0c91
    port map (
      ce_1 => ce_1_sg_x120,
      clk_1 => clk_1_sg_x120,
      in_x0 => scale1_op_net_x0,
      out_x0 => adder_s_net_x1
    );

  convert_04484d0c91: entity work.convert_entity_04484d0c91
    port map (
      ce_1 => ce_1_sg_x120,
      clk_1 => clk_1_sg_x120,
      in_x0 => scale_op_net_x0,
      out_x0 => adder_s_net_x0
    );

  reinterpret: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => adder_s_net_x1,
      output_port => reinterpret1_output_port_net_x0
    );

  scale: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_sin_p_net_x1,
      op => scale_op_net_x0
    );

  scale1: entity work.scale_b42effccbc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => r_cos_p_net_x1,
      op => scale1_op_net_x0
    );

  wgn_34e4d5f785: entity work.wgn_entity_34e4d5f785
    port map (
      ce_1 => ce_1_sg_x120,
      clk_1 => clk_1_sg_x120,
      ld => logical_y_net_x4,
      seed => bitbasher_seed0_net_x3,
      n1 => r_sin_p_net_x1,
      n2 => r_cos_p_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/WGNs"

entity wgns_entity_7bd51eacfd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    seed0: in std_logic_vector(31 downto 0); 
    seed1: in std_logic_vector(31 downto 0); 
    seed2: in std_logic_vector(31 downto 0); 
    seed3: in std_logic_vector(31 downto 0); 
    seed_ld: in std_logic; 
    n00: out std_logic_vector(7 downto 0); 
    n01: out std_logic_vector(7 downto 0); 
    n10: out std_logic_vector(7 downto 0); 
    n11: out std_logic_vector(7 downto 0); 
    n20: out std_logic_vector(7 downto 0); 
    n21: out std_logic_vector(7 downto 0); 
    n30: out std_logic_vector(7 downto 0); 
    n31: out std_logic_vector(7 downto 0)
  );
end wgns_entity_7bd51eacfd;

architecture structural of wgns_entity_7bd51eacfd is
  signal bitbasher_seed0_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x4: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x4: std_logic_vector(31 downto 0);
  signal ce_1_sg_x160: std_logic;
  signal clk_1_sg_x160: std_logic;
  signal logical_y_net_x20: std_logic;
  signal reinterpret1_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x7: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x160 <= ce_1;
  clk_1_sg_x160 <= clk_1;
  bitbasher_seed0_net_x4 <= seed0;
  bitbasher_seed1_net_x4 <= seed1;
  bitbasher_seed2_net_x4 <= seed2;
  bitbasher_seed3_net_x4 <= seed3;
  logical_y_net_x20 <= seed_ld;
  n00 <= reinterpret_output_port_net_x4;
  n01 <= reinterpret1_output_port_net_x4;
  n10 <= reinterpret_output_port_net_x5;
  n11 <= reinterpret1_output_port_net_x5;
  n20 <= reinterpret_output_port_net_x6;
  n21 <= reinterpret1_output_port_net_x6;
  n30 <= reinterpret_output_port_net_x7;
  n31 <= reinterpret1_output_port_net_x7;

  noise0_b1b8512dea: entity work.noise0_entity_b1b8512dea
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      ld => logical_y_net_x20,
      seed => bitbasher_seed0_net_x4,
      n1 => reinterpret_output_port_net_x4,
      n2 => reinterpret1_output_port_net_x4
    );

  noise1_255ecac4b2: entity work.noise0_entity_b1b8512dea
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      ld => logical_y_net_x20,
      seed => bitbasher_seed1_net_x4,
      n1 => reinterpret_output_port_net_x5,
      n2 => reinterpret1_output_port_net_x5
    );

  noise2_cdfa0f6c36: entity work.noise0_entity_b1b8512dea
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      ld => logical_y_net_x20,
      seed => bitbasher_seed2_net_x4,
      n1 => reinterpret_output_port_net_x6,
      n2 => reinterpret1_output_port_net_x6
    );

  noise3_fecd348006: entity work.noise0_entity_b1b8512dea
    port map (
      ce_1 => ce_1_sg_x160,
      clk_1 => clk_1_sg_x160,
      ld => logical_y_net_x20,
      seed => bitbasher_seed3_net_x4,
      n1 => reinterpret_output_port_net_x7,
      n2 => reinterpret1_output_port_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/ctl_regs"

entity ctl_regs_entity_a72d477ea2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_2048ch_control_ctl_regs_ant_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_ip_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_my_ip_user_data_out: in std_logic_vector(31 downto 0); 
    ant_base_offset: out std_logic_vector(31 downto 0); 
    arm_rst: out std_logic; 
    cnt_rst: out std_logic; 
    fft_preshift: out std_logic_vector(1 downto 0); 
    fft_shift: out std_logic_vector(15 downto 0); 
    gbe_gpu_rst: out std_logic; 
    gbe_sw_rst: out std_logic; 
    gpu_ip: out std_logic_vector(31 downto 0); 
    gpu_port: out std_logic_vector(31 downto 0); 
    ip_base: out std_logic_vector(31 downto 0); 
    loopback_mux_rst: out std_logic; 
    my_ip: out std_logic_vector(31 downto 0); 
    port_x0: out std_logic_vector(31 downto 0); 
    sync_rst: out std_logic; 
    use_fft_tvg: out std_logic_vector(1 downto 0); 
    use_sram_tvg: out std_logic
  );
end ctl_regs_entity_a72d477ea2;

architecture structural of ctl_regs_entity_a72d477ea2 is
  signal ce_1_sg_x161: std_logic;
  signal clk_1_sg_x161: std_logic;
  signal delay1_q_net: std_logic_vector(31 downto 0);
  signal delay2_q_net_x3: std_logic_vector(31 downto 0);
  signal delay3_q_net_x3: std_logic_vector(31 downto 0);
  signal delay4_q_net_x2: std_logic_vector(31 downto 0);
  signal delay5_q_net_x2: std_logic_vector(31 downto 0);
  signal delay6_q_net_x2: std_logic_vector(31 downto 0);
  signal delay7_q_net_x2: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x2: std_logic;
  signal slice21_y_net_x1: std_logic_vector(15 downto 0);
  signal slice2_y_net_x13: std_logic_vector(1 downto 0);
  signal slice3_y_net_x2: std_logic;
  signal slice4_y_net_x2: std_logic;
  signal slice5_y_net_x2: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x3: std_logic;
  signal slice8_y_net_x2: std_logic_vector(1 downto 0);
  signal slice9_y_net_x2: std_logic;

begin
  ce_1_sg_x161 <= ce_1;
  clk_1_sg_x161 <= clk_1;
  roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_ant_base_user_data_out;
  roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out;
  roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_gpu_port_user_data_out;
  roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_ip_base_user_data_out;
  roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x0 <= roachf_2048ch_control_ctl_regs_my_ip_user_data_out;
  ant_base_offset <= delay2_q_net_x3;
  arm_rst <= slice7_y_net_x3;
  cnt_rst <= slice4_y_net_x2;
  fft_preshift <= slice2_y_net_x13;
  fft_shift <= slice21_y_net_x1;
  gbe_gpu_rst <= slice10_y_net_x2;
  gbe_sw_rst <= slice5_y_net_x2;
  gpu_ip <= delay6_q_net_x2;
  gpu_port <= delay7_q_net_x2;
  ip_base <= delay3_q_net_x3;
  loopback_mux_rst <= slice3_y_net_x2;
  my_ip <= delay4_q_net_x2;
  port_x0 <= delay5_q_net_x2;
  sync_rst <= slice6_y_net_x1;
  use_fft_tvg <= slice8_y_net_x2;
  use_sram_tvg <= slice9_y_net_x2;

  delay1: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x0,
      q => delay1_q_net
    );

  delay2: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x0,
      q => delay2_q_net_x3
    );

  delay3: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x0,
      q => delay3_q_net_x3
    );

  delay4: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x0,
      q => delay4_q_net_x2
    );

  delay5: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x0,
      q => delay5_q_net_x2
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x0,
      q => delay6_q_net_x2
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      d => roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x0,
      q => delay7_q_net_x2
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice10_y_net_x2
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 26,
      new_msb => 27,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => delay1_q_net,
      y => slice2_y_net_x13
    );

  slice21: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => delay1_q_net,
      y => slice21_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 29,
      new_msb => 29,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice3_y_net_x2
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 28,
      new_msb => 28,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice4_y_net_x2
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 30,
      new_msb => 30,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice5_y_net_x2
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice6_y_net_x1
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice7_y_net_x3
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 22,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => delay1_q_net,
      y => slice8_y_net_x2
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 19,
      new_msb => 19,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice9_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/delay"

entity delay_entity_3d34693509 is
  port (
    roachf_2048ch_control_delay_delay_user_data_out: in std_logic_vector(31 downto 0); 
    delay0: out std_logic_vector(3 downto 0); 
    delay1: out std_logic_vector(3 downto 0); 
    delay2: out std_logic_vector(3 downto 0); 
    delay3: out std_logic_vector(3 downto 0); 
    delay4: out std_logic_vector(3 downto 0); 
    delay5: out std_logic_vector(3 downto 0); 
    delay6: out std_logic_vector(3 downto 0); 
    delay7: out std_logic_vector(3 downto 0)
  );
end delay_entity_3d34693509;

architecture structural of delay_entity_3d34693509 is
  signal bitbasher1_delay4_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay0_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x0: std_logic_vector(3 downto 0);
  signal roachf_2048ch_control_delay_delay_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  roachf_2048ch_control_delay_delay_user_data_out_net_x0 <= roachf_2048ch_control_delay_delay_user_data_out;
  delay0 <= bitbasher_delay0_net_x0;
  delay1 <= bitbasher_delay1_net_x0;
  delay2 <= bitbasher_delay2_net_x0;
  delay3 <= bitbasher_delay3_net_x0;
  delay4 <= bitbasher1_delay4_net_x0;
  delay5 <= bitbasher1_delay5_net_x0;
  delay6 <= bitbasher1_delay6_net_x0;
  delay7 <= bitbasher1_delay7_net_x0;

  bitbasher: entity work.bitbasher_a85d9bdfd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      delay => roachf_2048ch_control_delay_delay_user_data_out_net_x0,
      delay0 => bitbasher_delay0_net_x0,
      delay1 => bitbasher_delay1_net_x0,
      delay2 => bitbasher_delay2_net_x0,
      delay3 => bitbasher_delay3_net_x0
    );

  bitbasher1: entity work.bitbasher_1f3692b5e0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      delay => roachf_2048ch_control_delay_delay_user_data_out_net_x0,
      delay4 => bitbasher1_delay4_net_x0,
      delay5 => bitbasher1_delay5_net_x0,
      delay6 => bitbasher1_delay6_net_x0,
      delay7 => bitbasher1_delay7_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/eq_coefs/eq_coeff0"

entity eq_coeff0_entity_f9f63337e4 is
  port (
    addr_in: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    valid_in: in std_logic; 
    addr_out: out std_logic_vector(5 downto 0); 
    data_out: out std_logic_vector(17 downto 0); 
    valid_out: out std_logic
  );
end eq_coeff0_entity_f9f63337e4;

architecture structural of eq_coeff0_entity_f9f63337e4 is
  signal ce_1_sg_x162: std_logic;
  signal clk_1_sg_x162: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal logical_y_net_x5: std_logic;
  signal register1_q_net_x6: std_logic_vector(17 downto 0);
  signal register2_q_net_x5: std_logic_vector(5 downto 0);
  signal register3_q_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice22_y_net_x0: std_logic_vector(1 downto 0);
  signal slice22_y_net_x1: std_logic_vector(17 downto 0);
  signal slice4_y_net_x0: std_logic_vector(7 downto 0);
  signal slice5_y_net_x0: std_logic;
  signal slice9_y_net: std_logic_vector(5 downto 0);

begin
  slice4_y_net_x0 <= addr_in;
  ce_1_sg_x162 <= ce_1;
  clk_1_sg_x162 <= clk_1;
  slice22_y_net_x1 <= data_in;
  slice5_y_net_x0 <= valid_in;
  addr_out <= register2_q_net_x5;
  data_out <= register1_q_net_x6;
  valid_out <= logical_y_net_x5;

  constant_x0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => register3_q_net,
      y(0) => logical_y_net_x5
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x162,
      clk => clk_1_sg_x162,
      d => slice22_y_net_x1,
      en => "1",
      rst => "0",
      q => register1_q_net_x6
    );

  register2: entity work.xlregister
    generic map (
      d_width => 6,
      init_value => b"000000"
    )
    port map (
      ce => ce_1_sg_x162,
      clk => clk_1_sg_x162,
      d => slice9_y_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x5
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x162,
      clk => clk_1_sg_x162,
      d(0) => slice5_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net
    );

  relational: entity work.relational_367321bc0c
    port map (
      a => slice22_y_net_x0,
      b => constant_op_net,
      ce => ce_1_sg_x162,
      clk => clk_1_sg_x162,
      clr => '0',
      op(0) => relational_op_net
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 8,
      y_width => 2
    )
    port map (
      x => slice4_y_net_x0,
      y => slice22_y_net_x0
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 5,
      x_width => 8,
      y_width => 6
    )
    port map (
      x => slice4_y_net_x0,
      y => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/eq_coefs/eq_coeff1"

entity eq_coeff1_entity_cdc6713ab4 is
  port (
    addr_in: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    valid_in: in std_logic; 
    addr_out: out std_logic_vector(5 downto 0); 
    data_out: out std_logic_vector(17 downto 0); 
    valid_out: out std_logic
  );
end eq_coeff1_entity_cdc6713ab4;

architecture structural of eq_coeff1_entity_cdc6713ab4 is
  signal ce_1_sg_x163: std_logic;
  signal clk_1_sg_x163: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal logical_y_net_x6: std_logic;
  signal register1_q_net_x7: std_logic_vector(17 downto 0);
  signal register2_q_net_x6: std_logic_vector(5 downto 0);
  signal register3_q_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice1_y_net_x0: std_logic_vector(17 downto 0);
  signal slice22_y_net: std_logic_vector(1 downto 0);
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal slice9_y_net: std_logic_vector(5 downto 0);

begin
  slice2_y_net_x0 <= addr_in;
  ce_1_sg_x163 <= ce_1;
  clk_1_sg_x163 <= clk_1;
  slice1_y_net_x0 <= data_in;
  slice3_y_net_x0 <= valid_in;
  addr_out <= register2_q_net_x6;
  data_out <= register1_q_net_x7;
  valid_out <= logical_y_net_x6;

  constant_x0: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => register3_q_net,
      y(0) => logical_y_net_x6
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      d => slice1_y_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x7
    );

  register2: entity work.xlregister
    generic map (
      d_width => 6,
      init_value => b"000000"
    )
    port map (
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      d => slice9_y_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x6
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      d(0) => slice3_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net
    );

  relational: entity work.relational_367321bc0c
    port map (
      a => slice22_y_net,
      b => constant_op_net,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      op(0) => relational_op_net
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 8,
      y_width => 2
    )
    port map (
      x => slice2_y_net_x0,
      y => slice22_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 5,
      x_width => 8,
      y_width => 6
    )
    port map (
      x => slice2_y_net_x0,
      y => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/eq_coefs/eq_coeff2"

entity eq_coeff2_entity_526e4dfb61 is
  port (
    addr_in: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    valid_in: in std_logic; 
    addr_out: out std_logic_vector(5 downto 0); 
    data_out: out std_logic_vector(17 downto 0); 
    valid_out: out std_logic
  );
end eq_coeff2_entity_526e4dfb61;

architecture structural of eq_coeff2_entity_526e4dfb61 is
  signal ce_1_sg_x164: std_logic;
  signal clk_1_sg_x164: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal logical_y_net_x7: std_logic;
  signal register1_q_net_x8: std_logic_vector(17 downto 0);
  signal register2_q_net_x7: std_logic_vector(5 downto 0);
  signal register3_q_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice22_y_net: std_logic_vector(1 downto 0);
  signal slice6_y_net_x0: std_logic_vector(17 downto 0);
  signal slice7_y_net_x0: std_logic_vector(7 downto 0);
  signal slice8_y_net_x0: std_logic;
  signal slice9_y_net: std_logic_vector(5 downto 0);

begin
  slice7_y_net_x0 <= addr_in;
  ce_1_sg_x164 <= ce_1;
  clk_1_sg_x164 <= clk_1;
  slice6_y_net_x0 <= data_in;
  slice8_y_net_x0 <= valid_in;
  addr_out <= register2_q_net_x7;
  data_out <= register1_q_net_x8;
  valid_out <= logical_y_net_x7;

  constant_x0: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => register3_q_net,
      y(0) => logical_y_net_x7
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      d => slice6_y_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x8
    );

  register2: entity work.xlregister
    generic map (
      d_width => 6,
      init_value => b"000000"
    )
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      d => slice9_y_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x7
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      d(0) => slice8_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net
    );

  relational: entity work.relational_367321bc0c
    port map (
      a => slice22_y_net,
      b => constant_op_net,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      op(0) => relational_op_net
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 8,
      y_width => 2
    )
    port map (
      x => slice7_y_net_x0,
      y => slice22_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 5,
      x_width => 8,
      y_width => 6
    )
    port map (
      x => slice7_y_net_x0,
      y => slice9_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/eq_coefs/eq_coeff3"

entity eq_coeff3_entity_612df1250a is
  port (
    addr_in: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(17 downto 0); 
    valid_in: in std_logic; 
    addr_out: out std_logic_vector(5 downto 0); 
    data_out: out std_logic_vector(17 downto 0); 
    valid_out: out std_logic
  );
end eq_coeff3_entity_612df1250a;

architecture structural of eq_coeff3_entity_612df1250a is
  signal ce_1_sg_x165: std_logic;
  signal clk_1_sg_x165: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal logical_y_net_x8: std_logic;
  signal register1_q_net_x9: std_logic_vector(17 downto 0);
  signal register2_q_net_x8: std_logic_vector(5 downto 0);
  signal register3_q_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice10_y_net_x0: std_logic_vector(7 downto 0);
  signal slice11_y_net_x0: std_logic;
  signal slice22_y_net: std_logic_vector(1 downto 0);
  signal slice9_y_net_x0: std_logic_vector(5 downto 0);
  signal slice9_y_net_x1: std_logic_vector(17 downto 0);

begin
  slice10_y_net_x0 <= addr_in;
  ce_1_sg_x165 <= ce_1;
  clk_1_sg_x165 <= clk_1;
  slice9_y_net_x1 <= data_in;
  slice11_y_net_x0 <= valid_in;
  addr_out <= register2_q_net_x8;
  data_out <= register1_q_net_x9;
  valid_out <= logical_y_net_x8;

  constant_x0: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => register3_q_net,
      y(0) => logical_y_net_x8
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      d => slice9_y_net_x1,
      en => "1",
      rst => "0",
      q => register1_q_net_x9
    );

  register2: entity work.xlregister
    generic map (
      d_width => 6,
      init_value => b"000000"
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      d => slice9_y_net_x0,
      en => "1",
      rst => "0",
      q => register2_q_net_x8
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      d(0) => slice11_y_net_x0,
      en => "1",
      rst => "0",
      q(0) => register3_q_net
    );

  relational: entity work.relational_367321bc0c
    port map (
      a => slice22_y_net,
      b => constant_op_net,
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      clr => '0',
      op(0) => relational_op_net
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 8,
      y_width => 2
    )
    port map (
      x => slice10_y_net_x0,
      y => slice22_y_net
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 5,
      x_width => 8,
      y_width => 6
    )
    port map (
      x => slice10_y_net_x0,
      y => slice9_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/eq_coefs"

entity eq_coefs_entity_5847e7ecdc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    eq_addr_0: out std_logic_vector(5 downto 0); 
    eq_addr_1: out std_logic_vector(5 downto 0); 
    eq_addr_2: out std_logic_vector(5 downto 0); 
    eq_addr_3: out std_logic_vector(5 downto 0); 
    eq_data_0: out std_logic_vector(17 downto 0); 
    eq_data_1: out std_logic_vector(17 downto 0); 
    eq_data_2: out std_logic_vector(17 downto 0); 
    eq_data_3: out std_logic_vector(17 downto 0); 
    eq_en_0: out std_logic; 
    eq_en_1: out std_logic; 
    eq_en_2: out std_logic; 
    eq_en_3: out std_logic
  );
end eq_coefs_entity_5847e7ecdc;

architecture structural of eq_coefs_entity_5847e7ecdc is
  signal ce_1_sg_x166: std_logic;
  signal clk_1_sg_x166: std_logic;
  signal logical_y_net_x10: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x9: std_logic;
  signal register1_q_net_x10: std_logic_vector(17 downto 0);
  signal register1_q_net_x11: std_logic_vector(17 downto 0);
  signal register1_q_net_x12: std_logic_vector(17 downto 0);
  signal register1_q_net_x13: std_logic_vector(17 downto 0);
  signal register2_q_net_x10: std_logic_vector(5 downto 0);
  signal register2_q_net_x11: std_logic_vector(5 downto 0);
  signal register2_q_net_x12: std_logic_vector(5 downto 0);
  signal register2_q_net_x9: std_logic_vector(5 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x0: std_logic_vector(7 downto 0);
  signal slice11_y_net_x0: std_logic;
  signal slice1_y_net_x0: std_logic_vector(17 downto 0);
  signal slice22_y_net_x1: std_logic_vector(17 downto 0);
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal slice4_y_net_x0: std_logic_vector(7 downto 0);
  signal slice5_y_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic_vector(17 downto 0);
  signal slice7_y_net_x0: std_logic_vector(7 downto 0);
  signal slice8_y_net_x0: std_logic;
  signal slice9_y_net_x1: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x166 <= ce_1;
  clk_1_sg_x166 <= clk_1;
  roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x0 <= roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x0 <= roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x0 <= roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x0 <= roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out;
  eq_addr_0 <= register2_q_net_x9;
  eq_addr_1 <= register2_q_net_x10;
  eq_addr_2 <= register2_q_net_x11;
  eq_addr_3 <= register2_q_net_x12;
  eq_data_0 <= register1_q_net_x10;
  eq_data_1 <= register1_q_net_x11;
  eq_data_2 <= register1_q_net_x12;
  eq_data_3 <= register1_q_net_x13;
  eq_en_0 <= logical_y_net_x9;
  eq_en_1 <= logical_y_net_x10;
  eq_en_2 <= logical_y_net_x11;
  eq_en_3 <= logical_y_net_x12;

  eq_coeff0_f9f63337e4: entity work.eq_coeff0_entity_f9f63337e4
    port map (
      addr_in => slice4_y_net_x0,
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      data_in => slice22_y_net_x1,
      valid_in => slice5_y_net_x0,
      addr_out => register2_q_net_x9,
      data_out => register1_q_net_x10,
      valid_out => logical_y_net_x9
    );

  eq_coeff1_cdc6713ab4: entity work.eq_coeff1_entity_cdc6713ab4
    port map (
      addr_in => slice2_y_net_x0,
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      data_in => slice1_y_net_x0,
      valid_in => slice3_y_net_x0,
      addr_out => register2_q_net_x10,
      data_out => register1_q_net_x11,
      valid_out => logical_y_net_x10
    );

  eq_coeff2_526e4dfb61: entity work.eq_coeff2_entity_526e4dfb61
    port map (
      addr_in => slice7_y_net_x0,
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      data_in => slice6_y_net_x0,
      valid_in => slice8_y_net_x0,
      addr_out => register2_q_net_x11,
      data_out => register1_q_net_x12,
      valid_out => logical_y_net_x11
    );

  eq_coeff3_612df1250a: entity work.eq_coeff3_entity_612df1250a
    port map (
      addr_in => slice10_y_net_x0,
      ce_1 => ce_1_sg_x166,
      clk_1 => clk_1_sg_x166,
      data_in => slice9_y_net_x1,
      valid_in => slice11_y_net_x0,
      addr_out => register2_q_net_x12,
      data_out => register1_q_net_x13,
      valid_out => logical_y_net_x12
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x0,
      y => slice1_y_net_x0
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x0,
      y => slice10_y_net_x0
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x0,
      y(0) => slice11_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x0,
      y => slice2_y_net_x0
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x0,
      y => slice22_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x0,
      y(0) => slice3_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x0,
      y => slice4_y_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x0,
      y(0) => slice5_y_net_x0
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x0,
      y => slice6_y_net_x0
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 25,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x0,
      y => slice7_y_net_x0
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 31,
      new_msb => 31,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x0,
      y(0) => slice8_y_net_x0
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 32,
      y_width => 18
    )
    port map (
      x => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x0,
      y => slice9_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/insel"

entity insel_entity_f24df7e05b is
  port (
    roachf_2048ch_control_insel_insel_user_data_out: in std_logic_vector(31 downto 0); 
    insel0: out std_logic_vector(1 downto 0); 
    insel1: out std_logic_vector(1 downto 0); 
    insel2: out std_logic_vector(1 downto 0); 
    insel3: out std_logic_vector(1 downto 0); 
    insel4: out std_logic_vector(1 downto 0); 
    insel5: out std_logic_vector(1 downto 0); 
    insel6: out std_logic_vector(1 downto 0); 
    insel7: out std_logic_vector(1 downto 0)
  );
end insel_entity_f24df7e05b;

architecture structural of insel_entity_f24df7e05b is
  signal bitbasher1_insel4_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel0_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x0: std_logic_vector(1 downto 0);
  signal roachf_2048ch_control_insel_insel_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  roachf_2048ch_control_insel_insel_user_data_out_net_x0 <= roachf_2048ch_control_insel_insel_user_data_out;
  insel0 <= bitbasher_insel0_net_x0;
  insel1 <= bitbasher_insel1_net_x0;
  insel2 <= bitbasher_insel2_net_x0;
  insel3 <= bitbasher_insel3_net_x0;
  insel4 <= bitbasher1_insel4_net_x0;
  insel5 <= bitbasher1_insel5_net_x0;
  insel6 <= bitbasher1_insel6_net_x0;
  insel7 <= bitbasher1_insel7_net_x0;

  bitbasher: entity work.bitbasher_0b7a692256
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      insel => roachf_2048ch_control_insel_insel_user_data_out_net_x0,
      insel0 => bitbasher_insel0_net_x0,
      insel1 => bitbasher_insel1_net_x0,
      insel2 => bitbasher_insel2_net_x0,
      insel3 => bitbasher_insel3_net_x0
    );

  bitbasher1: entity work.bitbasher_980b18e5c5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      insel => roachf_2048ch_control_insel_insel_user_data_out_net_x0,
      insel4 => bitbasher1_insel4_net_x0,
      insel5 => bitbasher1_insel5_net_x0,
      insel6 => bitbasher1_insel6_net_x0,
      insel7 => bitbasher1_insel7_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/seed/armed_trigger/edge_detect"

entity edge_detect_entity_67821eb11e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_67821eb11e;

architecture structural of edge_detect_entity_67821eb11e is
  signal ce_1_sg_x167: std_logic;
  signal clk_1_sg_x167: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice7_y_net_x4: std_logic;

begin
  ce_1_sg_x167 <= ce_1;
  clk_1_sg_x167 <= clk_1;
  slice7_y_net_x4 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      d(0) => slice7_y_net_x4,
      en => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      clr => '0',
      ip(0) => slice7_y_net_x4,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/seed/armed_trigger"

entity armed_trigger_entity_c050484b7b is
  port (
    arm: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    trig_in: in std_logic; 
    trig_out: out std_logic
  );
end armed_trigger_entity_c050484b7b;

architecture structural of armed_trigger_entity_c050484b7b is
  signal armed_q_net: std_logic;
  signal ce_1_sg_x168: std_logic;
  signal clk_1_sg_x168: std_logic;
  signal constant2_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal logical3_y_net_x6: std_logic;
  signal logical_y_net_x21: std_logic;
  signal slice7_y_net_x5: std_logic;

begin
  slice7_y_net_x5 <= arm;
  ce_1_sg_x168 <= ce_1;
  clk_1_sg_x168 <= clk_1;
  logical3_y_net_x6 <= trig_in;
  trig_out <= logical_y_net_x21;

  armed: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      d(0) => constant2_op_net,
      en(0) => logical_y_net_x21,
      rst(0) => edge_op_y_net_x0,
      q(0) => armed_q_net
    );

  constant2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  edge_detect_67821eb11e: entity work.edge_detect_entity_67821eb11e
    port map (
      ce_1 => ce_1_sg_x168,
      clk_1 => clk_1_sg_x168,
      in_x0 => slice7_y_net_x5,
      out_x0 => edge_op_y_net_x0
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => armed_q_net,
      d1(0) => logical3_y_net_x6,
      y(0) => logical_y_net_x21
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control/seed"

entity seed_entity_d236f6dbd6 is
  port (
    arm_rst: in std_logic; 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_2048ch_control_seed_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    sync_gen: in std_logic; 
    seed0: out std_logic_vector(31 downto 0); 
    seed1: out std_logic_vector(31 downto 0); 
    seed2: out std_logic_vector(31 downto 0); 
    seed3: out std_logic_vector(31 downto 0); 
    seed_ld: out std_logic
  );
end seed_entity_d236f6dbd6;

architecture structural of seed_entity_d236f6dbd6 is
  signal bitbasher_seed0_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x5: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x5: std_logic_vector(31 downto 0);
  signal ce_1_sg_x169: std_logic;
  signal clk_1_sg_x169: std_logic;
  signal logical3_y_net_x7: std_logic;
  signal logical_y_net_x22: std_logic;
  signal roachf_2048ch_control_seed_seed_data_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice7_y_net_x6: std_logic;

begin
  slice7_y_net_x6 <= arm_rst;
  ce_1_sg_x169 <= ce_1;
  clk_1_sg_x169 <= clk_1;
  roachf_2048ch_control_seed_seed_data_user_data_out_net_x0 <= roachf_2048ch_control_seed_seed_data_user_data_out;
  logical3_y_net_x7 <= sync_gen;
  seed0 <= bitbasher_seed0_net_x5;
  seed1 <= bitbasher_seed1_net_x5;
  seed2 <= bitbasher_seed2_net_x5;
  seed3 <= bitbasher_seed3_net_x5;
  seed_ld <= logical_y_net_x22;

  armed_trigger_c050484b7b: entity work.armed_trigger_entity_c050484b7b
    port map (
      arm => slice7_y_net_x6,
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      trig_in => logical3_y_net_x7,
      trig_out => logical_y_net_x22
    );

  bitbasher: entity work.bitbasher_5b1e76c782
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      seed => roachf_2048ch_control_seed_seed_data_user_data_out_net_x0,
      seed0 => bitbasher_seed0_net_x5,
      seed1 => bitbasher_seed1_net_x5,
      seed2 => bitbasher_seed2_net_x5,
      seed3 => bitbasher_seed3_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/control"

entity control_entity_d92b92adcf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_2048ch_control_ctl_regs_ant_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_ip_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_my_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_delay_delay_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_insel_insel_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_seed_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    timebase: in std_logic; 
    ctl_regs: out std_logic_vector(31 downto 0); 
    ctl_regs_x0: out std_logic_vector(31 downto 0); 
    ctl_regs_x1: out std_logic_vector(31 downto 0); 
    ctl_regs_x10: out std_logic; 
    ctl_regs_x11: out std_logic; 
    ctl_regs_x12: out std_logic; 
    ctl_regs_x13: out std_logic_vector(1 downto 0); 
    ctl_regs_x14: out std_logic; 
    ctl_regs_x2: out std_logic_vector(31 downto 0); 
    ctl_regs_x3: out std_logic_vector(31 downto 0); 
    ctl_regs_x4: out std_logic_vector(31 downto 0); 
    ctl_regs_x5: out std_logic; 
    ctl_regs_x6: out std_logic_vector(1 downto 0); 
    ctl_regs_x7: out std_logic_vector(15 downto 0); 
    ctl_regs_x8: out std_logic; 
    ctl_regs_x9: out std_logic; 
    delay: out std_logic_vector(3 downto 0); 
    delay_x0: out std_logic_vector(3 downto 0); 
    delay_x1: out std_logic_vector(3 downto 0); 
    delay_x2: out std_logic_vector(3 downto 0); 
    delay_x3: out std_logic_vector(3 downto 0); 
    delay_x4: out std_logic_vector(3 downto 0); 
    delay_x5: out std_logic_vector(3 downto 0); 
    delay_x6: out std_logic_vector(3 downto 0); 
    eq_coefs: out std_logic; 
    eq_coefs_x0: out std_logic_vector(17 downto 0); 
    eq_coefs_x1: out std_logic_vector(5 downto 0); 
    eq_coefs_x10: out std_logic_vector(5 downto 0); 
    eq_coefs_x2: out std_logic; 
    eq_coefs_x3: out std_logic_vector(17 downto 0); 
    eq_coefs_x4: out std_logic_vector(5 downto 0); 
    eq_coefs_x5: out std_logic; 
    eq_coefs_x6: out std_logic_vector(17 downto 0); 
    eq_coefs_x7: out std_logic_vector(5 downto 0); 
    eq_coefs_x8: out std_logic; 
    eq_coefs_x9: out std_logic_vector(17 downto 0); 
    insel: out std_logic_vector(1 downto 0); 
    insel_x0: out std_logic_vector(1 downto 0); 
    insel_x1: out std_logic_vector(1 downto 0); 
    insel_x2: out std_logic_vector(1 downto 0); 
    insel_x3: out std_logic_vector(1 downto 0); 
    insel_x4: out std_logic_vector(1 downto 0); 
    insel_x5: out std_logic_vector(1 downto 0); 
    insel_x6: out std_logic_vector(1 downto 0); 
    seed: out std_logic_vector(31 downto 0); 
    seed_x0: out std_logic_vector(31 downto 0); 
    seed_x1: out std_logic_vector(31 downto 0); 
    seed_x2: out std_logic_vector(31 downto 0); 
    seed_x3: out std_logic
  );
end control_entity_d92b92adcf;

architecture structural of control_entity_d92b92adcf is
  signal bitbasher1_delay4_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher1_insel4_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_delay0_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x1: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x1: std_logic_vector(1 downto 0);
  signal bitbasher_seed0_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x6: std_logic_vector(31 downto 0);
  signal ce_1_sg_x170: std_logic;
  signal clk_1_sg_x170: std_logic;
  signal delay2_q_net_x4: std_logic_vector(31 downto 0);
  signal delay3_q_net_x4: std_logic_vector(31 downto 0);
  signal delay4_q_net_x3: std_logic_vector(31 downto 0);
  signal delay5_q_net_x3: std_logic_vector(31 downto 0);
  signal delay6_q_net_x3: std_logic_vector(31 downto 0);
  signal delay7_q_net_x3: std_logic_vector(31 downto 0);
  signal logical3_y_net_x8: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x23: std_logic;
  signal register1_q_net_x14: std_logic_vector(17 downto 0);
  signal register1_q_net_x15: std_logic_vector(17 downto 0);
  signal register1_q_net_x16: std_logic_vector(17 downto 0);
  signal register1_q_net_x17: std_logic_vector(17 downto 0);
  signal register2_q_net_x13: std_logic_vector(5 downto 0);
  signal register2_q_net_x14: std_logic_vector(5 downto 0);
  signal register2_q_net_x15: std_logic_vector(5 downto 0);
  signal register2_q_net_x16: std_logic_vector(5 downto 0);
  signal roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_delay_delay_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_insel_insel_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_seed_seed_data_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice10_y_net_x3: std_logic;
  signal slice21_y_net_x2: std_logic_vector(15 downto 0);
  signal slice2_y_net_x14: std_logic_vector(1 downto 0);
  signal slice3_y_net_x3: std_logic;
  signal slice4_y_net_x3: std_logic;
  signal slice5_y_net_x3: std_logic;
  signal slice6_y_net_x2: std_logic;
  signal slice7_y_net_x7: std_logic;
  signal slice8_y_net_x3: std_logic_vector(1 downto 0);
  signal slice9_y_net_x3: std_logic;

begin
  ce_1_sg_x170 <= ce_1;
  clk_1_sg_x170 <= clk_1;
  roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_ant_base_user_data_out;
  roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out;
  roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_gpu_port_user_data_out;
  roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_ip_base_user_data_out;
  roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x1 <= roachf_2048ch_control_ctl_regs_my_ip_user_data_out;
  roachf_2048ch_control_delay_delay_user_data_out_net_x1 <= roachf_2048ch_control_delay_delay_user_data_out;
  roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x1 <= roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x1 <= roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x1 <= roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x1 <= roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out;
  roachf_2048ch_control_insel_insel_user_data_out_net_x1 <= roachf_2048ch_control_insel_insel_user_data_out;
  roachf_2048ch_control_seed_seed_data_user_data_out_net_x1 <= roachf_2048ch_control_seed_seed_data_user_data_out;
  logical3_y_net_x8 <= timebase;
  ctl_regs <= delay2_q_net_x4;
  ctl_regs_x0 <= delay3_q_net_x4;
  ctl_regs_x1 <= delay4_q_net_x3;
  ctl_regs_x10 <= slice5_y_net_x3;
  ctl_regs_x11 <= slice6_y_net_x2;
  ctl_regs_x12 <= slice7_y_net_x7;
  ctl_regs_x13 <= slice8_y_net_x3;
  ctl_regs_x14 <= slice9_y_net_x3;
  ctl_regs_x2 <= delay5_q_net_x3;
  ctl_regs_x3 <= delay6_q_net_x3;
  ctl_regs_x4 <= delay7_q_net_x3;
  ctl_regs_x5 <= slice10_y_net_x3;
  ctl_regs_x6 <= slice2_y_net_x14;
  ctl_regs_x7 <= slice21_y_net_x2;
  ctl_regs_x8 <= slice3_y_net_x3;
  ctl_regs_x9 <= slice4_y_net_x3;
  delay <= bitbasher_delay0_net_x1;
  delay_x0 <= bitbasher_delay1_net_x1;
  delay_x1 <= bitbasher_delay2_net_x1;
  delay_x2 <= bitbasher_delay3_net_x1;
  delay_x3 <= bitbasher1_delay4_net_x1;
  delay_x4 <= bitbasher1_delay5_net_x1;
  delay_x5 <= bitbasher1_delay6_net_x1;
  delay_x6 <= bitbasher1_delay7_net_x1;
  eq_coefs <= logical_y_net_x13;
  eq_coefs_x0 <= register1_q_net_x14;
  eq_coefs_x1 <= register2_q_net_x13;
  eq_coefs_x10 <= register2_q_net_x16;
  eq_coefs_x2 <= logical_y_net_x14;
  eq_coefs_x3 <= register1_q_net_x15;
  eq_coefs_x4 <= register2_q_net_x14;
  eq_coefs_x5 <= logical_y_net_x15;
  eq_coefs_x6 <= register1_q_net_x16;
  eq_coefs_x7 <= register2_q_net_x15;
  eq_coefs_x8 <= logical_y_net_x16;
  eq_coefs_x9 <= register1_q_net_x17;
  insel <= bitbasher_insel0_net_x1;
  insel_x0 <= bitbasher_insel1_net_x1;
  insel_x1 <= bitbasher_insel2_net_x1;
  insel_x2 <= bitbasher_insel3_net_x1;
  insel_x3 <= bitbasher1_insel4_net_x1;
  insel_x4 <= bitbasher1_insel5_net_x1;
  insel_x5 <= bitbasher1_insel6_net_x1;
  insel_x6 <= bitbasher1_insel7_net_x1;
  seed <= bitbasher_seed0_net_x6;
  seed_x0 <= bitbasher_seed1_net_x6;
  seed_x1 <= bitbasher_seed2_net_x6;
  seed_x2 <= bitbasher_seed3_net_x6;
  seed_x3 <= logical_y_net_x23;

  ctl_regs_a72d477ea2: entity work.ctl_regs_entity_a72d477ea2
    port map (
      ce_1 => ce_1_sg_x170,
      clk_1 => clk_1_sg_x170,
      roachf_2048ch_control_ctl_regs_ant_base_user_data_out => roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out => roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out => roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out => roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_gpu_port_user_data_out => roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_ip_base_user_data_out => roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net_x1,
      roachf_2048ch_control_ctl_regs_my_ip_user_data_out => roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net_x1,
      ant_base_offset => delay2_q_net_x4,
      arm_rst => slice7_y_net_x7,
      cnt_rst => slice4_y_net_x3,
      fft_preshift => slice2_y_net_x14,
      fft_shift => slice21_y_net_x2,
      gbe_gpu_rst => slice10_y_net_x3,
      gbe_sw_rst => slice5_y_net_x3,
      gpu_ip => delay6_q_net_x3,
      gpu_port => delay7_q_net_x3,
      ip_base => delay3_q_net_x4,
      loopback_mux_rst => slice3_y_net_x3,
      my_ip => delay4_q_net_x3,
      port_x0 => delay5_q_net_x3,
      sync_rst => slice6_y_net_x2,
      use_fft_tvg => slice8_y_net_x3,
      use_sram_tvg => slice9_y_net_x3
    );

  delay_3d34693509: entity work.delay_entity_3d34693509
    port map (
      roachf_2048ch_control_delay_delay_user_data_out => roachf_2048ch_control_delay_delay_user_data_out_net_x1,
      delay0 => bitbasher_delay0_net_x1,
      delay1 => bitbasher_delay1_net_x1,
      delay2 => bitbasher_delay2_net_x1,
      delay3 => bitbasher_delay3_net_x1,
      delay4 => bitbasher1_delay4_net_x1,
      delay5 => bitbasher1_delay5_net_x1,
      delay6 => bitbasher1_delay6_net_x1,
      delay7 => bitbasher1_delay7_net_x1
    );

  eq_coefs_5847e7ecdc: entity work.eq_coefs_entity_5847e7ecdc
    port map (
      ce_1 => ce_1_sg_x170,
      clk_1 => clk_1_sg_x170,
      roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net_x1,
      roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net_x1,
      roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net_x1,
      roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net_x1,
      eq_addr_0 => register2_q_net_x13,
      eq_addr_1 => register2_q_net_x14,
      eq_addr_2 => register2_q_net_x15,
      eq_addr_3 => register2_q_net_x16,
      eq_data_0 => register1_q_net_x14,
      eq_data_1 => register1_q_net_x15,
      eq_data_2 => register1_q_net_x16,
      eq_data_3 => register1_q_net_x17,
      eq_en_0 => logical_y_net_x13,
      eq_en_1 => logical_y_net_x14,
      eq_en_2 => logical_y_net_x15,
      eq_en_3 => logical_y_net_x16
    );

  insel_f24df7e05b: entity work.insel_entity_f24df7e05b
    port map (
      roachf_2048ch_control_insel_insel_user_data_out => roachf_2048ch_control_insel_insel_user_data_out_net_x1,
      insel0 => bitbasher_insel0_net_x1,
      insel1 => bitbasher_insel1_net_x1,
      insel2 => bitbasher_insel2_net_x1,
      insel3 => bitbasher_insel3_net_x1,
      insel4 => bitbasher1_insel4_net_x1,
      insel5 => bitbasher1_insel5_net_x1,
      insel6 => bitbasher1_insel6_net_x1,
      insel7 => bitbasher1_insel7_net_x1
    );

  seed_d236f6dbd6: entity work.seed_entity_d236f6dbd6
    port map (
      arm_rst => slice7_y_net_x7,
      ce_1 => ce_1_sg_x170,
      clk_1 => clk_1_sg_x170,
      roachf_2048ch_control_seed_seed_data_user_data_out => roachf_2048ch_control_seed_seed_data_user_data_out_net_x1,
      sync_gen => logical3_y_net_x8,
      seed0 => bitbasher_seed0_net_x6,
      seed1 => bitbasher_seed1_net_x6,
      seed2 => bitbasher_seed2_net_x6,
      seed3 => bitbasher_seed3_net_x6,
      seed_ld => logical_y_net_x23
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/input_mux/muxin0"

entity muxin0_entity_a2ce6681aa is
  port (
    adc: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(3 downto 0); 
    n0: in std_logic_vector(7 downto 0); 
    n1: in std_logic_vector(7 downto 0); 
    sel: in std_logic_vector(1 downto 0); 
    out_x0: out std_logic_vector(7 downto 0)
  );
end muxin0_entity_a2ce6681aa;

architecture structural of muxin0_entity_a2ce6681aa is
  signal addressable_shift_register_q_net_x8: std_logic_vector(7 downto 0);
  signal bitbasher_delay0_net_x2: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x2: std_logic_vector(1 downto 0);
  signal ce_1_sg_x171: std_logic;
  signal clk_1_sg_x171: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc0_data_net_x2: std_logic_vector(7 downto 0);

begin
  roachf_2048ch_adcs_quadc0_adc0_data_net_x2 <= adc;
  ce_1_sg_x171 <= ce_1;
  clk_1_sg_x171 <= clk_1;
  bitbasher_delay0_net_x2 <= delay;
  reinterpret_output_port_net_x5 <= n0;
  reinterpret1_output_port_net_x5 <= n1;
  bitbasher_insel0_net_x2 <= sel;
  out_x0 <= addressable_shift_register_q_net_x8;

  addressable_shift_register: entity work.xladdrsr
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 4,
      core_addr_width => 4,
      core_name0 => "asr_11_0_372caaa934b22d95",
      d_arith => xlSigned,
      d_bin_pt => 7,
      d_width => 8,
      q_arith => xlSigned,
      q_bin_pt => 7,
      q_width => 8
    )
    port map (
      addr => bitbasher_delay0_net_x2,
      ce => ce_1_sg_x171,
      clk => clk_1_sg_x171,
      clr => '0',
      d => mux_y_net,
      en => "1",
      q => addressable_shift_register_q_net_x8
    );

  constant_x0: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mux: entity work.mux_81f00cece7
    port map (
      ce => ce_1_sg_x171,
      clk => clk_1_sg_x171,
      clr => '0',
      d0 => roachf_2048ch_adcs_quadc0_adc0_data_net_x2,
      d1 => reinterpret_output_port_net_x5,
      d2 => reinterpret1_output_port_net_x5,
      d3 => constant_op_net,
      sel => bitbasher_insel0_net_x2,
      y => mux_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/input_mux"

entity input_mux_entity_e4124e5313 is
  port (
    adc0: in std_logic_vector(7 downto 0); 
    adc1: in std_logic_vector(7 downto 0); 
    adc2: in std_logic_vector(7 downto 0); 
    adc3: in std_logic_vector(7 downto 0); 
    adc4: in std_logic_vector(7 downto 0); 
    adc5: in std_logic_vector(7 downto 0); 
    adc6: in std_logic_vector(7 downto 0); 
    adc7: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay0: in std_logic_vector(3 downto 0); 
    delay1: in std_logic_vector(3 downto 0); 
    delay2: in std_logic_vector(3 downto 0); 
    delay3: in std_logic_vector(3 downto 0); 
    delay4: in std_logic_vector(3 downto 0); 
    delay5: in std_logic_vector(3 downto 0); 
    delay6: in std_logic_vector(3 downto 0); 
    delay7: in std_logic_vector(3 downto 0); 
    insel0: in std_logic_vector(1 downto 0); 
    insel1: in std_logic_vector(1 downto 0); 
    insel2: in std_logic_vector(1 downto 0); 
    insel3: in std_logic_vector(1 downto 0); 
    insel4: in std_logic_vector(1 downto 0); 
    insel5: in std_logic_vector(1 downto 0); 
    insel6: in std_logic_vector(1 downto 0); 
    insel7: in std_logic_vector(1 downto 0); 
    n00: in std_logic_vector(7 downto 0); 
    n01: in std_logic_vector(7 downto 0); 
    n10: in std_logic_vector(7 downto 0); 
    n11: in std_logic_vector(7 downto 0); 
    n20: in std_logic_vector(7 downto 0); 
    n21: in std_logic_vector(7 downto 0); 
    n30: in std_logic_vector(7 downto 0); 
    n31: in std_logic_vector(7 downto 0); 
    sync_gen: in std_logic; 
    in1: out std_logic_vector(7 downto 0); 
    in2: out std_logic_vector(7 downto 0); 
    in3: out std_logic_vector(7 downto 0); 
    in4: out std_logic_vector(7 downto 0); 
    in5: out std_logic_vector(7 downto 0); 
    in6: out std_logic_vector(7 downto 0); 
    in7: out std_logic_vector(7 downto 0); 
    mux_mon: out std_logic_vector(7 downto 0); 
    pfb_sync: out std_logic
  );
end input_mux_entity_e4124e5313;

architecture structural of input_mux_entity_e4124e5313 is
  signal addressable_shift_register_q_net_x16: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x17: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x18: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x19: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x20: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x21: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x22: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x23: std_logic_vector(7 downto 0);
  signal bitbasher1_delay4_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_insel4_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_delay0_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x3: std_logic_vector(1 downto 0);
  signal ce_1_sg_x179: std_logic;
  signal clk_1_sg_x179: std_logic;
  signal delay_q_net_x2: std_logic;
  signal logical3_y_net_x9: std_logic;
  signal reinterpret1_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc0_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc1_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc2_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc3_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc0_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc1_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc2_data_net_x3: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc3_data_net_x3: std_logic_vector(7 downto 0);

begin
  roachf_2048ch_adcs_quadc0_adc0_data_net_x3 <= adc0;
  roachf_2048ch_adcs_quadc0_adc1_data_net_x3 <= adc1;
  roachf_2048ch_adcs_quadc0_adc2_data_net_x3 <= adc2;
  roachf_2048ch_adcs_quadc0_adc3_data_net_x3 <= adc3;
  roachf_2048ch_adcs_quadc1_adc0_data_net_x3 <= adc4;
  roachf_2048ch_adcs_quadc1_adc1_data_net_x3 <= adc5;
  roachf_2048ch_adcs_quadc1_adc2_data_net_x3 <= adc6;
  roachf_2048ch_adcs_quadc1_adc3_data_net_x3 <= adc7;
  ce_1_sg_x179 <= ce_1;
  clk_1_sg_x179 <= clk_1;
  bitbasher_delay0_net_x3 <= delay0;
  bitbasher_delay1_net_x3 <= delay1;
  bitbasher_delay2_net_x3 <= delay2;
  bitbasher_delay3_net_x3 <= delay3;
  bitbasher1_delay4_net_x3 <= delay4;
  bitbasher1_delay5_net_x3 <= delay5;
  bitbasher1_delay6_net_x3 <= delay6;
  bitbasher1_delay7_net_x3 <= delay7;
  bitbasher_insel0_net_x3 <= insel0;
  bitbasher_insel1_net_x3 <= insel1;
  bitbasher_insel2_net_x3 <= insel2;
  bitbasher_insel3_net_x3 <= insel3;
  bitbasher1_insel4_net_x3 <= insel4;
  bitbasher1_insel5_net_x3 <= insel5;
  bitbasher1_insel6_net_x3 <= insel6;
  bitbasher1_insel7_net_x3 <= insel7;
  reinterpret_output_port_net_x10 <= n00;
  reinterpret1_output_port_net_x10 <= n01;
  reinterpret_output_port_net_x11 <= n10;
  reinterpret1_output_port_net_x11 <= n11;
  reinterpret_output_port_net_x12 <= n20;
  reinterpret1_output_port_net_x12 <= n21;
  reinterpret_output_port_net_x13 <= n30;
  reinterpret1_output_port_net_x13 <= n31;
  logical3_y_net_x9 <= sync_gen;
  in1 <= addressable_shift_register_q_net_x17;
  in2 <= addressable_shift_register_q_net_x18;
  in3 <= addressable_shift_register_q_net_x19;
  in4 <= addressable_shift_register_q_net_x20;
  in5 <= addressable_shift_register_q_net_x21;
  in6 <= addressable_shift_register_q_net_x22;
  in7 <= addressable_shift_register_q_net_x23;
  mux_mon <= addressable_shift_register_q_net_x16;
  pfb_sync <= delay_q_net_x2;

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      d(0) => logical3_y_net_x9,
      en => '1',
      q(0) => delay_q_net_x2
    );

  muxin0_a2ce6681aa: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc0_adc0_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher_delay0_net_x3,
      n0 => reinterpret_output_port_net_x10,
      n1 => reinterpret1_output_port_net_x10,
      sel => bitbasher_insel0_net_x3,
      out_x0 => addressable_shift_register_q_net_x16
    );

  muxin1_8980ec721b: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc0_adc1_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher_delay1_net_x3,
      n0 => reinterpret_output_port_net_x10,
      n1 => reinterpret1_output_port_net_x10,
      sel => bitbasher_insel1_net_x3,
      out_x0 => addressable_shift_register_q_net_x17
    );

  muxin2_c1e243c1f8: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc0_adc2_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher_delay2_net_x3,
      n0 => reinterpret_output_port_net_x11,
      n1 => reinterpret1_output_port_net_x11,
      sel => bitbasher_insel2_net_x3,
      out_x0 => addressable_shift_register_q_net_x18
    );

  muxin3_36b16749aa: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc0_adc3_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher_delay3_net_x3,
      n0 => reinterpret_output_port_net_x11,
      n1 => reinterpret1_output_port_net_x11,
      sel => bitbasher_insel3_net_x3,
      out_x0 => addressable_shift_register_q_net_x19
    );

  muxin4_82db29eddd: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc1_adc0_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher1_delay4_net_x3,
      n0 => reinterpret_output_port_net_x12,
      n1 => reinterpret1_output_port_net_x12,
      sel => bitbasher1_insel4_net_x3,
      out_x0 => addressable_shift_register_q_net_x20
    );

  muxin5_52e5e49ce5: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc1_adc1_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher1_delay5_net_x3,
      n0 => reinterpret_output_port_net_x12,
      n1 => reinterpret1_output_port_net_x12,
      sel => bitbasher1_insel5_net_x3,
      out_x0 => addressable_shift_register_q_net_x21
    );

  muxin6_3122d09bf8: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc1_adc2_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher1_delay6_net_x3,
      n0 => reinterpret_output_port_net_x13,
      n1 => reinterpret1_output_port_net_x13,
      sel => bitbasher1_insel6_net_x3,
      out_x0 => addressable_shift_register_q_net_x22
    );

  muxin7_32a05e1934: entity work.muxin0_entity_a2ce6681aa
    port map (
      adc => roachf_2048ch_adcs_quadc1_adc3_data_net_x3,
      ce_1 => ce_1_sg_x179,
      clk_1 => clk_1_sg_x179,
      delay => bitbasher1_delay7_net_x3,
      n0 => reinterpret_output_port_net_x13,
      n1 => reinterpret1_output_port_net_x13,
      sel => bitbasher1_insel7_net_x3,
      out_x0 => addressable_shift_register_q_net_x23
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch/status"

entity status_entity_c8ecda6293 is
  port (
    gbe_gpu_led_rx: in std_logic; 
    gbe_gpu_led_tx: in std_logic; 
    gbe_gpu_led_up: in std_logic; 
    gbe_gpu_rx_bfr: in std_logic; 
    gbe_gpu_rx_orun: in std_logic; 
    gbe_gpu_tx_afull: in std_logic; 
    gbe_gpu_tx_oflow: in std_logic; 
    gbe_sw_led_rx: in std_logic; 
    gbe_sw_led_tx: in std_logic; 
    gbe_sw_led_up: in std_logic; 
    gbe_sw_rx_bfr: in std_logic; 
    gbe_sw_rx_orun: in std_logic; 
    gbe_sw_tx_afull: in std_logic; 
    gbe_sw_tx_oflow: in std_logic; 
    gbe_gpu: out std_logic_vector(31 downto 0); 
    gbe_sw: out std_logic_vector(31 downto 0)
  );
end status_entity_c8ecda6293;

architecture structural of status_entity_c8ecda6293 is
  signal concat1_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(24 downto 0);
  signal constant2_op_net: std_logic_vector(24 downto 0);
  signal convert_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert_dout_net_x3: std_logic_vector(31 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_led_rx_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_led_tx_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_led_up_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_afull_net_x0: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_led_rx_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_led_tx_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_led_up_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x2: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_overrun_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_afull_net_x0: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_overflow_net_x0: std_logic;

begin
  roachf_2048ch_2gpu_gbe_gpu_led_rx_net_x0 <= gbe_gpu_led_rx;
  roachf_2048ch_2gpu_gbe_gpu_led_tx_net_x0 <= gbe_gpu_led_tx;
  roachf_2048ch_2gpu_gbe_gpu_led_up_net_x0 <= gbe_gpu_led_up;
  roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net_x0 <= gbe_gpu_rx_bfr;
  roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net_x0 <= gbe_gpu_rx_orun;
  roachf_2048ch_2gpu_gbe_gpu_tx_afull_net_x0 <= gbe_gpu_tx_afull;
  roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net_x0 <= gbe_gpu_tx_oflow;
  roachf_2048ch_switch_gbe_sw_led_rx_net_x0 <= gbe_sw_led_rx;
  roachf_2048ch_switch_gbe_sw_led_tx_net_x0 <= gbe_sw_led_tx;
  roachf_2048ch_switch_gbe_sw_led_up_net_x0 <= gbe_sw_led_up;
  roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x2 <= gbe_sw_rx_bfr;
  roachf_2048ch_switch_gbe_sw_rx_overrun_net_x0 <= gbe_sw_rx_orun;
  roachf_2048ch_switch_gbe_sw_tx_afull_net_x0 <= gbe_sw_tx_afull;
  roachf_2048ch_switch_gbe_sw_tx_overflow_net_x0 <= gbe_sw_tx_oflow;
  gbe_gpu <= convert_dout_net_x2;
  gbe_sw <= convert_dout_net_x3;

  concat: entity work.concat_31382efd95
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant1_op_net,
      in1(0) => roachf_2048ch_switch_gbe_sw_led_up_net_x0,
      in2(0) => roachf_2048ch_switch_gbe_sw_led_rx_net_x0,
      in3(0) => roachf_2048ch_switch_gbe_sw_led_tx_net_x0,
      in4(0) => roachf_2048ch_switch_gbe_sw_tx_afull_net_x0,
      in5(0) => roachf_2048ch_switch_gbe_sw_tx_overflow_net_x0,
      in6(0) => roachf_2048ch_switch_gbe_sw_rx_bad_frame_net_x2,
      in7(0) => roachf_2048ch_switch_gbe_sw_rx_overrun_net_x0,
      y => concat_y_net_x0
    );

  concat1: entity work.concat_31382efd95
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant2_op_net,
      in1(0) => roachf_2048ch_2gpu_gbe_gpu_led_up_net_x0,
      in2(0) => roachf_2048ch_2gpu_gbe_gpu_led_rx_net_x0,
      in3(0) => roachf_2048ch_2gpu_gbe_gpu_led_tx_net_x0,
      in4(0) => roachf_2048ch_2gpu_gbe_gpu_tx_afull_net_x0,
      in5(0) => roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net_x0,
      in6(0) => roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net_x0,
      in7(0) => roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net_x0,
      y => concat1_y_net_x0
    );

  constant1: entity work.constant_6a1bb6dda6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_6a1bb6dda6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  gbe_gpu_e197ad1659: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => concat1_y_net_x0,
      convert_x0 => convert_dout_net_x2
    );

  gbe_sw_297e1daef5: entity work.loop_cnt0_entity_50bec196fd
    port map (
      reg_out => concat_y_net_x0,
      convert_x0 => convert_dout_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roachf_2048ch"

entity roachf_2048ch is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_led_rx: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_led_tx: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_led_up: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_data: in std_logic_vector(63 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_overrun: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_source_ip: in std_logic_vector(31 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_rx_source_port: in std_logic_vector(15 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_rx_valid: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_tx_afull: in std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_tx_overflow: in std_logic; 
    roachf_2048ch_adcs_quadc0_adc0_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc0_adc1_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc0_adc2_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc0_adc3_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc0_sync: in std_logic; 
    roachf_2048ch_adcs_quadc0_valid: in std_logic; 
    roachf_2048ch_adcs_quadc1_adc0_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc1_adc1_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc1_adc2_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc1_adc3_data: in std_logic_vector(7 downto 0); 
    roachf_2048ch_adcs_quadc1_sync: in std_logic; 
    roachf_2048ch_adcs_quadc1_valid: in std_logic; 
    roachf_2048ch_control_ctl_regs_ant_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_gpu_port_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_ip_base_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_ctl_regs_my_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_delay_delay_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_insel_insel_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_control_seed_seed_data_user_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_switch_gbe_sw_led_rx: in std_logic; 
    roachf_2048ch_switch_gbe_sw_led_tx: in std_logic; 
    roachf_2048ch_switch_gbe_sw_led_up: in std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_bad_frame: in std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_data: in std_logic_vector(63 downto 0); 
    roachf_2048ch_switch_gbe_sw_rx_end_of_frame: in std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_overrun: in std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_source_ip: in std_logic_vector(31 downto 0); 
    roachf_2048ch_switch_gbe_sw_rx_source_port: in std_logic_vector(15 downto 0); 
    roachf_2048ch_switch_gbe_sw_rx_valid: in std_logic; 
    roachf_2048ch_switch_gbe_sw_tx_afull: in std_logic; 
    roachf_2048ch_switch_gbe_sw_tx_overflow: in std_logic; 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out: in std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out: in std_logic_vector(31 downto 0); 
    gateway_out1: out std_logic_vector(31 downto 0); 
    gateway_out18: out std_logic; 
    gateway_out19: out std_logic; 
    gateway_out1_x0: out std_logic; 
    gateway_out2: out std_logic; 
    gateway_out20: out std_logic; 
    gateway_out22: out std_logic; 
    gateway_out23: out std_logic; 
    gateway_out24: out std_logic_vector(63 downto 0); 
    gateway_out25: out std_logic_vector(31 downto 0); 
    gateway_out27: out std_logic; 
    gateway_out28: out std_logic; 
    gateway_out29: out std_logic_vector(31 downto 0); 
    gateway_out2_x0: out std_logic; 
    gateway_out3: out std_logic; 
    gateway_out30: out std_logic_vector(31 downto 0); 
    gateway_out31: out std_logic; 
    gateway_out39: out std_logic_vector(63 downto 0); 
    gateway_out3_x0: out std_logic_vector(31 downto 0); 
    gateway_out40: out std_logic; 
    gateway_out41: out std_logic; 
    gateway_out42: out std_logic; 
    gateway_out6: out std_logic_vector(47 downto 0); 
    gateway_out8: out std_logic_vector(47 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_rst: out std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_ack: out std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack: out std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_tx_data: out std_logic_vector(63 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_tx_dest_port: out std_logic_vector(15 downto 0); 
    roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame: out std_logic; 
    roachf_2048ch_2gpu_gbe_gpu_tx_valid: out std_logic; 
    roachf_2048ch_leds_led1_arm_gateway: out std_logic; 
    roachf_2048ch_leds_led2_sync_gateway: out std_logic; 
    roachf_2048ch_leds_led4_eq_clip_gateway: out std_logic; 
    roachf_2048ch_leds_led5_adc_clip_gateway: out std_logic; 
    roachf_2048ch_loopback_loop_cnt0_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_loopback_loop_err_cnt0_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_loopback_statii_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_status_gbe_gpu_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_status_gbe_sw_user_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_switch_gbe_sw_rst: out std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_ack: out std_logic; 
    roachf_2048ch_switch_gbe_sw_rx_overrun_ack: out std_logic; 
    roachf_2048ch_switch_gbe_sw_tx_data: out std_logic_vector(63 downto 0); 
    roachf_2048ch_switch_gbe_sw_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roachf_2048ch_switch_gbe_sw_tx_dest_port: out std_logic_vector(15 downto 0); 
    roachf_2048ch_switch_gbe_sw_tx_end_of_frame: out std_logic; 
    roachf_2048ch_switch_gbe_sw_tx_valid: out std_logic; 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr: out std_logic_vector(14 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we: out std_logic; 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr: out std_logic_vector(14 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in: out std_logic_vector(31 downto 0); 
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we: out std_logic
  );
end roachf_2048ch;

architecture structural of roachf_2048ch is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "roachf_2048ch,sysgen_core_11_5,{total_blocks=3261,xilinx_accumulator_block=16,xilinx_adder_subtracter_block=21,xilinx_addressable_shift_register_block=8,xilinx_arithmetic_relational_operator_block=47,xilinx_binary_shift_operator_block=12,xilinx_bit_slice_extractor_block=133,xilinx_bitbasher_block=13,xilinx_bitwise_expression_evaluator_block=8,xilinx_black_box_block=6,xilinx_bus_concatenator_block=58,xilinx_bus_multiplexer_block=60,xilinx_constant_block_block=167,xilinx_counter_block=33,xilinx_delay_block=164,xilinx_disregard_subsystem_for_generation_block=2,xilinx_dual_port_random_access_memory_block=5,xilinx_fifo_block_block=4,xilinx_gateway_in_block=58,xilinx_gateway_out_block=145,xilinx_input_scaler_block=32,xilinx_inverter_block=52,xilinx_linear_feedback_shift_register_block=4,xilinx_logical_block_block=123,xilinx_multiplier_block=32,xilinx_register_block=77,xilinx_single_port_random_access_memory_block=4,xilinx_single_port_read_only_memory_block=15,xilinx_system_generator_block=1,xilinx_type_converter_block=88,xilinx_type_reinterpreter_block=87,}";

  signal addressable_shift_register_q_net_x16: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x17: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x18: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x19: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x20: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x21: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x22: std_logic_vector(7 downto 0);
  signal addressable_shift_register_q_net_x23: std_logic_vector(7 downto 0);
  signal bitbasher1_delay4_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay5_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay6_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_delay7_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher1_insel4_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel5_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel6_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher1_insel7_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_delay0_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay1_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay2_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_delay3_net_x3: std_logic_vector(3 downto 0);
  signal bitbasher_insel0_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel1_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel2_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_insel3_net_x3: std_logic_vector(1 downto 0);
  signal bitbasher_seed0_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed1_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed2_net_x6: std_logic_vector(31 downto 0);
  signal bitbasher_seed3_net_x6: std_logic_vector(31 downto 0);
  signal bram0_data_out_net_x4: std_logic_vector(31 downto 0);
  signal buf_eof3_y_net_x2: std_logic;
  signal ce_1_sg_x180: std_logic;
  signal clk_1_sg_x180: std_logic;
  signal concat3_y_net_x2: std_logic_vector(31 downto 0);
  signal convert20_dout_net_x3: std_logic;
  signal convert4_dout_net_x2: std_logic;
  signal convert_dout_net_x10: std_logic;
  signal delay2_q_net_x4: std_logic_vector(31 downto 0);
  signal delay3_q_net_x4: std_logic_vector(31 downto 0);
  signal delay3_q_net_x5: std_logic_vector(47 downto 0);
  signal delay4_q_net_x3: std_logic_vector(31 downto 0);
  signal delay4_q_net_x4: std_logic;
  signal delay5_q_net_x3: std_logic_vector(31 downto 0);
  signal delay6_q_net_x3: std_logic_vector(31 downto 0);
  signal delay7_q_net_x3: std_logic_vector(31 downto 0);
  signal delay_q_net_x2: std_logic;
  signal fft_bb0_pol02_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb0_pol13_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb0_sync_out_net_x5: std_logic;
  signal fft_bb1_pol02_out_net_x2: std_logic_vector(35 downto 0);
  signal fft_bb1_pol13_out_net_x2: std_logic_vector(35 downto 0);
  signal gateway_out18_net: std_logic;
  signal gateway_out19_net: std_logic;
  signal gateway_out1_x0_net: std_logic;
  signal gateway_out20_net: std_logic;
  signal gateway_out22_net: std_logic;
  signal gateway_out23_net: std_logic;
  signal gateway_out24_net: std_logic_vector(63 downto 0);
  signal gateway_out27_net: std_logic;
  signal gateway_out28_net: std_logic;
  signal gateway_out2_x0_net: std_logic;
  signal gateway_out39_net: std_logic_vector(63 downto 0);
  signal gateway_out3_net: std_logic;
  signal gateway_out3_x0_net: std_logic_vector(31 downto 0);
  signal gateway_out41_net: std_logic;
  signal inverter_op_net_x3: std_logic;
  signal ip_fifo_dout_net_x2: std_logic_vector(31 downto 0);
  signal logical1_y_net_x3: std_logic;
  signal logical3_y_net_x9: std_logic;
  signal logical5_y_net_x3: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x23: std_logic;
  signal mux_y_net_x3: std_logic_vector(63 downto 0);
  signal post_sync_delay_q_net_x4: std_logic;
  signal register0_q_net_x15: std_logic_vector(31 downto 0);
  signal register1_q_net_x14: std_logic_vector(17 downto 0);
  signal register1_q_net_x15: std_logic_vector(17 downto 0);
  signal register1_q_net_x16: std_logic_vector(17 downto 0);
  signal register1_q_net_x17: std_logic_vector(17 downto 0);
  signal register2_q_net_x13: std_logic_vector(5 downto 0);
  signal register2_q_net_x14: std_logic_vector(5 downto 0);
  signal register2_q_net_x15: std_logic_vector(5 downto 0);
  signal register2_q_net_x16: std_logic_vector(5 downto 0);
  signal register2_q_net_x4: std_logic;
  signal register3_q_net_x4: std_logic;
  signal register5_q_net_x3: std_logic;
  signal register_q_net_x4: std_logic_vector(63 downto 0);
  signal reinterpret1_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net_x13: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(7 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_led_rx_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_led_tx_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_led_up_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rst_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_ack_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_data_net: std_logic_vector(63 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_rx_valid_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_afull_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_data_net: std_logic_vector(63 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net: std_logic;
  signal roachf_2048ch_2gpu_gbe_gpu_tx_valid_net: std_logic;
  signal roachf_2048ch_adcs_quadc0_adc0_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc1_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc2_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_adc3_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc0_sync_net: std_logic;
  signal roachf_2048ch_adcs_quadc0_valid_net: std_logic;
  signal roachf_2048ch_adcs_quadc1_adc0_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc1_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc2_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_adc3_data_net: std_logic_vector(7 downto 0);
  signal roachf_2048ch_adcs_quadc1_sync_net: std_logic;
  signal roachf_2048ch_adcs_quadc1_valid_net: std_logic;
  signal roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_delay_delay_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_insel_insel_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_control_seed_seed_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_leds_led1_arm_gateway_net: std_logic;
  signal roachf_2048ch_leds_led2_sync_gateway_net: std_logic;
  signal roachf_2048ch_leds_led4_eq_clip_gateway_net: std_logic;
  signal roachf_2048ch_leds_led5_adc_clip_gateway_net: std_logic;
  signal roachf_2048ch_loopback_loop_cnt0_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_loopback_loop_err_cnt0_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_loopback_statii_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_status_gbe_gpu_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_status_gbe_sw_user_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_switch_gbe_sw_led_rx_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_led_tx_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_led_up_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rst_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_ack_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_bad_frame_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_data_net: std_logic_vector(63 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_overrun_ack_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_overrun_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roachf_2048ch_switch_gbe_sw_rx_valid_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_afull_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_data_net: std_logic_vector(63 downto 0);
  signal roachf_2048ch_switch_gbe_sw_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_switch_gbe_sw_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roachf_2048ch_switch_gbe_sw_tx_end_of_frame_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_overflow_net: std_logic;
  signal roachf_2048ch_switch_gbe_sw_tx_valid_net: std_logic;
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr_net: std_logic_vector(14 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we_net: std_logic;
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr_net: std_logic_vector(14 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net: std_logic_vector(31 downto 0);
  signal roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we_net: std_logic;
  signal slice10_y_net_x3: std_logic;
  signal slice21_y_net_x2: std_logic_vector(15 downto 0);
  signal slice2_y_net_x14: std_logic_vector(1 downto 0);
  signal slice2_y_net_x4: std_logic_vector(31 downto 0);
  signal slice3_y_net_x3: std_logic;
  signal slice4_y_net_x3: std_logic;
  signal slice5_y_net_x3: std_logic;
  signal slice6_y_net_x2: std_logic;
  signal slice7_y_net_x7: std_logic;
  signal slice8_y_net_x3: std_logic_vector(1 downto 0);
  signal slice9_y_net_x3: std_logic;

begin
  ce_1_sg_x180 <= ce_1;
  clk_1_sg_x180 <= clk_1;
  roachf_2048ch_2gpu_gbe_gpu_led_rx_net <= roachf_2048ch_2gpu_gbe_gpu_led_rx;
  roachf_2048ch_2gpu_gbe_gpu_led_tx_net <= roachf_2048ch_2gpu_gbe_gpu_led_tx;
  roachf_2048ch_2gpu_gbe_gpu_led_up_net <= roachf_2048ch_2gpu_gbe_gpu_led_up;
  roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net <= roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame;
  roachf_2048ch_2gpu_gbe_gpu_rx_data_net <= roachf_2048ch_2gpu_gbe_gpu_rx_data;
  roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame_net <= roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame;
  roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net <= roachf_2048ch_2gpu_gbe_gpu_rx_overrun;
  roachf_2048ch_2gpu_gbe_gpu_rx_source_ip_net <= roachf_2048ch_2gpu_gbe_gpu_rx_source_ip;
  roachf_2048ch_2gpu_gbe_gpu_rx_source_port_net <= roachf_2048ch_2gpu_gbe_gpu_rx_source_port;
  roachf_2048ch_2gpu_gbe_gpu_rx_valid_net <= roachf_2048ch_2gpu_gbe_gpu_rx_valid;
  roachf_2048ch_2gpu_gbe_gpu_tx_afull_net <= roachf_2048ch_2gpu_gbe_gpu_tx_afull;
  roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net <= roachf_2048ch_2gpu_gbe_gpu_tx_overflow;
  roachf_2048ch_adcs_quadc0_adc0_data_net <= roachf_2048ch_adcs_quadc0_adc0_data;
  roachf_2048ch_adcs_quadc0_adc1_data_net <= roachf_2048ch_adcs_quadc0_adc1_data;
  roachf_2048ch_adcs_quadc0_adc2_data_net <= roachf_2048ch_adcs_quadc0_adc2_data;
  roachf_2048ch_adcs_quadc0_adc3_data_net <= roachf_2048ch_adcs_quadc0_adc3_data;
  roachf_2048ch_adcs_quadc0_sync_net <= roachf_2048ch_adcs_quadc0_sync;
  roachf_2048ch_adcs_quadc0_valid_net <= roachf_2048ch_adcs_quadc0_valid;
  roachf_2048ch_adcs_quadc1_adc0_data_net <= roachf_2048ch_adcs_quadc1_adc0_data;
  roachf_2048ch_adcs_quadc1_adc1_data_net <= roachf_2048ch_adcs_quadc1_adc1_data;
  roachf_2048ch_adcs_quadc1_adc2_data_net <= roachf_2048ch_adcs_quadc1_adc2_data;
  roachf_2048ch_adcs_quadc1_adc3_data_net <= roachf_2048ch_adcs_quadc1_adc3_data;
  roachf_2048ch_adcs_quadc1_sync_net <= roachf_2048ch_adcs_quadc1_sync;
  roachf_2048ch_adcs_quadc1_valid_net <= roachf_2048ch_adcs_quadc1_valid;
  roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net <= roachf_2048ch_control_ctl_regs_ant_base_user_data_out;
  roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net <= roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out;
  roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net <= roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net <= roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out;
  roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net <= roachf_2048ch_control_ctl_regs_gpu_port_user_data_out;
  roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net <= roachf_2048ch_control_ctl_regs_ip_base_user_data_out;
  roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net <= roachf_2048ch_control_ctl_regs_my_ip_user_data_out;
  roachf_2048ch_control_delay_delay_user_data_out_net <= roachf_2048ch_control_delay_delay_user_data_out;
  roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net <= roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net <= roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net <= roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out;
  roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net <= roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out;
  roachf_2048ch_control_insel_insel_user_data_out_net <= roachf_2048ch_control_insel_insel_user_data_out;
  roachf_2048ch_control_seed_seed_data_user_data_out_net <= roachf_2048ch_control_seed_seed_data_user_data_out;
  roachf_2048ch_switch_gbe_sw_led_rx_net <= roachf_2048ch_switch_gbe_sw_led_rx;
  roachf_2048ch_switch_gbe_sw_led_tx_net <= roachf_2048ch_switch_gbe_sw_led_tx;
  roachf_2048ch_switch_gbe_sw_led_up_net <= roachf_2048ch_switch_gbe_sw_led_up;
  roachf_2048ch_switch_gbe_sw_rx_bad_frame_net <= roachf_2048ch_switch_gbe_sw_rx_bad_frame;
  roachf_2048ch_switch_gbe_sw_rx_data_net <= roachf_2048ch_switch_gbe_sw_rx_data;
  roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net <= roachf_2048ch_switch_gbe_sw_rx_end_of_frame;
  roachf_2048ch_switch_gbe_sw_rx_overrun_net <= roachf_2048ch_switch_gbe_sw_rx_overrun;
  roachf_2048ch_switch_gbe_sw_rx_source_ip_net <= roachf_2048ch_switch_gbe_sw_rx_source_ip;
  roachf_2048ch_switch_gbe_sw_rx_source_port_net <= roachf_2048ch_switch_gbe_sw_rx_source_port;
  roachf_2048ch_switch_gbe_sw_rx_valid_net <= roachf_2048ch_switch_gbe_sw_rx_valid;
  roachf_2048ch_switch_gbe_sw_tx_afull_net <= roachf_2048ch_switch_gbe_sw_tx_afull;
  roachf_2048ch_switch_gbe_sw_tx_overflow_net <= roachf_2048ch_switch_gbe_sw_tx_overflow;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out;
  gateway_out1 <= ip_fifo_dout_net_x2;
  gateway_out18 <= gateway_out18_net;
  gateway_out19 <= gateway_out19_net;
  gateway_out1_x0 <= gateway_out1_x0_net;
  gateway_out2 <= convert4_dout_net_x2;
  gateway_out20 <= gateway_out20_net;
  gateway_out22 <= gateway_out22_net;
  gateway_out23 <= gateway_out23_net;
  gateway_out24 <= gateway_out24_net;
  gateway_out25 <= register0_q_net_x15;
  gateway_out27 <= gateway_out27_net;
  gateway_out28 <= gateway_out28_net;
  gateway_out29 <= register0_q_net_x15;
  gateway_out2_x0 <= gateway_out2_x0_net;
  gateway_out3 <= gateway_out3_net;
  gateway_out30 <= ip_fifo_dout_net_x2;
  gateway_out31 <= buf_eof3_y_net_x2;
  gateway_out39 <= gateway_out39_net;
  gateway_out3_x0 <= gateway_out3_x0_net;
  gateway_out40 <= buf_eof3_y_net_x2;
  gateway_out41 <= gateway_out41_net;
  gateway_out42 <= convert4_dout_net_x2;
  gateway_out6 <= delay3_q_net_x5;
  gateway_out8 <= delay3_q_net_x5;
  roachf_2048ch_2gpu_gbe_gpu_rst <= roachf_2048ch_2gpu_gbe_gpu_rst_net;
  roachf_2048ch_2gpu_gbe_gpu_rx_ack <= roachf_2048ch_2gpu_gbe_gpu_rx_ack_net;
  roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack <= roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack_net;
  roachf_2048ch_2gpu_gbe_gpu_tx_data <= roachf_2048ch_2gpu_gbe_gpu_tx_data_net;
  roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip <= roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip_net;
  roachf_2048ch_2gpu_gbe_gpu_tx_dest_port <= roachf_2048ch_2gpu_gbe_gpu_tx_dest_port_net;
  roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame <= roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame_net;
  roachf_2048ch_2gpu_gbe_gpu_tx_valid <= roachf_2048ch_2gpu_gbe_gpu_tx_valid_net;
  roachf_2048ch_leds_led1_arm_gateway <= roachf_2048ch_leds_led1_arm_gateway_net;
  roachf_2048ch_leds_led2_sync_gateway <= roachf_2048ch_leds_led2_sync_gateway_net;
  roachf_2048ch_leds_led4_eq_clip_gateway <= roachf_2048ch_leds_led4_eq_clip_gateway_net;
  roachf_2048ch_leds_led5_adc_clip_gateway <= roachf_2048ch_leds_led5_adc_clip_gateway_net;
  roachf_2048ch_loopback_loop_cnt0_user_data_in <= roachf_2048ch_loopback_loop_cnt0_user_data_in_net;
  roachf_2048ch_loopback_loop_err_cnt0_user_data_in <= roachf_2048ch_loopback_loop_err_cnt0_user_data_in_net;
  roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in <= roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in_net;
  roachf_2048ch_loopback_statii_user_data_in <= roachf_2048ch_loopback_statii_user_data_in_net;
  roachf_2048ch_status_gbe_gpu_user_data_in <= roachf_2048ch_status_gbe_gpu_user_data_in_net;
  roachf_2048ch_status_gbe_sw_user_data_in <= roachf_2048ch_status_gbe_sw_user_data_in_net;
  roachf_2048ch_switch_gbe_sw_rst <= roachf_2048ch_switch_gbe_sw_rst_net;
  roachf_2048ch_switch_gbe_sw_rx_ack <= roachf_2048ch_switch_gbe_sw_rx_ack_net;
  roachf_2048ch_switch_gbe_sw_rx_overrun_ack <= roachf_2048ch_switch_gbe_sw_rx_overrun_ack_net;
  roachf_2048ch_switch_gbe_sw_tx_data <= roachf_2048ch_switch_gbe_sw_tx_data_net;
  roachf_2048ch_switch_gbe_sw_tx_dest_ip <= roachf_2048ch_switch_gbe_sw_tx_dest_ip_net;
  roachf_2048ch_switch_gbe_sw_tx_dest_port <= roachf_2048ch_switch_gbe_sw_tx_dest_port_net;
  roachf_2048ch_switch_gbe_sw_tx_end_of_frame <= roachf_2048ch_switch_gbe_sw_tx_end_of_frame_net;
  roachf_2048ch_switch_gbe_sw_tx_valid <= roachf_2048ch_switch_gbe_sw_tx_valid_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in_net;
  roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we <= roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we_net;

  adc_monitor_35caae8101: entity work.adc_monitor_entity_35caae8101
    port map (
      adc0 => roachf_2048ch_adcs_quadc0_adc0_data_net,
      adc1 => roachf_2048ch_adcs_quadc0_adc1_data_net,
      adc2 => roachf_2048ch_adcs_quadc0_adc2_data_net,
      adc3 => roachf_2048ch_adcs_quadc0_adc3_data_net,
      adc4 => roachf_2048ch_adcs_quadc1_adc0_data_net,
      adc5 => roachf_2048ch_adcs_quadc1_adc1_data_net,
      adc6 => roachf_2048ch_adcs_quadc1_adc2_data_net,
      adc7 => roachf_2048ch_adcs_quadc1_adc3_data_net,
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      adc_clip => logical1_y_net_x3
    );

  control_d92b92adcf: entity work.control_entity_d92b92adcf
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      roachf_2048ch_control_ctl_regs_ant_base_user_data_out => roachf_2048ch_control_ctl_regs_ant_base_user_data_out_net,
      roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out => roachf_2048ch_control_ctl_regs_feng_ctl_user_data_out_net,
      roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out => roachf_2048ch_control_ctl_regs_gbe_sw_port_user_data_out_net,
      roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out => roachf_2048ch_control_ctl_regs_gpu_ip_user_data_out_net,
      roachf_2048ch_control_ctl_regs_gpu_port_user_data_out => roachf_2048ch_control_ctl_regs_gpu_port_user_data_out_net,
      roachf_2048ch_control_ctl_regs_ip_base_user_data_out => roachf_2048ch_control_ctl_regs_ip_base_user_data_out_net,
      roachf_2048ch_control_ctl_regs_my_ip_user_data_out => roachf_2048ch_control_ctl_regs_my_ip_user_data_out_net,
      roachf_2048ch_control_delay_delay_user_data_out => roachf_2048ch_control_delay_delay_user_data_out_net,
      roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq0_ctl_user_data_out_net,
      roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq1_ctl_user_data_out_net,
      roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq2_ctl_user_data_out_net,
      roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out => roachf_2048ch_control_eq_coefs_eq3_ctl_user_data_out_net,
      roachf_2048ch_control_insel_insel_user_data_out => roachf_2048ch_control_insel_insel_user_data_out_net,
      roachf_2048ch_control_seed_seed_data_user_data_out => roachf_2048ch_control_seed_seed_data_user_data_out_net,
      timebase => logical3_y_net_x9,
      ctl_regs => delay2_q_net_x4,
      ctl_regs_x0 => delay3_q_net_x4,
      ctl_regs_x1 => delay4_q_net_x3,
      ctl_regs_x10 => slice5_y_net_x3,
      ctl_regs_x11 => slice6_y_net_x2,
      ctl_regs_x12 => slice7_y_net_x7,
      ctl_regs_x13 => slice8_y_net_x3,
      ctl_regs_x14 => slice9_y_net_x3,
      ctl_regs_x2 => delay5_q_net_x3,
      ctl_regs_x3 => delay6_q_net_x3,
      ctl_regs_x4 => delay7_q_net_x3,
      ctl_regs_x5 => slice10_y_net_x3,
      ctl_regs_x6 => slice2_y_net_x14,
      ctl_regs_x7 => slice21_y_net_x2,
      ctl_regs_x8 => slice3_y_net_x3,
      ctl_regs_x9 => slice4_y_net_x3,
      delay => bitbasher_delay0_net_x3,
      delay_x0 => bitbasher_delay1_net_x3,
      delay_x1 => bitbasher_delay2_net_x3,
      delay_x2 => bitbasher_delay3_net_x3,
      delay_x3 => bitbasher1_delay4_net_x3,
      delay_x4 => bitbasher1_delay5_net_x3,
      delay_x5 => bitbasher1_delay6_net_x3,
      delay_x6 => bitbasher1_delay7_net_x3,
      eq_coefs => logical_y_net_x13,
      eq_coefs_x0 => register1_q_net_x14,
      eq_coefs_x1 => register2_q_net_x13,
      eq_coefs_x10 => register2_q_net_x16,
      eq_coefs_x2 => logical_y_net_x14,
      eq_coefs_x3 => register1_q_net_x15,
      eq_coefs_x4 => register2_q_net_x14,
      eq_coefs_x5 => logical_y_net_x15,
      eq_coefs_x6 => register1_q_net_x16,
      eq_coefs_x7 => register2_q_net_x15,
      eq_coefs_x8 => logical_y_net_x16,
      eq_coefs_x9 => register1_q_net_x17,
      insel => bitbasher_insel0_net_x3,
      insel_x0 => bitbasher_insel1_net_x3,
      insel_x1 => bitbasher_insel2_net_x3,
      insel_x2 => bitbasher_insel3_net_x3,
      insel_x3 => bitbasher1_insel4_net_x3,
      insel_x4 => bitbasher1_insel5_net_x3,
      insel_x5 => bitbasher1_insel6_net_x3,
      insel_x6 => bitbasher1_insel7_net_x3,
      seed => bitbasher_seed0_net_x6,
      seed_x0 => bitbasher_seed1_net_x6,
      seed_x1 => bitbasher_seed2_net_x6,
      seed_x2 => bitbasher_seed3_net_x6,
      seed_x3 => logical_y_net_x23
    );

  eq_5c2c12863f: entity work.eq_entity_5c2c12863f
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      eq_addr_0 => register2_q_net_x13,
      eq_addr_1 => register2_q_net_x14,
      eq_addr_2 => register2_q_net_x15,
      eq_addr_3 => register2_q_net_x16,
      eq_data_0 => register1_q_net_x14,
      eq_data_1 => register1_q_net_x15,
      eq_data_2 => register1_q_net_x16,
      eq_data_3 => register1_q_net_x17,
      eq_en_0 => logical_y_net_x13,
      eq_en_1 => logical_y_net_x14,
      eq_en_2 => logical_y_net_x15,
      eq_en_3 => logical_y_net_x16,
      fft0 => fft_bb0_pol02_out_net_x2,
      fft1 => fft_bb0_pol13_out_net_x2,
      fft2 => fft_bb1_pol02_out_net_x2,
      fft3 => fft_bb1_pol13_out_net_x2,
      sync_fft0 => fft_bb0_sync_out_net_x5,
      eq_clip => logical5_y_net_x3,
      eq_out => concat3_y_net_x2,
      sync_rnd => delay4_q_net_x4
    );

  input_mux_e4124e5313: entity work.input_mux_entity_e4124e5313
    port map (
      adc0 => roachf_2048ch_adcs_quadc0_adc0_data_net,
      adc1 => roachf_2048ch_adcs_quadc0_adc1_data_net,
      adc2 => roachf_2048ch_adcs_quadc0_adc2_data_net,
      adc3 => roachf_2048ch_adcs_quadc0_adc3_data_net,
      adc4 => roachf_2048ch_adcs_quadc1_adc0_data_net,
      adc5 => roachf_2048ch_adcs_quadc1_adc1_data_net,
      adc6 => roachf_2048ch_adcs_quadc1_adc2_data_net,
      adc7 => roachf_2048ch_adcs_quadc1_adc3_data_net,
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      delay0 => bitbasher_delay0_net_x3,
      delay1 => bitbasher_delay1_net_x3,
      delay2 => bitbasher_delay2_net_x3,
      delay3 => bitbasher_delay3_net_x3,
      delay4 => bitbasher1_delay4_net_x3,
      delay5 => bitbasher1_delay5_net_x3,
      delay6 => bitbasher1_delay6_net_x3,
      delay7 => bitbasher1_delay7_net_x3,
      insel0 => bitbasher_insel0_net_x3,
      insel1 => bitbasher_insel1_net_x3,
      insel2 => bitbasher_insel2_net_x3,
      insel3 => bitbasher_insel3_net_x3,
      insel4 => bitbasher1_insel4_net_x3,
      insel5 => bitbasher1_insel5_net_x3,
      insel6 => bitbasher1_insel6_net_x3,
      insel7 => bitbasher1_insel7_net_x3,
      n00 => reinterpret_output_port_net_x10,
      n01 => reinterpret1_output_port_net_x10,
      n10 => reinterpret_output_port_net_x11,
      n11 => reinterpret1_output_port_net_x11,
      n20 => reinterpret_output_port_net_x12,
      n21 => reinterpret1_output_port_net_x12,
      n30 => reinterpret_output_port_net_x13,
      n31 => reinterpret1_output_port_net_x13,
      sync_gen => logical3_y_net_x9,
      in1 => addressable_shift_register_q_net_x17,
      in2 => addressable_shift_register_q_net_x18,
      in3 => addressable_shift_register_q_net_x19,
      in4 => addressable_shift_register_q_net_x20,
      in5 => addressable_shift_register_q_net_x21,
      in6 => addressable_shift_register_q_net_x22,
      in7 => addressable_shift_register_q_net_x23,
      mux_mon => addressable_shift_register_q_net_x16,
      pfb_sync => delay_q_net_x2
    );

  leds_6eba8e3f58: entity work.leds_entity_6eba8e3f58
    port map (
      adc_clip => logical1_y_net_x3,
      armed => inverter_op_net_x3,
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      eq_clip => logical5_y_net_x3,
      sync_gen => logical3_y_net_x9,
      led1_arm => roachf_2048ch_leds_led1_arm_gateway_net,
      led2_sync => roachf_2048ch_leds_led2_sync_gateway_net,
      led4_eq_clip => roachf_2048ch_leds_led4_eq_clip_gateway_net,
      led5_adc_clip => roachf_2048ch_leds_led5_adc_clip_gateway_net
    );

  loopback_20081bd26d: entity work.loopback_entity_20081bd26d
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      cnt_rst => slice4_y_net_x3,
      gbe_sw_eof => roachf_2048ch_switch_gbe_sw_rx_end_of_frame_net,
      gbe_sw_rx => roachf_2048ch_switch_gbe_sw_rx_data_net,
      gbe_sw_rx_valid => roachf_2048ch_switch_gbe_sw_rx_valid_net,
      gbe_sw_srcip => roachf_2048ch_switch_gbe_sw_rx_source_ip_net,
      gbe_sw_tx_data => register_q_net_x4,
      gbe_sw_tx_discard => roachf_2048ch_switch_gbe_sw_rx_bad_frame_net,
      gbe_sw_tx_eof => register3_q_net_x4,
      gbe_sw_tx_ip => slice2_y_net_x4,
      gbe_sw_tx_vld => register2_q_net_x4,
      loopback_mux_rst => slice3_y_net_x3,
      my_ip => delay4_q_net_x3,
      delay75 => register0_q_net_x15,
      lb_mux_data => mux_y_net_x3,
      lb_mux_eof => convert20_dout_net_x3,
      lb_mux_flag => register5_q_net_x3,
      lb_mux_valid => convert_dout_net_x10,
      loop_cnt0 => roachf_2048ch_loopback_loop_cnt0_user_data_in_net,
      loop_err_cnt0 => roachf_2048ch_loopback_loop_err_cnt0_user_data_in_net,
      loopback_mux0 => roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in_net,
      rx_pkt_fifo0 => gateway_out22_net,
      rx_pkt_fifo0_x0 => convert4_dout_net_x2,
      rx_pkt_fifo0_x1 => gateway_out24_net,
      rx_pkt_fifo0_x2 => gateway_out3_net,
      rx_pkt_fifo0_x3 => gateway_out41_net,
      rx_pkt_fifo0_x4 => gateway_out39_net,
      rx_pkt_fifo0_x5 => buf_eof3_y_net_x2,
      rx_pkt_fifo0_x6 => gateway_out27_net,
      rx_pkt_fifo0_x7 => gateway_out28_net,
      rx_pkt_fifo0_x8 => ip_fifo_dout_net_x2,
      rx_pkt_fifo0_x9 => gateway_out23_net,
      statii => roachf_2048ch_loopback_statii_user_data_in_net
    );

  pfbs_f76fcc13f8: entity work.pfbs_entity_f76fcc13f8
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      fft_shift => slice21_y_net_x2,
      in0 => addressable_shift_register_q_net_x16,
      in1 => addressable_shift_register_q_net_x17,
      in2 => addressable_shift_register_q_net_x18,
      in3 => addressable_shift_register_q_net_x19,
      in4 => addressable_shift_register_q_net_x20,
      in5 => addressable_shift_register_q_net_x21,
      in6 => addressable_shift_register_q_net_x22,
      in7 => addressable_shift_register_q_net_x23,
      pfb_sync => delay_q_net_x2,
      slice2 => slice2_y_net_x14,
      fft0 => fft_bb0_pol02_out_net_x2,
      fft1 => fft_bb0_pol13_out_net_x2,
      fft2 => fft_bb1_pol02_out_net_x2,
      fft3 => fft_bb1_pol13_out_net_x2,
      sync_fft0 => fft_bb0_sync_out_net_x5
    );

  status_c8ecda6293: entity work.status_entity_c8ecda6293
    port map (
      gbe_gpu_led_rx => roachf_2048ch_2gpu_gbe_gpu_led_rx_net,
      gbe_gpu_led_tx => roachf_2048ch_2gpu_gbe_gpu_led_tx_net,
      gbe_gpu_led_up => roachf_2048ch_2gpu_gbe_gpu_led_up_net,
      gbe_gpu_rx_bfr => roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame_net,
      gbe_gpu_rx_orun => roachf_2048ch_2gpu_gbe_gpu_rx_overrun_net,
      gbe_gpu_tx_afull => roachf_2048ch_2gpu_gbe_gpu_tx_afull_net,
      gbe_gpu_tx_oflow => roachf_2048ch_2gpu_gbe_gpu_tx_overflow_net,
      gbe_sw_led_rx => roachf_2048ch_switch_gbe_sw_led_rx_net,
      gbe_sw_led_tx => roachf_2048ch_switch_gbe_sw_led_tx_net,
      gbe_sw_led_up => roachf_2048ch_switch_gbe_sw_led_up_net,
      gbe_sw_rx_bfr => roachf_2048ch_switch_gbe_sw_rx_bad_frame_net,
      gbe_sw_rx_orun => roachf_2048ch_switch_gbe_sw_rx_overrun_net,
      gbe_sw_tx_afull => roachf_2048ch_switch_gbe_sw_tx_afull_net,
      gbe_sw_tx_oflow => roachf_2048ch_switch_gbe_sw_tx_overflow_net,
      gbe_gpu => roachf_2048ch_status_gbe_gpu_user_data_in_net,
      gbe_sw => roachf_2048ch_status_gbe_sw_user_data_in_net
    );

  switch_100927dfbc: entity work.switch_entity_100927dfbc
    port map (
      ant12_pol12_reorder => bram0_data_out_net_x4,
      ant_base_offset => delay2_q_net_x4,
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      gbe_sw_rst => slice5_y_net_x3,
      ip_base => delay3_q_net_x4,
      mrst => gateway_out19_net,
      port_x0 => delay5_q_net_x3,
      sync_reorder => post_sync_delay_q_net_x4,
      gbe_sw => roachf_2048ch_switch_gbe_sw_rst_net,
      gbe_sw_tx_data => register_q_net_x4,
      gbe_sw_tx_eof => register3_q_net_x4,
      gbe_sw_tx_ip => slice2_y_net_x4,
      gbe_sw_tx_vld => register2_q_net_x4,
      gbe_sw_x0 => roachf_2048ch_switch_gbe_sw_rx_ack_net,
      gbe_sw_x1 => roachf_2048ch_switch_gbe_sw_rx_overrun_ack_net,
      gbe_sw_x2 => roachf_2048ch_switch_gbe_sw_tx_data_net,
      gbe_sw_x3 => roachf_2048ch_switch_gbe_sw_tx_dest_ip_net,
      gbe_sw_x4 => roachf_2048ch_switch_gbe_sw_tx_end_of_frame_net,
      gbe_sw_x5 => roachf_2048ch_switch_gbe_sw_tx_dest_port_net,
      gbe_sw_x6 => roachf_2048ch_switch_gbe_sw_tx_valid_net,
      packetiser => gateway_out2_x0_net,
      packetiser_x0 => delay3_q_net_x5,
      packetiser_x1 => gateway_out18_net,
      packetiser_x2 => gateway_out20_net,
      packetiser_x3 => gateway_out3_x0_net,
      packetiser_x4 => gateway_out1_x0_net
    );

  timebase_3df436d1fe: entity work.timebase_entity_3df436d1fe
    port map (
      arm_rst => slice7_y_net_x7,
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      sync_adc0 => roachf_2048ch_adcs_quadc0_sync_net,
      sync_adc1 => roachf_2048ch_adcs_quadc1_sync_net,
      sync_rst => slice6_y_net_x2,
      armed => inverter_op_net_x3,
      mrst => gateway_out19_net,
      sync_gen => logical3_y_net_x9
    );

  transpose_198441fceb: entity work.transpose_entity_198441fceb
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      eq_out => concat3_y_net_x2,
      roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out_net,
      roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out_net,
      sync_rnd => delay4_q_net_x4,
      use_fft_tvg => slice8_y_net_x3,
      use_sram_tvg => slice9_y_net_x3,
      ant12_pol12_reorder => bram0_data_out_net_x4,
      dbuf_ct_bram => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr_net,
      dbuf_ct_bram_x0 => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in_net,
      dbuf_ct_bram_x1 => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we_net,
      dbuf_ct_bram_x2 => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr_net,
      dbuf_ct_bram_x3 => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in_net,
      dbuf_ct_bram_x4 => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we_net,
      sync_reorder => post_sync_delay_q_net_x4
    );

  wgns_7bd51eacfd: entity work.wgns_entity_7bd51eacfd
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      seed0 => bitbasher_seed0_net_x6,
      seed1 => bitbasher_seed1_net_x6,
      seed2 => bitbasher_seed2_net_x6,
      seed3 => bitbasher_seed3_net_x6,
      seed_ld => logical_y_net_x23,
      n00 => reinterpret_output_port_net_x10,
      n01 => reinterpret1_output_port_net_x10,
      n10 => reinterpret_output_port_net_x11,
      n11 => reinterpret1_output_port_net_x11,
      n20 => reinterpret_output_port_net_x12,
      n21 => reinterpret1_output_port_net_x12,
      n30 => reinterpret_output_port_net_x13,
      n31 => reinterpret1_output_port_net_x13
    );

  x2gpu_3a72aaf025: entity work.x2gpu_entity_3a72aaf025
    port map (
      ce_1 => ce_1_sg_x180,
      clk_1 => clk_1_sg_x180,
      gbe_gpu_rst => slice10_y_net_x3,
      gpu_ip => delay6_q_net_x3,
      gpu_port => delay7_q_net_x3,
      lb_mux_data => mux_y_net_x3,
      lb_mux_eof => convert20_dout_net_x3,
      lb_mux_flag => register5_q_net_x3,
      lb_mux_valid => convert_dout_net_x10,
      gbe_gpu => roachf_2048ch_2gpu_gbe_gpu_rst_net,
      gbe_gpu_x0 => roachf_2048ch_2gpu_gbe_gpu_rx_ack_net,
      gbe_gpu_x1 => roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack_net,
      gbe_gpu_x2 => roachf_2048ch_2gpu_gbe_gpu_tx_data_net,
      gbe_gpu_x3 => roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip_net,
      gbe_gpu_x4 => roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame_net,
      gbe_gpu_x5 => roachf_2048ch_2gpu_gbe_gpu_tx_dest_port_net,
      gbe_gpu_x6 => roachf_2048ch_2gpu_gbe_gpu_tx_valid_net
    );

end structural;
