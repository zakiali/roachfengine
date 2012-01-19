% roachf_2048ch/XSG core config
roachf_2048ch_XSG_core_config_type         = 'xps_xsg';
roachf_2048ch_XSG_core_config_param        = '';

% roachf_2048ch/2GPU/gbe_gpu
roachf_2048ch_2GPU_gbe_gpu_type         = 'xps_tengbe_v2';
roachf_2048ch_2GPU_gbe_gpu_param        = '';
roachf_2048ch_2GPU_gbe_gpu_ip_name      = 'kat_ten_gb_eth';
roachf_2048ch_2GPU_gbe_gpu_addr_start   = hex2dec('01000000');
roachf_2048ch_2GPU_gbe_gpu_addr_end     = hex2dec('01003FFF');

% roachf_2048ch/ADCs/quadc0
roachf_2048ch_ADCs_quadc0_type         = 'xps_quadc';
roachf_2048ch_ADCs_quadc0_param        = '';
roachf_2048ch_ADCs_quadc0_ip_name      = 'quadc_interface';

% roachf_2048ch/ADCs/quadc1
roachf_2048ch_ADCs_quadc1_type         = 'xps_quadc';
roachf_2048ch_ADCs_quadc1_param        = '';
roachf_2048ch_ADCs_quadc1_ip_name      = 'quadc_interface';

% roachf_2048ch/LEDs/led1_arm
roachf_2048ch_LEDs_led1_arm_type         = 'xps_gpio';
roachf_2048ch_LEDs_led1_arm_param        = '';
roachf_2048ch_LEDs_led1_arm_ip_name      = 'gpio_simulink2ext';

% roachf_2048ch/LEDs/led2_sync
roachf_2048ch_LEDs_led2_sync_type         = 'xps_gpio';
roachf_2048ch_LEDs_led2_sync_param        = '';
roachf_2048ch_LEDs_led2_sync_ip_name      = 'gpio_simulink2ext';

% roachf_2048ch/LEDs/led4_eq_clip
roachf_2048ch_LEDs_led4_eq_clip_type         = 'xps_gpio';
roachf_2048ch_LEDs_led4_eq_clip_param        = '';
roachf_2048ch_LEDs_led4_eq_clip_ip_name      = 'gpio_simulink2ext';

% roachf_2048ch/LEDs/led5_adc_clip
roachf_2048ch_LEDs_led5_adc_clip_type         = 'xps_gpio';
roachf_2048ch_LEDs_led5_adc_clip_param        = '';
roachf_2048ch_LEDs_led5_adc_clip_ip_name      = 'gpio_simulink2ext';

% roachf_2048ch/Loopback/loop_cnt0
roachf_2048ch_Loopback_loop_cnt0_type         = 'xps_sw_reg';
roachf_2048ch_Loopback_loop_cnt0_param        = 'out';
roachf_2048ch_Loopback_loop_cnt0_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_Loopback_loop_cnt0_addr_start   = hex2dec('01004000');
roachf_2048ch_Loopback_loop_cnt0_addr_end     = hex2dec('010040FF');

% roachf_2048ch/Loopback/loop_err_cnt0
roachf_2048ch_Loopback_loop_err_cnt0_type         = 'xps_sw_reg';
roachf_2048ch_Loopback_loop_err_cnt0_param        = 'out';
roachf_2048ch_Loopback_loop_err_cnt0_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_Loopback_loop_err_cnt0_addr_start   = hex2dec('01004100');
roachf_2048ch_Loopback_loop_err_cnt0_addr_end     = hex2dec('010041FF');

% roachf_2048ch/Loopback/loopback_mux0/mcnt
roachf_2048ch_Loopback_loopback_mux0_mcnt_type         = 'xps_sw_reg';
roachf_2048ch_Loopback_loopback_mux0_mcnt_param        = 'out';
roachf_2048ch_Loopback_loopback_mux0_mcnt_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_Loopback_loopback_mux0_mcnt_addr_start   = hex2dec('01004200');
roachf_2048ch_Loopback_loopback_mux0_mcnt_addr_end     = hex2dec('010042FF');

