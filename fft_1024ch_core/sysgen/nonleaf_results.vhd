library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/hilbert_dsp48e/c_to_ri0"

entity c_to_ri0_entity_6093a6f1c0 is
  port (
    c: in std_logic_vector(35 downto 0); 
    im: out std_logic_vector(17 downto 0); 
    re: out std_logic_vector(17 downto 0)
  );
end c_to_ri0_entity_6093a6f1c0;

architecture structural of c_to_ri0_entity_6093a6f1c0 is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal slice_im_y_net: std_logic_vector(17 downto 0);
  signal slice_re_y_net: std_logic_vector(17 downto 0);

begin
  bram0_data_out_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => bram0_data_out_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => bram0_data_out_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/hilbert_dsp48e/cadd"

entity cadd_entity_d903f2a2c7 is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end cadd_entity_d903f2a2c7;

architecture structural of cadd_entity_d903f2a2c7 is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x2 <= a_im;
  force_re_output_port_net_x2 <= a_re;
  force_im_output_port_net_x3 <= b_im;
  force_re_output_port_net_x3 <= b_re;
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x0,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x0,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => force_im_output_port_net_x2,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => force_re_output_port_net_x2,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => force_im_output_port_net_x3,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => force_re_output_port_net_x3,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/hilbert_dsp48e/csub"

entity csub_entity_a05e98b01f is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end csub_entity_a05e98b01f;

architecture structural of csub_entity_a05e98b01f is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x5: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_re_output_port_net_x5 <= a_im;
  force_im_output_port_net_x4 <= a_re;
  force_re_output_port_net_x4 <= b_im;
  force_im_output_port_net_x5 <= b_re;
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 22,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x1,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x1,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => force_re_output_port_net_x5,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => force_im_output_port_net_x4,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => force_re_output_port_net_x4,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 22,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => force_im_output_port_net_x5,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/hilbert_dsp48e/ri_to_c0"

entity ri_to_c0_entity_6d1b5a34aa is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c0_entity_6d1b5a34aa;

architecture structural of ri_to_c0_entity_6d1b5a34aa is
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);

begin
  convert2_dout_net_x0 <= im;
  convert0_dout_net_x0 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert0_dout_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/hilbert_dsp48e"

entity hilbert_dsp48e_entity_f6c0959339 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    even: out std_logic_vector(35 downto 0); 
    odd: out std_logic_vector(35 downto 0)
  );
end hilbert_dsp48e_entity_f6c0959339;

architecture structural of hilbert_dsp48e_entity_f6c0959339 is
  signal bram0_data_out_net_x1: std_logic_vector(35 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x5: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(17 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);

begin
  bram0_data_out_net_x1 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  even <= concat_y_net_x2;
  odd <= concat_y_net_x3;

  c_to_ri0_6093a6f1c0: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => bram0_data_out_net_x1,
      im => force_im_output_port_net_x4,
      re => force_re_output_port_net_x4
    );

  c_to_ri1_7ddf0cb3cf: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => mux_y_net_x1,
      im => force_im_output_port_net_x5,
      re => force_re_output_port_net_x5
    );

  cadd_d903f2a2c7: entity work.cadd_entity_d903f2a2c7
    port map (
      a_im => force_im_output_port_net_x4,
      a_re => force_re_output_port_net_x4,
      b_im => force_im_output_port_net_x5,
      b_re => force_re_output_port_net_x5,
      ce_1 => ce_1_sg_x2,
      clk_1 => clk_1_sg_x2,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => scale0_op_net,
      en => "1",
      dout => convert0_dout_net_x0
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => scale1_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => scale2_op_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 18,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => scale3_op_net,
      en => "1",
      dout => convert3_dout_net_x0
    );

  csub_a05e98b01f: entity work.csub_entity_a05e98b01f
    port map (
      a_im => force_re_output_port_net_x5,
      a_re => force_im_output_port_net_x4,
      b_im => force_re_output_port_net_x4,
      b_re => force_im_output_port_net_x5,
      ce_1 => ce_1_sg_x2,
      clk_1 => clk_1_sg_x2,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  ri_to_c0_6d1b5a34aa: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => convert2_dout_net_x0,
      re => convert0_dout_net_x0,
      c => concat_y_net_x2
    );

  ri_to_c1_6444b3f1d3: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => convert3_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/reorder_even/sync_delay_en"

entity sync_delay_en_entity_71c59eb398 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_en_entity_71c59eb398;

architecture structural of sync_delay_en_entity_71c59eb398 is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal constant1_op_net: std_logic_vector(10 downto 0);
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(10 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  or_y_net_x0 <= en;
  pre_sync_delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_a3923dd146
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

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_118598964d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_18c024ef1595096b",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
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

  relational: entity work.relational_2147430058
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_b4b277ae0f
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/reorder_even"

entity reorder_even_entity_46cdc9fc47 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end reorder_even_entity_46cdc9fc47;

architecture structural of reorder_even_entity_46cdc9fc47 is
  signal bram0_data_out_net_x2: std_logic_vector(35 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay_d0_q_net: std_logic_vector(9 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(9 downto 0);
  signal delay_sel_q_net: std_logic;
  signal delay_we_q_net: std_logic;
  signal en_even_op_net_x0: std_logic;
  signal map1_data_net: std_logic_vector(9 downto 0);
  signal mux_y_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal or_y_net_x0: std_logic;
  signal post_sync_delay_q_net_x0: std_logic;
  signal pre_sync_delay_q_net_x0: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(9 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  concat_y_net_x0 <= din0;
  en_even_op_net_x0 <= en;
  sync_delay_q_net_x0 <= sync;
  dout0 <= bram0_data_out_net_x2;
  sync_out <= post_sync_delay_q_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 10,
      c_width => 36,
      core_name0 => "bmg_62_3a48054ca3a8deec",
      latency => 1
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x2
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2047,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_92cf1c8e61537910",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en(0) => en_even_op_net_x0,
      rst(0) => sync_delay_q_net_x0,
      op => counter_op_net
    );

  delay_d0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 10
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => slice2_y_net,
      en => '1',
      rst => '1',
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => concat_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.delay_0f6b6badfe
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => slice1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => en_even_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom
    generic map (
      c_address_width => 10,
      c_width => 10,
      core_name0 => "bmg_62_aae57d00ceec7456",
      latency => 1
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      en => "1",
      rst => "0",
      data => map1_data_net
    );

  mux: entity work.mux_bdc1db9d7e
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      sel(0) => delay_sel_q_net,
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
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => post_sync_delay_q_net_x0
    );

  pre_sync_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => sync_delay_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => pre_sync_delay_q_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 11,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 11,
      y_width => 10
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

  sync_delay_en_71c59eb398: entity work.sync_delay_en_entity_71c59eb398
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      en => or_y_net_x0,
      in_x0 => pre_sync_delay_q_net_x0,
      out_x0 => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x/reorder_odd"

entity reorder_odd_entity_702b0c4cee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din0: in std_logic_vector(35 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout0: out std_logic_vector(35 downto 0)
  );
end reorder_odd_entity_702b0c4cee;

architecture structural of reorder_odd_entity_702b0c4cee is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay_d0_q_net: std_logic_vector(9 downto 0);
  signal delay_din0_q_net: std_logic_vector(35 downto 0);
  signal delay_map1_q_net: std_logic_vector(9 downto 0);
  signal delay_sel_q_net: std_logic;
  signal delay_we_q_net: std_logic;
  signal en_odd_op_net_x0: std_logic;
  signal map1_data_net: std_logic_vector(9 downto 0);
  signal mux_y_net: std_logic_vector(9 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(9 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  concat_y_net_x0 <= din0;
  en_odd_op_net_x0 <= en;
  sync_delay_q_net_x1 <= sync;
  dout0 <= bram0_data_out_net_x0;

  bram0: entity work.xlspram
    generic map (
      c_address_width => 10,
      c_width => 36,
      core_name0 => "bmg_62_3a48054ca3a8deec",
      latency => 1
    )
    port map (
      addr => mux_y_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      data_in => delay_din0_q_net,
      en => "1",
      rst => "0",
      we(0) => delay_we_q_net,
      data_out => bram0_data_out_net_x0
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 2047,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_92cf1c8e61537910",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en(0) => en_odd_op_net_x0,
      rst(0) => sync_delay_q_net_x1,
      op => counter_op_net
    );

  delay_d0: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 10
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => slice2_y_net,
      en => '1',
      rst => '1',
      q => delay_d0_q_net
    );

  delay_din0: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => concat_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_din0_q_net
    );

  delay_map1: entity work.delay_0f6b6badfe
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => map1_data_net,
      q => delay_map1_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => slice1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay_sel_q_net
    );

  delay_we: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => en_odd_op_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_we_q_net
    );

  map1: entity work.xlsprom
    generic map (
      c_address_width => 10,
      c_width => 10,
      core_name0 => "bmg_62_33b17ff3d27389a4",
      latency => 1
    )
    port map (
      addr => slice2_y_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      en => "1",
      rst => "0",
      data => map1_data_net
    );

  mux: entity work.mux_bdc1db9d7e
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      d0 => delay_d0_q_net,
      d1 => delay_map1_q_net,
      sel(0) => delay_sel_q_net,
      y => mux_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 11,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 11,
      y_width => 10
    )
    port map (
      x => counter_op_net,
      y => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/bi_real_unscr_2x"

entity bi_real_unscr_2x_entity_cf42a9c4ad is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    even: in std_logic_vector(35 downto 0); 
    odd: in std_logic_vector(35 downto 0); 
    sync: in std_logic; 
    pol12_out: out std_logic_vector(35 downto 0); 
    pol34_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end bi_real_unscr_2x_entity_cf42a9c4ad;

architecture structural of bi_real_unscr_2x_entity_cf42a9c4ad is
  signal bram0_data_out_net_x0: std_logic_vector(35 downto 0);
  signal bram0_data_out_net_x2: std_logic_vector(35 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal constant_op_net: std_logic_vector(9 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal delay_q_net: std_logic_vector(35 downto 0);
  signal en_even_op_net_x0: std_logic;
  signal en_odd_op_net_x0: std_logic;
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal post_sync_delay_q_net_x0: std_logic;
  signal relational_op_net: std_logic;
  signal sync_delay_q_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  concat_y_net_x5 <= even;
  concat_y_net_x6 <= odd;
  sync_delay_q_net_x2 <= sync;
  pol12_out <= concat_y_net_x7;
  pol34_out <= concat_y_net_x8;
  sync_out <= sync_delay_q_net_x0;

  constant_x0: entity work.constant_498bc68c14
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      rst(0) => post_sync_delay_q_net_x0,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => bram0_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  en_even: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_even_op_net_x0
    );

  en_odd: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => en_odd_op_net_x0
    );

  hilbert_dsp48e_f6c0959339: entity work.hilbert_dsp48e_entity_f6c0959339
    port map (
      a => bram0_data_out_net_x2,
      b => mux_y_net_x1,
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      even => concat_y_net_x7,
      odd => concat_y_net_x8
    );

  mux: entity work.mux_b75bc1e5be
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay_q_net,
      d1 => bram0_data_out_net_x2,
      sel(0) => relational_op_net,
      y => mux_y_net_x1
    );

  relational: entity work.relational_0ffd72e037
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  reorder_even_46cdc9fc47: entity work.reorder_even_entity_46cdc9fc47
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      din0 => concat_y_net_x5,
      en => en_even_op_net_x0,
      sync => sync_delay_q_net_x2,
      dout0 => bram0_data_out_net_x2,
      sync_out => post_sync_delay_q_net_x0
    );

  reorder_odd_702b0c4cee: entity work.reorder_odd_entity_702b0c4cee
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      din0 => concat_y_net_x6,
      en => en_odd_op_net_x0,
      sync => sync_delay_q_net_x2,
      dout0 => bram0_data_out_net_x0
    );

  sync_delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d(0) => post_sync_delay_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct/cadd"

entity cadd_entity_0876d38971 is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end cadd_entity_0876d38971;

architecture structural of cadd_entity_0876d38971 is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x1 <= a_im;
  force_re_output_port_net_x1 <= a_re;
  force_im_output_port_net_x2 <= b_im;
  force_re_output_port_net_x2 <= b_re;
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x7,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x7,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => force_im_output_port_net_x1,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => force_re_output_port_net_x1,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => force_im_output_port_net_x2,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => force_re_output_port_net_x2,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct/convert_of0/convert"

entity convert_entity_cb90012123 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(19 downto 0); 
    out_x0: out std_logic_vector(17 downto 0)
  );
end convert_entity_cb90012123;

