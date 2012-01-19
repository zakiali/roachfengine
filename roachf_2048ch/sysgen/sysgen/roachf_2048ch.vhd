--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_2e9321d80be8bb8a.vhd when simulating
-- the core, mlt_11_2_2e9321d80be8bb8a. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_2e9321d80be8bb8a IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(7 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(15 downto 0));
END mlt_11_2_2e9321d80be8bb8a;

ARCHITECTURE mlt_11_2_2e9321d80be8bb8a_a OF mlt_11_2_2e9321d80be8bb8a IS
-- synthesis translate_off
component wrapped_mlt_11_2_2e9321d80be8bb8a
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(7 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_2e9321d80be8bb8a use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 8,
			c_b_type => 0,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 15,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 0,
			c_out_low => 0,
			c_b_width => 8,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_2e9321d80be8bb8a
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_2e9321d80be8bb8a_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_9b19b69f1946892e.vhd when simulating
-- the core, cntr_11_0_9b19b69f1946892e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_9b19b69f1946892e IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
END cntr_11_0_9b19b69f1946892e;

ARCHITECTURE cntr_11_0_9b19b69f1946892e_a OF cntr_11_0_9b19b69f1946892e IS
-- synthesis translate_off
component wrapped_cntr_11_0_9b19b69f1946892e
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_9b19b69f1946892e use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 16,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_9b19b69f1946892e
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_9b19b69f1946892e_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_a26a02e5fda52d58.vhd when simulating
-- the core, cntr_11_0_a26a02e5fda52d58. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_a26a02e5fda52d58 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(11 downto 0);
	q: OUT std_logic_VECTOR(11 downto 0));
END cntr_11_0_a26a02e5fda52d58;

