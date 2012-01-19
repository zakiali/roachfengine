
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
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component roachf_2048ch_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
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
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : roachf_2048ch_cw
  port map (
    ce => ce,
    clk => clk,
    roachf_2048ch_2gpu_gbe_gpu_led_rx => roachf_2048ch_2gpu_gbe_gpu_led_rx,
    roachf_2048ch_2gpu_gbe_gpu_led_tx => roachf_2048ch_2gpu_gbe_gpu_led_tx,
    roachf_2048ch_2gpu_gbe_gpu_led_up => roachf_2048ch_2gpu_gbe_gpu_led_up,
    roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame => roachf_2048ch_2gpu_gbe_gpu_rx_bad_frame,
    roachf_2048ch_2gpu_gbe_gpu_rx_data => roachf_2048ch_2gpu_gbe_gpu_rx_data,
    roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame => roachf_2048ch_2gpu_gbe_gpu_rx_end_of_frame,
    roachf_2048ch_2gpu_gbe_gpu_rx_overrun => roachf_2048ch_2gpu_gbe_gpu_rx_overrun,
    roachf_2048ch_2gpu_gbe_gpu_rx_source_ip => roachf_2048ch_2gpu_gbe_gpu_rx_source_ip,
    roachf_2048ch_2gpu_gbe_gpu_rx_source_port => roachf_2048ch_2gpu_gbe_gpu_rx_source_port,
    roachf_2048ch_2gpu_gbe_gpu_rx_valid => roachf_2048ch_2gpu_gbe_gpu_rx_valid,
    roachf_2048ch_2gpu_gbe_gpu_tx_afull => roachf_2048ch_2gpu_gbe_gpu_tx_afull,
    roachf_2048ch_2gpu_gbe_gpu_tx_overflow => roachf_2048ch_2gpu_gbe_gpu_tx_overflow,
    roachf_2048ch_adcs_quadc0_adc0_data => roachf_2048ch_adcs_quadc0_adc0_data,
    roachf_2048ch_adcs_quadc0_adc1_data => roachf_2048ch_adcs_quadc0_adc1_data,
    roachf_2048ch_adcs_quadc0_adc2_data => roachf_2048ch_adcs_quadc0_adc2_data,
    roachf_2048ch_adcs_quadc0_adc3_data => roachf_2048ch_adcs_quadc0_adc3_data,
    roachf_2048ch_adcs_quadc0_sync => roachf_2048ch_adcs_quadc0_sync,
    roachf_2048ch_adcs_quadc0_valid => roachf_2048ch_adcs_quadc0_valid,
    roachf_2048ch_adcs_quadc1_adc0_data => roachf_2048ch_adcs_quadc1_adc0_data,
    roachf_2048ch_adcs_quadc1_adc1_data => roachf_2048ch_adcs_quadc1_adc1_data,
    roachf_2048ch_adcs_quadc1_adc2_data => roachf_2048ch_adcs_quadc1_adc2_data,
    roachf_2048ch_adcs_quadc1_adc3_data => roachf_2048ch_adcs_quadc1_adc3_data,
    roachf_2048ch_adcs_quadc1_sync => roachf_2048ch_adcs_quadc1_sync,
    roachf_2048ch_adcs_quadc1_valid => roachf_2048ch_adcs_quadc1_valid,
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
    roachf_2048ch_switch_gbe_sw_led_rx => roachf_2048ch_switch_gbe_sw_led_rx,
    roachf_2048ch_switch_gbe_sw_led_tx => roachf_2048ch_switch_gbe_sw_led_tx,
    roachf_2048ch_switch_gbe_sw_led_up => roachf_2048ch_switch_gbe_sw_led_up,
    roachf_2048ch_switch_gbe_sw_rx_bad_frame => roachf_2048ch_switch_gbe_sw_rx_bad_frame,
    roachf_2048ch_switch_gbe_sw_rx_data => roachf_2048ch_switch_gbe_sw_rx_data,
    roachf_2048ch_switch_gbe_sw_rx_end_of_frame => roachf_2048ch_switch_gbe_sw_rx_end_of_frame,
    roachf_2048ch_switch_gbe_sw_rx_overrun => roachf_2048ch_switch_gbe_sw_rx_overrun,
    roachf_2048ch_switch_gbe_sw_rx_source_ip => roachf_2048ch_switch_gbe_sw_rx_source_ip,
    roachf_2048ch_switch_gbe_sw_rx_source_port => roachf_2048ch_switch_gbe_sw_rx_source_port,
    roachf_2048ch_switch_gbe_sw_rx_valid => roachf_2048ch_switch_gbe_sw_rx_valid,
    roachf_2048ch_switch_gbe_sw_tx_afull => roachf_2048ch_switch_gbe_sw_tx_afull,
    roachf_2048ch_switch_gbe_sw_tx_overflow => roachf_2048ch_switch_gbe_sw_tx_overflow,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_out,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_out,
    gateway_out1 => gateway_out1,
    gateway_out18 => gateway_out18,
    gateway_out19 => gateway_out19,
    gateway_out1_x0 => gateway_out1_x0,
    gateway_out2 => gateway_out2,
    gateway_out20 => gateway_out20,
    gateway_out22 => gateway_out22,
    gateway_out23 => gateway_out23,
    gateway_out24 => gateway_out24,
    gateway_out25 => gateway_out25,
    gateway_out27 => gateway_out27,
    gateway_out28 => gateway_out28,
    gateway_out29 => gateway_out29,
    gateway_out2_x0 => gateway_out2_x0,
    gateway_out3 => gateway_out3,
    gateway_out30 => gateway_out30,
    gateway_out31 => gateway_out31,
    gateway_out39 => gateway_out39,
    gateway_out3_x0 => gateway_out3_x0,
    gateway_out40 => gateway_out40,
    gateway_out41 => gateway_out41,
    gateway_out42 => gateway_out42,
    gateway_out6 => gateway_out6,
    gateway_out8 => gateway_out8,
    roachf_2048ch_2gpu_gbe_gpu_rst => roachf_2048ch_2gpu_gbe_gpu_rst,
    roachf_2048ch_2gpu_gbe_gpu_rx_ack => roachf_2048ch_2gpu_gbe_gpu_rx_ack,
    roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack => roachf_2048ch_2gpu_gbe_gpu_rx_overrun_ack,
    roachf_2048ch_2gpu_gbe_gpu_tx_data => roachf_2048ch_2gpu_gbe_gpu_tx_data,
    roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip => roachf_2048ch_2gpu_gbe_gpu_tx_dest_ip,
    roachf_2048ch_2gpu_gbe_gpu_tx_dest_port => roachf_2048ch_2gpu_gbe_gpu_tx_dest_port,
    roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame => roachf_2048ch_2gpu_gbe_gpu_tx_end_of_frame,
    roachf_2048ch_2gpu_gbe_gpu_tx_valid => roachf_2048ch_2gpu_gbe_gpu_tx_valid,
    roachf_2048ch_leds_led1_arm_gateway => roachf_2048ch_leds_led1_arm_gateway,
    roachf_2048ch_leds_led2_sync_gateway => roachf_2048ch_leds_led2_sync_gateway,
    roachf_2048ch_leds_led4_eq_clip_gateway => roachf_2048ch_leds_led4_eq_clip_gateway,
    roachf_2048ch_leds_led5_adc_clip_gateway => roachf_2048ch_leds_led5_adc_clip_gateway,
    roachf_2048ch_loopback_loop_cnt0_user_data_in => roachf_2048ch_loopback_loop_cnt0_user_data_in,
    roachf_2048ch_loopback_loop_err_cnt0_user_data_in => roachf_2048ch_loopback_loop_err_cnt0_user_data_in,
    roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in => roachf_2048ch_loopback_loopback_mux0_mcnt_user_data_in,
    roachf_2048ch_loopback_statii_user_data_in => roachf_2048ch_loopback_statii_user_data_in,
    roachf_2048ch_status_gbe_gpu_user_data_in => roachf_2048ch_status_gbe_gpu_user_data_in,
    roachf_2048ch_status_gbe_sw_user_data_in => roachf_2048ch_status_gbe_sw_user_data_in,
    roachf_2048ch_switch_gbe_sw_rst => roachf_2048ch_switch_gbe_sw_rst,
    roachf_2048ch_switch_gbe_sw_rx_ack => roachf_2048ch_switch_gbe_sw_rx_ack,
    roachf_2048ch_switch_gbe_sw_rx_overrun_ack => roachf_2048ch_switch_gbe_sw_rx_overrun_ack,
    roachf_2048ch_switch_gbe_sw_tx_data => roachf_2048ch_switch_gbe_sw_tx_data,
    roachf_2048ch_switch_gbe_sw_tx_dest_ip => roachf_2048ch_switch_gbe_sw_tx_dest_ip,
    roachf_2048ch_switch_gbe_sw_tx_dest_port => roachf_2048ch_switch_gbe_sw_tx_dest_port,
    roachf_2048ch_switch_gbe_sw_tx_end_of_frame => roachf_2048ch_switch_gbe_sw_tx_end_of_frame,
    roachf_2048ch_switch_gbe_sw_tx_valid => roachf_2048ch_switch_gbe_sw_tx_valid,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_addr,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_data_in,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram1_we,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_addr,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_data_in,
    roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we => roachf_2048ch_transpose_dbuf_ct_bram_shared_bram_we);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