architecture structural of convert_entity_cb90012123 is
  signal adder_s_net_x0: std_logic_vector(17 downto 0);
  signal almost_half_op_net: std_logic_vector(18 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal concat_y_net: std_logic_vector(20 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(20 downto 0);
  signal force2_output_port_net: std_logic_vector(18 downto 0);
  signal mux0_y_net_x0: std_logic_vector(19 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(19 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  mux0_y_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_27fae134d1
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      s => adder_s_net_x0
    );

  almost_half: entity work.constant_4709ea49b5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => almost_half_op_net
    );

  bit: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x0,
      y(0) => bit_y_net
    );

  concat: entity work.concat_c615d93998
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

  force1: entity work.reinterpret_d357e69fa3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => force1_output_port_net
    );

  force2: entity work.reinterpret_d2180c9169
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => almost_half_op_net,
      output_port => force2_output_port_net
    );

  reinterpret: entity work.reinterpret_4a8cbc85ce
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux0_y_net_x0,
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct/convert_of0"

entity convert_of0_entity_8520f090ce is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    dout: out std_logic_vector(17 downto 0); 
    of_x0: out std_logic
  );
end convert_of0_entity_8520f090ce;

architecture structural of convert_of0_entity_8520f090ce is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  mux0_y_net_x1 <= din;
  dout <= adder_s_net_x1;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_e9e6541380
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_e9e6541380
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  convert_cb90012123: entity work.convert_entity_cb90012123
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in_x0 => mux0_y_net_x1,
      out_x0 => adder_s_net_x1
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 19,
      new_msb => 19,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 18,
      x_width => 20,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct/csub"

entity csub_entity_46bf4f188a is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(17 downto 0); 
    b_re: in std_logic_vector(17 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(18 downto 0); 
    c_re: out std_logic_vector(18 downto 0)
  );
end csub_entity_46bf4f188a;

architecture structural of csub_entity_46bf4f188a is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x4: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x3 <= a_im;
  force_re_output_port_net_x3 <= a_re;
  force_im_output_port_net_x4 <= b_im;
  force_re_output_port_net_x4 <= b_re;
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 21,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x16,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x16,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => force_im_output_port_net_x3,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => force_re_output_port_net_x3,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => force_im_output_port_net_x4,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 21,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      din => force_re_output_port_net_x4,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct/twiddle_pass_through"

entity twiddle_pass_through_entity_63f368faa2 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(17 downto 0); 
    bw_re: out std_logic_vector(17 downto 0)
  );
end twiddle_pass_through_entity_63f368faa2;

architecture structural of twiddle_pass_through_entity_63f368faa2 is
  signal force_im_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x7: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x7: std_logic_vector(17 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x1 <= b;
  a_im <= force_im_output_port_net_x6;
  a_re <= force_re_output_port_net_x6;
  bw_im <= force_im_output_port_net_x7;
  bw_re <= force_re_output_port_net_x7;

  c_to_ri1_810d26b512: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => mux_y_net_x1,
      im => force_im_output_port_net_x7,
      re => force_re_output_port_net_x7
    );

  c_to_ri_e10ea2ba1e: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => single_port_ram_data_out_net_x1,
      im => force_im_output_port_net_x6,
      re => force_re_output_port_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/butterfly_direct"

entity butterfly_direct_entity_7c1bf05bb7 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_7c1bf05bb7;

architecture structural of butterfly_direct_entity_7c1bf05bb7 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x7: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x6: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x7: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal mux1_y_net_x1: std_logic_vector(19 downto 0);
  signal mux2_y_net_x1: std_logic_vector(19 downto 0);
  signal mux3_y_net_x1: std_logic_vector(19 downto 0);
  signal mux_y_net_x0: std_logic;
  signal mux_y_net_x2: std_logic_vector(35 downto 0);
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x2 <= a;
  mux_y_net_x2 <= b;
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x0 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_0876d38971: entity work.cadd_entity_0876d38971
    port map (
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      b_im => force_im_output_port_net_x7,
      b_re => force_re_output_port_net_x7,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_8520f090ce: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_1f0bcfcff1: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_13b966f7b4: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_440d0d7d4c: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_46bf4f188a: entity work.csub_entity_46bf4f188a
    port map (
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      b_im => force_im_output_port_net_x7,
      b_re => force_re_output_port_net_x7,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_f49d5010b7: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_ed79a446d4: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      d(0) => mux_y_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_pass_through_63f368faa2: entity work.twiddle_pass_through_entity_63f368faa2
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x2,
      a_im => force_im_output_port_net_x6,
      a_re => force_re_output_port_net_x6,
      bw_im => force_im_output_port_net_x7,
      bw_re => force_re_output_port_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/delay_b"

entity delay_b_entity_480abaa61d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_480abaa61d;

architecture structural of delay_b_entity_480abaa61d is
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x3;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 1021,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_511daee48ac62764",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 10,
      c_width => 36,
      core_name0 => "bmg_62_2d23f33d919b4b99",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1/sync_delay"

entity sync_delay_entity_350fc3568b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_350fc3568b;

architecture structural of sync_delay_entity_350fc3568b is
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal constant1_op_net: std_logic_vector(10 downto 0);
  signal constant2_op_net: std_logic_vector(10 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(10 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x1: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x1;

  constant1: entity work.constant_a3923dd146
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

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_118598964d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_18c024ef1595096b",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x1
    );

  relational: entity work.relational_2147430058
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_b4b277ae0f
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_1"

entity fft_stage_1_entity_d61c5478a5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_1_entity_d61c5478a5;

architecture structural of fft_stage_1_entity_d61c5478a5 is
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal constant_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic;
  signal mux_y_net_x2: std_logic_vector(35 downto 0);
  signal shift_net_x0: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_net_x0: std_logic;

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  concat_y_net_x4 <= in1;
  concat_y_net_x5 <= in2;
  constant_op_net_x0 <= of_in;
  shift_net_x0 <= shift;
  sync_net_x0 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_7c1bf05bb7: entity work.butterfly_direct_entity_7c1bf05bb7
    port map (
      a => single_port_ram_data_out_net_x3,
      b => mux_y_net_x2,
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      shift => slice_y_net_x0,
      sync => mux_y_net_x1,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_92cf1c8e61537910",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x0,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      d(0) => sync_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_480abaa61d: entity work.delay_b_entity_480abaa61d
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x3
    );

  delay_f_6aed026e68: entity work.delay_b_entity_480abaa61d
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      in1 => concat_y_net_x5,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => constant_op_net_x0,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x4,
      sel(0) => slice1_y_net,
      y => mux_y_net_x2
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d0 => concat_y_net_x4,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x0,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 11,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_350fc3568b: entity work.sync_delay_entity_350fc3568b
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/cadd"

entity cadd_entity_6cf0f5325f is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(21 downto 0); 
    b_re: in std_logic_vector(21 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(22 downto 0); 
    c_re: out std_logic_vector(22 downto 0)
  );
end cadd_entity_6cf0f5325f;

architecture structural of cadd_entity_6cf0f5325f is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal ce_1_sg_x22: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal convert0_dout_net_x0: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(21 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x0 <= a_im;
  force_re_output_port_net_x0 <= a_re;
  convert1_dout_net_x0 <= b_im;
  convert0_dout_net_x0 <= b_re;
  ce_1_sg_x22 <= ce_1;
  clk_1_sg_x22 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x22,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x22,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => force_im_output_port_net_x0,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => force_re_output_port_net_x0,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => convert1_dout_net_x0,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => convert0_dout_net_x0,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/convert_of0/convert"

entity convert_entity_58e9e8dce9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(23 downto 0); 
    out_x0: out std_logic_vector(17 downto 0)
  );
end convert_entity_58e9e8dce9;

architecture structural of convert_entity_58e9e8dce9 is
  signal adder_s_net_x0: std_logic_vector(17 downto 0);
  signal almost_half_op_net: std_logic_vector(20 downto 0);
  signal bit_y_net: std_logic;
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat_y_net: std_logic_vector(24 downto 0);
  signal constant_op_net: std_logic;
  signal force1_output_port_net: std_logic_vector(24 downto 0);
  signal force2_output_port_net: std_logic_vector(20 downto 0);
  signal mux0_y_net_x0: std_logic_vector(23 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(23 downto 0);
  signal tweak_op_y_net: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  mux0_y_net_x0 <= in_x0;
  out_x0 <= adder_s_net_x0;

  adder: entity work.addsub_2969055f39
    port map (
      a => force1_output_port_net,
      b => force2_output_port_net,
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
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
      x => mux0_y_net_x0,
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
      input_port => mux0_y_net_x0,
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/convert_of0"

entity convert_of0_entity_1384f2b443 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(17 downto 0); 
    of_x0: out std_logic
  );
end convert_of0_entity_1384f2b443;

architecture structural of convert_of0_entity_1384f2b443 is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x24: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal invert3_op_net: std_logic;
  signal invert4_op_net: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice4_y_net: std_logic;

begin
  ce_1_sg_x24 <= ce_1;
  clk_1_sg_x24 <= clk_1;
  mux0_y_net_x1 <= din;
  dout <= adder_s_net_x1;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      d2(0) => invert3_op_net,
      d3(0) => invert4_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      d2(0) => slice3_y_net,
      d3(0) => slice4_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  convert_58e9e8dce9: entity work.convert_entity_58e9e8dce9
    port map (
      ce_1 => ce_1_sg_x24,
      clk_1 => clk_1_sg_x24,
      in_x0 => mux0_y_net_x1,
      out_x0 => adder_s_net_x1
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  invert3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      ip(0) => slice3_y_net,
      op(0) => invert3_op_net
    );

  invert4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      ip(0) => slice4_y_net,
      op(0) => invert4_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 23,
      new_msb => 23,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 22,
      new_msb => 22,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 21,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/csub"

entity csub_entity_9672345524 is
  port (
    a_im: in std_logic_vector(17 downto 0); 
    a_re: in std_logic_vector(17 downto 0); 
    b_im: in std_logic_vector(21 downto 0); 
    b_re: in std_logic_vector(21 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    c_im: out std_logic_vector(22 downto 0); 
    c_re: out std_logic_vector(22 downto 0)
  );
end csub_entity_9672345524;

architecture structural of csub_entity_9672345524 is
  signal alumode_op_net: std_logic_vector(3 downto 0);
  signal carryin_op_net: std_logic;
  signal carryinsel_op_net: std_logic_vector(2 downto 0);
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal ce_1_sg_x31: std_logic;
  signal clk_1_sg_x31: std_logic;
  signal concat_a_y_net: std_logic_vector(47 downto 0);
  signal concat_b_y_net: std_logic_vector(47 downto 0);
  signal convert0_dout_net_x1: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(21 downto 0);
  signal dsp48e_p_net: std_logic_vector(47 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal opmode_op_net: std_logic_vector(6 downto 0);
  signal realign_a_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_a_re_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_im_dout_net: std_logic_vector(23 downto 0);
  signal realign_b_re_dout_net: std_logic_vector(23 downto 0);
  signal reinterp_a_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_a_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_b_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_im_output_port_net: std_logic_vector(23 downto 0);
  signal reinterp_c_re_output_port_net: std_logic_vector(23 downto 0);
  signal reinterpret_a_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_b_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret_c_output_port_net: std_logic_vector(47 downto 0);
  signal slice_a_y_net: std_logic_vector(29 downto 0);
  signal slice_b_y_net: std_logic_vector(17 downto 0);
  signal slice_c_im_y_net: std_logic_vector(23 downto 0);
  signal slice_c_re_y_net: std_logic_vector(23 downto 0);

begin
  force_im_output_port_net_x1 <= a_im;
  force_re_output_port_net_x1 <= a_re;
  convert1_dout_net_x1 <= b_im;
  convert0_dout_net_x1 <= b_re;
  ce_1_sg_x31 <= ce_1;
  clk_1_sg_x31 <= clk_1;
  c_im <= cast_c_im_dout_net_x0;
  c_re <= cast_c_re_dout_net_x0;

  alumode: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => alumode_op_net
    );

  carryin: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => carryin_op_net
    );

  carryinsel: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => carryinsel_op_net
    );

  cast_c_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => reinterp_c_im_output_port_net,
      en => "1",
      dout => cast_c_im_dout_net_x0
    );

  cast_c_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 24,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 23,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => reinterp_c_re_output_port_net,
      en => "1",
      dout => cast_c_re_dout_net_x0
    );

  concat_a: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_a_re_output_port_net,
      in1 => reinterp_a_im_output_port_net,
      y => concat_a_y_net
    );

  concat_b: entity work.concat_b57c4be2de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterp_b_re_output_port_net,
      in1 => reinterp_b_im_output_port_net,
      y => concat_b_y_net
    );

  dsp48e: entity work.xldsp48e
    generic map (
      a_input => "DIRECT",
      acascreg => 1,
      alumodereg => 1,
      areg => 1,
      autoreset_pattern_detect => FALSE,
      autoreset_pattern_detect_optinv => "MATCH",
      b_input => "DIRECT",
      bcascreg => 1,
      breg => 1,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      mreg => 1,
      opmodereg => 1,
      preg => 1,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_mult => "MULT_S",
      use_op => 0,
      use_pattern_detect => "NO_PATDET",
      use_simd => "TWO24"
    )
    port map (
      a => reinterpret_a_output_port_net,
      alumode => alumode_op_net,
      b => reinterpret_b_output_port_net,
      c => reinterpret_c_output_port_net,
      carryin(0) => carryin_op_net,
      carryinsel => carryinsel_op_net,
      ce => ce_1_sg_x31,
      cea1 => "1",
      cea2 => "1",
      cealumode => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cecarryin => "1",
      cectrl => "1",
      cem => "1",
      cemultcarryin => "1",
      cep => "1",
      clk => clk_1_sg_x31,
      en => "1",
      opmode => opmode_op_net,
      rst => "0",
      rsta => "0",
      rstalumode => "0",
      rstb => "0",
      rstc => "0",
      rstcarryin => "0",
      rstctrl => "0",
      rstm => "0",
      rstp => "0",
      p => dsp48e_p_net
    );

  opmode: entity work.constant_270746ab47
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => opmode_op_net
    );

  realign_a_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => force_im_output_port_net_x1,
      en => "1",
      dout => realign_a_im_dout_net
    );

  realign_a_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => force_re_output_port_net_x1,
      en => "1",
      dout => realign_a_re_dout_net
    );

  realign_b_im: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => convert1_dout_net_x1,
      en => "1",
      dout => realign_b_im_dout_net
    );

  realign_b_re: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 19,
      din_width => 22,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => convert0_dout_net_x1,
      en => "1",
      dout => realign_b_re_dout_net
    );

  reinterp_a_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_im_dout_net,
      output_port => reinterp_a_im_output_port_net
    );

  reinterp_a_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_a_re_dout_net,
      output_port => reinterp_a_re_output_port_net
    );

  reinterp_b_im: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_im_dout_net,
      output_port => reinterp_b_im_output_port_net
    );

  reinterp_b_re: entity work.reinterpret_3fb4604c01
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => realign_b_re_dout_net,
      output_port => reinterp_b_re_output_port_net
    );

  reinterp_c_im: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_im_y_net,
      output_port => reinterp_c_im_output_port_net
    );

  reinterp_c_re: entity work.reinterpret_4bf1ad328a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_c_re_y_net,
      output_port => reinterp_c_re_output_port_net
    );

  reinterpret_a: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_a_y_net,
      output_port => reinterpret_a_output_port_net
    );

  reinterpret_b: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_b_y_net,
      output_port => reinterpret_b_output_port_net
    );

  reinterpret_c: entity work.reinterpret_7ea107432a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_a_y_net,
      output_port => reinterpret_c_output_port_net
    );

  slice_a: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 47,
      x_width => 48,
      y_width => 30
    )
    port map (
      x => concat_b_y_net,
      y => slice_a_y_net
    );

  slice_b: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 48,
      y_width => 18
    )
    port map (
      x => concat_b_y_net,
      y => slice_b_y_net
    );

  slice_c_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 23,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_im_y_net
    );

  slice_c_re: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 47,
      x_width => 48,
      y_width => 24
    )
    port map (
      x => dsp48e_p_net,
      y => slice_c_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/twiddle_general_4mult/c_to_ri2"

entity c_to_ri2_entity_f8c56280c8 is
  port (
    c: in std_logic_vector(35 downto 0); 
    im: out std_logic_vector(17 downto 0); 
    re: out std_logic_vector(17 downto 0)
  );
end c_to_ri2_entity_f8c56280c8;

architecture structural of c_to_ri2_entity_f8c56280c8 is
  signal concat_y_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal slice_im_y_net: std_logic_vector(17 downto 0);
  signal slice_re_y_net: std_logic_vector(17 downto 0);

begin
  concat_y_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x0;

  force_im: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => concat_y_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => concat_y_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/twiddle_general_4mult/coeff_gen/ri_to_c"

entity ri_to_c_entity_6ca6cf7bb1 is
  port (
    im: in std_logic_vector(17 downto 0); 
    re: in std_logic_vector(17 downto 0); 
    c: out std_logic_vector(35 downto 0)
  );
end ri_to_c_entity_6ca6cf7bb1;

architecture structural of ri_to_c_entity_6ca6cf7bb1 is
  signal concat_y_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net: std_logic_vector(17 downto 0);
  signal force_re_output_port_net: std_logic_vector(17 downto 0);
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);