% roachf_2048ch/Loopback/statii
roachf_2048ch_Loopback_statii_type         = 'xps_sw_reg';
roachf_2048ch_Loopback_statii_param        = 'out';
roachf_2048ch_Loopback_statii_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_Loopback_statii_addr_start   = hex2dec('01004300');
roachf_2048ch_Loopback_statii_addr_end     = hex2dec('010043FF');

% roachf_2048ch/Switch/gbe_sw
roachf_2048ch_Switch_gbe_sw_type         = 'xps_tengbe_v2';
roachf_2048ch_Switch_gbe_sw_param        = '';
roachf_2048ch_Switch_gbe_sw_ip_name      = 'kat_ten_gb_eth';
roachf_2048ch_Switch_gbe_sw_addr_start   = hex2dec('01008000');
roachf_2048ch_Switch_gbe_sw_addr_end     = hex2dec('0100BFFF');

% roachf_2048ch/Transpose/dbuf_ct_bram/Shared BRAM
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_type         = 'xps_bram';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_param        = '32768';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_ip_name      = 'bram_if';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr_start   = hex2dec('01020000');
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM_addr_end     = hex2dec('0103FFFF');

% roachf_2048ch/Transpose/dbuf_ct_bram/Shared BRAM1
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_type         = 'xps_bram';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_param        = '32768';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_ip_name      = 'bram_if';
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr_start   = hex2dec('01040000');
roachf_2048ch_Transpose_dbuf_ct_bram_Shared_BRAM1_addr_end     = hex2dec('0105FFFF');

% roachf_2048ch/control/ctl_regs/ant_base
roachf_2048ch_control_ctl_regs_ant_base_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_ant_base_param        = 'in';
roachf_2048ch_control_ctl_regs_ant_base_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_ant_base_addr_start   = hex2dec('01060000');
roachf_2048ch_control_ctl_regs_ant_base_addr_end     = hex2dec('010600FF');

% roachf_2048ch/control/ctl_regs/feng_ctl
roachf_2048ch_control_ctl_regs_feng_ctl_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_feng_ctl_param        = 'in';
roachf_2048ch_control_ctl_regs_feng_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_feng_ctl_addr_start   = hex2dec('01060100');
roachf_2048ch_control_ctl_regs_feng_ctl_addr_end     = hex2dec('010601FF');

% roachf_2048ch/control/ctl_regs/gbe_sw_port
roachf_2048ch_control_ctl_regs_gbe_sw_port_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_gbe_sw_port_param        = 'in';
roachf_2048ch_control_ctl_regs_gbe_sw_port_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_gbe_sw_port_addr_start   = hex2dec('01060200');
roachf_2048ch_control_ctl_regs_gbe_sw_port_addr_end     = hex2dec('010602FF');

% roachf_2048ch/control/ctl_regs/gpu_ip
roachf_2048ch_control_ctl_regs_gpu_ip_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_gpu_ip_param        = 'in';
roachf_2048ch_control_ctl_regs_gpu_ip_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_gpu_ip_addr_start   = hex2dec('01060300');
roachf_2048ch_control_ctl_regs_gpu_ip_addr_end     = hex2dec('010603FF');

% roachf_2048ch/control/ctl_regs/gpu_port
roachf_2048ch_control_ctl_regs_gpu_port_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_gpu_port_param        = 'in';
roachf_2048ch_control_ctl_regs_gpu_port_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_gpu_port_addr_start   = hex2dec('01060400');
roachf_2048ch_control_ctl_regs_gpu_port_addr_end     = hex2dec('010604FF');

% roachf_2048ch/control/ctl_regs/ip_base
roachf_2048ch_control_ctl_regs_ip_base_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_ip_base_param        = 'in';
roachf_2048ch_control_ctl_regs_ip_base_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_ip_base_addr_start   = hex2dec('01060500');
roachf_2048ch_control_ctl_regs_ip_base_addr_end     = hex2dec('010605FF');

% roachf_2048ch/control/ctl_regs/my_ip
roachf_2048ch_control_ctl_regs_my_ip_type         = 'xps_sw_reg';
roachf_2048ch_control_ctl_regs_my_ip_param        = 'in';
roachf_2048ch_control_ctl_regs_my_ip_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_ctl_regs_my_ip_addr_start   = hex2dec('01060600');
roachf_2048ch_control_ctl_regs_my_ip_addr_end     = hex2dec('010606FF');