ARCHITECTURE cntr_11_0_a26a02e5fda52d58_a OF cntr_11_0_a26a02e5fda52d58 IS
-- synthesis translate_off
component wrapped_cntr_11_0_a26a02e5fda52d58
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(11 downto 0);
	q: OUT std_logic_VECTOR(11 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_a26a02e5fda52d58 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 12,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_a26a02e5fda52d58
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_a26a02e5fda52d58_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_ceba1f83ce9d2509.vhd when simulating
-- the core, bmg_33_ceba1f83ce9d2509. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_ceba1f83ce9d2509 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(7 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
END bmg_33_ceba1f83ce9d2509;

ARCHITECTURE bmg_33_ceba1f83ce9d2509_a OF bmg_33_ceba1f83ce9d2509 IS
-- synthesis translate_off
component wrapped_bmg_33_ceba1f83ce9d2509
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(7 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_ceba1f83ce9d2509 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 0,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 8,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 8,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_ceba1f83ce9d2509.mif",
			c_write_mode_a => "READ_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 8,
			c_write_width_a => 8,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_ceba1f83ce9d2509
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta);
-- synthesis translate_on

END bmg_33_ceba1f83ce9d2509_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_dc314b8b6483eda0.vhd when simulating
-- the core, cntr_11_0_dc314b8b6483eda0. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_dc314b8b6483eda0 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(1 downto 0));
END cntr_11_0_dc314b8b6483eda0;

ARCHITECTURE cntr_11_0_dc314b8b6483eda0_a OF cntr_11_0_dc314b8b6483eda0 IS
-- synthesis translate_off
component wrapped_cntr_11_0_dc314b8b6483eda0
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(1 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_dc314b8b6483eda0 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 1,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 2,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_dc314b8b6483eda0
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_dc314b8b6483eda0_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_39c11ed0260a265a.vhd when simulating
-- the core, cntr_11_0_39c11ed0260a265a. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_39c11ed0260a265a IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(16 downto 0));
END cntr_11_0_39c11ed0260a265a;

ARCHITECTURE cntr_11_0_39c11ed0260a265a_a OF cntr_11_0_39c11ed0260a265a IS
-- synthesis translate_off
component wrapped_cntr_11_0_39c11ed0260a265a
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(16 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_39c11ed0260a265a use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 17,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_39c11ed0260a265a
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_39c11ed0260a265a_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_3e48e6bb94d6d577.vhd when simulating
-- the core, cntr_11_0_3e48e6bb94d6d577. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_3e48e6bb94d6d577 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(15 downto 0);
	q: OUT std_logic_VECTOR(15 downto 0));
END cntr_11_0_3e48e6bb94d6d577;

ARCHITECTURE cntr_11_0_3e48e6bb94d6d577_a OF cntr_11_0_3e48e6bb94d6d577 IS
-- synthesis translate_off
component wrapped_cntr_11_0_3e48e6bb94d6d577
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(15 downto 0);
	q: OUT std_logic_VECTOR(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_3e48e6bb94d6d577 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 1,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 16,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_3e48e6bb94d6d577
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_3e48e6bb94d6d577_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file dmg_43_7b326199bbc0575c.vhd when simulating
-- the core, dmg_43_7b326199bbc0575c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY dmg_43_7b326199bbc0575c IS
	port (
	a: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	qspo_ce: IN std_logic;
	qspo: OUT std_logic_VECTOR(7 downto 0));
END dmg_43_7b326199bbc0575c;

ARCHITECTURE dmg_43_7b326199bbc0575c_a OF dmg_43_7b326199bbc0575c IS
-- synthesis translate_off
component wrapped_dmg_43_7b326199bbc0575c
	port (
	a: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	qspo_ce: IN std_logic;
	qspo: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_dmg_43_7b326199bbc0575c use entity XilinxCoreLib.dist_mem_gen_v4_3(behavioral)
		generic map(
			c_has_clk => 1,
			c_has_qdpo_clk => 0,
			c_has_qdpo_ce => 0,
			c_parser_type => 1,
			c_has_d => 0,
			c_has_spo => 0,
			c_read_mif => 1,
			c_has_qspo => 1,
			c_width => 8,
			c_reg_a_d_inputs => 0,
			c_has_we => 0,
			c_pipeline_stages => 0,
			c_has_qdpo_rst => 0,
			c_reg_dpra_input => 0,
			c_qualify_we => 0,
			c_family => "virtex5",
			c_sync_enable => 1,
			c_depth => 256,
			c_has_qspo_srst => 0,
			c_has_qdpo_srst => 0,
			c_has_dpra => 0,
			c_qce_joined => 0,
			c_mem_type => 0,
			c_has_i_ce => 0,
			c_has_dpo => 0,
			c_mem_init_file => "dmg_43_7b326199bbc0575c.mif",
			c_default_data => "0",
			c_has_spra => 0,
			c_has_qspo_ce => 1,
			c_addr_width => 8,
			c_has_qspo_rst => 0,
			c_has_qdpo => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_dmg_43_7b326199bbc0575c
		port map (
			a => a,
			clk => clk,
			qspo_ce => qspo_ce,
			qspo => qspo);
-- synthesis translate_on

END dmg_43_7b326199bbc0575c_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file fifo_fg53_e01c93fed44dafc4.vhd when simulating
-- the core, fifo_fg53_e01c93fed44dafc4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fifo_fg53_e01c93fed44dafc4 IS
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(65 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(65 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(11 downto 0);
	prog_full: OUT std_logic;
	prog_empty: OUT std_logic);
END fifo_fg53_e01c93fed44dafc4;

ARCHITECTURE fifo_fg53_e01c93fed44dafc4_a OF fifo_fg53_e01c93fed44dafc4 IS
-- synthesis translate_off
component wrapped_fifo_fg53_e01c93fed44dafc4
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(65 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(65 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(11 downto 0);
	prog_full: OUT std_logic;
	prog_empty: OUT std_logic);
end component;

-- Configuration specification 
	for all : wrapped_fifo_fg53_e01c93fed44dafc4 use entity XilinxCoreLib.fifo_generator_v5_3(behavioral)
		generic map(
			c_has_int_clk => 0,
			c_wr_response_latency => 1,
			c_rd_freq => 1,
			c_has_srst => 0,
			c_enable_rst_sync => 1,
			c_has_rd_data_count => 0,
			c_din_width => 66,
			c_has_wr_data_count => 0,
			c_full_flags_rst_val => 0,
			c_implementation_type => 0,
			c_family => "virtex5",
			c_use_embedded_reg => 0,
			c_has_wr_rst => 0,
			c_wr_freq => 1,
			c_use_dout_rst => 0,
			c_underflow_low => 0,
			c_has_meminit_file => 0,
			c_has_overflow => 0,
			c_preload_latency => 1,
			c_dout_width => 66,
			c_msgon_val => 1,
			c_rd_depth => 4096,
			c_default_value => "BlankString",
			c_mif_file_name => "BlankString",
			c_error_injection_type => 0,
			c_has_underflow => 0,
			c_has_rd_rst => 0,
			c_has_almost_full => 0,
			c_has_rst => 0,
			c_data_count_width => 12,
			c_has_wr_ack => 0,
			c_use_ecc => 0,
			c_wr_ack_low => 0,
			c_common_clock => 1,
			c_rd_pntr_width => 12,
			c_use_fwft_data_count => 0,
			c_has_almost_empty => 0,
			c_rd_data_count_width => 12,
			c_enable_rlocs => 0,
			c_wr_pntr_width => 12,
			c_overflow_low => 0,
			c_prog_empty_type => 1,
			c_optimization_mode => 0,
			c_wr_data_count_width => 12,
			c_preload_regs => 0,
			c_dout_rst_val => "0",
			c_has_data_count => 1,
			c_prog_full_thresh_negate_val => 3799,
			c_wr_depth => 4096,
			c_prog_empty_thresh_negate_val => 501,
			c_prog_empty_thresh_assert_val => 500,
			c_has_valid => 0,
			c_init_wr_pntr_val => 0,
			c_prog_full_thresh_assert_val => 3800,
			c_use_fifo16_flags => 0,
			c_has_backup => 0,
			c_valid_low => 0,
			c_prim_fifo_type => "4kx9",
			c_count_type => 0,
			c_prog_full_type => 1,
			c_memory_type => 1);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fifo_fg53_e01c93fed44dafc4
		port map (
			clk => clk,
			din => din,
			wr_en => wr_en,
			rd_en => rd_en,
			dout => dout,
			full => full,
			empty => empty,
			data_count => data_count,
			prog_full => prog_full,
			prog_empty => prog_empty);
-- synthesis translate_on

END fifo_fg53_e01c93fed44dafc4_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_87d335e994d59139.vhd when simulating
-- the core, cntr_11_0_87d335e994d59139. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_87d335e994d59139 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(31 downto 0));
END cntr_11_0_87d335e994d59139;

ARCHITECTURE cntr_11_0_87d335e994d59139_a OF cntr_11_0_87d335e994d59139 IS
-- synthesis translate_off
component wrapped_cntr_11_0_87d335e994d59139
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_87d335e994d59139 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 32,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_87d335e994d59139
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_87d335e994d59139_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_8b305ccf84a90afe.vhd when simulating
-- the core, cntr_11_0_8b305ccf84a90afe. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_8b305ccf84a90afe IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
END cntr_11_0_8b305ccf84a90afe;

ARCHITECTURE cntr_11_0_8b305ccf84a90afe_a OF cntr_11_0_8b305ccf84a90afe IS
-- synthesis translate_off
component wrapped_cntr_11_0_8b305ccf84a90afe
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_8b305ccf84a90afe use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 8,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_8b305ccf84a90afe
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_8b305ccf84a90afe_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file fifo_fg53_e06690cdbc1dc7ca.vhd when simulating
-- the core, fifo_fg53_e06690cdbc1dc7ca. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fifo_fg53_e06690cdbc1dc7ca IS
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(31 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(31 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(5 downto 0));
END fifo_fg53_e06690cdbc1dc7ca;

ARCHITECTURE fifo_fg53_e06690cdbc1dc7ca_a OF fifo_fg53_e06690cdbc1dc7ca IS
-- synthesis translate_off
component wrapped_fifo_fg53_e06690cdbc1dc7ca
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(31 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(31 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(5 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fifo_fg53_e06690cdbc1dc7ca use entity XilinxCoreLib.fifo_generator_v5_3(behavioral)
		generic map(
			c_has_int_clk => 0,
			c_wr_response_latency => 1,
			c_rd_freq => 1,
			c_has_srst => 0,
			c_enable_rst_sync => 1,
			c_has_rd_data_count => 0,
			c_din_width => 32,
			c_has_wr_data_count => 0,
			c_full_flags_rst_val => 0,
			c_implementation_type => 0,
			c_family => "virtex5",
			c_use_embedded_reg => 0,
			c_has_wr_rst => 0,
			c_wr_freq => 1,
			c_use_dout_rst => 0,
			c_underflow_low => 0,
			c_has_meminit_file => 0,
			c_has_overflow => 0,
			c_preload_latency => 1,
			c_dout_width => 32,
			c_msgon_val => 1,
			c_rd_depth => 64,
			c_default_value => "BlankString",
			c_mif_file_name => "BlankString",
			c_error_injection_type => 0,
			c_has_underflow => 0,
			c_has_rd_rst => 0,
			c_has_almost_full => 0,
			c_has_rst => 0,
			c_data_count_width => 6,
			c_has_wr_ack => 0,
			c_use_ecc => 0,
			c_wr_ack_low => 0,
			c_common_clock => 1,
			c_rd_pntr_width => 6,
			c_use_fwft_data_count => 0,
			c_has_almost_empty => 0,
			c_rd_data_count_width => 6,
			c_enable_rlocs => 0,
			c_wr_pntr_width => 6,
			c_overflow_low => 0,
			c_prog_empty_type => 0,
			c_optimization_mode => 0,
			c_wr_data_count_width => 6,
			c_preload_regs => 0,
			c_dout_rst_val => "0",
			c_has_data_count => 1,
			c_prog_full_thresh_negate_val => 61,
			c_wr_depth => 64,
			c_prog_empty_thresh_negate_val => 3,
			c_prog_empty_thresh_assert_val => 2,
			c_has_valid => 0,
			c_init_wr_pntr_val => 0,
			c_prog_full_thresh_assert_val => 62,
			c_use_fifo16_flags => 0,
			c_has_backup => 0,
			c_valid_low => 0,
			c_prim_fifo_type => "512x36",
			c_count_type => 0,
			c_prog_full_type => 0,
			c_memory_type => 1);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fifo_fg53_e06690cdbc1dc7ca
		port map (
			clk => clk,
			din => din,
			wr_en => wr_en,
			rd_en => rd_en,
			dout => dout,
			full => full,
			empty => empty,
			data_count => data_count);
-- synthesis translate_on

END fifo_fg53_e06690cdbc1dc7ca_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_05e2750227d8d748.vhd when simulating
-- the core, cntr_11_0_05e2750227d8d748. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_05e2750227d8d748 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(27 downto 0));
END cntr_11_0_05e2750227d8d748;

ARCHITECTURE cntr_11_0_05e2750227d8d748_a OF cntr_11_0_05e2750227d8d748 IS
-- synthesis translate_off
component wrapped_cntr_11_0_05e2750227d8d748
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(27 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_05e2750227d8d748 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 28,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_05e2750227d8d748
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_05e2750227d8d748_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_e4cac21e8ed012aa.vhd when simulating
-- the core, bmg_33_e4cac21e8ed012aa. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_e4cac21e8ed012aa IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
END bmg_33_e4cac21e8ed012aa;

ARCHITECTURE bmg_33_e4cac21e8ed012aa_a OF bmg_33_e4cac21e8ed012aa IS
-- synthesis translate_off
component wrapped_bmg_33_e4cac21e8ed012aa
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_e4cac21e8ed012aa use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 8,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 8,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_e4cac21e8ed012aa.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 8,
			c_write_width_a => 8,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_e4cac21e8ed012aa
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_e4cac21e8ed012aa_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_ea646125a4d80bcf.vhd when simulating
-- the core, bmg_33_ea646125a4d80bcf. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_ea646125a4d80bcf IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(64 downto 0);
	douta: OUT std_logic_VECTOR(64 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(10 downto 0);
	dinb: IN std_logic_VECTOR(64 downto 0);
	doutb: OUT std_logic_VECTOR(64 downto 0));
END bmg_33_ea646125a4d80bcf;

ARCHITECTURE bmg_33_ea646125a4d80bcf_a OF bmg_33_ea646125a4d80bcf IS
-- synthesis translate_off
component wrapped_bmg_33_ea646125a4d80bcf
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(10 downto 0);
	dina: IN std_logic_VECTOR(64 downto 0);
	douta: OUT std_logic_VECTOR(64 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(10 downto 0);
	dinb: IN std_logic_VECTOR(64 downto 0);
	doutb: OUT std_logic_VECTOR(64 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_ea646125a4d80bcf use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 2,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 65,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 65,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "READ_FIRST",
			c_init_file_name => "bmg_33_ea646125a4d80bcf.mif",
			c_write_mode_a => "READ_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 0,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 65,
			c_write_width_a => 65,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 1,
			c_wea_width => 1,
			c_has_enb => 1,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_ea646125a4d80bcf
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta,
			clkb => clkb,
			enb => enb,
			web => web,
			addrb => addrb,
			dinb => dinb,
			doutb => doutb);
-- synthesis translate_on

END bmg_33_ea646125a4d80bcf_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_29076546cca80226.vhd when simulating
-- the core, cntr_11_0_29076546cca80226. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_29076546cca80226 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(11 downto 0));
END cntr_11_0_29076546cca80226;

ARCHITECTURE cntr_11_0_29076546cca80226_a OF cntr_11_0_29076546cca80226 IS
-- synthesis translate_off
component wrapped_cntr_11_0_29076546cca80226
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(11 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_29076546cca80226 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 12,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_29076546cca80226
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_29076546cca80226_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file fifo_fg53_d5c899ca81df0776.vhd when simulating
-- the core, fifo_fg53_d5c899ca81df0776. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fifo_fg53_d5c899ca81df0776 IS
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(64 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(64 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(10 downto 0);
	prog_full: OUT std_logic;
	prog_empty: OUT std_logic);
END fifo_fg53_d5c899ca81df0776;

ARCHITECTURE fifo_fg53_d5c899ca81df0776_a OF fifo_fg53_d5c899ca81df0776 IS
-- synthesis translate_off
component wrapped_fifo_fg53_d5c899ca81df0776
	port (
	clk: IN std_logic;
	din: IN std_logic_VECTOR(64 downto 0);
	wr_en: IN std_logic;
	rd_en: IN std_logic;
	dout: OUT std_logic_VECTOR(64 downto 0);
	full: OUT std_logic;
	empty: OUT std_logic;
	data_count: OUT std_logic_VECTOR(10 downto 0);
	prog_full: OUT std_logic;
	prog_empty: OUT std_logic);
end component;

-- Configuration specification 
	for all : wrapped_fifo_fg53_d5c899ca81df0776 use entity XilinxCoreLib.fifo_generator_v5_3(behavioral)
		generic map(
			c_has_int_clk => 0,
			c_wr_response_latency => 1,
			c_rd_freq => 1,
			c_has_srst => 0,
			c_enable_rst_sync => 1,
			c_has_rd_data_count => 0,
			c_din_width => 65,
			c_has_wr_data_count => 0,
			c_full_flags_rst_val => 0,
			c_implementation_type => 0,
			c_family => "virtex5",
			c_use_embedded_reg => 0,
			c_has_wr_rst => 0,
			c_wr_freq => 1,
			c_use_dout_rst => 0,
			c_underflow_low => 0,
			c_has_meminit_file => 0,
			c_has_overflow => 0,
			c_preload_latency => 1,
			c_dout_width => 65,
			c_msgon_val => 1,
			c_rd_depth => 2048,
			c_default_value => "BlankString",
			c_mif_file_name => "BlankString",
			c_error_injection_type => 0,
			c_has_underflow => 0,
			c_has_rd_rst => 0,
			c_has_almost_full => 0,
			c_has_rst => 0,
			c_data_count_width => 11,
			c_has_wr_ack => 0,
			c_use_ecc => 0,
			c_wr_ack_low => 0,
			c_common_clock => 1,
			c_rd_pntr_width => 11,
			c_use_fwft_data_count => 0,
			c_has_almost_empty => 0,
			c_rd_data_count_width => 11,
			c_enable_rlocs => 0,
			c_wr_pntr_width => 11,
			c_overflow_low => 0,
			c_prog_empty_type => 1,
			c_optimization_mode => 0,
			c_wr_data_count_width => 11,
			c_preload_regs => 0,
			c_dout_rst_val => "0",
			c_has_data_count => 1,
			c_prog_full_thresh_negate_val => 1649,
			c_wr_depth => 2048,
			c_prog_empty_thresh_negate_val => 68,
			c_prog_empty_thresh_assert_val => 67,
			c_has_valid => 0,
			c_init_wr_pntr_val => 0,
			c_prog_full_thresh_assert_val => 1650,
			c_use_fifo16_flags => 0,
			c_has_backup => 0,
			c_valid_low => 0,
			c_prim_fifo_type => "2kx18",
			c_count_type => 0,
			c_prog_full_type => 1,
			c_memory_type => 1);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fifo_fg53_d5c899ca81df0776
		port map (
			clk => clk,
			din => din,
			wr_en => wr_en,
			rd_en => rd_en,
			dout => dout,
			full => full,
			empty => empty,
			data_count => data_count,
			prog_full => prog_full,
			prog_empty => prog_empty);
-- synthesis translate_on

END fifo_fg53_d5c899ca81df0776_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_f02c881303926bfa.vhd when simulating
-- the core, cntr_11_0_f02c881303926bfa. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_f02c881303926bfa IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(27 downto 0);
	q: OUT std_logic_VECTOR(27 downto 0));
END cntr_11_0_f02c881303926bfa;

ARCHITECTURE cntr_11_0_f02c881303926bfa_a OF cntr_11_0_f02c881303926bfa IS
-- synthesis translate_off
component wrapped_cntr_11_0_f02c881303926bfa
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(27 downto 0);
	q: OUT std_logic_VECTOR(27 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_f02c881303926bfa use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 1,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 28,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_f02c881303926bfa
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_f02c881303926bfa_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_c09e2494d7a7b5a4.vhd when simulating
-- the core, bmg_33_c09e2494d7a7b5a4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_c09e2494d7a7b5a4 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(17 downto 0);
	douta: OUT std_logic_VECTOR(17 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(17 downto 0);
	doutb: OUT std_logic_VECTOR(17 downto 0));
END bmg_33_c09e2494d7a7b5a4;

ARCHITECTURE bmg_33_c09e2494d7a7b5a4_a OF bmg_33_c09e2494d7a7b5a4 IS
-- synthesis translate_off
component wrapped_bmg_33_c09e2494d7a7b5a4
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(5 downto 0);
	dina: IN std_logic_VECTOR(17 downto 0);
	douta: OUT std_logic_VECTOR(17 downto 0);
	clkb: IN std_logic;
	enb: IN std_logic;
	web: IN std_logic_VECTOR(0 downto 0);
	addrb: IN std_logic_VECTOR(5 downto 0);
	dinb: IN std_logic_VECTOR(17 downto 0);
	doutb: OUT std_logic_VECTOR(17 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_c09e2494d7a7b5a4 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 2,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 18,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 18,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_c09e2494d7a7b5a4.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 0,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 64,
			c_write_depth_a => 64,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 6,
			c_addrb_width => 6,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 18,
			c_write_width_a => 18,
			c_read_depth_b => 64,
			c_read_depth_a => 64,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 1,
			c_wea_width => 1,
			c_has_enb => 1,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_c09e2494d7a7b5a4
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta,
			clkb => clkb,
			enb => enb,
			web => web,
			addrb => addrb,
			dinb => dinb,
			doutb => doutb);
-- synthesis translate_on

END bmg_33_c09e2494d7a7b5a4_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_2ddf565839052280.vhd when simulating
-- the core, bmg_33_2ddf565839052280. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_2ddf565839052280 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(7 downto 0);
	dina: IN std_logic_VECTOR(31 downto 0);
	douta: OUT std_logic_VECTOR(31 downto 0));
END bmg_33_2ddf565839052280;

ARCHITECTURE bmg_33_2ddf565839052280_a OF bmg_33_2ddf565839052280 IS
-- synthesis translate_off
component wrapped_bmg_33_2ddf565839052280
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	wea: IN std_logic_VECTOR(0 downto 0);
	addra: IN std_logic_VECTOR(7 downto 0);
	dina: IN std_logic_VECTOR(31 downto 0);
	douta: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_2ddf565839052280 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 0,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 32,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 32,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_2ddf565839052280.mif",
			c_write_mode_a => "READ_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 256,
			c_write_depth_a => 256,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 8,
			c_addrb_width => 8,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 32,
			c_write_width_a => 32,
			c_read_depth_b => 256,
			c_read_depth_a => 256,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_2ddf565839052280
		port map (
			clka => clka,
			ena => ena,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta);
-- synthesis translate_on

END bmg_33_2ddf565839052280_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file asr_11_0_372caaa934b22d95.vhd when simulating
-- the core, asr_11_0_372caaa934b22d95. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY asr_11_0_372caaa934b22d95 IS
	port (
	a: IN std_logic_VECTOR(3 downto 0);
	d: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
END asr_11_0_372caaa934b22d95;

ARCHITECTURE asr_11_0_372caaa934b22d95_a OF asr_11_0_372caaa934b22d95 IS
-- synthesis translate_off
component wrapped_asr_11_0_372caaa934b22d95
	port (
	a: IN std_logic_VECTOR(3 downto 0);
	d: IN std_logic_VECTOR(7 downto 0);
	clk: IN std_logic;
	ce: IN std_logic;
	q: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_asr_11_0_372caaa934b22d95 use entity XilinxCoreLib.c_shift_ram_v11_0(behavioral)
		generic map(
			c_parser_type => 1,
			c_read_mif => 1,
			c_has_a => 1,
			c_sync_priority => 1,
			c_opt_goal => 0,
			c_has_sclr => 0,
			c_width => 8,
			c_verbosity => 0,
			c_ainit_val => "00000000",
			c_has_ce => 1,
			c_sync_enable => 0,
			c_depth => 16,
			c_sinit_val => "00000000",
			c_has_sset => 0,
			c_has_sinit => 0,
			c_mem_init_file => "asr_11_0_372caaa934b22d95.mif",
			c_shift_type => 1,
			c_default_data => "00000000",
			c_reg_last_bit => 0,
			c_xdevicefamily => "virtex5",
			c_addr_width => 4);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_372caaa934b22d95
		port map (
			a => a,
			d => d,
			clk => clk,
			ce => ce,
			q => q);
-- synthesis translate_on

END asr_11_0_372caaa934b22d95_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_286e61d5bf87dbe2.vhd when simulating
-- the core, cntr_11_0_286e61d5bf87dbe2. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_286e61d5bf87dbe2 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(62 downto 0));
END cntr_11_0_286e61d5bf87dbe2;

ARCHITECTURE cntr_11_0_286e61d5bf87dbe2_a OF cntr_11_0_286e61d5bf87dbe2 IS
-- synthesis translate_off
component wrapped_cntr_11_0_286e61d5bf87dbe2
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(62 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_286e61d5bf87dbe2 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 63,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_286e61d5bf87dbe2
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_286e61d5bf87dbe2_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_7a62a1023205fc04.vhd when simulating
-- the core, cntr_11_0_7a62a1023205fc04. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_7a62a1023205fc04 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(23 downto 0));
END cntr_11_0_7a62a1023205fc04;

ARCHITECTURE cntr_11_0_7a62a1023205fc04_a OF cntr_11_0_7a62a1023205fc04 IS
-- synthesis translate_off
component wrapped_cntr_11_0_7a62a1023205fc04
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(23 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_7a62a1023205fc04 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 24,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_7a62a1023205fc04
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_7a62a1023205fc04_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_a25ab30f6829c208.vhd when simulating
-- the core, addsb_11_0_a25ab30f6829c208. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_a25ab30f6829c208 IS
	port (
	a: IN std_logic_VECTOR(32 downto 0);
	b: IN std_logic_VECTOR(32 downto 0);
	s: OUT std_logic_VECTOR(32 downto 0));
END addsb_11_0_a25ab30f6829c208;

ARCHITECTURE addsb_11_0_a25ab30f6829c208_a OF addsb_11_0_a25ab30f6829c208 IS
-- synthesis translate_off
component wrapped_addsb_11_0_a25ab30f6829c208
	port (
	a: IN std_logic_VECTOR(32 downto 0);
	b: IN std_logic_VECTOR(32 downto 0);
	s: OUT std_logic_VECTOR(32 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_addsb_11_0_a25ab30f6829c208 use entity XilinxCoreLib.c_addsub_v11_0(behavioral)
		generic map(
			c_a_width => 33,
			c_out_width => 33,
			c_add_mode => 0,
			c_has_c_out => 0,
			c_b_type => 1,
			c_borrow_low => 1,
			c_ce_overrides_sclr => 0,
			c_implementation => 0,
			c_has_sclr => 0,
			c_verbosity => 0,
			c_latency => 0,
			c_has_bypass => 0,
			c_ainit_val => "0",
			c_bypass_low => 0,
			c_has_ce => 0,
			c_sclr_overrides_sset => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_c_in => 0,
			c_has_sinit => 0,
			c_b_constant => 0,
			c_ce_overrides_bypass => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 1,
			c_b_width => 33,
			c_b_value => "000000000000000000000000000000000");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_a25ab30f6829c208
		port map (
			a => a,
			b => b,
			s => s);
-- synthesis translate_on

END addsb_11_0_a25ab30f6829c208_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_8869969bd2303665.vhd when simulating
-- the core, cntr_11_0_8869969bd2303665. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_8869969bd2303665 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(8 downto 0);
	q: OUT std_logic_VECTOR(8 downto 0));
END cntr_11_0_8869969bd2303665;

ARCHITECTURE cntr_11_0_8869969bd2303665_a OF cntr_11_0_8869969bd2303665 IS
-- synthesis translate_off
component wrapped_cntr_11_0_8869969bd2303665
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(8 downto 0);
	q: OUT std_logic_VECTOR(8 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_8869969bd2303665 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 1,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 9,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_8869969bd2303665
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_8869969bd2303665_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_ae406e50e98e0e45.vhd when simulating
-- the core, cntr_11_0_ae406e50e98e0e45. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_ae406e50e98e0e45 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(10 downto 0));
END cntr_11_0_ae406e50e98e0e45;

ARCHITECTURE cntr_11_0_ae406e50e98e0e45_a OF cntr_11_0_ae406e50e98e0e45 IS
-- synthesis translate_off
component wrapped_cntr_11_0_ae406e50e98e0e45
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(10 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_ae406e50e98e0e45 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 11,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_ae406e50e98e0e45
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_ae406e50e98e0e45_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_4c2b84f72036519d.vhd when simulating
-- the core, bmg_33_4c2b84f72036519d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_4c2b84f72036519d IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(8 downto 0));
END bmg_33_4c2b84f72036519d;

ARCHITECTURE bmg_33_4c2b84f72036519d_a OF bmg_33_4c2b84f72036519d IS
-- synthesis translate_off
component wrapped_bmg_33_4c2b84f72036519d
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(8 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_4c2b84f72036519d use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 9,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 9,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_4c2b84f72036519d.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 0,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 9,
			c_write_width_a => 9,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_4c2b84f72036519d
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_4c2b84f72036519d_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_b77d302451b8d8f9.vhd when simulating
-- the core, cntr_11_0_b77d302451b8d8f9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_b77d302451b8d8f9 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(10 downto 0);
	q: OUT std_logic_VECTOR(10 downto 0));
END cntr_11_0_b77d302451b8d8f9;

ARCHITECTURE cntr_11_0_b77d302451b8d8f9_a OF cntr_11_0_b77d302451b8d8f9 IS
-- synthesis translate_off
component wrapped_cntr_11_0_b77d302451b8d8f9
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	load: IN std_logic;
	l: IN std_logic_VECTOR(10 downto 0);
	q: OUT std_logic_VECTOR(10 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_b77d302451b8d8f9 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 11,
			c_verbosity => 0,
			c_has_load => 1,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_b77d302451b8d8f9
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			load => load,
			l => l,
			q => q);
-- synthesis translate_on

END cntr_11_0_b77d302451b8d8f9_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_7082ab16cd93bab0.vhd when simulating
-- the core, cntr_11_0_7082ab16cd93bab0. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_7082ab16cd93bab0 IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(18 downto 0));
END cntr_11_0_7082ab16cd93bab0;

ARCHITECTURE cntr_11_0_7082ab16cd93bab0_a OF cntr_11_0_7082ab16cd93bab0 IS
-- synthesis translate_off
component wrapped_cntr_11_0_7082ab16cd93bab0
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(18 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_7082ab16cd93bab0 use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 19,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_7082ab16cd93bab0
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_7082ab16cd93bab0_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_4766397a2cb82e6c.vhd when simulating
-- the core, cntr_11_0_4766397a2cb82e6c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_4766397a2cb82e6c IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(2 downto 0));
END cntr_11_0_4766397a2cb82e6c;

ARCHITECTURE cntr_11_0_4766397a2cb82e6c_a OF cntr_11_0_4766397a2cb82e6c IS
-- synthesis translate_off
component wrapped_cntr_11_0_4766397a2cb82e6c
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	sinit: IN std_logic;
	q: OUT std_logic_VECTOR(2 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_cntr_11_0_4766397a2cb82e6c use entity XilinxCoreLib.c_counter_binary_v11_0(behavioral)
		generic map(
			c_count_mode => 0,
			c_load_low => 0,
			c_count_to => "1",
			c_implementation => 0,
			c_has_sclr => 0,
			c_ce_overrides_sync => 0,
			c_restrict_count => 0,
			c_width => 3,
			c_verbosity => 0,
			c_has_load => 0,
			c_latency => 1,
			c_has_thresh0 => 0,
			c_ainit_val => "0",
			c_has_ce => 1,
			c_sclr_overrides_sset => 1,
			c_fb_latency => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_sinit => 1,
			c_count_by => "1",
			c_xdevicefamily => "virtex5",
			c_thresh0_value => "1");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_4766397a2cb82e6c
		port map (
			clk => clk,
			ce => ce,
			sinit => sinit,
			q => q);
-- synthesis translate_on

END cntr_11_0_4766397a2cb82e6c_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_33_7de9efda5baafcf4.vhd when simulating
-- the core, bmg_33_7de9efda5baafcf4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_33_7de9efda5baafcf4 IS
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
END bmg_33_7de9efda5baafcf4;

ARCHITECTURE bmg_33_7de9efda5baafcf4_a OF bmg_33_7de9efda5baafcf4 IS
-- synthesis translate_off
component wrapped_bmg_33_7de9efda5baafcf4
	port (
	clka: IN std_logic;
	ena: IN std_logic;
	addra: IN std_logic_VECTOR(10 downto 0);
	douta: OUT std_logic_VECTOR(7 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_bmg_33_7de9efda5baafcf4 use entity XilinxCoreLib.blk_mem_gen_v3_3(behavioral)
		generic map(
			c_has_regceb => 0,
			c_has_regcea => 0,
			c_mem_type => 3,
			c_rstram_b => 0,
			c_rstram_a => 0,
			c_has_injecterr => 0,
			c_rst_type => "SYNC",
			c_prim_type => 1,
			c_read_width_b => 8,
			c_initb_val => "0",
			c_family => "virtex5",
			c_read_width_a => 8,
			c_disable_warn_bhv_coll => 0,
			c_write_mode_b => "WRITE_FIRST",
			c_init_file_name => "bmg_33_7de9efda5baafcf4.mif",
			c_write_mode_a => "WRITE_FIRST",
			c_mux_pipeline_stages => 0,
			c_has_mem_output_regs_b => 0,
			c_has_mem_output_regs_a => 1,
			c_load_init_file => 1,
			c_xdevicefamily => "virtex5",
			c_write_depth_b => 2048,
			c_write_depth_a => 2048,
			c_has_rstb => 0,
			c_has_rsta => 0,
			c_has_mux_output_regs_b => 0,
			c_inita_val => "0",
			c_has_mux_output_regs_a => 0,
			c_addra_width => 11,
			c_addrb_width => 11,
			c_default_data => "0",
			c_use_ecc => 0,
			c_algorithm => 1,
			c_disable_warn_bhv_range => 0,
			c_write_width_b => 8,
			c_write_width_a => 8,
			c_read_depth_b => 2048,
			c_read_depth_a => 2048,
			c_byte_size => 9,
			c_sim_collision_check => "ALL",
			c_common_clk => 0,
			c_wea_width => 1,
			c_has_enb => 0,
			c_web_width => 1,
			c_has_ena => 1,
			c_use_byte_web => 0,
			c_use_byte_wea => 0,
			c_rst_priority_b => "CE",
			c_rst_priority_a => "CE",
			c_use_default_data => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_33_7de9efda5baafcf4
		port map (
			clka => clka,
			ena => ena,
			addra => addra,
			douta => douta);
-- synthesis translate_on

END bmg_33_7de9efda5baafcf4_a;

--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file mlt_11_2_fb712a1e6f4360e8.vhd when simulating
-- the core, mlt_11_2_fb712a1e6f4360e8. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY mlt_11_2_fb712a1e6f4360e8 IS
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(8 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(16 downto 0));
END mlt_11_2_fb712a1e6f4360e8;

ARCHITECTURE mlt_11_2_fb712a1e6f4360e8_a OF mlt_11_2_fb712a1e6f4360e8 IS
-- synthesis translate_off
component wrapped_mlt_11_2_fb712a1e6f4360e8
	port (
	clk: IN std_logic;
	a: IN std_logic_VECTOR(8 downto 0);
	b: IN std_logic_VECTOR(7 downto 0);
	ce: IN std_logic;
	sclr: IN std_logic;
	p: OUT std_logic_VECTOR(16 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_mlt_11_2_fb712a1e6f4360e8 use entity XilinxCoreLib.mult_gen_v11_2(behavioral)
		generic map(
			c_a_width => 9,
			c_b_type => 0,
			c_ce_overrides_sclr => 1,
			c_has_sclr => 1,
			c_round_pt => 0,
			c_model_type => 0,
			c_out_high => 16,
			c_verbosity => 0,
			c_mult_type => 1,
			c_ccm_imp => 0,
			c_latency => 3,
			c_has_ce => 1,
			c_has_zero_detect => 0,
			c_round_output => 0,
			c_optimize_goal => 1,
			c_xdevicefamily => "virtex5",
			c_a_type => 1,
			c_out_low => 0,
			c_b_width => 8,
			c_b_value => "10000001");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mlt_11_2_fb712a1e6f4360e8
		port map (
			clk => clk,
			a => a,
			b => b,
			ce => ce,
			sclr => sclr,
			p => p);
-- synthesis translate_on

END mlt_11_2_fb712a1e6f4360e8_a;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i           : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    signal real_din, real_dout : real;
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
begin
    -- synopsys translate_off
    -- synopsys translate_on
    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0)
    generate
        reg : synth_reg
            generic map ( width => dout_width,
                          latency => latency)
            port map (i => result,
                      ce => ce,
                      clr => clr,
                      clk => clk,
                      o => dout);
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_54b15613a0 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((66 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_54b15613a0;


architecture behavior of concat_54b15613a0 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal in2_1_31: unsigned((64 - 1) downto 0);
  signal y_2_1_concat: unsigned((66 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_8ec3f4ab23 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_8ec3f4ab23;


architecture behavior of counter_8ec3f4ab23 is
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer := 0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if (reg_retiming = 0) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if (reg_retiming = 1) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.conv_pkg.all;
entity xlfifogen is
  generic (
    core_name0: string := "";
    data_width: integer := -1;
    data_count_width: integer := -1;
    percent_full_width: integer := -1;
    has_ae : integer := 0;
    has_af : integer := 0
  );
  port (
    din: in std_logic_vector(data_width - 1 downto 0);
    we: in std_logic;
    we_ce: in std_logic;
    re: in std_logic;
    re_ce: in std_logic;
    rst: in std_logic;
    en: in std_logic;
    ce: in std_logic;
    clk: in std_logic;
    empty: out std_logic;
    full: out std_logic;
    percent_full: out std_logic_vector(percent_full_width - 1 downto 0);
    dcount: out std_logic_vector(data_count_width - 1 downto 0);
    ae: out std_logic;
    af: out std_logic;
    dout: out std_logic_vector(data_width - 1 downto 0)
  );
end xlfifogen ;
architecture behavior of xlfifogen is
  component fifo_fg53_e01c93fed44dafc4
    port (
      clk: in std_logic;
      din: in std_logic_vector(data_width - 1 downto 0);
      wr_en: in std_logic;
      rd_en: in std_logic;
      dout: out std_logic_vector(data_width - 1 downto 0);
      full: out std_logic;
      empty: out std_logic;
      prog_empty: out std_logic;
      prog_full: out std_logic;
      data_count: out std_logic_vector(data_count_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of fifo_fg53_e01c93fed44dafc4:
    component is true;
  attribute fpga_dont_touch of fifo_fg53_e01c93fed44dafc4:
    component is "true";
  attribute box_type of fifo_fg53_e01c93fed44dafc4:
    component  is "black_box";
  component fifo_fg53_d5c899ca81df0776
    port (
      clk: in std_logic;
      din: in std_logic_vector(data_width - 1 downto 0);
      wr_en: in std_logic;
      rd_en: in std_logic;
      dout: out std_logic_vector(data_width - 1 downto 0);
      full: out std_logic;
      empty: out std_logic;
      prog_empty: out std_logic;
      prog_full: out std_logic;
      data_count: out std_logic_vector(data_count_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of fifo_fg53_d5c899ca81df0776:
    component is true;
  attribute fpga_dont_touch of fifo_fg53_d5c899ca81df0776:
    component is "true";
  attribute box_type of fifo_fg53_d5c899ca81df0776:
    component  is "black_box";
  component fifo_fg53_e06690cdbc1dc7ca
    port (
      clk: in std_logic;
      din: in std_logic_vector(data_width - 1 downto 0);
      wr_en: in std_logic;
      rd_en: in std_logic;
      dout: out std_logic_vector(data_width - 1 downto 0);
      full: out std_logic;
      empty: out std_logic;
      data_count: out std_logic_vector(data_count_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of fifo_fg53_e06690cdbc1dc7ca:
    component is true;
  attribute fpga_dont_touch of fifo_fg53_e06690cdbc1dc7ca:
    component is "true";
  attribute box_type of fifo_fg53_e06690cdbc1dc7ca:
    component  is "black_box";
  signal rd_en: std_logic;
  signal wr_en: std_logic;
  signal srst: std_logic;
  signal core_full: std_logic;
  signal core_dcount: std_logic_vector(data_count_width - 1 downto 0);
begin
  comp0: if ((core_name0 = "fifo_fg53_e01c93fed44dafc4")) generate
    core_instance0: fifo_fg53_e01c93fed44dafc4
      port map (
        clk => clk,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => core_full,
        empty => empty,
        prog_empty => ae,
        prog_full => af,
        data_count => core_dcount
      );
  end generate;
  comp1: if ((core_name0 = "fifo_fg53_d5c899ca81df0776")) generate
    core_instance1: fifo_fg53_d5c899ca81df0776
      port map (
        clk => clk,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => core_full,
        empty => empty,
        prog_empty => ae,
        prog_full => af,
        data_count => core_dcount
      );
  end generate;
  comp2: if ((core_name0 = "fifo_fg53_e06690cdbc1dc7ca")) generate
    core_instance2: fifo_fg53_e06690cdbc1dc7ca
      port map (
        clk => clk,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => core_full,
        empty => empty,
        data_count => core_dcount
      );
  end generate;

  modify_count: process(core_full, core_dcount) is
  begin
    if core_full = '1' then
      percent_full <= (others => '1');
    else
      percent_full <= core_dcount(data_count_width-1 downto data_count_width-percent_full_width);
    end if;
  end process modify_count;

  rd_en <= re and en and re_ce;
  wr_en <= we and en and we_ce;
  full <= core_full;
  srst <= rst and ce;
  dcount <= core_dcount;

  terminate_core_ae: if has_ae /= 1 generate
  begin
    ae <= '0';
  end generate terminate_core_ae;
  terminate_core_af: if has_af /= 1 generate
  begin
    af <= '0';
  end generate terminate_core_af;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_799f62af22 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_799f62af22;


architecture behavior of logical_799f62af22 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_75c298d4bc is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_75c298d4bc;


architecture behavior of constant_75c298d4bc is
begin
  op <= "01111110000000100";
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult;
architecture behavior of xlmult is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mlt_11_2_2e9321d80be8bb8a
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_2e9321d80be8bb8a:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_2e9321d80be8bb8a:
    component is "true";
  attribute box_type of mlt_11_2_2e9321d80be8bb8a:
    component  is "black_box";
  component mlt_11_2_fb712a1e6f4360e8
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mlt_11_2_fb712a1e6f4360e8:
    component is true;
  attribute fpga_dont_touch of mlt_11_2_fb712a1e6f4360e8:
    component is "true";
  attribute box_type of mlt_11_2_fb712a1e6f4360e8:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mlt_11_2_2e9321d80be8bb8a")) generate
    core_instance0: mlt_11_2_2e9321d80be8bb8a
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mlt_11_2_fb712a1e6f4360e8")) generate
    core_instance1: mlt_11_2_fb712a1e6f4360e8
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_93c11c0f86 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_93c11c0f86;


architecture behavior of relational_93c11c0f86 is
  signal a_1_31: signed((16 - 1) downto 0);
  signal b_1_34: unsigned((17 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_22_12: signed((18 - 1) downto 0);
  signal cast_22_17: signed((18 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_22_12 <= s2s_cast(a_1_31, 14, 18, 16);
  cast_22_17 <= u2s_cast(b_1_34, 16, 18, 16);
  result_22_3_rel <= cast_22_12 >= cast_22_17;
  op_mem_32_22_front_din <= result_22_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_19a8cd80c8 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    d4 : in std_logic_vector((1 - 1) downto 0);
    d5 : in std_logic_vector((1 - 1) downto 0);
    d6 : in std_logic_vector((1 - 1) downto 0);
    d7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_19a8cd80c8;


architecture behavior of logical_19a8cd80c8 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal d4_1_36: std_logic;
  signal d5_1_39: std_logic;
  signal d6_1_42: std_logic;
  signal d7_1_45: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  d4_1_36 <= d4(0);
  d5_1_39 <= d5(0);
  d6_1_42 <= d6(0);
  d7_1_45 <= d7(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or d4_1_36 or d5_1_39 or d6_1_42 or d7_1_45;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1a070f1f35 is
  port (
    in0 : in std_logic_vector((4 - 1) downto 0);
    in1 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1a070f1f35;


architecture behavior of concat_1a070f1f35 is
  signal in0_1_23: unsigned((4 - 1) downto 0);
  signal in1_1_27: unsigned((4 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_32afb77cd2 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_32afb77cd2;


architecture behavior of concat_32afb77cd2 is
  signal in0_1_23: boolean;
  signal in1_1_27: boolean;
  signal y_2_1_concat: unsigned((2 - 1) downto 0);
begin
  in0_1_23 <= ((in0) = "1");
  in1_1_27 <= ((in1) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(in0_1_23) & boolean_to_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3ee5f91fcf is
  port (
    op : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3ee5f91fcf;


architecture behavior of constant_3ee5f91fcf is
begin
  op <= "000000000111000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3d1b04c74c is
  port (
    op : out std_logic_vector((27 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3d1b04c74c;


architecture behavior of constant_3d1b04c74c is
begin
  op <= "111111111001000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a3d619979c is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a3d619979c;


architecture behavior of constant_a3d619979c is
begin
  op <= "0111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a629aefb53 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a629aefb53;


architecture behavior of constant_a629aefb53 is
begin
  op <= "1001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_127a315f20 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_127a315f20;


architecture behavior of logical_127a315f20 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (2 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    '0',
    '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(1);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          latency_pipe_5_26(i) <= latency_pipe_5_26(i-1);
        end loop;
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mult_ce1935c401 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mult_ce1935c401;


architecture behavior of mult_ce1935c401 is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: unsigned((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal cast_cast_46_58: signed((19 - 1) downto 0);
  signal mult_46_56: signed((37 - 1) downto 0);
  signal cast_product_46_3_convert: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_unsigned(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_65_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  cast_cast_46_58 <= u2s_cast(b_1_25, 5, 19, 5);
  mult_46_56 <= (a_1_22 * cast_cast_46_58);
  cast_product_46_3_convert <= s2s_cast(mult_46_56, 22, 36, 22);
  op_mem_65_20_front_din <= cast_product_46_3_convert;
  op_mem_65_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9723c3381b is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((4 - 1) downto 0);
    d1 : in std_logic_vector((4 - 1) downto 0);
    d2 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9723c3381b;


architecture behavior of mux_9723c3381b is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((4 - 1) downto 0);
  signal d1_1_27: std_logic_vector((4 - 1) downto 0);
  signal d2_1_30: std_logic_vector((4 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((4 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a0fa0f632 is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a0fa0f632;


architecture behavior of reinterpret_9a0fa0f632 is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_df53fd8fe7 is
  port (
    input_port : in std_logic_vector((4 - 1) downto 0);
    output_port : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_df53fd8fe7;


architecture behavior of reinterpret_df53fd8fe7 is
  signal input_port_1_40: signed((4 - 1) downto 0);
  signal output_port_5_5_force: unsigned((4 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9306b5127f is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9306b5127f;


architecture behavior of reinterpret_9306b5127f is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5fd910f16d is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5fd910f16d;


architecture behavior of relational_5fd910f16d is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((27 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_18_16: signed((36 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_18_16 <= s2s_cast(b_1_34, 18, 36, 22);
  result_18_3_rel <= a_1_31 > cast_18_16;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_ec7072e854 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((27 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_ec7072e854;


architecture behavior of relational_ec7072e854 is
  signal a_1_31: signed((36 - 1) downto 0);
  signal b_1_34: signed((27 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_16_16: signed((36 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_16_16 <= s2s_cast(b_1_34, 18, 36, 22);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_95b0f967bc is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_95b0f967bc;


architecture behavior of constant_95b0f967bc is
begin
  op <= "000000000000000000";
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free ;
architecture behavior of xlcounter_free is
  component cntr_11_0_29076546cca80226
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_29076546cca80226:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_29076546cca80226:
    component is "true";
  attribute box_type of cntr_11_0_29076546cca80226:
    component  is "black_box";
  component cntr_11_0_7a62a1023205fc04
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_7a62a1023205fc04:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_7a62a1023205fc04:
    component is "true";
  attribute box_type of cntr_11_0_7a62a1023205fc04:
    component  is "black_box";
  component cntr_11_0_7082ab16cd93bab0
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_7082ab16cd93bab0:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_7082ab16cd93bab0:
    component is "true";
  attribute box_type of cntr_11_0_7082ab16cd93bab0:
    component  is "black_box";
  component cntr_11_0_87d335e994d59139
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_87d335e994d59139:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_87d335e994d59139:
    component is "true";
  attribute box_type of cntr_11_0_87d335e994d59139:
    component  is "black_box";
  component cntr_11_0_a26a02e5fda52d58
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_a26a02e5fda52d58:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_a26a02e5fda52d58:
    component is "true";
  attribute box_type of cntr_11_0_a26a02e5fda52d58:
    component  is "black_box";
  component cntr_11_0_b77d302451b8d8f9
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_b77d302451b8d8f9:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_b77d302451b8d8f9:
    component is "true";
  attribute box_type of cntr_11_0_b77d302451b8d8f9:
    component  is "black_box";
  component cntr_11_0_05e2750227d8d748
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_05e2750227d8d748:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_05e2750227d8d748:
    component is "true";
  attribute box_type of cntr_11_0_05e2750227d8d748:
    component  is "black_box";
  component cntr_11_0_286e61d5bf87dbe2
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_286e61d5bf87dbe2:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_286e61d5bf87dbe2:
    component is "true";
  attribute box_type of cntr_11_0_286e61d5bf87dbe2:
    component  is "black_box";
  component cntr_11_0_f02c881303926bfa
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_f02c881303926bfa:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_f02c881303926bfa:
    component is "true";
  attribute box_type of cntr_11_0_f02c881303926bfa:
    component  is "black_box";
  component cntr_11_0_3e48e6bb94d6d577
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_3e48e6bb94d6d577:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_3e48e6bb94d6d577:
    component is "true";
  attribute box_type of cntr_11_0_3e48e6bb94d6d577:
    component  is "black_box";
  component cntr_11_0_9b19b69f1946892e
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_9b19b69f1946892e:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_9b19b69f1946892e:
    component is "true";
  attribute box_type of cntr_11_0_9b19b69f1946892e:
    component  is "black_box";
  component cntr_11_0_39c11ed0260a265a
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_39c11ed0260a265a:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_39c11ed0260a265a:
    component is "true";
  attribute box_type of cntr_11_0_39c11ed0260a265a:
    component  is "black_box";
  component cntr_11_0_8869969bd2303665
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_8869969bd2303665:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_8869969bd2303665:
    component is "true";
  attribute box_type of cntr_11_0_8869969bd2303665:
    component  is "black_box";
  component cntr_11_0_dc314b8b6483eda0
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_dc314b8b6483eda0:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_dc314b8b6483eda0:
    component is "true";
  attribute box_type of cntr_11_0_dc314b8b6483eda0:
    component  is "black_box";
  component cntr_11_0_8b305ccf84a90afe
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_8b305ccf84a90afe:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_8b305ccf84a90afe:
    component is "true";
  attribute box_type of cntr_11_0_8b305ccf84a90afe:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_29076546cca80226")) generate
    core_instance0: cntr_11_0_29076546cca80226
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_7a62a1023205fc04")) generate
    core_instance1: cntr_11_0_7a62a1023205fc04
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_7082ab16cd93bab0")) generate
    core_instance2: cntr_11_0_7082ab16cd93bab0
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_87d335e994d59139")) generate
    core_instance3: cntr_11_0_87d335e994d59139
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_a26a02e5fda52d58")) generate
    core_instance4: cntr_11_0_a26a02e5fda52d58
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_b77d302451b8d8f9")) generate
    core_instance5: cntr_11_0_b77d302451b8d8f9
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_05e2750227d8d748")) generate
    core_instance6: cntr_11_0_05e2750227d8d748
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp7: if ((core_name0 = "cntr_11_0_286e61d5bf87dbe2")) generate
    core_instance7: cntr_11_0_286e61d5bf87dbe2
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp8: if ((core_name0 = "cntr_11_0_f02c881303926bfa")) generate
    core_instance8: cntr_11_0_f02c881303926bfa
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp9: if ((core_name0 = "cntr_11_0_3e48e6bb94d6d577")) generate
    core_instance9: cntr_11_0_3e48e6bb94d6d577
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp10: if ((core_name0 = "cntr_11_0_9b19b69f1946892e")) generate
    core_instance10: cntr_11_0_9b19b69f1946892e
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp11: if ((core_name0 = "cntr_11_0_39c11ed0260a265a")) generate
    core_instance11: cntr_11_0_39c11ed0260a265a
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp12: if ((core_name0 = "cntr_11_0_8869969bd2303665")) generate
    core_instance12: cntr_11_0_8869969bd2303665
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp13: if ((core_name0 = "cntr_11_0_dc314b8b6483eda0")) generate
    core_instance13: cntr_11_0_dc314b8b6483eda0
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp14: if ((core_name0 = "cntr_11_0_8b305ccf84a90afe")) generate
    core_instance14: cntr_11_0_8b305ccf84a90afe
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xldpram is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram ;
architecture behavior of xldpram is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_33_c09e2494d7a7b5a4
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_33_c09e2494d7a7b5a4:
    component is true;
  attribute fpga_dont_touch of bmg_33_c09e2494d7a7b5a4:
    component is "true";
  attribute box_type of bmg_33_c09e2494d7a7b5a4:
    component  is "black_box";
  component bmg_33_ea646125a4d80bcf
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;
  attribute syn_black_box of bmg_33_ea646125a4d80bcf:
    component is true;
  attribute fpga_dont_touch of bmg_33_ea646125a4d80bcf:
    component is "true";
  attribute box_type of bmg_33_ea646125a4d80bcf:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_33_c09e2494d7a7b5a4")) generate
    core_instance0: bmg_33_c09e2494d7a7b5a4
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  comp1: if ((core_name0 = "bmg_33_ea646125a4d80bcf")) generate
    core_instance1: bmg_33_ea646125a4d80bcf
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a1e126f11c is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a1e126f11c;


architecture behavior of concat_a1e126f11c is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a6d07705dd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a6d07705dd;


architecture behavior of logical_a6d07705dd is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_bdd7f47790 is
  port (
    op : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_bdd7f47790;


architecture behavior of constant_bdd7f47790 is
begin
  op <= "100000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_831189b190 is
  port (
    a : in std_logic_vector((24 - 1) downto 0);
    b : in std_logic_vector((24 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_831189b190;


architecture behavior of relational_831189b190 is
  signal a_1_31: unsigned((24 - 1) downto 0);
  signal b_1_34: unsigned((24 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b713aad2a7 is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b713aad2a7;


architecture behavior of constant_b713aad2a7 is
begin
  op <= "1000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_502d6cf7c0 is
  port (
    a : in std_logic_vector((19 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_502d6cf7c0;


architecture behavior of relational_502d6cf7c0 is
  signal a_1_31: unsigned((19 - 1) downto 0);
  signal b_1_34: unsigned((19 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e18fb31a3d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e18fb31a3d;


architecture behavior of delay_e18fb31a3d is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_39a9232e16 is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((65 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_39a9232e16;


architecture behavior of concat_39a9232e16 is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((64 - 1) downto 0);
  signal y_2_1_concat: unsigned((65 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_6b2b456c91 is
  port (
    d : in std_logic_vector((64 - 1) downto 0);
    q : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_6b2b456c91;


architecture behavior of delay_6b2b456c91 is
  signal d_1_22: std_logic_vector((64 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0000000000000000000000000000000000000000000000000000000000000000",
    "0000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a13f6a2a0 is
  port (
    input_port : in std_logic_vector((64 - 1) downto 0);
    output_port : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a13f6a2a0;


architecture behavior of reinterpret_9a13f6a2a0 is
  signal input_port_1_40: unsigned((64 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e82b2f8c26 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e82b2f8c26;


architecture behavior of logical_e82b2f8c26 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_e77c53f8bd is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_e77c53f8bd;


architecture behavior of logical_e77c53f8bd is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_2147430058 is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_2147430058;


architecture behavior of relational_2147430058 is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d36fe12c1c is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d36fe12c1c;


architecture behavior of relational_d36fe12c1c is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_770e12e4ab is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_770e12e4ab;


architecture behavior of relational_770e12e4ab is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_418a7c3a16 is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_418a7c3a16;


architecture behavior of constant_418a7c3a16 is
begin
  op <= "00000000011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0604807f72 is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0604807f72;


architecture behavior of constant_0604807f72 is
begin
  op <= "10000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_23d71a76f2 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_23d71a76f2;


architecture behavior of delay_23d71a76f2 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_b4b277ae0f is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_b4b277ae0f;


architecture behavior of relational_b4b277ae0f is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a369e00c6b is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a369e00c6b;


architecture behavior of concat_a369e00c6b is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a7e2bb9e12 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7e2bb9e12;


architecture behavior of constant_a7e2bb9e12 is
begin
  op <= "01";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_c53de546ea is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_c53de546ea;


architecture behavior of delay_c53de546ea is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_9f02caa990 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_9f02caa990;


architecture behavior of delay_9f02caa990 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_3f5b23b538 is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_3f5b23b538;


architecture behavior of delay_3f5b23b538 is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_6cb8f0ce02 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_6cb8f0ce02;


architecture behavior of logical_6cb8f0ce02 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_5773759131 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_5773759131;


architecture behavior of logical_5773759131 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_3640e86e6c is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_3640e86e6c;


architecture behavior of logical_3640e86e6c is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_bbdaa33b63 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    d4 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_bbdaa33b63;


architecture behavior of logical_bbdaa33b63 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal d4_1_36: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  d4_1_36 <= d4(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33 and d4_1_36;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_66e06093b2 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((64 - 1) downto 0);
    d1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_66e06093b2;


architecture behavior of mux_66e06093b2 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((64 - 1) downto 0);
  signal d1_1_27: std_logic_vector((64 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((64 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d99e59b6d4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d99e59b6d4;


architecture behavior of mux_d99e59b6d4 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_464c5d53fc is
  port (
    a : in std_logic_vector((48 - 1) downto 0);
    b : in std_logic_vector((48 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_464c5d53fc;


architecture behavior of relational_464c5d53fc is
  signal a_1_31: unsigned((48 - 1) downto 0);
  signal b_1_34: unsigned((48 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_16_3_rel <= a_1_31 < b_1_34;
  op_mem_32_22_front_din <= result_16_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_632978e9ce is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_632978e9ce;


architecture behavior of relational_632978e9ce is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal cast_12_12: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_12 <= u2u_cast(a_1_31, 0, 3, 0);
  result_12_3_rel <= cast_12_12 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xlcounter_limit is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned;
    cnt_63_48: integer:= 0;
    cnt_47_32: integer:= 0;
    cnt_31_16: integer:= 0;
    cnt_15_0: integer:= 0;
    count_limited: integer := 0
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_limit ;
architecture behavior of xlcounter_limit is
  signal high_cnt_to: std_logic_vector(31 downto 0);
  signal low_cnt_to: std_logic_vector(31 downto 0);
  signal cnt_to: std_logic_vector(63 downto 0);
  signal core_sinit, op_thresh0, core_ce: std_logic;
  signal rst_overrides_en: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
  -- synopsys translate_off
  signal real_op : real;
   -- synopsys translate_on
  function equals(op, cnt_to : std_logic_vector; width, arith : integer)
    return std_logic
  is
    variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
    variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
    variable result : std_logic;
  begin
    -- synopsys translate_off
    if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
      result := '0';
      return result;
    end if;
    -- synopsys translate_on
    if (op = cnt_to) then
      result := '1';
    else
      result := '0';
    end if;
    return result;
  end;
  component cntr_11_0_4766397a2cb82e6c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_4766397a2cb82e6c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_4766397a2cb82e6c:
    component is "true";
  attribute box_type of cntr_11_0_4766397a2cb82e6c:
    component  is "black_box";
  component cntr_11_0_ae406e50e98e0e45
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_ae406e50e98e0e45:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_ae406e50e98e0e45:
    component is "true";
  attribute box_type of cntr_11_0_ae406e50e98e0e45:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
begin
  -- synopsys translate_off
  -- synopsys translate_on
  cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
  cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
  cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
  cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
  op <= op_net;
  core_ce <= ce and en(0);
  rst_overrides_en <= rst(0) or en(0);
  limit : if (count_limited = 1) generate
    eq_cnt_to : process (op_net, cnt_to)
    begin
      op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                     op_width, op_arith);
    end process;
    core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  no_limit : if (count_limited = 0) generate
    core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  comp0: if ((core_name0 = "cntr_11_0_4766397a2cb82e6c")) generate
    core_instance0: cntr_11_0_4766397a2cb82e6c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_ae406e50e98e0e45")) generate
    core_instance1: cntr_11_0_ae406e50e98e0e45
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_15f5a81b1f is
  port (
    d : in std_logic_vector((65 - 1) downto 0);
    q : out std_logic_vector((65 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_15f5a81b1f;


architecture behavior of delay_15f5a81b1f is
  signal d_1_22: std_logic_vector((65 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((65 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((65 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((65 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e2d047c154 is
  port (
    d : in std_logic_vector((64 - 1) downto 0);
    q : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e2d047c154;


architecture behavior of delay_e2d047c154 is
  signal d_1_22: std_logic_vector((64 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_5ac5b45345 is
  port (
    in0 : in std_logic_vector((28 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_5ac5b45345;


architecture behavior of concat_5ac5b45345 is
  signal in0_1_23: unsigned((28 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal in3_1_35: boolean;
  signal in4_1_39: boolean;
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  in3_1_35 <= ((in3) = "1");
  in4_1_39 <= ((in4) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31) & boolean_to_vector(in3_1_35) & boolean_to_vector(in4_1_39));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_98b461a391 is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_98b461a391;


architecture behavior of constant_98b461a391 is
begin
  op <= "0000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_f133931c1f is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_f133931c1f;


architecture behavior of concat_f133931c1f is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((25 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_3fb4604c01 is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_3fb4604c01;


architecture behavior of reinterpret_3fb4604c01 is
  signal input_port_1_40: signed((24 - 1) downto 0);
  signal output_port_5_5_force: unsigned((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_2969055f39 is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((21 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_2969055f39;


architecture behavior of addsub_2969055f39 is
  signal a_17_32: signed((25 - 1) downto 0);
  signal b_17_35: unsigned((21 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((26 - 1) downto 0);
  signal cast_69_22: signed((26 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((26 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 21, 26, 21);
  cast_69_22 <= u2s_cast(b_17_35, 21, 26, 21);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 21, 18, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9a2c97cce5 is
  port (
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9a2c97cce5;


architecture behavior of constant_9a2c97cce5 is
begin
  op <= "000000000000000000111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_60ea556961 is
  port (
    input_port : in std_logic_vector((25 - 1) downto 0);
    output_port : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_60ea556961;


architecture behavior of reinterpret_60ea556961 is
  signal input_port_1_40: unsigned((25 - 1) downto 0);
  signal output_port_5_5_force: signed((25 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_299ca43e25 is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_299ca43e25;


architecture behavior of reinterpret_299ca43e25 is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_938d99ac11 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_938d99ac11;


architecture behavior of logical_938d99ac11 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_aa8aa9d15c is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((21 - 1) downto 0);
    d1 : in std_logic_vector((21 - 1) downto 0);
    d2 : in std_logic_vector((21 - 1) downto 0);
    d3 : in std_logic_vector((21 - 1) downto 0);
    y : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_aa8aa9d15c;


architecture behavior of mux_aa8aa9d15c is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((21 - 1) downto 0);
  signal d1_1_27: std_logic_vector((21 - 1) downto 0);
  signal d2_1_30: std_logic_vector((21 - 1) downto 0);
  signal d3_1_33: std_logic_vector((21 - 1) downto 0);
  type array_type_pipe_20_22 is array (0 to (1 - 1)) of std_logic_vector((24 - 1) downto 0);
  signal pipe_20_22: array_type_pipe_20_22 := (
    0 => "000000000000000000000000");
  signal pipe_20_22_front_din: std_logic_vector((24 - 1) downto 0);
  signal pipe_20_22_back: std_logic_vector((24 - 1) downto 0);
  signal pipe_20_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((24 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  pipe_20_22_back <= pipe_20_22(0);
  proc_pipe_20_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_20_22_push_front_pop_back_en = '1')) then
        pipe_20_22(0) <= pipe_20_22_front_din;
      end if;
    end if;
  end process proc_pipe_20_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= cast(d0_1_24, 17, 24, 20, xlSigned);
      when "01" =>
        unregy_join_6_1 <= cast(d1_1_27, 18, 24, 20, xlSigned);
      when "10" =>
        unregy_join_6_1 <= cast(d2_1_30, 19, 24, 20, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d3_1_33, 20, 24, 20, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_20_22_front_din <= unregy_join_6_1;
  pipe_20_22_push_front_pop_back_en <= '1';
  y <= pipe_20_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_fb1609b028 is
  port (
    ip : in std_logic_vector((21 - 1) downto 0);
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_fb1609b028;


architecture behavior of scale_fb1609b028 is
  signal ip_17_23: signed((21 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;

entity fft_core is
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
end fft_core;
library IEEE;
use IEEE.std_logic_1164.all;

entity pfb_fir_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in0: in std_logic_vector(7 downto 0); 
    in1: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    out0: out std_logic_vector(17 downto 0); 
    out1: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_core;

-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub;
architecture behavior of xladdsub is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_a25ab30f6829c208
    port (
          a: in std_logic_vector(33 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(33 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_a25ab30f6829c208:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_a25ab30f6829c208:
    component is "true";
  attribute box_type of addsb_11_0_a25ab30f6829c208:
    component  is "black_box";
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_a25ab30f6829c208")) generate
    core_instance0: addsb_11_0_a25ab30f6829c208
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_f21e7f2ddf is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_f21e7f2ddf;


architecture behavior of reinterpret_f21e7f2ddf is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_c148231f61 is
  port (
    in0 : in std_logic_vector((48 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((4 - 1) downto 0);
    in3 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_c148231f61;


architecture behavior of concat_c148231f61 is
  signal in0_1_23: unsigned((48 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((4 - 1) downto 0);
  signal in3_1_35: unsigned((4 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_62c4475a80 is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_62c4475a80;


architecture behavior of concat_62c4475a80 is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4c449dd556 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4c449dd556;


architecture behavior of constant_4c449dd556 is
begin
  op <= "0000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_672d2b8d1e is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_672d2b8d1e;


architecture behavior of delay_672d2b8d1e is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_d8eaaced1c is
  port (
    d : in std_logic_vector((48 - 1) downto 0);
    q : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_d8eaaced1c;


architecture behavior of delay_d8eaaced1c is
  signal d_1_22: std_logic_vector((48 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_dc8b84fd59 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((64 - 1) downto 0);
    d1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_dc8b84fd59;


architecture behavior of mux_dc8b84fd59 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((64 - 1) downto 0);
  signal d1_1_27: std_logic_vector((64 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((64 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c1bd3afa8c is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c1bd3afa8c;


architecture behavior of constant_c1bd3afa8c is
begin
  op <= "0000000000000000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3afb0a580d is
  port (
    op : out std_logic_vector((28 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3afb0a580d;


architecture behavior of constant_3afb0a580d is
begin
  op <= "1000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1bef4ba0e4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1bef4ba0e4;


architecture behavior of mux_1bef4ba0e4 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_1ea7543d62 is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_1ea7543d62;


architecture behavior of relational_1ea7543d62 is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8759749125 is
  port (
    a : in std_logic_vector((28 - 1) downto 0);
    b : in std_logic_vector((28 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8759749125;


architecture behavior of relational_8759749125 is
  signal a_1_31: unsigned((28 - 1) downto 0);
  signal b_1_34: unsigned((28 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_251f82b86b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_251f82b86b;


architecture behavior of inverter_251f82b86b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (2 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    false,
    false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(1);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_22_20(i) <= op_mem_22_20(i-1);
        end loop;
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c13097e33e is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c13097e33e;


architecture behavior of addsub_c13097e33e is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0");
  signal op_mem_91_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((3 - 1) downto 0);
  signal cast_71_22: signed((3 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((3 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((1 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 1, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_798afc5ec0 is
  port (
    in0 : in std_logic_vector((14 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_798afc5ec0;


architecture behavior of concat_798afc5ec0 is
  signal in0_1_23: unsigned((14 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((15 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_e463a7ff8d is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((15 - 1) downto 0);
    d1 : in std_logic_vector((15 - 1) downto 0);
    y : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_e463a7ff8d;


architecture behavior of mux_e463a7ff8d is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((15 - 1) downto 0);
  signal d1_1_27: std_logic_vector((15 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((15 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_423465bf23 is
  port (
    in0 : in std_logic_vector((4 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    in2 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_423465bf23;


architecture behavior of concat_423465bf23 is
  signal in0_1_23: unsigned((4 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal in2_1_31: unsigned((4 - 1) downto 0);
  signal y_2_1_concat: unsigned((15 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_190a6d2a1a is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_190a6d2a1a;


architecture behavior of constant_190a6d2a1a is
begin
  op <= "0000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f5572ba51 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f5572ba51;


architecture behavior of constant_9f5572ba51 is
begin
  op <= "0000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f334f9895c is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f334f9895c;


architecture behavior of constant_f334f9895c is
begin
  op <= "1000000000000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_7a7af7b80d is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7a7af7b80d;


architecture behavior of relational_7a7af7b80d is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_c203b1da99 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_c203b1da99;


architecture behavior of relational_c203b1da99 is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_286b77e019 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_286b77e019;


architecture behavior of mux_286b77e019 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_087d0a62e6 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((15 - 1) downto 0);
    d1 : in std_logic_vector((15 - 1) downto 0);
    y : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_087d0a62e6;


architecture behavior of mux_087d0a62e6 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((15 - 1) downto 0);
  signal d1_1_27: std_logic_vector((15 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((15 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlspram is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
    );
  port (
    data_in: in std_logic_vector(c_width - 1 downto 0);
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    we: in std_logic_vector(0 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data_out: out std_logic_vector(c_width - 1 downto 0)
  );
end xlspram ;
architecture behavior of xlspram is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_data_out, dly_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_we, core_ce, sinit: std_logic;
  component bmg_33_ceba1f83ce9d2509
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_ceba1f83ce9d2509:
    component is true;
  attribute fpga_dont_touch of bmg_33_ceba1f83ce9d2509:
    component is "true";
  attribute box_type of bmg_33_ceba1f83ce9d2509:
    component  is "black_box";
  component bmg_33_2ddf565839052280
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_2ddf565839052280:
    component is true;
  attribute fpga_dont_touch of bmg_33_2ddf565839052280:
    component is "true";
  attribute box_type of bmg_33_2ddf565839052280:
    component  is "black_box";
begin
  data_out <= dly_data_out;
  core_we <= we(0);
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_33_ceba1f83ce9d2509")) generate
    core_instance0: bmg_33_ceba1f83ce9d2509
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "bmg_33_2ddf565839052280")) generate
    core_instance1: bmg_33_2ddf565839052280
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => dly_data_out
      );
  end generate;
  latency_1: if (latency <= 1) generate
    dly_data_out <= core_data_out;
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_d90e7950ae is
  port (
    in0 : in std_logic_vector((3 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_d90e7950ae;


architecture behavior of concat_d90e7950ae is
  signal in0_1_23: unsigned((3 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((4 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_ca389bcebb is
  port (
    in0 : in std_logic_vector((5 - 1) downto 0);
    in1 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_ca389bcebb;


architecture behavior of concat_ca389bcebb is
  signal in0_1_23: unsigned((5 - 1) downto 0);
  signal in1_1_27: unsigned((11 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_822933f89b is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_822933f89b;


architecture behavior of constant_822933f89b is
begin
  op <= "000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a1c496ea88 is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a1c496ea88;


architecture behavior of constant_a1c496ea88 is
begin
  op <= "001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_1f5cc32f1e is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_1f5cc32f1e;


architecture behavior of constant_1f5cc32f1e is
begin
  op <= "010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0f59f02ba5 is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0f59f02ba5;


architecture behavior of constant_0f59f02ba5 is
begin
  op <= "011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9d682a1165 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9d682a1165;


architecture behavior of mux_9d682a1165 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal d2_1_30: std_logic_vector((32 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_2af8d8c05a is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2af8d8c05a;


architecture behavior of mux_2af8d8c05a is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b4ec9de7d1 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b4ec9de7d1;


architecture behavior of constant_b4ec9de7d1 is
begin
  op <= "000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fd85eb7067 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fd85eb7067;


architecture behavior of constant_fd85eb7067 is
begin
  op <= "000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4a391b9a0e is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4a391b9a0e;


architecture behavior of constant_4a391b9a0e is
begin
  op <= "100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_6c3ee657fa is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_6c3ee657fa;


architecture behavior of relational_6c3ee657fa is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_78eac2928d is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_78eac2928d;


architecture behavior of relational_78eac2928d is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_0b5ddaeff2 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_0b5ddaeff2;


architecture behavior of counter_0b5ddaeff2 is
  signal rst_1_40: boolean;
  signal en_1_45: boolean;
  signal count_reg_20_23: unsigned((10 - 1) downto 0) := "0000000000";
  signal count_reg_20_23_rst: std_logic;
  signal count_reg_20_23_en: std_logic;
  signal rel_34_8: boolean;
  signal rst_limit_join_34_5: boolean;
  signal rst_limit_join_33_3: boolean;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((11 - 1) downto 0);
  signal count_reg_join_44_1_en: std_logic;
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  en_1_45 <= ((en) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0000000000";
      elsif ((ce = '1') and (count_reg_20_23_en = '1')) then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("0000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  rel_34_8 <= count_reg_20_23 = std_logic_vector_to_unsigned("1111111111");
  proc_if_34_5: process (rel_34_8)
  is
  begin
    if rel_34_8 then
      rst_limit_join_34_5 <= true;
    else 
      rst_limit_join_34_5 <= false;
    end if;
  end process proc_if_34_5;
  proc_if_33_3: process (en_1_45, rst_limit_join_34_5)
  is
  begin
    if en_1_45 then
      rst_limit_join_33_3 <= rst_limit_join_34_5;
    else 
      rst_limit_join_33_3 <= false;
    end if;
  end process proc_if_33_3;
  bool_44_4 <= rst_1_40 or rst_limit_join_33_3;
  proc_if_44_1: process (bool_44_4, count_reg_20_23, en_1_45, rst_limit_join_33_3)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    elsif en_1_45 then
      count_reg_join_44_1_rst <= '0';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if en_1_45 then
      count_reg_join_44_1_en <= '1';
    else 
      count_reg_join_44_1_en <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    elsif en_1_45 then
      rst_limit_join_44_1 <= rst_limit_join_33_3;
    else 
      rst_limit_join_44_1 <= rst_limit_join_33_3;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  count_reg_20_23_en <= count_reg_join_44_1_en;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_81f00cece7 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    d2 : in std_logic_vector((8 - 1) downto 0);
    d3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_81f00cece7;


architecture behavior of mux_81f00cece7 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal d2_1_30: std_logic_vector((8 - 1) downto 0);
  signal d3_1_33: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_20_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22: array_type_pipe_20_22 := (
    0 => "00000000");
  signal pipe_20_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_20_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  pipe_20_22_back <= pipe_20_22(0);
  proc_pipe_20_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_20_22_push_front_pop_back_en = '1')) then
        pipe_20_22(0) <= pipe_20_22_front_din;
      end if;
    end if;
  end process proc_pipe_20_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  pipe_20_22_front_din <= unregy_join_6_1;
  pipe_20_22_push_front_pop_back_en <= '1';
  y <= pipe_20_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_423c6c1400 is
  port (
    d : in std_logic_vector((8 - 1) downto 0);
    q : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_423c6c1400;


architecture behavior of delay_423c6c1400 is
  signal d_1_22: std_logic_vector((8 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom_dist is
  generic (
    core_name0: string := "";
    addr_width: integer := 2;
    latency: integer := 0;
    c_width: integer := 12;
    c_address_width: integer := 4
  );
  port (
    addr: in std_logic_vector(addr_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom_dist ;
architecture behavior of xlsprom_dist is
  component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i           : in std_logic_vector(width - 1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width - 1 downto 0));
  end component;
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  constant num_extra_addr_bits: integer := (c_address_width - addr_width);
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_ce: std_logic;
  component dmg_43_7b326199bbc0575c
    port (
      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of dmg_43_7b326199bbc0575c:
    component is true;
  attribute fpga_dont_touch of dmg_43_7b326199bbc0575c:
    component is "true";
  attribute box_type of dmg_43_7b326199bbc0575c:
    component  is "black_box";
begin
  need_to_pad_addr: if num_extra_addr_bits > 0 generate
      core_addr(c_address_width - 1 downto addr_width) <= (others => '0');
    core_addr(addr_width - 1 downto 0) <= addr;
  end generate;
  no_need_to_pad_addr: if num_extra_addr_bits = 0 generate
    core_addr <= addr;
  end generate;
  core_ce <= ce and en(0);
  comp0: if ((core_name0 = "dmg_43_7b326199bbc0575c")) generate
    core_instance0: dmg_43_7b326199bbc0575c
      port map (
        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_0_or_1: if (latency <= 1)
  generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_7f6b7da686 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_7f6b7da686;


architecture behavior of mux_7f6b7da686 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000");
  signal pipe_16_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91ef1678ca is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91ef1678ca;


architecture behavior of constant_91ef1678ca is
begin
  op <= "00000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b437b02512 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b437b02512;


architecture behavior of constant_b437b02512 is
begin
  op <= "00000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_52ae77d946 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_52ae77d946;


architecture behavior of mux_52ae77d946 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_66f3e02bd3 is
  port (
    in0 : in std_logic_vector((17 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_66f3e02bd3;


architecture behavior of concat_66f3e02bd3 is
  signal in0_1_23: unsigned((17 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((18 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_573890e1c0 is
  port (
    input_port : in std_logic_vector((17 - 1) downto 0);
    output_port : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_573890e1c0;


architecture behavior of reinterpret_573890e1c0 is
  signal input_port_1_40: signed((17 - 1) downto 0);
  signal output_port_5_5_force: unsigned((17 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_542df25df6 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    s : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_542df25df6;


architecture behavior of addsub_542df25df6 is
  signal a_17_32: signed((18 - 1) downto 0);
  signal b_17_35: unsigned((11 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((8 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000");
  signal op_mem_91_20_front_din: signed((8 - 1) downto 0);
  signal op_mem_91_20_back: signed((8 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((19 - 1) downto 0);
  signal cast_69_22: signed((19 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((19 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((8 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 11, 19, 11);
  cast_69_22 <= u2s_cast(b_17_35, 11, 19, 11);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 11, 8, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f5d769813d is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f5d769813d;


architecture behavior of constant_f5d769813d is
begin
  op <= "01111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_6b1adb5d55 is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_6b1adb5d55;


architecture behavior of reinterpret_6b1adb5d55 is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_9d76333483 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_9d76333483;


architecture behavior of logical_9d76333483 is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_1e8142cab4 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_1e8142cab4;


architecture behavior of logical_1e8142cab4 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_0fa52c7c40 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_0fa52c7c40;


architecture behavior of logical_0fa52c7c40 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f8d41441cb is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f8d41441cb;


architecture behavior of constant_f8d41441cb is
begin
  op <= "00101011010110110010010100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7a5a41eeb1 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7a5a41eeb1;


architecture behavior of constant_7a5a41eeb1 is
begin
  op <= "11011011100010110000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_a3d6e8e72f is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_a3d6e8e72f;


architecture behavior of shift_a3d6e8e72f is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((39 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 39, 7);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_9c14cd27bd is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_9c14cd27bd;


architecture behavior of shift_9c14cd27bd is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((47 - 1) downto 0);
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 47, 15);
  cast_internal_ip_33_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 32, 0);
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(cast_internal_ip_33_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_f1acd27428 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    d2 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_f1acd27428;


architecture behavior of logical_f1acd27428 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal d2_1_30: std_logic_vector((32 - 1) downto 0);
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => "00000000000000000000000000000000");
  signal latency_pipe_5_26_front_din: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_back: std_logic_vector((32 - 1) downto 0);
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 xor d1_1_27 xor d2_1_30;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= latency_pipe_5_26_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_86a34309e7 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_86a34309e7;


architecture behavior of mux_86a34309e7 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((32 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_79cd191324 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_79cd191324;


architecture behavior of constant_79cd191324 is
begin
  op <= "10001110101111111101000000101000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_82822b2849 is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_82822b2849;


architecture behavior of shift_82822b2849 is
  signal ip_1_23: unsigned((32 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_46_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_33_3_convert: unsigned((32 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_33_3_convert <= u2u_cast(ip_1_23, 1, 32, 0);
  op_mem_46_20_front_din <= cast_internal_ip_33_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_c255d1cf74 is
  port (
    curr : in std_logic_vector((1 - 1) downto 0);
    prev : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_c255d1cf74;


architecture behavior of expr_c255d1cf74 is
  signal curr_1_24: boolean;
  signal prev_1_30: boolean;
  signal bitnot_5_25: boolean;
  signal fulldout_5_2_bit: boolean;
begin
  curr_1_24 <= ((curr) = "1");
  prev_1_30 <= ((prev) = "1");
  bitnot_5_25 <= ((not boolean_to_vector(prev_1_30)) = "1");
  fulldout_5_2_bit <= ((boolean_to_vector(bitnot_5_25) and boolean_to_vector(curr_1_24)) = "1");
  dout <= boolean_to_vector(fulldout_5_2_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity expr_52ec6336d5 is
  port (
    bootstrap : in std_logic_vector((1 - 1) downto 0);
    ld : in std_logic_vector((1 - 1) downto 0);
    ld_ext : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end expr_52ec6336d5;


architecture behavior of expr_52ec6336d5 is
  signal bootstrap_1_24: boolean;
  signal ld_1_35: boolean;
  signal ld_ext_1_39: boolean;
  type array_type_pipe_12_18 is array (0 to (1 - 1)) of boolean;
  signal pipe_12_18: array_type_pipe_12_18 := (
    0 => false);
  signal pipe_12_18_front_din: boolean;
  signal pipe_12_18_back: boolean;
  signal pipe_12_18_push_front_pop_back_en: std_logic;
  signal bit_6_39: boolean;
  signal fulldout_6_2_bit: boolean;
begin
  bootstrap_1_24 <= ((bootstrap) = "1");
  ld_1_35 <= ((ld) = "1");
  ld_ext_1_39 <= ((ld_ext) = "1");
  pipe_12_18_back <= pipe_12_18(0);
  proc_pipe_12_18: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_12_18_push_front_pop_back_en = '1')) then
        pipe_12_18(0) <= pipe_12_18_front_din;
      end if;
    end if;
  end process proc_pipe_12_18;
  bit_6_39 <= ((boolean_to_vector(ld_1_35) or boolean_to_vector(bootstrap_1_24)) = "1");
  fulldout_6_2_bit <= ((boolean_to_vector(ld_ext_1_39) or boolean_to_vector(bit_6_39)) = "1");
  pipe_12_18_front_din <= fulldout_6_2_bit;
  pipe_12_18_push_front_pop_back_en <= '1';
  dout <= boolean_to_vector(pipe_12_18_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity lfsr_49df07576f is
  port (
    din : in std_logic_vector((32 - 1) downto 0);
    load : in std_logic_vector((1 - 1) downto 0);
    dout : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end lfsr_49df07576f;


architecture behavior of lfsr_49df07576f is
  signal din_1_24: unsigned((32 - 1) downto 0);
  signal load_1_28: boolean;
  signal lfsr0_2_19_next: unsigned((1 - 1) downto 0);
  signal lfsr0_2_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr1_3_19_next: unsigned((1 - 1) downto 0);
  signal lfsr1_3_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr2_4_19_next: unsigned((1 - 1) downto 0);
  signal lfsr2_4_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr3_5_19_next: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19: unsigned((1 - 1) downto 0);
  signal lfsr3_5_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr3_5_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_next: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19: unsigned((1 - 1) downto 0);
  signal lfsr4_6_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr4_6_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_next: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19: unsigned((1 - 1) downto 0);
  signal lfsr5_7_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr5_7_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_next: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19: unsigned((1 - 1) downto 0);
  signal lfsr6_8_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr6_8_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr7_9_19_next: unsigned((1 - 1) downto 0);
  signal lfsr7_9_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr8_10_19_next: unsigned((1 - 1) downto 0);
  signal lfsr8_10_19: unsigned((1 - 1) downto 0) := "0";
  signal lfsr9_11_19_next: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19: unsigned((1 - 1) downto 0);
  signal lfsr9_11_19_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr9_11_19_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_next: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20: unsigned((1 - 1) downto 0);
  signal lfsr10_12_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr10_12_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr11_13_20_next: unsigned((1 - 1) downto 0);
  signal lfsr11_13_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr12_14_20_next: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20: unsigned((1 - 1) downto 0);
  signal lfsr12_14_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr12_14_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr13_15_20_next: unsigned((1 - 1) downto 0);
  signal lfsr13_15_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr14_16_20_next: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20: unsigned((1 - 1) downto 0);
  signal lfsr14_16_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr14_16_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr15_17_20_next: unsigned((1 - 1) downto 0);
  signal lfsr15_17_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr16_18_20_next: unsigned((1 - 1) downto 0);
  signal lfsr16_18_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr17_19_20_next: unsigned((1 - 1) downto 0);
  signal lfsr17_19_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr18_20_20_next: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20: unsigned((1 - 1) downto 0);
  signal lfsr18_20_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr18_20_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr19_21_20_next: unsigned((1 - 1) downto 0);
  signal lfsr19_21_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr20_22_20_next: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20: unsigned((1 - 1) downto 0);
  signal lfsr20_22_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr20_22_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_next: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20: unsigned((1 - 1) downto 0);
  signal lfsr21_23_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr21_23_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr22_24_20_next: unsigned((1 - 1) downto 0);
  signal lfsr22_24_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr23_25_20_next: unsigned((1 - 1) downto 0);
  signal lfsr23_25_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr24_26_20_next: unsigned((1 - 1) downto 0);
  signal lfsr24_26_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr25_27_20_next: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20: unsigned((1 - 1) downto 0);
  signal lfsr25_27_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr25_27_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr26_28_20_next: unsigned((1 - 1) downto 0);
  signal lfsr26_28_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr27_29_20_next: unsigned((1 - 1) downto 0);
  signal lfsr27_29_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr28_30_20_next: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20: unsigned((1 - 1) downto 0);
  signal lfsr28_30_20_reg_i: std_logic_vector((1 - 1) downto 0);
  signal lfsr28_30_20_reg_o: std_logic_vector((1 - 1) downto 0);
  signal lfsr29_31_20_next: unsigned((1 - 1) downto 0);
  signal lfsr29_31_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr30_32_20_next: unsigned((1 - 1) downto 0);
  signal lfsr30_32_20: unsigned((1 - 1) downto 0) := "0";
  signal lfsr31_33_20_next: unsigned((1 - 1) downto 0);
  signal lfsr31_33_20: unsigned((1 - 1) downto 0) := "0";
  signal concat_34_26: unsigned((32 - 1) downto 0);
  signal bit_71_41: unsigned((1 - 1) downto 0);
  signal bit_71_28: unsigned((1 - 1) downto 0);
  signal temp_71_1_bit: unsigned((1 - 1) downto 0);
  signal lfsr31_105_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr30_106_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr29_107_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr28_108_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr27_109_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr26_110_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr25_111_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr24_112_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr23_113_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr22_114_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr21_115_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr20_116_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr19_117_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr18_118_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr17_119_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr16_120_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr15_121_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr14_122_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr13_123_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr12_124_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr11_125_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr10_126_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr9_127_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr8_128_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr7_129_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr6_130_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr5_131_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr4_132_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr3_133_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr2_134_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr1_135_1_slice: unsigned((1 - 1) downto 0);
  signal lfsr0_136_1_slice: unsigned((1 - 1) downto 0);
  signal not_70_4: boolean;
  signal lfsr17_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr14_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr1_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr31_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr7_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr5_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr22_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr21_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr29_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr27_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr4_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr20_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr16_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr10_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr28_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr25_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr6_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr13_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr12_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr15_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr8_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr26_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr0_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr23_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr11_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr9_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr24_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr30_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr2_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr3_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr19_join_70_1: unsigned((1 - 1) downto 0);
  signal lfsr18_join_70_1: unsigned((1 - 1) downto 0);
begin
  din_1_24 <= std_logic_vector_to_unsigned(din);
  load_1_28 <= ((load) = "1");
  proc_lfsr0_2_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr0_2_19 <= lfsr0_2_19_next;
      end if;
    end if;
  end process proc_lfsr0_2_19;
  proc_lfsr1_3_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr1_3_19 <= lfsr1_3_19_next;
      end if;
    end if;
  end process proc_lfsr1_3_19;
  proc_lfsr2_4_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr2_4_19 <= lfsr2_4_19_next;
      end if;
    end if;
  end process proc_lfsr2_4_19;
  lfsr3_5_19_reg_i <= unsigned_to_std_logic_vector(lfsr3_5_19_next);
  lfsr3_5_19 <= std_logic_vector_to_unsigned(lfsr3_5_19_reg_o);
  lfsr3_5_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr3_5_19_reg_i, 
      o => lfsr3_5_19_reg_o);
  lfsr4_6_19_reg_i <= unsigned_to_std_logic_vector(lfsr4_6_19_next);
  lfsr4_6_19 <= std_logic_vector_to_unsigned(lfsr4_6_19_reg_o);
  lfsr4_6_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr4_6_19_reg_i, 
      o => lfsr4_6_19_reg_o);
  lfsr5_7_19_reg_i <= unsigned_to_std_logic_vector(lfsr5_7_19_next);
  lfsr5_7_19 <= std_logic_vector_to_unsigned(lfsr5_7_19_reg_o);
  lfsr5_7_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr5_7_19_reg_i, 
      o => lfsr5_7_19_reg_o);
  lfsr6_8_19_reg_i <= unsigned_to_std_logic_vector(lfsr6_8_19_next);
  lfsr6_8_19 <= std_logic_vector_to_unsigned(lfsr6_8_19_reg_o);
  lfsr6_8_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr6_8_19_reg_i, 
      o => lfsr6_8_19_reg_o);
  proc_lfsr7_9_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr7_9_19 <= lfsr7_9_19_next;
      end if;
    end if;
  end process proc_lfsr7_9_19;
  proc_lfsr8_10_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr8_10_19 <= lfsr8_10_19_next;
      end if;
    end if;
  end process proc_lfsr8_10_19;
  lfsr9_11_19_reg_i <= unsigned_to_std_logic_vector(lfsr9_11_19_next);
  lfsr9_11_19 <= std_logic_vector_to_unsigned(lfsr9_11_19_reg_o);
  lfsr9_11_19_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr9_11_19_reg_i, 
      o => lfsr9_11_19_reg_o);
  lfsr10_12_20_reg_i <= unsigned_to_std_logic_vector(lfsr10_12_20_next);
  lfsr10_12_20 <= std_logic_vector_to_unsigned(lfsr10_12_20_reg_o);
  lfsr10_12_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr10_12_20_reg_i, 
      o => lfsr10_12_20_reg_o);
  proc_lfsr11_13_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr11_13_20 <= lfsr11_13_20_next;
      end if;
    end if;
  end process proc_lfsr11_13_20;
  lfsr12_14_20_reg_i <= unsigned_to_std_logic_vector(lfsr12_14_20_next);
  lfsr12_14_20 <= std_logic_vector_to_unsigned(lfsr12_14_20_reg_o);
  lfsr12_14_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr12_14_20_reg_i, 
      o => lfsr12_14_20_reg_o);
  proc_lfsr13_15_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr13_15_20 <= lfsr13_15_20_next;
      end if;
    end if;
  end process proc_lfsr13_15_20;
  lfsr14_16_20_reg_i <= unsigned_to_std_logic_vector(lfsr14_16_20_next);
  lfsr14_16_20 <= std_logic_vector_to_unsigned(lfsr14_16_20_reg_o);
  lfsr14_16_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr14_16_20_reg_i, 
      o => lfsr14_16_20_reg_o);
  proc_lfsr15_17_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr15_17_20 <= lfsr15_17_20_next;
      end if;
    end if;
  end process proc_lfsr15_17_20;
  proc_lfsr16_18_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr16_18_20 <= lfsr16_18_20_next;
      end if;
    end if;
  end process proc_lfsr16_18_20;
  proc_lfsr17_19_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr17_19_20 <= lfsr17_19_20_next;
      end if;
    end if;
  end process proc_lfsr17_19_20;
  lfsr18_20_20_reg_i <= unsigned_to_std_logic_vector(lfsr18_20_20_next);
  lfsr18_20_20 <= std_logic_vector_to_unsigned(lfsr18_20_20_reg_o);
  lfsr18_20_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr18_20_20_reg_i, 
      o => lfsr18_20_20_reg_o);
  proc_lfsr19_21_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr19_21_20 <= lfsr19_21_20_next;
      end if;
    end if;
  end process proc_lfsr19_21_20;
  lfsr20_22_20_reg_i <= unsigned_to_std_logic_vector(lfsr20_22_20_next);
  lfsr20_22_20 <= std_logic_vector_to_unsigned(lfsr20_22_20_reg_o);
  lfsr20_22_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr20_22_20_reg_i, 
      o => lfsr20_22_20_reg_o);
  lfsr21_23_20_reg_i <= unsigned_to_std_logic_vector(lfsr21_23_20_next);
  lfsr21_23_20 <= std_logic_vector_to_unsigned(lfsr21_23_20_reg_o);
  lfsr21_23_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr21_23_20_reg_i, 
      o => lfsr21_23_20_reg_o);
  proc_lfsr22_24_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr22_24_20 <= lfsr22_24_20_next;
      end if;
    end if;
  end process proc_lfsr22_24_20;
  proc_lfsr23_25_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr23_25_20 <= lfsr23_25_20_next;
      end if;
    end if;
  end process proc_lfsr23_25_20;
  proc_lfsr24_26_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr24_26_20 <= lfsr24_26_20_next;
      end if;
    end if;
  end process proc_lfsr24_26_20;
  lfsr25_27_20_reg_i <= unsigned_to_std_logic_vector(lfsr25_27_20_next);
  lfsr25_27_20 <= std_logic_vector_to_unsigned(lfsr25_27_20_reg_o);
  lfsr25_27_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr25_27_20_reg_i, 
      o => lfsr25_27_20_reg_o);
  proc_lfsr26_28_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr26_28_20 <= lfsr26_28_20_next;
      end if;
    end if;
  end process proc_lfsr26_28_20;
  proc_lfsr27_29_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr27_29_20 <= lfsr27_29_20_next;
      end if;
    end if;
  end process proc_lfsr27_29_20;
  lfsr28_30_20_reg_i <= unsigned_to_std_logic_vector(lfsr28_30_20_next);
  lfsr28_30_20 <= std_logic_vector_to_unsigned(lfsr28_30_20_reg_o);
  lfsr28_30_20_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"1", 
      latency => 1, 
      width => 1)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => lfsr28_30_20_reg_i, 
      o => lfsr28_30_20_reg_o);
  proc_lfsr29_31_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr29_31_20 <= lfsr29_31_20_next;
      end if;
    end if;
  end process proc_lfsr29_31_20;
  proc_lfsr30_32_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr30_32_20 <= lfsr30_32_20_next;
      end if;
    end if;
  end process proc_lfsr30_32_20;
  proc_lfsr31_33_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        lfsr31_33_20 <= lfsr31_33_20_next;
      end if;
    end if;
  end process proc_lfsr31_33_20;
  concat_34_26 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) & unsigned_to_std_logic_vector(lfsr30_32_20) & unsigned_to_std_logic_vector(lfsr29_31_20) & unsigned_to_std_logic_vector(lfsr28_30_20) & unsigned_to_std_logic_vector(lfsr27_29_20) & unsigned_to_std_logic_vector(lfsr26_28_20) & unsigned_to_std_logic_vector(lfsr25_27_20) & unsigned_to_std_logic_vector(lfsr24_26_20) & unsigned_to_std_logic_vector(lfsr23_25_20) & unsigned_to_std_logic_vector(lfsr22_24_20) & unsigned_to_std_logic_vector(lfsr21_23_20) & unsigned_to_std_logic_vector(lfsr20_22_20) & unsigned_to_std_logic_vector(lfsr19_21_20) & unsigned_to_std_logic_vector(lfsr18_20_20) & unsigned_to_std_logic_vector(lfsr17_19_20) & unsigned_to_std_logic_vector(lfsr16_18_20) & unsigned_to_std_logic_vector(lfsr15_17_20) & unsigned_to_std_logic_vector(lfsr14_16_20) & unsigned_to_std_logic_vector(lfsr13_15_20) & unsigned_to_std_logic_vector(lfsr12_14_20) & unsigned_to_std_logic_vector(lfsr11_13_20) & unsigned_to_std_logic_vector(lfsr10_12_20) & unsigned_to_std_logic_vector(lfsr9_11_19) & unsigned_to_std_logic_vector(lfsr8_10_19) & unsigned_to_std_logic_vector(lfsr7_9_19) & unsigned_to_std_logic_vector(lfsr6_8_19) & unsigned_to_std_logic_vector(lfsr5_7_19) & unsigned_to_std_logic_vector(lfsr4_6_19) & unsigned_to_std_logic_vector(lfsr3_5_19) & unsigned_to_std_logic_vector(lfsr2_4_19) & unsigned_to_std_logic_vector(lfsr1_3_19) & unsigned_to_std_logic_vector(lfsr0_2_19));
  bit_71_41 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr31_33_20) xor unsigned_to_std_logic_vector(lfsr21_23_20));
  bit_71_28 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr1_3_19) xor unsigned_to_std_logic_vector(bit_71_41));
  temp_71_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(lfsr0_2_19) xor unsigned_to_std_logic_vector(bit_71_28));
  lfsr31_105_1_slice <= u2u_slice(din_1_24, 31, 31);
  lfsr30_106_1_slice <= u2u_slice(din_1_24, 30, 30);
  lfsr29_107_1_slice <= u2u_slice(din_1_24, 29, 29);
  lfsr28_108_1_slice <= u2u_slice(din_1_24, 28, 28);
  lfsr27_109_1_slice <= u2u_slice(din_1_24, 27, 27);
  lfsr26_110_1_slice <= u2u_slice(din_1_24, 26, 26);
  lfsr25_111_1_slice <= u2u_slice(din_1_24, 25, 25);
  lfsr24_112_1_slice <= u2u_slice(din_1_24, 24, 24);
  lfsr23_113_1_slice <= u2u_slice(din_1_24, 23, 23);
  lfsr22_114_1_slice <= u2u_slice(din_1_24, 22, 22);
  lfsr21_115_1_slice <= u2u_slice(din_1_24, 21, 21);
  lfsr20_116_1_slice <= u2u_slice(din_1_24, 20, 20);
  lfsr19_117_1_slice <= u2u_slice(din_1_24, 19, 19);
  lfsr18_118_1_slice <= u2u_slice(din_1_24, 18, 18);
  lfsr17_119_1_slice <= u2u_slice(din_1_24, 17, 17);
  lfsr16_120_1_slice <= u2u_slice(din_1_24, 16, 16);
  lfsr15_121_1_slice <= u2u_slice(din_1_24, 15, 15);
  lfsr14_122_1_slice <= u2u_slice(din_1_24, 14, 14);
  lfsr13_123_1_slice <= u2u_slice(din_1_24, 13, 13);
  lfsr12_124_1_slice <= u2u_slice(din_1_24, 12, 12);
  lfsr11_125_1_slice <= u2u_slice(din_1_24, 11, 11);
  lfsr10_126_1_slice <= u2u_slice(din_1_24, 10, 10);
  lfsr9_127_1_slice <= u2u_slice(din_1_24, 9, 9);
  lfsr8_128_1_slice <= u2u_slice(din_1_24, 8, 8);
  lfsr7_129_1_slice <= u2u_slice(din_1_24, 7, 7);
  lfsr6_130_1_slice <= u2u_slice(din_1_24, 6, 6);
  lfsr5_131_1_slice <= u2u_slice(din_1_24, 5, 5);
  lfsr4_132_1_slice <= u2u_slice(din_1_24, 4, 4);
  lfsr3_133_1_slice <= u2u_slice(din_1_24, 3, 3);
  lfsr2_134_1_slice <= u2u_slice(din_1_24, 2, 2);
  lfsr1_135_1_slice <= u2u_slice(din_1_24, 1, 1);
  lfsr0_136_1_slice <= u2u_slice(din_1_24, 0, 0);
  not_70_4 <=  not load_1_28;
  proc_if_70_1: process (lfsr0_136_1_slice, lfsr0_2_19, lfsr10_126_1_slice, lfsr10_12_20, lfsr11_125_1_slice, lfsr11_13_20, lfsr12_124_1_slice, lfsr12_14_20, lfsr13_123_1_slice, lfsr13_15_20, lfsr14_122_1_slice, lfsr14_16_20, lfsr15_121_1_slice, lfsr15_17_20, lfsr16_120_1_slice, lfsr16_18_20, lfsr17_119_1_slice, lfsr17_19_20, lfsr18_118_1_slice, lfsr18_20_20, lfsr19_117_1_slice, lfsr19_21_20, lfsr1_135_1_slice, lfsr1_3_19, lfsr20_116_1_slice, lfsr20_22_20, lfsr21_115_1_slice, lfsr21_23_20, lfsr22_114_1_slice, lfsr22_24_20, lfsr23_113_1_slice, lfsr23_25_20, lfsr24_112_1_slice, lfsr24_26_20, lfsr25_111_1_slice, lfsr25_27_20, lfsr26_110_1_slice, lfsr26_28_20, lfsr27_109_1_slice, lfsr27_29_20, lfsr28_108_1_slice, lfsr28_30_20, lfsr29_107_1_slice, lfsr29_31_20, lfsr2_134_1_slice, lfsr2_4_19, lfsr30_106_1_slice, lfsr30_32_20, lfsr31_105_1_slice, lfsr3_133_1_slice, lfsr3_5_19, lfsr4_132_1_slice, lfsr4_6_19, lfsr5_131_1_slice, lfsr5_7_19, lfsr6_130_1_slice, lfsr6_8_19, lfsr7_129_1_slice, lfsr7_9_19, lfsr8_10_19, lfsr8_128_1_slice, lfsr9_11_19, lfsr9_127_1_slice, not_70_4, temp_71_1_bit)
  is
  begin
    if not_70_4 then
      lfsr17_join_70_1 <= lfsr16_18_20;
      lfsr14_join_70_1 <= lfsr13_15_20;
      lfsr1_join_70_1 <= lfsr0_2_19;
      lfsr31_join_70_1 <= lfsr30_32_20;
      lfsr7_join_70_1 <= lfsr6_8_19;
      lfsr5_join_70_1 <= lfsr4_6_19;
      lfsr22_join_70_1 <= lfsr21_23_20;
      lfsr21_join_70_1 <= lfsr20_22_20;
      lfsr29_join_70_1 <= lfsr28_30_20;
      lfsr27_join_70_1 <= lfsr26_28_20;
      lfsr4_join_70_1 <= lfsr3_5_19;
      lfsr20_join_70_1 <= lfsr19_21_20;
      lfsr16_join_70_1 <= lfsr15_17_20;
      lfsr10_join_70_1 <= lfsr9_11_19;
      lfsr28_join_70_1 <= lfsr27_29_20;
      lfsr25_join_70_1 <= lfsr24_26_20;
      lfsr6_join_70_1 <= lfsr5_7_19;
      lfsr13_join_70_1 <= lfsr12_14_20;
      lfsr12_join_70_1 <= lfsr11_13_20;
      lfsr15_join_70_1 <= lfsr14_16_20;
      lfsr8_join_70_1 <= lfsr7_9_19;
      lfsr26_join_70_1 <= lfsr25_27_20;
      lfsr0_join_70_1 <= temp_71_1_bit;
      lfsr23_join_70_1 <= lfsr22_24_20;
      lfsr11_join_70_1 <= lfsr10_12_20;
      lfsr9_join_70_1 <= lfsr8_10_19;
      lfsr24_join_70_1 <= lfsr23_25_20;
      lfsr30_join_70_1 <= lfsr29_31_20;
      lfsr2_join_70_1 <= lfsr1_3_19;
      lfsr3_join_70_1 <= lfsr2_4_19;
      lfsr19_join_70_1 <= lfsr18_20_20;
      lfsr18_join_70_1 <= lfsr17_19_20;
    else 
      lfsr17_join_70_1 <= lfsr17_119_1_slice;
      lfsr14_join_70_1 <= lfsr14_122_1_slice;
      lfsr1_join_70_1 <= lfsr1_135_1_slice;
      lfsr31_join_70_1 <= lfsr31_105_1_slice;
      lfsr7_join_70_1 <= lfsr7_129_1_slice;
      lfsr5_join_70_1 <= lfsr5_131_1_slice;
      lfsr22_join_70_1 <= lfsr22_114_1_slice;
      lfsr21_join_70_1 <= lfsr21_115_1_slice;
      lfsr29_join_70_1 <= lfsr29_107_1_slice;
      lfsr27_join_70_1 <= lfsr27_109_1_slice;
      lfsr4_join_70_1 <= lfsr4_132_1_slice;
      lfsr20_join_70_1 <= lfsr20_116_1_slice;
      lfsr16_join_70_1 <= lfsr16_120_1_slice;
      lfsr10_join_70_1 <= lfsr10_126_1_slice;
      lfsr28_join_70_1 <= lfsr28_108_1_slice;
      lfsr25_join_70_1 <= lfsr25_111_1_slice;
      lfsr6_join_70_1 <= lfsr6_130_1_slice;
      lfsr13_join_70_1 <= lfsr13_123_1_slice;
      lfsr12_join_70_1 <= lfsr12_124_1_slice;
      lfsr15_join_70_1 <= lfsr15_121_1_slice;
      lfsr8_join_70_1 <= lfsr8_128_1_slice;
      lfsr26_join_70_1 <= lfsr26_110_1_slice;
      lfsr0_join_70_1 <= lfsr0_136_1_slice;
      lfsr23_join_70_1 <= lfsr23_113_1_slice;
      lfsr11_join_70_1 <= lfsr11_125_1_slice;
      lfsr9_join_70_1 <= lfsr9_127_1_slice;
      lfsr24_join_70_1 <= lfsr24_112_1_slice;
      lfsr30_join_70_1 <= lfsr30_106_1_slice;
      lfsr2_join_70_1 <= lfsr2_134_1_slice;
      lfsr3_join_70_1 <= lfsr3_133_1_slice;
      lfsr19_join_70_1 <= lfsr19_117_1_slice;
      lfsr18_join_70_1 <= lfsr18_118_1_slice;
    end if;
  end process proc_if_70_1;
  lfsr0_2_19_next <= lfsr0_join_70_1;
  lfsr1_3_19_next <= lfsr1_join_70_1;
  lfsr2_4_19_next <= lfsr2_join_70_1;
  lfsr3_5_19_next <= lfsr3_join_70_1;
  lfsr4_6_19_next <= lfsr4_join_70_1;
  lfsr5_7_19_next <= lfsr5_join_70_1;
  lfsr6_8_19_next <= lfsr6_join_70_1;
  lfsr7_9_19_next <= lfsr7_join_70_1;
  lfsr8_10_19_next <= lfsr8_join_70_1;
  lfsr9_11_19_next <= lfsr9_join_70_1;
  lfsr10_12_20_next <= lfsr10_join_70_1;
  lfsr11_13_20_next <= lfsr11_join_70_1;
  lfsr12_14_20_next <= lfsr12_join_70_1;
  lfsr13_15_20_next <= lfsr13_join_70_1;
  lfsr14_16_20_next <= lfsr14_join_70_1;
  lfsr15_17_20_next <= lfsr15_join_70_1;
  lfsr16_18_20_next <= lfsr16_join_70_1;
  lfsr17_19_20_next <= lfsr17_join_70_1;
  lfsr18_20_20_next <= lfsr18_join_70_1;
  lfsr19_21_20_next <= lfsr19_join_70_1;
  lfsr20_22_20_next <= lfsr20_join_70_1;
  lfsr21_23_20_next <= lfsr21_join_70_1;
  lfsr22_24_20_next <= lfsr22_join_70_1;
  lfsr23_25_20_next <= lfsr23_join_70_1;
  lfsr24_26_20_next <= lfsr24_join_70_1;
  lfsr25_27_20_next <= lfsr25_join_70_1;
  lfsr26_28_20_next <= lfsr26_join_70_1;
  lfsr27_29_20_next <= lfsr27_join_70_1;
  lfsr28_30_20_next <= lfsr28_join_70_1;
  lfsr29_31_20_next <= lfsr29_join_70_1;
  lfsr30_32_20_next <= lfsr30_join_70_1;
  lfsr31_33_20_next <= lfsr31_join_70_1;
  dout <= unsigned_to_std_logic_vector(concat_34_26);
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlsprom is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
  );
  port (
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom ;
architecture behavior of xlsprom is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce, sinit: std_logic;
  component bmg_33_e4cac21e8ed012aa
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_e4cac21e8ed012aa:
    component is true;
  attribute fpga_dont_touch of bmg_33_e4cac21e8ed012aa:
    component is "true";
  attribute box_type of bmg_33_e4cac21e8ed012aa:
    component  is "black_box";
  component bmg_33_7de9efda5baafcf4
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_7de9efda5baafcf4:
    component is true;
  attribute fpga_dont_touch of bmg_33_7de9efda5baafcf4:
    component is "true";
  attribute box_type of bmg_33_7de9efda5baafcf4:
    component  is "black_box";
  component bmg_33_4c2b84f72036519d
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_33_4c2b84f72036519d:
    component is true;
  attribute fpga_dont_touch of bmg_33_4c2b84f72036519d:
    component is "true";
  attribute box_type of bmg_33_4c2b84f72036519d:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_33_e4cac21e8ed012aa")) generate
    core_instance0: bmg_33_e4cac21e8ed012aa
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_33_7de9efda5baafcf4")) generate
    core_instance1: bmg_33_7de9efda5baafcf4
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_33_4c2b84f72036519d")) generate
    core_instance2: bmg_33_4c2b84f72036519d
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_1: if (latency <= 1) generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d9988e3d87 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d9988e3d87;


architecture behavior of reinterpret_d9988e3d87 is
  signal input_port_1_40: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_b42effccbc is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_b42effccbc;


architecture behavior of scale_b42effccbc is
  signal ip_17_23: signed((17 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_a85d9bdfd2 is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay0 : out std_logic_vector((4 - 1) downto 0);
    delay1 : out std_logic_vector((4 - 1) downto 0);
    delay2 : out std_logic_vector((4 - 1) downto 0);
    delay3 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_a85d9bdfd2;


architecture behavior of bitbasher_a85d9bdfd2 is
  signal delay_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((4 - 1) downto 0);
  signal fulldelay0_5_1_concat: unsigned((4 - 1) downto 0);
  signal slice_6_33: unsigned((4 - 1) downto 0);
  signal fulldelay1_6_1_concat: unsigned((4 - 1) downto 0);
  signal slice_7_33: unsigned((4 - 1) downto 0);
  signal fulldelay2_7_1_concat: unsigned((4 - 1) downto 0);
  signal slice_8_33: unsigned((4 - 1) downto 0);
  signal fulldelay3_8_1_concat: unsigned((4 - 1) downto 0);
begin
  delay_1_52 <= std_logic_vector_to_unsigned(delay);
  slice_5_33 <= u2u_slice(delay_1_52, 3, 0);
  fulldelay0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(delay_1_52, 7, 4);
  fulldelay1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(delay_1_52, 11, 8);
  fulldelay2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(delay_1_52, 15, 12);
  fulldelay3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  delay0 <= unsigned_to_std_logic_vector(fulldelay0_5_1_concat);
  delay1 <= unsigned_to_std_logic_vector(fulldelay1_6_1_concat);
  delay2 <= unsigned_to_std_logic_vector(fulldelay2_7_1_concat);
  delay3 <= unsigned_to_std_logic_vector(fulldelay3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_1f3692b5e0 is
  port (
    delay : in std_logic_vector((32 - 1) downto 0);
    delay4 : out std_logic_vector((4 - 1) downto 0);
    delay5 : out std_logic_vector((4 - 1) downto 0);
    delay6 : out std_logic_vector((4 - 1) downto 0);
    delay7 : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_1f3692b5e0;


architecture behavior of bitbasher_1f3692b5e0 is
  signal delay_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((4 - 1) downto 0);
  signal fulldelay4_5_1_concat: unsigned((4 - 1) downto 0);
  signal slice_6_33: unsigned((4 - 1) downto 0);
  signal fulldelay5_6_1_concat: unsigned((4 - 1) downto 0);
  signal slice_7_33: unsigned((4 - 1) downto 0);
  signal fulldelay6_7_1_concat: unsigned((4 - 1) downto 0);
  signal slice_8_33: unsigned((4 - 1) downto 0);
  signal fulldelay7_8_1_concat: unsigned((4 - 1) downto 0);
begin
  delay_1_52 <= std_logic_vector_to_unsigned(delay);
  slice_5_33 <= u2u_slice(delay_1_52, 19, 16);
  fulldelay4_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(delay_1_52, 23, 20);
  fulldelay5_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(delay_1_52, 27, 24);
  fulldelay6_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(delay_1_52, 31, 28);
  fulldelay7_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  delay4 <= unsigned_to_std_logic_vector(fulldelay4_5_1_concat);
  delay5 <= unsigned_to_std_logic_vector(fulldelay5_6_1_concat);
  delay6 <= unsigned_to_std_logic_vector(fulldelay6_7_1_concat);
  delay7 <= unsigned_to_std_logic_vector(fulldelay7_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_367321bc0c is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_367321bc0c;


architecture behavior of relational_367321bc0c is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8ddc079e9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8ddc079e9;


architecture behavior of constant_e8ddc079e9 is
begin
  op <= "10";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3a9a3daeb9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3a9a3daeb9;


architecture behavior of constant_3a9a3daeb9 is
begin
  op <= "11";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_0b7a692256 is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel0 : out std_logic_vector((2 - 1) downto 0);
    insel1 : out std_logic_vector((2 - 1) downto 0);
    insel2 : out std_logic_vector((2 - 1) downto 0);
    insel3 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_0b7a692256;


architecture behavior of bitbasher_0b7a692256 is
  signal insel_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((2 - 1) downto 0);
  signal fullinsel0_5_1_concat: unsigned((2 - 1) downto 0);
  signal slice_6_33: unsigned((2 - 1) downto 0);
  signal fullinsel1_6_1_concat: unsigned((2 - 1) downto 0);
  signal slice_7_33: unsigned((2 - 1) downto 0);
  signal fullinsel2_7_1_concat: unsigned((2 - 1) downto 0);
  signal slice_8_33: unsigned((2 - 1) downto 0);
  signal fullinsel3_8_1_concat: unsigned((2 - 1) downto 0);
begin
  insel_1_52 <= std_logic_vector_to_unsigned(insel);
  slice_5_33 <= u2u_slice(insel_1_52, 1, 0);
  fullinsel0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(insel_1_52, 5, 4);
  fullinsel1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(insel_1_52, 9, 8);
  fullinsel2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(insel_1_52, 13, 12);
  fullinsel3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  insel0 <= unsigned_to_std_logic_vector(fullinsel0_5_1_concat);
  insel1 <= unsigned_to_std_logic_vector(fullinsel1_6_1_concat);
  insel2 <= unsigned_to_std_logic_vector(fullinsel2_7_1_concat);
  insel3 <= unsigned_to_std_logic_vector(fullinsel3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_980b18e5c5 is
  port (
    insel : in std_logic_vector((32 - 1) downto 0);
    insel4 : out std_logic_vector((2 - 1) downto 0);
    insel5 : out std_logic_vector((2 - 1) downto 0);
    insel6 : out std_logic_vector((2 - 1) downto 0);
    insel7 : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_980b18e5c5;


architecture behavior of bitbasher_980b18e5c5 is
  signal insel_1_52: unsigned((32 - 1) downto 0);
  signal slice_5_33: unsigned((2 - 1) downto 0);
  signal fullinsel4_5_1_concat: unsigned((2 - 1) downto 0);
  signal slice_6_33: unsigned((2 - 1) downto 0);
  signal fullinsel5_6_1_concat: unsigned((2 - 1) downto 0);
  signal slice_7_33: unsigned((2 - 1) downto 0);
  signal fullinsel6_7_1_concat: unsigned((2 - 1) downto 0);
  signal slice_8_33: unsigned((2 - 1) downto 0);
  signal fullinsel7_8_1_concat: unsigned((2 - 1) downto 0);
begin
  insel_1_52 <= std_logic_vector_to_unsigned(insel);
  slice_5_33 <= u2u_slice(insel_1_52, 17, 16);
  fullinsel4_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_33));
  slice_6_33 <= u2u_slice(insel_1_52, 21, 20);
  fullinsel5_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_33));
  slice_7_33 <= u2u_slice(insel_1_52, 25, 24);
  fullinsel6_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_33));
  slice_8_33 <= u2u_slice(insel_1_52, 29, 28);
  fullinsel7_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_33));
  insel4 <= unsigned_to_std_logic_vector(fullinsel4_5_1_concat);
  insel5 <= unsigned_to_std_logic_vector(fullinsel5_6_1_concat);
  insel6 <= unsigned_to_std_logic_vector(fullinsel6_7_1_concat);
  insel7 <= unsigned_to_std_logic_vector(fullinsel7_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_5b1e76c782 is
  port (
    seed : in std_logic_vector((32 - 1) downto 0);
    seed0 : out std_logic_vector((32 - 1) downto 0);
    seed1 : out std_logic_vector((32 - 1) downto 0);
    seed2 : out std_logic_vector((32 - 1) downto 0);
    seed3 : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_5b1e76c782;


architecture behavior of bitbasher_5b1e76c782 is
  signal seed_1_48: unsigned((32 - 1) downto 0);
  signal slice_5_58: unsigned((8 - 1) downto 0);
  signal slice_5_87: unsigned((1 - 1) downto 0);
  signal slice_5_106: unsigned((1 - 1) downto 0);
  signal slice_5_125: unsigned((1 - 1) downto 0);
  signal slice_5_144: unsigned((1 - 1) downto 0);
  signal slice_5_163: unsigned((1 - 1) downto 0);
  signal slice_5_182: unsigned((1 - 1) downto 0);
  signal slice_5_201: unsigned((1 - 1) downto 0);
  signal slice_5_220: unsigned((1 - 1) downto 0);
  signal concat_5_78: unsigned((8 - 1) downto 0);
  signal fullseed0_5_1_concat: unsigned((32 - 1) downto 0);
  signal slice_6_58: unsigned((8 - 1) downto 0);
  signal slice_6_88: unsigned((1 - 1) downto 0);
  signal slice_6_107: unsigned((1 - 1) downto 0);
  signal slice_6_126: unsigned((1 - 1) downto 0);
  signal slice_6_147: unsigned((1 - 1) downto 0);
  signal slice_6_168: unsigned((1 - 1) downto 0);
  signal slice_6_189: unsigned((1 - 1) downto 0);
  signal slice_6_210: unsigned((1 - 1) downto 0);
  signal slice_6_231: unsigned((1 - 1) downto 0);
  signal concat_6_79: unsigned((8 - 1) downto 0);
  signal fullseed1_6_1_concat: unsigned((32 - 1) downto 0);
  signal slice_7_58: unsigned((8 - 1) downto 0);
  signal slice_7_89: unsigned((1 - 1) downto 0);
  signal slice_7_110: unsigned((1 - 1) downto 0);
  signal slice_7_131: unsigned((1 - 1) downto 0);
  signal slice_7_152: unsigned((1 - 1) downto 0);
  signal slice_7_173: unsigned((1 - 1) downto 0);
  signal slice_7_194: unsigned((1 - 1) downto 0);
  signal slice_7_215: unsigned((1 - 1) downto 0);
  signal slice_7_236: unsigned((1 - 1) downto 0);
  signal concat_7_80: unsigned((8 - 1) downto 0);
  signal fullseed2_7_1_concat: unsigned((32 - 1) downto 0);
  signal slice_8_58: unsigned((8 - 1) downto 0);
  signal slice_8_89: unsigned((1 - 1) downto 0);
  signal slice_8_110: unsigned((1 - 1) downto 0);
  signal slice_8_131: unsigned((1 - 1) downto 0);
  signal slice_8_152: unsigned((1 - 1) downto 0);
  signal slice_8_173: unsigned((1 - 1) downto 0);
  signal slice_8_194: unsigned((1 - 1) downto 0);
  signal slice_8_215: unsigned((1 - 1) downto 0);
  signal slice_8_236: unsigned((1 - 1) downto 0);
  signal concat_8_80: unsigned((8 - 1) downto 0);
  signal fullseed3_8_1_concat: unsigned((32 - 1) downto 0);
begin
  seed_1_48 <= std_logic_vector_to_unsigned(seed);
  slice_5_58 <= u2u_slice(seed_1_48, 7, 0);
  slice_5_87 <= u2u_slice(seed_1_48, 0, 0);
  slice_5_106 <= u2u_slice(seed_1_48, 1, 1);
  slice_5_125 <= u2u_slice(seed_1_48, 2, 2);
  slice_5_144 <= u2u_slice(seed_1_48, 3, 3);
  slice_5_163 <= u2u_slice(seed_1_48, 4, 4);
  slice_5_182 <= u2u_slice(seed_1_48, 5, 5);
  slice_5_201 <= u2u_slice(seed_1_48, 6, 6);
  slice_5_220 <= u2u_slice(seed_1_48, 7, 7);
  concat_5_78 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_87) & unsigned_to_std_logic_vector(slice_5_106) & unsigned_to_std_logic_vector(slice_5_125) & unsigned_to_std_logic_vector(slice_5_144) & unsigned_to_std_logic_vector(slice_5_163) & unsigned_to_std_logic_vector(slice_5_182) & unsigned_to_std_logic_vector(slice_5_201) & unsigned_to_std_logic_vector(slice_5_220));
  fullseed0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_5_58) & unsigned_to_std_logic_vector(concat_5_78) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_6_58 <= u2u_slice(seed_1_48, 15, 8);
  slice_6_88 <= u2u_slice(seed_1_48, 8, 8);
  slice_6_107 <= u2u_slice(seed_1_48, 9, 9);
  slice_6_126 <= u2u_slice(seed_1_48, 10, 10);
  slice_6_147 <= u2u_slice(seed_1_48, 11, 11);
  slice_6_168 <= u2u_slice(seed_1_48, 12, 12);
  slice_6_189 <= u2u_slice(seed_1_48, 13, 13);
  slice_6_210 <= u2u_slice(seed_1_48, 14, 14);
  slice_6_231 <= u2u_slice(seed_1_48, 15, 15);
  concat_6_79 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_88) & unsigned_to_std_logic_vector(slice_6_107) & unsigned_to_std_logic_vector(slice_6_126) & unsigned_to_std_logic_vector(slice_6_147) & unsigned_to_std_logic_vector(slice_6_168) & unsigned_to_std_logic_vector(slice_6_189) & unsigned_to_std_logic_vector(slice_6_210) & unsigned_to_std_logic_vector(slice_6_231));
  fullseed1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_6_58) & unsigned_to_std_logic_vector(concat_6_79) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_7_58 <= u2u_slice(seed_1_48, 23, 16);
  slice_7_89 <= u2u_slice(seed_1_48, 16, 16);
  slice_7_110 <= u2u_slice(seed_1_48, 17, 17);
  slice_7_131 <= u2u_slice(seed_1_48, 18, 18);
  slice_7_152 <= u2u_slice(seed_1_48, 19, 19);
  slice_7_173 <= u2u_slice(seed_1_48, 20, 20);
  slice_7_194 <= u2u_slice(seed_1_48, 21, 21);
  slice_7_215 <= u2u_slice(seed_1_48, 22, 22);
  slice_7_236 <= u2u_slice(seed_1_48, 23, 23);
  concat_7_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_89) & unsigned_to_std_logic_vector(slice_7_110) & unsigned_to_std_logic_vector(slice_7_131) & unsigned_to_std_logic_vector(slice_7_152) & unsigned_to_std_logic_vector(slice_7_173) & unsigned_to_std_logic_vector(slice_7_194) & unsigned_to_std_logic_vector(slice_7_215) & unsigned_to_std_logic_vector(slice_7_236));
  fullseed2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_7_58) & unsigned_to_std_logic_vector(concat_7_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  slice_8_58 <= u2u_slice(seed_1_48, 31, 24);
  slice_8_89 <= u2u_slice(seed_1_48, 24, 24);
  slice_8_110 <= u2u_slice(seed_1_48, 25, 25);
  slice_8_131 <= u2u_slice(seed_1_48, 26, 26);
  slice_8_152 <= u2u_slice(seed_1_48, 27, 27);
  slice_8_173 <= u2u_slice(seed_1_48, 28, 28);
  slice_8_194 <= u2u_slice(seed_1_48, 29, 29);
  slice_8_215 <= u2u_slice(seed_1_48, 30, 30);
  slice_8_236 <= u2u_slice(seed_1_48, 31, 31);
  concat_8_80 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_89) & unsigned_to_std_logic_vector(slice_8_110) & unsigned_to_std_logic_vector(slice_8_131) & unsigned_to_std_logic_vector(slice_8_152) & unsigned_to_std_logic_vector(slice_8_173) & unsigned_to_std_logic_vector(slice_8_194) & unsigned_to_std_logic_vector(slice_8_215) & unsigned_to_std_logic_vector(slice_8_236));
  fullseed3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("01011100")) & unsigned_to_std_logic_vector(slice_8_58) & unsigned_to_std_logic_vector(concat_8_80) & unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("10100011")));
  seed0 <= unsigned_to_std_logic_vector(fullseed0_5_1_concat);
  seed1 <= unsigned_to_std_logic_vector(fullseed1_6_1_concat);
  seed2 <= unsigned_to_std_logic_vector(fullseed2_7_1_concat);
  seed3 <= unsigned_to_std_logic_vector(fullseed3_8_1_concat);
end behavior;


-------------------------------------------------------------------
-- System Generator version 11.4 VHDL source file.
--
-- Copyright(C) 2009 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2009 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xladdrsr is
  generic (
    core_name0: string := "";
    addr_arith: integer := xlSigned;
    addr_bin_pt: integer := 7;
    addr_width: integer := 12;
    core_addr_width: integer := 0;
    d_arith: integer := xlSigned;
    d_bin_pt: integer := 7;
    d_width: integer := 12;
    en_width: integer := 5;
    en_bin_pt: integer := 2;
    en_arith: integer := xlUnsigned;
    q_arith: integer := xlSigned;
    q_bin_pt: integer := 7;
    q_width: integer := xlSigned
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    en: in std_logic_vector(0 downto 0) := (others => '1');
    q: out std_logic_vector(d_width - 1 downto 0)
  );
end xladdrsr ;
architecture behavior of xladdrsr is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_372caaa934b22d95
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;
  attribute syn_black_box of asr_11_0_372caaa934b22d95:
    component is true;
  attribute fpga_dont_touch of asr_11_0_372caaa934b22d95:
    component is "true";
  attribute box_type of asr_11_0_372caaa934b22d95:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_372caaa934b22d95")) generate
    core_instance0: asr_11_0_372caaa934b22d95
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_31382efd95 is
  port (
    in0 : in std_logic_vector((25 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_31382efd95;


architecture behavior of concat_31382efd95 is
  signal in0_1_23: unsigned((25 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: boolean;
  signal in3_1_35: boolean;
  signal in4_1_39: boolean;
  signal in5_1_43: boolean;
  signal in6_1_47: boolean;
  signal in7_1_51: boolean;
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= ((in2) = "1");
  in3_1_35 <= ((in3) = "1");
  in4_1_39 <= ((in4) = "1");
  in5_1_43 <= ((in5) = "1");
  in6_1_47 <= ((in6) = "1");
  in7_1_51 <= ((in7) = "1");
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & boolean_to_vector(in1_1_27) & boolean_to_vector(in2_1_31) & boolean_to_vector(in3_1_35) & boolean_to_vector(in4_1_39) & boolean_to_vector(in5_1_43) & boolean_to_vector(in6_1_47) & boolean_to_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6a1bb6dda6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6a1bb6dda6;


architecture behavior of constant_6a1bb6dda6 is
begin
  op <= "0000000000000000000000000";
end behavior;

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