begin
  rom1_data_net_x0 <= im;
  rom_data_net_x0 <= re;
  c <= concat_y_net_x1;

  concat: entity work.concat_b198bd62b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x1
    );

  force_im: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom_data_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_ac97b0964d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_ac97b0964d;

architecture structural of coeff_gen_entity_ac97b0964d is
  signal ce_1_sg_x32: std_logic;
  signal clk_1_sg_x32: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x32 <= ce_1;
  clk_1_sg_x32 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_6ca6cf7bb1: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_df2046baee47f05f",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 9,
      c_width => 18,
      core_name0 => "bmg_62_c6cafe6c47d0544c",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 9,
      x_width => 10,
      y_width => 9
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_51343022cf is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_51343022cf;

architecture structural of twiddle_general_4mult_entity_51343022cf is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x33: std_logic;
  signal clk_1_sg_x33: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x33 <= ce_1;
  clk_1_sg_x33 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_5aaa1563b6: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_f8c56280c8: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_a341b07f29: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_ac97b0964d: entity work.coeff_gen_entity_ac97b0964d
    port map (
      ce_1 => ce_1_sg_x33,
      clk_1 => clk_1_sg_x33,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/butterfly_direct"

entity butterfly_direct_entity_3dda9f7958 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_3dda9f7958;

architecture structural of butterfly_direct_entity_3dda9f7958 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_6cf0f5325f: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_1384f2b443: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_61008d6a88: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_516e19337e: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_76ac0cb0c1: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_9672345524: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_1ef42e1857: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_548b7a42fd: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_51343022cf: entity work.twiddle_general_4mult_entity_51343022cf
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x34,
      clk_1 => clk_1_sg_x34,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/delay_b"

entity delay_b_entity_eb383ccef8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_eb383ccef8;

architecture structural of delay_b_entity_eb383ccef8 is
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10/sync_delay"

entity sync_delay_entity_a5f0fe964f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_a5f0fe964f;

architecture structural of sync_delay_entity_a5f0fe964f is
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e8ddc079e9
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

  constant_x0: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9f5113eef58d42f3",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f9928864ea
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_10"

entity fft_stage_10_entity_608db23e86 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_10_entity_608db23e86;

architecture structural of fft_stage_10_entity_608db23e86 is
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x1: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x2: std_logic;

begin
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  concat_y_net_x4 <= in1;
  concat_y_net_x5 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x1 <= shift;
  sync_delay_q_net_x1 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x2;

  butterfly_direct_3dda9f7958: entity work.butterfly_direct_entity_3dda9f7958
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x2
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_38c9cb0851a20d91",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x1,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      d(0) => sync_delay_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_eb383ccef8: entity work.delay_b_entity_eb383ccef8
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_e23c0726ab: entity work.delay_b_entity_eb383ccef8
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      in1 => concat_y_net_x5,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x4,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d0 => concat_y_net_x4,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 9,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x1,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_a5f0fe964f: entity work.sync_delay_entity_a5f0fe964f
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_36efec2b27 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_36efec2b27;

architecture structural of coeff_gen_entity_36efec2b27 is
  signal ce_1_sg_x49: std_logic;
  signal clk_1_sg_x49: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x49 <= ce_1;
  clk_1_sg_x49 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_64aa127d41: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 10,
      c_width => 18,
      core_name0 => "bmg_62_250528f931baf469",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 10,
      c_width => 18,
      core_name0 => "bmg_62_dd882f44239ec05c",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x49,
      clk => clk_1_sg_x49,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 10,
      y_width => 10
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_5314b8011b is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_5314b8011b;

architecture structural of twiddle_general_4mult_entity_5314b8011b is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x50: std_logic;
  signal clk_1_sg_x50: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x50 <= ce_1;
  clk_1_sg_x50 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_4d645a143c: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_72a5b56f2f: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_2a7ffa99f3: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_36efec2b27: entity work.coeff_gen_entity_36efec2b27
    port map (
      ce_1 => ce_1_sg_x50,
      clk_1 => clk_1_sg_x50,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x50,
      clk => clk_1_sg_x50,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11/butterfly_direct"

entity butterfly_direct_entity_589b1ae42b is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_589b1ae42b;

architecture structural of butterfly_direct_entity_589b1ae42b is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x51: std_logic;
  signal clk_1_sg_x51: std_logic;
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x51 <= ce_1;
  clk_1_sg_x51 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x8;
  a_bw_x0 <= concat_y_net_x9;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x3;

  cadd_8ced4136f5: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_6f2f738405: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_6c6c286688: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_77c31f4d37: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_40dabb98f1: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_9b5c874d5f: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_6a3b408c5d: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x8
    );

  ri_to_c23_3dbc870b41: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x9
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x3
    );

  twiddle_general_4mult_5314b8011b: entity work.twiddle_general_4mult_entity_5314b8011b
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x51,
      clk_1 => clk_1_sg_x51,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11/delay_b"

entity delay_b_entity_997f5eab8a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_997f5eab8a;

architecture structural of delay_b_entity_997f5eab8a is
  signal ce_1_sg_x52: std_logic;
  signal clk_1_sg_x52: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x52 <= ce_1;
  clk_1_sg_x52 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11/sync_delay"

entity sync_delay_entity_b7f63eaf1b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_b7f63eaf1b;

architecture structural of sync_delay_entity_b7f63eaf1b is
  signal ce_1_sg_x54: std_logic;
  signal clk_1_sg_x54: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x54 <= ce_1;
  clk_1_sg_x54 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_cda50df78a
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

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9f5113eef58d42f3",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f9928864ea
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_11"

entity fft_stage_11_entity_26ba983bc7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_11_entity_26ba983bc7;

architecture structural of fft_stage_11_entity_26ba983bc7 is
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x12: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x2: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x12 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x2 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x13;
  out2 <= concat_y_net_x14;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_589b1ae42b: entity work.butterfly_direct_entity_589b1ae42b
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x13,
      a_bw_x0 => concat_y_net_x14,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.counter_223a0f3237
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      rst(0) => sync_delay_q_net_x4,
      op(0) => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_997f5eab8a: entity work.delay_b_entity_997f5eab8a
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_9a11442637: entity work.delay_b_entity_997f5eab8a
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in1 => concat_y_net_x12,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x2,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_b7f63eaf1b: entity work.sync_delay_entity_b7f63eaf1b
    port map (
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_2/butterfly_direct/twiddle_stage_2"

entity twiddle_stage_2_entity_950cc35a79 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(17 downto 0); 
    bw_re: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end twiddle_stage_2_entity_950cc35a79;

architecture structural of twiddle_stage_2_entity_950cc35a79 is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
  signal convert_dout_net: std_logic_vector(17 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal delay0_q_net_x2: std_logic_vector(17 downto 0);
  signal delay1_q_net_x2: std_logic_vector(17 downto 0);
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic_vector(17 downto 0);
  signal delay4_q_net: std_logic_vector(17 downto 0);
  signal delay5_q_net: std_logic_vector(17 downto 0);
  signal delay6_q_net: std_logic_vector(17 downto 0);
  signal delay7_q_net: std_logic;
  signal delay8_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal mux0_y_net_x2: std_logic_vector(17 downto 0);
  signal mux1_y_net_x2: std_logic_vector(17 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal negate_op_net: std_logic_vector(18 downto 0);
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= delay1_q_net_x2;
  a_re <= delay0_q_net_x2;
  bw_im <= mux1_y_net_x2;
  bw_re <= mux0_y_net_x2;
  sync_out <= delay8_q_net_x0;

  c_to_ri1_2304826c38: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => mux_y_net_x1,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  c_to_ri_d301f3f92f: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => single_port_ram_data_out_net_x1,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  convert: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 1,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      din => negate_op_net,
      en => "1",
      dout => convert_dout_net
    );

  counter: entity work.counter_61242a554d
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      rst(0) => delay7_q_net,
      op => counter_op_net
    );

  delay0: entity work.delay_ae3f84524a
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => force_re_output_port_net_x0,
      q => delay0_q_net_x2
    );

  delay1: entity work.delay_ae3f84524a
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => force_im_output_port_net_x0,
      q => delay1_q_net_x2
    );

  delay2: entity work.delay_848c26f47b
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d(0) => slice_y_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_2f744cdafb
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => delay6_q_net,
      q => delay3_q_net
    );

  delay4: entity work.delay_2f744cdafb
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => convert_dout_net,
      q => delay4_q_net
    );

  delay5: entity work.delay_cbdfa55dc3
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => force_re_output_port_net_x1,
      q => delay5_q_net
    );

  delay6: entity work.delay_cbdfa55dc3
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d => force_im_output_port_net_x1,
      q => delay6_q_net
    );

  delay7: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d(0) => mux_y_net_x2,
      q(0) => delay7_q_net
    );

  delay8: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d(0) => delay7_q_net,
      q(0) => delay8_q_net_x0
    );

  mux0: entity work.mux_69e3090cc7
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d0 => delay5_q_net,
      d1 => delay6_q_net,
      sel(0) => slice_y_net,
      y => mux0_y_net_x2
    );

  mux1: entity work.mux_181e58d842
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      d0 => delay3_q_net,
      d1 => delay4_q_net,
      sel(0) => delay2_q_net,
      y => mux1_y_net_x2
    );

  negate: entity work.negate_e1a9d1ade1
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      ip => force_re_output_port_net_x1,
      op => negate_op_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 9,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_2/butterfly_direct"

