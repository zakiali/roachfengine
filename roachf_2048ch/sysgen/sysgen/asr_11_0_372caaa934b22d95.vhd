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