% roachf_2048ch/control/delay/delay
roachf_2048ch_control_delay_delay_type         = 'xps_sw_reg';
roachf_2048ch_control_delay_delay_param        = 'in';
roachf_2048ch_control_delay_delay_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_delay_delay_addr_start   = hex2dec('01060700');
roachf_2048ch_control_delay_delay_addr_end     = hex2dec('010607FF');

% roachf_2048ch/control/eq_coefs/eq0_ctl
roachf_2048ch_control_eq_coefs_eq0_ctl_type         = 'xps_sw_reg';
roachf_2048ch_control_eq_coefs_eq0_ctl_param        = 'in';
roachf_2048ch_control_eq_coefs_eq0_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_eq_coefs_eq0_ctl_addr_start   = hex2dec('01060800');
roachf_2048ch_control_eq_coefs_eq0_ctl_addr_end     = hex2dec('010608FF');

% roachf_2048ch/control/eq_coefs/eq1_ctl
roachf_2048ch_control_eq_coefs_eq1_ctl_type         = 'xps_sw_reg';
roachf_2048ch_control_eq_coefs_eq1_ctl_param        = 'in';
roachf_2048ch_control_eq_coefs_eq1_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_eq_coefs_eq1_ctl_addr_start   = hex2dec('01060900');
roachf_2048ch_control_eq_coefs_eq1_ctl_addr_end     = hex2dec('010609FF');

% roachf_2048ch/control/eq_coefs/eq2_ctl
roachf_2048ch_control_eq_coefs_eq2_ctl_type         = 'xps_sw_reg';
roachf_2048ch_control_eq_coefs_eq2_ctl_param        = 'in';
roachf_2048ch_control_eq_coefs_eq2_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_eq_coefs_eq2_ctl_addr_start   = hex2dec('01060A00');
roachf_2048ch_control_eq_coefs_eq2_ctl_addr_end     = hex2dec('01060AFF');

% roachf_2048ch/control/eq_coefs/eq3_ctl
roachf_2048ch_control_eq_coefs_eq3_ctl_type         = 'xps_sw_reg';
roachf_2048ch_control_eq_coefs_eq3_ctl_param        = 'in';
roachf_2048ch_control_eq_coefs_eq3_ctl_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_eq_coefs_eq3_ctl_addr_start   = hex2dec('01060B00');
roachf_2048ch_control_eq_coefs_eq3_ctl_addr_end     = hex2dec('01060BFF');

% roachf_2048ch/control/insel/insel
roachf_2048ch_control_insel_insel_type         = 'xps_sw_reg';
roachf_2048ch_control_insel_insel_param        = 'in';
roachf_2048ch_control_insel_insel_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_insel_insel_addr_start   = hex2dec('01060C00');
roachf_2048ch_control_insel_insel_addr_end     = hex2dec('01060CFF');

% roachf_2048ch/control/seed/seed_data
roachf_2048ch_control_seed_seed_data_type         = 'xps_sw_reg';
roachf_2048ch_control_seed_seed_data_param        = 'in';
roachf_2048ch_control_seed_seed_data_ip_name      = 'opb_register_ppc2simulink';
roachf_2048ch_control_seed_seed_data_addr_start   = hex2dec('01060D00');
roachf_2048ch_control_seed_seed_data_addr_end     = hex2dec('01060DFF');

% roachf_2048ch/status/gbe_gpu
roachf_2048ch_status_gbe_gpu_type         = 'xps_sw_reg';
roachf_2048ch_status_gbe_gpu_param        = 'out';
roachf_2048ch_status_gbe_gpu_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_status_gbe_gpu_addr_start   = hex2dec('01060E00');
roachf_2048ch_status_gbe_gpu_addr_end     = hex2dec('01060EFF');

% roachf_2048ch/status/gbe_sw
roachf_2048ch_status_gbe_sw_type         = 'xps_sw_reg';
roachf_2048ch_status_gbe_sw_param        = 'out';
roachf_2048ch_status_gbe_sw_ip_name      = 'opb_register_simulink2ppc';
roachf_2048ch_status_gbe_sw_addr_start   = hex2dec('01060F00');
roachf_2048ch_status_gbe_sw_addr_end     = hex2dec('01060FFF');