entity butterfly_direct_entity_cdabae6b59 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_cdabae6b59;

architecture structural of butterfly_direct_entity_cdabae6b59 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(18 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(18 downto 0);
  signal ce_1_sg_x67: std_logic;
  signal clk_1_sg_x67: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal delay0_q_net_x2: std_logic_vector(17 downto 0);
  signal delay1_q_net_x2: std_logic_vector(17 downto 0);
  signal delay8_q_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(19 downto 0);
  signal mux0_y_net_x2: std_logic_vector(17 downto 0);
  signal mux1_y_net_x1: std_logic_vector(19 downto 0);
  signal mux1_y_net_x2: std_logic_vector(17 downto 0);
  signal mux2_y_net_x1: std_logic_vector(19 downto 0);
  signal mux3_y_net_x1: std_logic_vector(19 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(18 downto 0);
  signal scale1_op_net: std_logic_vector(18 downto 0);
  signal scale2_op_net: std_logic_vector(18 downto 0);
  signal scale3_op_net: std_logic_vector(18 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x2 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x67 <= ce_1;
  clk_1_sg_x67 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_2ce5f11050: entity work.cadd_entity_0876d38971
    port map (
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      b_im => mux1_y_net_x2,
      b_re => mux0_y_net_x2,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_e72d48893f: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_8a1666b221: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_5660b6da80: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_0e099a84db: entity work.convert_of0_entity_8520f090ce
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_ef28c16b3e: entity work.csub_entity_46bf4f188a
    port map (
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      b_im => mux1_y_net_x2,
      b_re => mux0_y_net_x2,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_28159dbdb9
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_b6767d94eb: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_f2d5fe4271: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_9f61027ba4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      d(0) => delay8_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_stage_2_950cc35a79: entity work.twiddle_stage_2_entity_950cc35a79
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      sync => mux_y_net_x4,
      a_im => delay1_q_net_x2,
      a_re => delay0_q_net_x2,
      bw_im => mux1_y_net_x2,
      bw_re => mux0_y_net_x2,
      sync_out => delay8_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_2/delay_b"

entity delay_b_entity_caa586227f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_caa586227f;

architecture structural of delay_b_entity_caa586227f is
  signal ce_1_sg_x68: std_logic;
  signal clk_1_sg_x68: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x68 <= ce_1;
  clk_1_sg_x68 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x3;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 509,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 9,
      c_width => 36,
      core_name0 => "bmg_62_a6f6b809007e69f9",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_2/sync_delay"

entity sync_delay_entity_f0dbf3f546 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_f0dbf3f546;

architecture structural of sync_delay_entity_f0dbf3f546 is
  signal ce_1_sg_x70: std_logic;
  signal clk_1_sg_x70: std_logic;
  signal constant1_op_net: std_logic_vector(9 downto 0);
  signal constant2_op_net: std_logic_vector(9 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(9 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x70 <= ce_1;
  clk_1_sg_x70 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_498bc68c14
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_fbc2f0cce1
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

  constant_x0: entity work.constant_f1ac4bddff
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_7ca694f8efe8d963",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_0ffd72e037
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_f6702ea2f7
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_2"

entity fft_stage_2_entity_c642f0c1ce is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_2_entity_c642f0c1ce;

architecture structural of fft_stage_2_entity_c642f0c1ce is
  signal ce_1_sg_x71: std_logic;
  signal clk_1_sg_x71: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x3: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x71 <= ce_1;
  clk_1_sg_x71 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x3 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_cdabae6b59: entity work.butterfly_direct_entity_cdabae6b59
    port map (
      a => single_port_ram_data_out_net_x3,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_caa586227f: entity work.delay_b_entity_caa586227f
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x3
    );

  delay_f_3796e1ef23: entity work.delay_b_entity_caa586227f
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in1 => concat_y_net_x9,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x3,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 9,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_f0dbf3f546: entity work.sync_delay_entity_f0dbf3f546
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/butterfly_direct/convert_of0"

entity convert_of0_entity_ec0c8b5c8e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(17 downto 0); 
    of_x0: out std_logic
  );
end convert_of0_entity_ec0c8b5c8e;

architecture structural of convert_of0_entity_ec0c8b5c8e is
  signal adder_s_net_x1: std_logic_vector(17 downto 0);
  signal all_0s_y_net: std_logic;
  signal all_1s_y_net: std_logic;
  signal and_y_net_x0: std_logic;
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal invert1_op_net: std_logic;
  signal invert2_op_net: std_logic;
  signal invert3_op_net: std_logic;
  signal invert4_op_net: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice4_y_net: std_logic;

begin
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  mux0_y_net_x1 <= din;
  dout <= adder_s_net_x1;
  of_x0 <= and_y_net_x0;

  all_0s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d0(0) => invert1_op_net,
      d1(0) => invert2_op_net,
      d2(0) => invert3_op_net,
      d3(0) => invert4_op_net,
      y(0) => all_0s_y_net
    );

  all_1s: entity work.logical_182ac6c51e
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d0(0) => slice1_y_net,
      d1(0) => slice2_y_net,
      d2(0) => slice3_y_net,
      d3(0) => slice4_y_net,
      y(0) => all_1s_y_net
    );

  and_x0: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => all_0s_y_net,
      d1(0) => all_1s_y_net,
      y(0) => and_y_net_x0
    );

  convert_1a21015687: entity work.convert_entity_58e9e8dce9
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      in_x0 => mux0_y_net_x1,
      out_x0 => adder_s_net_x1
    );

  invert1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => slice1_y_net,
      op(0) => invert1_op_net
    );

  invert2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => slice2_y_net,
      op(0) => invert2_op_net
    );

  invert3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => slice3_y_net,
      op(0) => invert3_op_net
    );

  invert4: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      ip(0) => slice4_y_net,
      op(0) => invert4_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 23,
      new_msb => 23,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 22,
      new_msb => 22,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 21,
      new_msb => 21,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 20,
      x_width => 24,
      y_width => 1
    )
    port map (
      x => mux0_y_net_x1,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_12d397242a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_12d397242a;

architecture structural of coeff_gen_entity_12d397242a is
  signal ce_1_sg_x82: std_logic;
  signal clk_1_sg_x82: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x82 <= ce_1;
  clk_1_sg_x82 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_7702c72dff: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_f0d8e22702089fe9",
      latency => 2
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      en => "1",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom_dist
    generic map (
      addr_width => 2,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_252dff5223562ed1",
      latency => 2
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      en => "1",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 9,
      x_width => 10,
      y_width => 2
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_7d233d93d8 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_7d233d93d8;

architecture structural of twiddle_general_4mult_entity_7d233d93d8 is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x83: std_logic;
  signal clk_1_sg_x83: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x83 <= ce_1;
  clk_1_sg_x83 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_2aec80e6de: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_e6915ead27: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_4c5fbe8dce: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_12d397242a: entity work.coeff_gen_entity_12d397242a
    port map (
      ce_1 => ce_1_sg_x83,
      clk_1 => clk_1_sg_x83,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/butterfly_direct"

entity butterfly_direct_entity_7728dda2c8 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_7728dda2c8;

architecture structural of butterfly_direct_entity_7728dda2c8 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x84: std_logic;
  signal clk_1_sg_x84: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x84 <= ce_1;
  clk_1_sg_x84 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_1c589aa928: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_ec0c8b5c8e: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_914ae2cc2e: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_0a7779cd79: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_81b11a1aa0: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_e2934812ef: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_807879adfe: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_85b9d13781: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_7d233d93d8: entity work.twiddle_general_4mult_entity_7d233d93d8
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x84,
      clk_1 => clk_1_sg_x84,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/delay_b"

entity delay_b_entity_1c18062005 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_1c18062005;

architecture structural of delay_b_entity_1c18062005 is
  signal ce_1_sg_x85: std_logic;
  signal clk_1_sg_x85: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x85 <= ce_1;
  clk_1_sg_x85 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 253,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 8,
      c_width => 36,
      core_name0 => "bmg_62_f1ca57bbf79f0673",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3/sync_delay"

entity sync_delay_entity_18a8dad1bf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_18a8dad1bf;

architecture structural of sync_delay_entity_18a8dad1bf is
  signal ce_1_sg_x87: std_logic;
  signal clk_1_sg_x87: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x87 <= ce_1;
  clk_1_sg_x87 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

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
      core_name0 => "cntr_11_0_d4d70c5a247867e8",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_3"

entity fft_stage_3_entity_273a1cd05b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_3_entity_273a1cd05b;

architecture structural of fft_stage_3_entity_273a1cd05b is
  signal ce_1_sg_x88: std_logic;
  signal clk_1_sg_x88: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x4: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x88 <= ce_1;
  clk_1_sg_x88 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x13 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x4 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x4;
  out2 <= concat_y_net_x14;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_7728dda2c8: entity work.butterfly_direct_entity_7728dda2c8
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x4,
      a_bw_x0 => concat_y_net_x14,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b9730cea34623a8b",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x4,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_1c18062005: entity work.delay_b_entity_1c18062005
    port map (
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_d5641f17a7: entity work.delay_b_entity_1c18062005
    port map (
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      in1 => concat_y_net_x13,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x4,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_18a8dad1bf: entity work.sync_delay_entity_18a8dad1bf
    port map (
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_e9d8c088fa is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_e9d8c088fa;

architecture structural of coeff_gen_entity_e9d8c088fa is
  signal ce_1_sg_x99: std_logic;
  signal clk_1_sg_x99: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(2 downto 0);

begin
  ce_1_sg_x99 <= ce_1;
  clk_1_sg_x99 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_ca93e0366f: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom_dist
    generic map (
      addr_width => 3,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_fcbc247e5bff391a",
      latency => 2
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      en => "1",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom_dist
    generic map (
      addr_width => 3,
      c_address_width => 4,
      c_width => 18,
      core_name0 => "dmg_62_598fcf326e540b6a",
      latency => 2
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      en => "1",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 9,
      x_width => 10,
      y_width => 3
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_57ed09d25a is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_57ed09d25a;

architecture structural of twiddle_general_4mult_entity_57ed09d25a is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x100: std_logic;
  signal clk_1_sg_x100: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x100 <= ce_1;
  clk_1_sg_x100 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_136bb128ed: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_dc56b645ac: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_58eff147e8: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_e9d8c088fa: entity work.coeff_gen_entity_e9d8c088fa
    port map (
      ce_1 => ce_1_sg_x100,
      clk_1 => clk_1_sg_x100,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4/butterfly_direct"

entity butterfly_direct_entity_db55f3a9ea is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_db55f3a9ea;

architecture structural of butterfly_direct_entity_db55f3a9ea is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x101: std_logic;
  signal clk_1_sg_x101: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x101 <= ce_1;
  clk_1_sg_x101 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_2359398a4c: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_b12ba84ad3: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_539838c358: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_55256c2d93: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_435be4d3eb: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_52f4009913: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_cde9d798d1: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_0bd45beb3f: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_57ed09d25a: entity work.twiddle_general_4mult_entity_57ed09d25a
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x101,
      clk_1 => clk_1_sg_x101,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4/delay_b"

entity delay_b_entity_2c0ffecd3f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_2c0ffecd3f;

architecture structural of delay_b_entity_2c0ffecd3f is
  signal ce_1_sg_x102: std_logic;
  signal clk_1_sg_x102: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x102 <= ce_1;
  clk_1_sg_x102 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 125,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_9adf5a9f785e3fb8",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 7,
      c_width => 36,
      core_name0 => "bmg_62_51321cc7c8e9865c",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4/sync_delay"

entity sync_delay_entity_538cd35793 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_538cd35793;

architecture structural of sync_delay_entity_538cd35793 is
  signal ce_1_sg_x104: std_logic;
  signal clk_1_sg_x104: std_logic;
  signal constant1_op_net: std_logic_vector(7 downto 0);
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x104 <= ce_1;
  clk_1_sg_x104 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e8aae5d3bb
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

  constant_x0: entity work.constant_b437b02512
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b2e26777d24cb38d",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_54048c8b02
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_16235eb2bf
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_4"

entity fft_stage_4_entity_171e508cf3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_4_entity_171e508cf3;

architecture structural of fft_stage_4_entity_171e508cf3 is
  signal ce_1_sg_x105: std_logic;
  signal clk_1_sg_x105: std_logic;
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x5: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x105 <= ce_1;
  clk_1_sg_x105 <= clk_1;
  concat_y_net_x5 <= in1;
  concat_y_net_x16 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x5 <= shift;
  sync_delay_q_net_x6 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_db55f3a9ea: entity work.butterfly_direct_entity_db55f3a9ea
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_df2bb90b8fe02ecf",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x6,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      d(0) => sync_delay_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_2c0ffecd3f: entity work.delay_b_entity_2c0ffecd3f
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_60ff3996f8: entity work.delay_b_entity_2c0ffecd3f
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      in1 => concat_y_net_x16,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x5,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      d0 => concat_y_net_x5,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x5,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_538cd35793: entity work.sync_delay_entity_538cd35793
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_b389a0c542 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_b389a0c542;

architecture structural of coeff_gen_entity_b389a0c542 is
  signal ce_1_sg_x116: std_logic;
  signal clk_1_sg_x116: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(3 downto 0);

begin
  ce_1_sg_x116 <= ce_1;
  clk_1_sg_x116 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x116,
      clk => clk_1_sg_x116,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_248d347cff: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 4,
      c_width => 18,
      core_name0 => "bmg_62_6ea787275fdc24d6",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x116,
      clk => clk_1_sg_x116,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 4,
      c_width => 18,
      core_name0 => "bmg_62_37f844592d213796",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x116,
      clk => clk_1_sg_x116,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 9,
      x_width => 10,
      y_width => 4
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_b60354a90e is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_b60354a90e;

architecture structural of twiddle_general_4mult_entity_b60354a90e is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x117: std_logic;
  signal clk_1_sg_x117: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);

begin
  single_port_ram_data_out_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x117 <= ce_1;
  clk_1_sg_x117 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_81ea7238f5: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_dc6656e565: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_faeb97285f: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_b389a0c542: entity work.coeff_gen_entity_b389a0c542
    port map (
      ce_1 => ce_1_sg_x117,
      clk_1 => clk_1_sg_x117,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      d => single_port_ram_data_out_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x117,
      clk => clk_1_sg_x117,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5/butterfly_direct"

entity butterfly_direct_entity_fd702b3dc4 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_fd702b3dc4;

architecture structural of butterfly_direct_entity_fd702b3dc4 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x118: std_logic;
  signal clk_1_sg_x118: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal single_port_ram_data_out_net_x1: std_logic_vector(35 downto 0);
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  single_port_ram_data_out_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x118 <= ce_1;
  clk_1_sg_x118 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_a9d1864612: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_7aee3135d3: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_52cc4c838e: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_cfddbcc29a: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_104028f11d: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_4bf460bb56: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_85055489b9: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_d06c895544: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_b60354a90e: entity work.twiddle_general_4mult_entity_b60354a90e
    port map (
      a => single_port_ram_data_out_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x118,
      clk_1 => clk_1_sg_x118,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5/delay_b"

entity delay_b_entity_c5c8113636 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_c5c8113636;

architecture structural of delay_b_entity_c5c8113636 is
  signal ce_1_sg_x119: std_logic;
  signal clk_1_sg_x119: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x119 <= ce_1;
  clk_1_sg_x119 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= single_port_ram_data_out_net_x2;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit
    generic map (
      cnt_15_0 => 61,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_20f60aed18821bec",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram
    generic map (
      c_address_width => 6,
      c_width => 36,
      core_name0 => "bmg_62_665c019c1c5f5676",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
      data_in => mux1_y_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5/sync_delay"

entity sync_delay_entity_8ff8cf1723 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_8ff8cf1723;

architecture structural of sync_delay_entity_8ff8cf1723 is
  signal ce_1_sg_x121: std_logic;
  signal clk_1_sg_x121: std_logic;
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal constant2_op_net: std_logic_vector(6 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x121 <= ce_1;
  clk_1_sg_x121 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_7b07120b87
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

  constant_x0: entity work.constant_180df391de
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c53e3b0687343f7a",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x121,
      clk => clk_1_sg_x121,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_9a3978c602
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_23065a6aa3
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_5"

entity fft_stage_5_entity_47f5cf444b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_5_entity_47f5cf444b;

architecture structural of fft_stage_5_entity_47f5cf444b is
  signal ce_1_sg_x122: std_logic;
  signal clk_1_sg_x122: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x6: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(35 downto 0);
  signal single_port_ram_data_out_net_x2: std_logic_vector(35 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x122 <= ce_1;
  clk_1_sg_x122 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x6 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_fd702b3dc4: entity work.butterfly_direct_entity_fd702b3dc4
    port map (
      a => single_port_ram_data_out_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x122,
      clk_1 => clk_1_sg_x122,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_9adf5a9f785e3fb8",
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_c5c8113636: entity work.delay_b_entity_c5c8113636
    port map (
      ce_1 => ce_1_sg_x122,
      clk_1 => clk_1_sg_x122,
      in1 => mux1_y_net_x0,
      out1 => single_port_ram_data_out_net_x2
    );

  delay_f_09c93257a2: entity work.delay_b_entity_c5c8113636
    port map (
      ce_1 => ce_1_sg_x122,
      clk_1 => clk_1_sg_x122,
      in1 => concat_y_net_x9,
      out1 => single_port_ram_data_out_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      d0 => single_port_ram_data_out_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => single_port_ram_data_out_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x6,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 7,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_8ff8cf1723: entity work.sync_delay_entity_8ff8cf1723
    port map (
      ce_1 => ce_1_sg_x122,
      clk_1 => clk_1_sg_x122,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_a0a7c9af6e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_a0a7c9af6e;

architecture structural of coeff_gen_entity_a0a7c9af6e is
  signal ce_1_sg_x133: std_logic;
  signal clk_1_sg_x133: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(4 downto 0);

begin
  ce_1_sg_x133 <= ce_1;
  clk_1_sg_x133 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x133,
      clk => clk_1_sg_x133,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_375f688c70: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 5,
      c_width => 18,
      core_name0 => "bmg_62_daa5a8eb8c5c2eed",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x133,
      clk => clk_1_sg_x133,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 5,
      c_width => 18,
      core_name0 => "bmg_62_7061fc74b87e2931",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x133,
      clk => clk_1_sg_x133,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 9,
      x_width => 10,
      y_width => 5
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_bbcb5a43d0 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_bbcb5a43d0;

architecture structural of twiddle_general_4mult_entity_bbcb5a43d0 is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x134: std_logic;
  signal clk_1_sg_x134: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x134 <= ce_1;
  clk_1_sg_x134 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_e2e3fe0971: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_827f9969d4: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_afec92bafa: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_a0a7c9af6e: entity work.coeff_gen_entity_a0a7c9af6e
    port map (
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x134,
      clk => clk_1_sg_x134,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6/butterfly_direct"

entity butterfly_direct_entity_6d0f3e0aba is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_6d0f3e0aba;

architecture structural of butterfly_direct_entity_6d0f3e0aba is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x135: std_logic;
  signal clk_1_sg_x135: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x135 <= ce_1;
  clk_1_sg_x135 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_07ffb11008: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_6ba7624359: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_ddae025455: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_ca5813357d: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_33233cc122: entity work.convert_of0_entity_ec0c8b5c8e
    port map (
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_9087a60797: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_2e11f4e268: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_77d8ce9415: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x135,
      clk => clk_1_sg_x135,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_bbcb5a43d0: entity work.twiddle_general_4mult_entity_bbcb5a43d0
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x135,
      clk_1 => clk_1_sg_x135,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6/delay_b"

entity delay_b_entity_41e5e338ab is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_41e5e338ab;

architecture structural of delay_b_entity_41e5e338ab is
  signal ce_1_sg_x136: std_logic;
  signal clk_1_sg_x136: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x136 <= ce_1;
  clk_1_sg_x136 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 32,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x136,
      clk => clk_1_sg_x136,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6/sync_delay"

entity sync_delay_entity_d54408a058 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_d54408a058;

architecture structural of sync_delay_entity_d54408a058 is
  signal ce_1_sg_x138: std_logic;
  signal clk_1_sg_x138: std_logic;
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(5 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(5 downto 0);
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x138 <= ce_1;
  clk_1_sg_x138 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_961b61f8a1
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

  constant_x0: entity work.constant_a267c870be
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_73d90f0f459a7002",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x138,
      clk => clk_1_sg_x138,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_931d61fb72
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_fe487ce1c7
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_6"

entity fft_stage_6_entity_3379c864c6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_6_entity_3379c864c6;

architecture structural of fft_stage_6_entity_3379c864c6 is
  signal ce_1_sg_x139: std_logic;
  signal clk_1_sg_x139: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x4: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x7: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x139 <= ce_1;
  clk_1_sg_x139 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x13 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x7 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x4;
  out2 <= concat_y_net_x14;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_6d0f3e0aba: entity work.butterfly_direct_entity_6d0f3e0aba
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x139,
      clk_1 => clk_1_sg_x139,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x4,
      a_bw_x0 => concat_y_net_x14,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_20f60aed18821bec",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x139,
      clk => clk_1_sg_x139,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x4,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x139,
      clk => clk_1_sg_x139,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_41e5e338ab: entity work.delay_b_entity_41e5e338ab
    port map (
      ce_1 => ce_1_sg_x139,
      clk_1 => clk_1_sg_x139,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_b2c79e6267: entity work.delay_b_entity_41e5e338ab
    port map (
      ce_1 => ce_1_sg_x139,
      clk_1 => clk_1_sg_x139,
      in1 => concat_y_net_x13,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x139,
      clk => clk_1_sg_x139,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x139,
      clk => clk_1_sg_x139,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x139,
      clk => clk_1_sg_x139,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x7,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 6,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_d54408a058: entity work.sync_delay_entity_d54408a058
    port map (
      ce_1 => ce_1_sg_x139,
      clk_1 => clk_1_sg_x139,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_2727609715 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_2727609715;

architecture structural of coeff_gen_entity_2727609715 is
  signal ce_1_sg_x150: std_logic;
  signal clk_1_sg_x150: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(5 downto 0);

begin
  ce_1_sg_x150 <= ce_1;
  clk_1_sg_x150 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_cf10a355ba: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_62_16e54f007b53b02e",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_62_721e2d25fd18b8a2",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 9,
      x_width => 10,
      y_width => 6
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_c73fb03ecd is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_c73fb03ecd;

architecture structural of twiddle_general_4mult_entity_c73fb03ecd is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x151: std_logic;
  signal clk_1_sg_x151: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x151 <= ce_1;
  clk_1_sg_x151 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_30543eefad: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_497c5ce186: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_93d38a3e90: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_2727609715: entity work.coeff_gen_entity_2727609715
    port map (
      ce_1 => ce_1_sg_x151,
      clk_1 => clk_1_sg_x151,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7/butterfly_direct"

entity butterfly_direct_entity_1478a1d18a is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_1478a1d18a;

architecture structural of butterfly_direct_entity_1478a1d18a is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x152: std_logic;
  signal clk_1_sg_x152: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x152 <= ce_1;
  clk_1_sg_x152 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_812eee3239: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_eaac3a6880: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_ea53a36c50: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_1a7d8c27fe: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_462b42aaa7: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_d8bbc693cf: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_ec28ffcc3b: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_298d6461b4: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_c73fb03ecd: entity work.twiddle_general_4mult_entity_c73fb03ecd
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x152,
      clk_1 => clk_1_sg_x152,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7/delay_b"

entity delay_b_entity_2eb241a2dc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_2eb241a2dc;

architecture structural of delay_b_entity_2eb241a2dc is
  signal ce_1_sg_x153: std_logic;
  signal clk_1_sg_x153: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x153 <= ce_1;
  clk_1_sg_x153 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7/sync_delay"

entity sync_delay_entity_1e7ab04d67 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_1e7ab04d67;

architecture structural of sync_delay_entity_1e7ab04d67 is
  signal ce_1_sg_x155: std_logic;
  signal clk_1_sg_x155: std_logic;
  signal constant1_op_net: std_logic_vector(4 downto 0);
  signal constant2_op_net: std_logic_vector(4 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(4 downto 0);
  signal counter_op_net: std_logic_vector(4 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x155 <= ce_1;
  clk_1_sg_x155 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_fe72737ca0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_ef0e2e5fc6
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

  constant_x0: entity work.constant_582a3706dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e0d381bcdb78c3cc",
      op_arith => xlUnsigned,
      op_width => 5
    )
    port map (
      ce => ce_1_sg_x155,
      clk => clk_1_sg_x155,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_9ece3c8c4e
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_dc5bc996c9
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_7"

entity fft_stage_7_entity_5a026dd4c1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_7_entity_5a026dd4c1;

architecture structural of fft_stage_7_entity_5a026dd4c1 is
  signal ce_1_sg_x156: std_logic;
  signal clk_1_sg_x156: std_logic;
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x6: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(4 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x8: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x6: std_logic;

begin
  ce_1_sg_x156 <= ce_1;
  clk_1_sg_x156 <= clk_1;
  concat_y_net_x5 <= in1;
  concat_y_net_x16 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x8 <= shift;
  sync_delay_q_net_x6 <= sync;
  of_x0 <= logical1_y_net_x0;
  out1 <= concat_y_net_x6;
  out2 <= concat_y_net_x7;
  sync_out <= sync_delay_q_net_x1;

  butterfly_direct_1478a1d18a: entity work.butterfly_direct_entity_1478a1d18a
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x156,
      clk_1 => clk_1_sg_x156,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x6,
      a_bw_x0 => concat_y_net_x7,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x1
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_35c81e3155ab2f6f",
      op_arith => xlUnsigned,
      op_width => 5
    )
    port map (
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x6,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      d(0) => sync_delay_q_net_x6,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_2eb241a2dc: entity work.delay_b_entity_2eb241a2dc
    port map (
      ce_1 => ce_1_sg_x156,
      clk_1 => clk_1_sg_x156,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_2b4aae4acd: entity work.delay_b_entity_2eb241a2dc
    port map (
      ce_1 => ce_1_sg_x156,
      clk_1 => clk_1_sg_x156,
      in1 => concat_y_net_x16,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x0
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x5,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      d0 => concat_y_net_x5,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x8,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 5,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_1e7ab04d67: entity work.sync_delay_entity_1e7ab04d67
    port map (
      ce_1 => ce_1_sg_x156,
      clk_1 => clk_1_sg_x156,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_b4d8270762 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_b4d8270762;

architecture structural of coeff_gen_entity_b4d8270762 is
  signal ce_1_sg_x167: std_logic;
  signal clk_1_sg_x167: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(6 downto 0);

begin
  ce_1_sg_x167 <= ce_1;
  clk_1_sg_x167 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_2285814b49: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 7,
      c_width => 18,
      core_name0 => "bmg_62_92fa6367e92d9ee0",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 7,
      c_width => 18,
      core_name0 => "bmg_62_89660d475f29ded2",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 9,
      x_width => 10,
      y_width => 7
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_22ac7211f0 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_22ac7211f0;

architecture structural of twiddle_general_4mult_entity_22ac7211f0 is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x168: std_logic;
  signal clk_1_sg_x168: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x168 <= ce_1;
  clk_1_sg_x168 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_fab4b173f3: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_1e471ed269: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_98b9c72978: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_b4d8270762: entity work.coeff_gen_entity_b4d8270762
    port map (
      ce_1 => ce_1_sg_x168,
      clk_1 => clk_1_sg_x168,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8/butterfly_direct"

entity butterfly_direct_entity_e7c2f36804 is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_e7c2f36804;

architecture structural of butterfly_direct_entity_e7c2f36804 is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x169: std_logic;
  signal clk_1_sg_x169: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal concat_y_net_x3: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x169 <= ce_1;
  clk_1_sg_x169 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x2;
  a_bw_x0 <= concat_y_net_x3;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x0;

  cadd_5a3424dafc: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_6001c86a07: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_535f8fcff9: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_17b76c88c5: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_b8d7d0619a: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_282e0971e1: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_e4066c4a79: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x2
    );

  ri_to_c23_c4d1624e87: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x3
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x169,
      clk => clk_1_sg_x169,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  twiddle_general_4mult_22ac7211f0: entity work.twiddle_general_4mult_entity_22ac7211f0
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x169,
      clk_1 => clk_1_sg_x169,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8/delay_b"

entity delay_b_entity_8f7d5701ce is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_8f7d5701ce;

architecture structural of delay_b_entity_8f7d5701ce is
  signal ce_1_sg_x170: std_logic;
  signal clk_1_sg_x170: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x170 <= ce_1;
  clk_1_sg_x170 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x170,
      clk => clk_1_sg_x170,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8/sync_delay"

entity sync_delay_entity_fb0847d8bf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_fb0847d8bf;

architecture structural of sync_delay_entity_fb0847d8bf is
  signal ce_1_sg_x172: std_logic;
  signal clk_1_sg_x172: std_logic;
  signal constant1_op_net: std_logic_vector(3 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(3 downto 0);
  signal counter_op_net: std_logic_vector(3 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x172 <= ce_1;
  clk_1_sg_x172 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_145086465d
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

  constant_x0: entity work.constant_67ad97ca70
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c2e89722de712678",
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x172,
      clk => clk_1_sg_x172,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_4d3cfceaf4
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_d930162434
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_8"

entity fft_stage_8_entity_2810ce8864 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_8_entity_2810ce8864;

architecture structural of fft_stage_8_entity_2810ce8864 is
  signal ce_1_sg_x173: std_logic;
  signal clk_1_sg_x173: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(3 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x9: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x3: std_logic;

begin
  ce_1_sg_x173 <= ce_1;
  clk_1_sg_x173 <= clk_1;
  concat_y_net_x7 <= in1;
  concat_y_net_x9 <= in2;
  logical1_y_net_x1 <= of_in;
  shift_net_x9 <= shift;
  sync_delay_q_net_x2 <= sync;
  of_x0 <= logical1_y_net_x2;
  out1 <= concat_y_net_x10;
  out2 <= concat_y_net_x11;
  sync_out <= sync_delay_q_net_x3;

  butterfly_direct_e7c2f36804: entity work.butterfly_direct_entity_e7c2f36804
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x173,
      clk_1 => clk_1_sg_x173,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x10,
      a_bw_x0 => concat_y_net_x11,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x3
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_c84d65465c59fb07",
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x173,
      clk => clk_1_sg_x173,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x2,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x173,
      clk => clk_1_sg_x173,
      d(0) => sync_delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_8f7d5701ce: entity work.delay_b_entity_8f7d5701ce
    port map (
      ce_1 => ce_1_sg_x173,
      clk_1 => clk_1_sg_x173,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_fb9fd47f46: entity work.delay_b_entity_8f7d5701ce
    port map (
      ce_1 => ce_1_sg_x173,
      clk_1 => clk_1_sg_x173,
      in1 => concat_y_net_x9,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x173,
      clk => clk_1_sg_x173,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x1,
      y(0) => logical1_y_net_x2
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x173,
      clk => clk_1_sg_x173,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x7,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x173,
      clk => clk_1_sg_x173,
      clr => '0',
      d0 => concat_y_net_x7,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x9,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_fb0847d8bf: entity work.sync_delay_entity_fb0847d8bf
    port map (
      ce_1 => ce_1_sg_x173,
      clk_1 => clk_1_sg_x173,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9/butterfly_direct/twiddle_general_4mult/coeff_gen"

entity coeff_gen_entity_1db13b6ef2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    w: out std_logic_vector(35 downto 0)
  );
end coeff_gen_entity_1db13b6ef2;

architecture structural of coeff_gen_entity_1db13b6ef2 is
  signal ce_1_sg_x184: std_logic;
  signal clk_1_sg_x184: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic;
  signal rom1_data_net_x0: std_logic_vector(17 downto 0);
  signal rom_data_net_x0: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x184 <= ce_1;
  clk_1_sg_x184 <= clk_1;
  mux_y_net_x0 <= rst;
  w <= concat_y_net_x2;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_511daee48ac62764",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      en => "1",
      rst(0) => mux_y_net_x0,
      op => counter_op_net
    );

  ri_to_c_e87b1da9e8: entity work.ri_to_c_entity_6ca6cf7bb1
    port map (
      im => rom1_data_net_x0,
      re => rom_data_net_x0,
      c => concat_y_net_x2
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 8,
      c_width => 18,
      core_name0 => "bmg_62_66e53735c699b53b",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      en => "1",
      rst => "0",
      data => rom_data_net_x0
    );

  rom1: entity work.xlsprom
    generic map (
      c_address_width => 8,
      c_width => 18,
      core_name0 => "bmg_62_83efd1fdf9477a72",
      latency => 1
    )
    port map (
      addr => slice_y_net,
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      en => "1",
      rst => "0",
      data => rom1_data_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 9,
      x_width => 10,
      y_width => 8
    )
    port map (
      x => counter_op_net,
      y => slice_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9/butterfly_direct/twiddle_general_4mult"

entity twiddle_general_4mult_entity_b20a5f234c is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    a_im: out std_logic_vector(17 downto 0); 
    a_re: out std_logic_vector(17 downto 0); 
    bw_im: out std_logic_vector(21 downto 0); 
    bw_re: out std_logic_vector(21 downto 0); 
    sync_out: out std_logic
  );
end twiddle_general_4mult_entity_b20a5f234c;

architecture structural of twiddle_general_4mult_entity_b20a5f234c is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal ce_1_sg_x185: std_logic;
  signal clk_1_sg_x185: std_logic;
  signal concat_y_net_x2: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay0_q_net_x0: std_logic_vector(35 downto 0);
  signal delay1_q_net_x0: std_logic_vector(35 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal mult1_p_net: std_logic_vector(35 downto 0);
  signal mult2_p_net: std_logic_vector(35 downto 0);
  signal mult3_p_net: std_logic_vector(35 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux_y_net_x1: std_logic_vector(35 downto 0);
  signal mux_y_net_x2: std_logic;

begin
  delay_slr_q_net_x0 <= a;
  mux_y_net_x1 <= b;
  ce_1_sg_x185 <= ce_1;
  clk_1_sg_x185 <= clk_1;
  mux_y_net_x2 <= sync;
  a_im <= force_im_output_port_net_x3;
  a_re <= force_re_output_port_net_x3;
  bw_im <= convert1_dout_net_x2;
  bw_re <= convert0_dout_net_x2;
  sync_out <= delay2_q_net_x0;

  addsub: entity work.addsub_6db2f9c02b
    port map (
      a => mult_p_net,
      b => mult2_p_net,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_8ce31f90bc
    port map (
      a => mult1_p_net,
      b => mult3_p_net,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      s => addsub1_s_net
    );

  c_to_ri1_326e69b2f4: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay0_q_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x3
    );

  c_to_ri2_4b38e8fccf: entity work.c_to_ri2_entity_f8c56280c8
    port map (
      c => concat_y_net_x2,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x0
    );

  c_to_ri3_3ee4bc7221: entity work.c_to_ri0_entity_6093a6f1c0
    port map (
      c => delay1_q_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x1
    );

  coeff_gen_1db13b6ef2: entity work.coeff_gen_entity_1db13b6ef2
    port map (
      ce_1 => ce_1_sg_x185,
      clk_1 => clk_1_sg_x185,
      rst => mux_y_net_x2,
      w => concat_y_net_x2
    );

  convert0: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert0_dout_net_x2
    );

  convert1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 22,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      din => addsub1_s_net,
      en => "1",
      dout => convert1_dout_net_x2
    );

  delay0: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      d => delay_slr_q_net_x0,
      en => '1',
      rst => '1',
      q => delay0_q_net_x0
    );

  delay1: entity work.delay_38898c80c0
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      d => mux_y_net_x1,
      q => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 7,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      d(0) => mux_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  mult: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult_p_net
    );

  mult1: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_re_output_port_net_x0,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult1_p_net
    );

  mult2: entity work.mult_f295e5f0f2
    port map (
      a => force_im_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult2_p_net
    );

  mult3: entity work.mult_f295e5f0f2
    port map (
      a => force_re_output_port_net_x1,
      b => force_im_output_port_net_x0,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult3_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9/butterfly_direct"

entity butterfly_direct_entity_42e2cc91bd is
  port (
    a: in std_logic_vector(35 downto 0); 
    b: in std_logic_vector(35 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    shift: in std_logic; 
    sync: in std_logic; 
    a_bw: out std_logic_vector(35 downto 0); 
    a_bw_x0: out std_logic_vector(35 downto 0); 
    of_x0: out std_logic; 
    sync_out: out std_logic
  );
end butterfly_direct_entity_42e2cc91bd;

architecture structural of butterfly_direct_entity_42e2cc91bd is
  signal adder_s_net_x3: std_logic_vector(17 downto 0);
  signal adder_s_net_x4: std_logic_vector(17 downto 0);
  signal adder_s_net_x5: std_logic_vector(17 downto 0);
  signal adder_s_net_x6: std_logic_vector(17 downto 0);
  signal and_y_net_x0: std_logic;
  signal and_y_net_x1: std_logic;
  signal and_y_net_x2: std_logic;
  signal and_y_net_x3: std_logic;
  signal cast_c_im_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_im_dout_net_x1: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x0: std_logic_vector(22 downto 0);
  signal cast_c_re_dout_net_x1: std_logic_vector(22 downto 0);
  signal ce_1_sg_x186: std_logic;
  signal clk_1_sg_x186: std_logic;
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x8: std_logic_vector(35 downto 0);
  signal convert0_dout_net_x2: std_logic_vector(21 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(21 downto 0);
  signal delay2_q_net_x0: std_logic;
  signal delay_slr_q_net_x1: std_logic_vector(35 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(17 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(17 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mux0_y_net_x1: std_logic_vector(23 downto 0);
  signal mux1_y_net_x1: std_logic_vector(23 downto 0);
  signal mux2_y_net_x1: std_logic_vector(23 downto 0);
  signal mux3_y_net_x1: std_logic_vector(23 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x4: std_logic;
  signal scale0_op_net: std_logic_vector(22 downto 0);
  signal scale1_op_net: std_logic_vector(22 downto 0);
  signal scale2_op_net: std_logic_vector(22 downto 0);
  signal scale3_op_net: std_logic_vector(22 downto 0);
  signal shift_delay_q_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x2: std_logic;

begin
  delay_slr_q_net_x1 <= a;
  mux_y_net_x3 <= b;
  ce_1_sg_x186 <= ce_1;
  clk_1_sg_x186 <= clk_1;
  slice_y_net_x0 <= shift;
  mux_y_net_x4 <= sync;
  a_bw <= concat_y_net_x7;
  a_bw_x0 <= concat_y_net_x8;
  of_x0 <= logical_y_net_x0;
  sync_out <= sync_delay_q_net_x2;

  cadd_f98d1edd1d: entity work.cadd_entity_6cf0f5325f
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      c_im => cast_c_im_dout_net_x0,
      c_re => cast_c_re_dout_net_x0
    );

  convert_of0_c48671a13f: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      din => mux0_y_net_x1,
      dout => adder_s_net_x3,
      of_x0 => and_y_net_x0
    );

  convert_of1_2f3b4553eb: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      din => mux1_y_net_x1,
      dout => adder_s_net_x4,
      of_x0 => and_y_net_x1
    );

  convert_of2_08bf6c2c7f: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      din => mux2_y_net_x1,
      dout => adder_s_net_x5,
      of_x0 => and_y_net_x2
    );

  convert_of3_0b89d8d3cb: entity work.convert_of0_entity_1384f2b443
    port map (
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      din => mux3_y_net_x1,
      dout => adder_s_net_x6,
      of_x0 => and_y_net_x3
    );

  csub_642b3a6cfa: entity work.csub_entity_9672345524
    port map (
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      b_im => convert1_dout_net_x2,
      b_re => convert0_dout_net_x2,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      c_im => cast_c_im_dout_net_x1,
      c_re => cast_c_re_dout_net_x1
    );

  logical: entity work.logical_a6d07705dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => and_y_net_x0,
      d1(0) => and_y_net_x1,
      d2(0) => and_y_net_x2,
      d3(0) => and_y_net_x3,
      y(0) => logical_y_net_x0
    );

  mux0: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      d0 => cast_c_re_dout_net_x0,
      d1 => scale0_op_net,
      sel(0) => shift_delay_q_net,
      y => mux0_y_net_x1
    );

  mux1: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      d0 => cast_c_im_dout_net_x0,
      d1 => scale1_op_net,
      sel(0) => shift_delay_q_net,
      y => mux1_y_net_x1
    );

  mux2: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      d0 => cast_c_re_dout_net_x1,
      d1 => scale2_op_net,
      sel(0) => shift_delay_q_net,
      y => mux2_y_net_x1
    );

  mux3: entity work.mux_f1f44b96f0
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      d0 => cast_c_im_dout_net_x1,
      d1 => scale3_op_net,
      sel(0) => shift_delay_q_net,
      y => mux3_y_net_x1
    );

  ri_to_c01_a07dd91167: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x4,
      re => adder_s_net_x3,
      c => concat_y_net_x7
    );

  ri_to_c23_054d9c78ca: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => adder_s_net_x6,
      re => adder_s_net_x5,
      c => concat_y_net_x8
    );

  scale0: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x0,
      op => scale0_op_net
    );

  scale1: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x0,
      op => scale1_op_net
    );

  scale2: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_re_dout_net_x1,
      op => scale2_op_net
    );

  scale3: entity work.scale_e5d0b4a1ec
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => cast_c_im_dout_net_x1,
      op => scale3_op_net
    );

  shift_delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      d(0) => slice_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => shift_delay_q_net
    );

  sync_delay: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      d(0) => delay2_q_net_x0,
      q(0) => sync_delay_q_net_x2
    );

  twiddle_general_4mult_b20a5f234c: entity work.twiddle_general_4mult_entity_b20a5f234c
    port map (
      a => delay_slr_q_net_x1,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x186,
      clk_1 => clk_1_sg_x186,
      sync => mux_y_net_x4,
      a_im => force_im_output_port_net_x3,
      a_re => force_re_output_port_net_x3,
      bw_im => convert1_dout_net_x2,
      bw_re => convert0_dout_net_x2,
      sync_out => delay2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9/delay_b"

entity delay_b_entity_f5e13c2a4d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    out1: out std_logic_vector(35 downto 0)
  );
end delay_b_entity_f5e13c2a4d;

architecture structural of delay_b_entity_f5e13c2a4d is
  signal ce_1_sg_x187: std_logic;
  signal clk_1_sg_x187: std_logic;
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);

begin
  ce_1_sg_x187 <= ce_1;
  clk_1_sg_x187 <= clk_1;
  mux1_y_net_x0 <= in1;
  out1 <= delay_slr_q_net_x2;

  delay_slr: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 36
    )
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      d => mux1_y_net_x0,
      en => '1',
      rst => '1',
      q => delay_slr_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9/sync_delay"

entity sync_delay_entity_f73482297e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_f73482297e;

architecture structural of sync_delay_entity_f73482297e is
  signal ce_1_sg_x189: std_logic;
  signal clk_1_sg_x189: std_logic;
  signal constant1_op_net: std_logic_vector(2 downto 0);
  signal constant2_op_net: std_logic_vector(2 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(2 downto 0);
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x5: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x189 <= ce_1;
  clk_1_sg_x189 <= clk_1;
  delay_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x5;

  constant1: entity work.constant_822933f89b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_469094441c
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

  constant_x0: entity work.constant_a1c496ea88
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e9eaaa5672e4be4d",
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x0,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x0,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x5
    );

  relational: entity work.relational_8fc7f5539b
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_47b317dab6
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

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core/fft_stage_9"

entity fft_stage_9_entity_30f5b66e54 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(35 downto 0); 
    in2: in std_logic_vector(35 downto 0); 
    of_in: in std_logic; 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_stage_9_entity_30f5b66e54;

architecture structural of fft_stage_9_entity_30f5b66e54 is
  signal ce_1_sg_x190: std_logic;
  signal clk_1_sg_x190: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x13: std_logic_vector(35 downto 0);
  signal concat_y_net_x14: std_logic_vector(35 downto 0);
  signal concat_y_net_x15: std_logic_vector(35 downto 0);
  signal counter_op_net: std_logic_vector(2 downto 0);
  signal delay_q_net_x0: std_logic;
  signal delay_slr_q_net_x0: std_logic_vector(35 downto 0);
  signal delay_slr_q_net_x2: std_logic_vector(35 downto 0);
  signal logical1_y_net_x3: std_logic;
  signal logical1_y_net_x4: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(35 downto 0);
  signal mux_y_net_x3: std_logic_vector(35 downto 0);
  signal mux_y_net_x5: std_logic;
  signal shift_net_x10: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic;
  signal slice_y_net_x0: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x5: std_logic;

begin
  ce_1_sg_x190 <= ce_1;
  clk_1_sg_x190 <= clk_1;
  concat_y_net_x11 <= in1;
  concat_y_net_x13 <= in2;
  logical1_y_net_x3 <= of_in;
  shift_net_x10 <= shift;
  sync_delay_q_net_x4 <= sync;
  of_x0 <= logical1_y_net_x4;
  out1 <= concat_y_net_x14;
  out2 <= concat_y_net_x15;
  sync_out <= sync_delay_q_net_x5;

  butterfly_direct_42e2cc91bd: entity work.butterfly_direct_entity_42e2cc91bd
    port map (
      a => delay_slr_q_net_x2,
      b => mux_y_net_x3,
      ce_1 => ce_1_sg_x190,
      clk_1 => clk_1_sg_x190,
      shift => slice_y_net_x0,
      sync => mux_y_net_x5,
      a_bw => concat_y_net_x14,
      a_bw_x0 => concat_y_net_x15,
      of_x0 => logical_y_net_x0,
      sync_out => sync_delay_q_net_x5
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_05042eb8e8f7781c",
      op_arith => xlUnsigned,
      op_width => 3
    )
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      en => "1",
      rst(0) => sync_delay_q_net_x4,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      d(0) => sync_delay_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay_b_f5e13c2a4d: entity work.delay_b_entity_f5e13c2a4d
    port map (
      ce_1 => ce_1_sg_x190,
      clk_1 => clk_1_sg_x190,
      in1 => mux1_y_net_x0,
      out1 => delay_slr_q_net_x2
    );

  delay_f_d6e115695e: entity work.delay_b_entity_f5e13c2a4d
    port map (
      ce_1 => ce_1_sg_x190,
      clk_1 => clk_1_sg_x190,
      in1 => concat_y_net_x13,
      out1 => delay_slr_q_net_x0
    );

  logical1: entity work.logical_444d3f5046
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => logical1_y_net_x3,
      y(0) => logical1_y_net_x4
    );

  mux: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      d0 => delay_slr_q_net_x0,
      d1 => concat_y_net_x11,
      sel(0) => slice1_y_net,
      y => mux_y_net_x3
    );

  mux1: entity work.mux_4bb6f691f7
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      d0 => concat_y_net_x11,
      d1 => delay_slr_q_net_x0,
      sel(0) => slice1_y_net,
      y => mux1_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => shift_net_x10,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 3,
      y_width => 1
    )
    port map (
      x => counter_op_net,
      y(0) => slice1_y_net
    );

  sync_delay_f73482297e: entity work.sync_delay_entity_f73482297e
    port map (
      ce_1 => ce_1_sg_x190,
      clk_1 => clk_1_sg_x190,
      in_x0 => delay_q_net_x0,
      out_x0 => mux_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x/biplex_core"

entity biplex_core_entity_28c4ebd84d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(35 downto 0); 
    pol2: in std_logic_vector(35 downto 0); 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    out1: out std_logic_vector(35 downto 0); 
    out2: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end biplex_core_entity_28c4ebd84d;

architecture structural of biplex_core_entity_28c4ebd84d is
  signal ce_1_sg_x191: std_logic;
  signal clk_1_sg_x191: std_logic;
  signal concat_y_net_x11: std_logic_vector(35 downto 0);
  signal concat_y_net_x12: std_logic_vector(35 downto 0);
  signal concat_y_net_x15: std_logic_vector(35 downto 0);
  signal concat_y_net_x16: std_logic_vector(35 downto 0);
  signal concat_y_net_x17: std_logic_vector(35 downto 0);
  signal concat_y_net_x18: std_logic_vector(35 downto 0);
  signal concat_y_net_x19: std_logic_vector(35 downto 0);
  signal concat_y_net_x20: std_logic_vector(35 downto 0);
  signal concat_y_net_x21: std_logic_vector(35 downto 0);
  signal concat_y_net_x22: std_logic_vector(35 downto 0);
  signal concat_y_net_x23: std_logic_vector(35 downto 0);
  signal concat_y_net_x24: std_logic_vector(35 downto 0);
  signal concat_y_net_x25: std_logic_vector(35 downto 0);
  signal concat_y_net_x26: std_logic_vector(35 downto 0);
  signal concat_y_net_x27: std_logic_vector(35 downto 0);
  signal concat_y_net_x28: std_logic_vector(35 downto 0);
  signal concat_y_net_x29: std_logic_vector(35 downto 0);
  signal concat_y_net_x31: std_logic_vector(35 downto 0);
  signal concat_y_net_x32: std_logic_vector(35 downto 0);
  signal concat_y_net_x33: std_logic_vector(35 downto 0);
  signal concat_y_net_x34: std_logic_vector(35 downto 0);
  signal concat_y_net_x5: std_logic_vector(35 downto 0);
  signal concat_y_net_x7: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal constant_op_net_x0: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical1_y_net_x10: std_logic;
  signal logical1_y_net_x11: std_logic;
  signal logical1_y_net_x12: std_logic;
  signal logical1_y_net_x3: std_logic;
  signal logical1_y_net_x4: std_logic;
  signal logical1_y_net_x5: std_logic;
  signal logical1_y_net_x6: std_logic;
  signal logical1_y_net_x7: std_logic;
  signal logical1_y_net_x8: std_logic;
  signal logical1_y_net_x9: std_logic;
  signal shift_net_x11: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x10: std_logic;
  signal sync_delay_q_net_x11: std_logic;
  signal sync_delay_q_net_x12: std_logic;
  signal sync_delay_q_net_x13: std_logic;
  signal sync_delay_q_net_x14: std_logic;
  signal sync_delay_q_net_x2: std_logic;
  signal sync_delay_q_net_x4: std_logic;
  signal sync_delay_q_net_x6: std_logic;
  signal sync_delay_q_net_x7: std_logic;
  signal sync_delay_q_net_x8: std_logic;
  signal sync_delay_q_net_x9: std_logic;
  signal sync_net_x1: std_logic;

begin
  ce_1_sg_x191 <= ce_1;
  clk_1_sg_x191 <= clk_1;
  concat_y_net_x31 <= pol1;
  concat_y_net_x32 <= pol2;
  shift_net_x11 <= shift;
  sync_net_x1 <= sync;
  of_x0 <= logical1_y_net_x12;
  out1 <= concat_y_net_x33;
  out2 <= concat_y_net_x34;
  sync_out <= sync_delay_q_net_x14;

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  fft_stage_10_608db23e86: entity work.fft_stage_10_entity_608db23e86
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x28,
      in2 => concat_y_net_x29,
      of_in => logical1_y_net_x11,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x13,
      of_x0 => logical1_y_net_x3,
      out1 => concat_y_net_x11,
      out2 => concat_y_net_x12,
      sync_out => sync_delay_q_net_x4
    );

  fft_stage_11_26ba983bc7: entity work.fft_stage_11_entity_26ba983bc7
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x11,
      in2 => concat_y_net_x12,
      of_in => logical1_y_net_x3,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x4,
      of_x0 => logical1_y_net_x12,
      out1 => concat_y_net_x33,
      out2 => concat_y_net_x34,
      sync_out => sync_delay_q_net_x14
    );

  fft_stage_1_d61c5478a5: entity work.fft_stage_1_entity_d61c5478a5
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x31,
      in2 => concat_y_net_x32,
      of_in => constant_op_net_x0,
      shift => shift_net_x11,
      sync => sync_net_x1,
      of_x0 => logical1_y_net_x1,
      out1 => concat_y_net_x7,
      out2 => concat_y_net_x9,
      sync_out => sync_delay_q_net_x2
    );

  fft_stage_2_c642f0c1ce: entity work.fft_stage_2_entity_c642f0c1ce
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x7,
      in2 => concat_y_net_x9,
      of_in => logical1_y_net_x1,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x2,
      of_x0 => logical1_y_net_x4,
      out1 => concat_y_net_x15,
      out2 => concat_y_net_x16,
      sync_out => sync_delay_q_net_x6
    );

  fft_stage_3_273a1cd05b: entity work.fft_stage_3_entity_273a1cd05b
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x15,
      in2 => concat_y_net_x16,
      of_in => logical1_y_net_x4,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x6,
      of_x0 => logical1_y_net_x5,
      out1 => concat_y_net_x5,
      out2 => concat_y_net_x17,
      sync_out => sync_delay_q_net_x7
    );

  fft_stage_4_171e508cf3: entity work.fft_stage_4_entity_171e508cf3
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x5,
      in2 => concat_y_net_x17,
      of_in => logical1_y_net_x5,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x7,
      of_x0 => logical1_y_net_x6,
      out1 => concat_y_net_x18,
      out2 => concat_y_net_x19,
      sync_out => sync_delay_q_net_x8
    );

  fft_stage_5_47f5cf444b: entity work.fft_stage_5_entity_47f5cf444b
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x18,
      in2 => concat_y_net_x19,
      of_in => logical1_y_net_x6,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x8,
      of_x0 => logical1_y_net_x7,
      out1 => concat_y_net_x20,
      out2 => concat_y_net_x21,
      sync_out => sync_delay_q_net_x9
    );

  fft_stage_6_3379c864c6: entity work.fft_stage_6_entity_3379c864c6
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x20,
      in2 => concat_y_net_x21,
      of_in => logical1_y_net_x7,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x9,
      of_x0 => logical1_y_net_x8,
      out1 => concat_y_net_x22,
      out2 => concat_y_net_x23,
      sync_out => sync_delay_q_net_x10
    );

  fft_stage_7_5a026dd4c1: entity work.fft_stage_7_entity_5a026dd4c1
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x22,
      in2 => concat_y_net_x23,
      of_in => logical1_y_net_x8,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x10,
      of_x0 => logical1_y_net_x9,
      out1 => concat_y_net_x24,
      out2 => concat_y_net_x25,
      sync_out => sync_delay_q_net_x11
    );

  fft_stage_8_2810ce8864: entity work.fft_stage_8_entity_2810ce8864
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x24,
      in2 => concat_y_net_x25,
      of_in => logical1_y_net_x9,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x11,
      of_x0 => logical1_y_net_x10,
      out1 => concat_y_net_x26,
      out2 => concat_y_net_x27,
      sync_out => sync_delay_q_net_x12
    );

  fft_stage_9_30f5b66e54: entity work.fft_stage_9_entity_30f5b66e54
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      in1 => concat_y_net_x26,
      in2 => concat_y_net_x27,
      of_in => logical1_y_net_x10,
      shift => shift_net_x11,
      sync => sync_delay_q_net_x12,
      of_x0 => logical1_y_net_x11,
      out1 => concat_y_net_x28,
      out2 => concat_y_net_x29,
      sync_out => sync_delay_q_net_x13
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core/fft_biplex_real_2x"

entity fft_biplex_real_2x_entity_a05e7a283b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1: in std_logic_vector(17 downto 0); 
    pol2: in std_logic_vector(17 downto 0); 
    pol3: in std_logic_vector(17 downto 0); 
    pol4: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    of_x0: out std_logic; 
    pol12_out: out std_logic_vector(35 downto 0); 
    pol34_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_biplex_real_2x_entity_a05e7a283b;

architecture structural of fft_biplex_real_2x_entity_a05e7a283b is
  signal ce_1_sg_x192: std_logic;
  signal clk_1_sg_x192: std_logic;
  signal concat_y_net_x10: std_logic_vector(35 downto 0);
  signal concat_y_net_x32: std_logic_vector(35 downto 0);
  signal concat_y_net_x33: std_logic_vector(35 downto 0);
  signal concat_y_net_x34: std_logic_vector(35 downto 0);
  signal concat_y_net_x35: std_logic_vector(35 downto 0);
  signal concat_y_net_x9: std_logic_vector(35 downto 0);
  signal logical1_y_net_x13: std_logic;
  signal pol0_net_x1: std_logic_vector(17 downto 0);
  signal pol1_net_x1: std_logic_vector(17 downto 0);
  signal pol2_net_x1: std_logic_vector(17 downto 0);
  signal pol3_net_x1: std_logic_vector(17 downto 0);
  signal shift_net_x12: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x1: std_logic;
  signal sync_delay_q_net_x14: std_logic;
  signal sync_net_x2: std_logic;

begin
  ce_1_sg_x192 <= ce_1;
  clk_1_sg_x192 <= clk_1;
  pol0_net_x1 <= pol1;
  pol1_net_x1 <= pol2;
  pol2_net_x1 <= pol3;
  pol3_net_x1 <= pol4;
  shift_net_x12 <= shift;
  sync_net_x2 <= sync;
  of_x0 <= logical1_y_net_x13;
  pol12_out <= concat_y_net_x9;
  pol34_out <= concat_y_net_x10;
  sync_out <= sync_delay_q_net_x1;

  bi_real_unscr_2x_cf42a9c4ad: entity work.bi_real_unscr_2x_entity_cf42a9c4ad
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      even => concat_y_net_x33,
      odd => concat_y_net_x34,
      sync => sync_delay_q_net_x14,
      pol12_out => concat_y_net_x9,
      pol34_out => concat_y_net_x10,
      sync_out => sync_delay_q_net_x1
    );

  biplex_core_28c4ebd84d: entity work.biplex_core_entity_28c4ebd84d
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      pol1 => concat_y_net_x32,
      pol2 => concat_y_net_x35,
      shift => shift_net_x12,
      sync => sync_net_x2,
      of_x0 => logical1_y_net_x13,
      out1 => concat_y_net_x33,
      out2 => concat_y_net_x34,
      sync_out => sync_delay_q_net_x14
    );

  ri_to_c0_ec841c85fc: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => pol1_net_x1,
      re => pol0_net_x1,
      c => concat_y_net_x32
    );

  ri_to_c1_6ee79a4188: entity work.ri_to_c0_entity_6d1b5a34aa
    port map (
      im => pol3_net_x1,
      re => pol2_net_x1,
      c => concat_y_net_x35
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "fft_1024ch_core"

entity fft_1024ch_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol0: in std_logic_vector(17 downto 0); 
    pol1: in std_logic_vector(17 downto 0); 
    pol2: in std_logic_vector(17 downto 0); 
    pol3: in std_logic_vector(17 downto 0); 
    shift: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    oflow: out std_logic; 
    pol02_out: out std_logic_vector(35 downto 0); 
    pol13_out: out std_logic_vector(35 downto 0); 
    sync_out: out std_logic
  );
end fft_1024ch_core;

architecture structural of fft_1024ch_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "fft_1024ch_core,sysgen_core,{clock_period=100.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=3560,xilinx_adder_subtracter_block=62,xilinx_arithmetic_relational_operator_block=27,xilinx_bit_slice_extractor_block=402,xilinx_bitbasher_block=1,xilinx_bus_concatenator_block=127,xilinx_bus_multiplexer_block=84,xilinx_constant_block_block=250,xilinx_counter_block=47,xilinx_delay_block=99,xilinx_dsp48e_block=24,xilinx_gateway_in_block=6,xilinx_gateway_out_block=6,xilinx_input_scaler_block=48,xilinx_inverter_block=160,xilinx_logical_block_block=215,xilinx_multiplier_block=36,xilinx_negate_block_block=1,xilinx_single_port_random_access_memory_block=12,xilinx_single_port_read_only_memory_block=20,xilinx_system_generator_block=1,xilinx_type_converter_block=167,xilinx_type_reinterpreter_block=484,xilinx_wavescope_block=1,}";

  signal ce_1_sg_x193: std_logic;
  signal clk_1_sg_x193: std_logic;
  signal oflow_net: std_logic;
  signal pol02_out_net: std_logic_vector(35 downto 0);
  signal pol0_net: std_logic_vector(17 downto 0);
  signal pol13_out_net: std_logic_vector(35 downto 0);
  signal pol1_net: std_logic_vector(17 downto 0);
  signal pol2_net: std_logic_vector(17 downto 0);
  signal pol3_net: std_logic_vector(17 downto 0);
  signal shift_net: std_logic_vector(15 downto 0);
  signal sync_net: std_logic;
  signal sync_out_net: std_logic;

begin
  ce_1_sg_x193 <= ce_1;
  clk_1_sg_x193 <= clk_1;
  pol0_net <= pol0;
  pol1_net <= pol1;
  pol2_net <= pol2;
  pol3_net <= pol3;
  shift_net <= shift;
  sync_net <= sync;
  oflow <= oflow_net;
  pol02_out <= pol02_out_net;
  pol13_out <= pol13_out_net;
  sync_out <= sync_out_net;

  fft_biplex_real_2x_a05e7a283b: entity work.fft_biplex_real_2x_entity_a05e7a283b
    port map (
      ce_1 => ce_1_sg_x193,
      clk_1 => clk_1_sg_x193,
      pol1 => pol0_net,
      pol2 => pol1_net,
      pol3 => pol2_net,
      pol4 => pol3_net,
      shift => shift_net,
      sync => sync_net,
      of_x0 => oflow_net,
      pol12_out => pol02_out_net,
      pol34_out => pol13_out_net,
      sync_out => sync_out_net
    );

end structural;
