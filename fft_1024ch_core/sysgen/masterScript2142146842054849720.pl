
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/scratch/zaki/workspace/roachfengine',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 100.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '10.1.3',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'NGC Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'NGC Netlist',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-zaki/cg_wk/c43167c5912ff7ebe',
    'coregen_part_family' => 'virtex5',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'fft_1024ch_core',
    'design_full_path' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core.mdl',
    'device' => 'xc5vsx95t-1ff1136',
    'device_speed' => '-1',
    'directory' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core',
    'dsp_cache_root_path' => '/tmp/sysgentmp-zaki',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 96274.00732421875,
    'generating_subsystem_handle' => 96274.00732421875,
    'generation_directory' => './fft_1024ch_core',
    'has_advanced_control' => '0',
    'hdlDir' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/scratch/zaki/workspace/roachfengine',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '13.3i',
    'master_sysgen_token_handle' => 106015.10278320312,
    'matlab' => '/scratch/mathworks/R2010a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 96274.00732421875,
    'mdlPath' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core.mdl',
    'modelDiagnostics' => [
      {
        'count' => 3560.0,
        'isMask' => 0.0,
        'type' => 'fft_1024ch_core Total blocks',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'FromWorkspace',
      },
      {
        'count' => 486.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 487.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'RealImagToComplex',
      },
      {
        'count' => 2279.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 292.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'ToWorkspace',
      },
      {
        'count' => 62.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 27.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 402.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx BitBasher Block',
      },
      {
        'count' => 127.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 84.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 250.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 47.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx DSP48E Block',
      },
      {
        'count' => 99.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 48.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 160.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 215.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 36.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Negate Block Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 20.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 167.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 484.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx WaveScope Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'bi_real_unscr_2x',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'biplex_core',
      },
      {
        'count' => 11.0,
        'isMask' => 1.0,
        'type' => 'butterfly_direct',
      },
      {
        'count' => 33.0,
        'isMask' => 1.0,
        'type' => 'c_to_ri',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'caddsub_dsp48e',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'coeff_gen',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'convert',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'convert_of',
      },
      {
        'count' => 10.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'delay_slr',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'fft_biplex_real_2x',
      },
      {
        'count' => 11.0,
        'isMask' => 1.0,
        'type' => 'fft_stage_n',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'reorder',
      },
      {
        'count' => 35.0,
        'isMask' => 1.0,
        'type' => 'ri_to_c',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'sincos_dsp48e',
      },
      {
        'count' => 11.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'sync_delay_en',
      },
      {
        'count' => 9.0,
        'isMask' => 1.0,
        'type' => 'twiddle_general_4mult',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'twiddle_pass_through',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core.mdl',
    'myxilinx' => '/scratch/Xilinx/13.3/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 1.0,
      'include_clockwrapper' => 0.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1136',
    'part' => 'xc5vsx95t',
    'partFamily' => 'virtex5',
    'port_data_types_enabled' => 0.0,
    'postgeneration_fcn' => 'xlNGCPostGeneration',
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'report_true_rates' => 0.0,
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'settings_fcn' => 'xlngcsettings',
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '51,50,-1,-1,red,beige,0,07734,right',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 51 51 0 ],[0 0 50 50 ],[0.93 0.92 0.86]);
patch([12 4 16 4 12 25 29 33 47 36 25 17 29 17 25 36 47 33 29 25 12 ],[5 13 25 37 45 45 41 45 45 34 45 37 25 13 5 16 5 5 9 5 5 ],[0.6 0.2 0.25]);
plot([0 51 51 0 0 ],[0 0 50 50 0 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');
',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 96274.00732421875,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 100.0,
    'sysgen' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'base_system_period_hardware' => 100.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '10.1.3',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'NGC Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'virtex5',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => './fft_1024ch_core',
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 106015.10278320312,
      'ngc_config' => {
        'include_cf' => 1.0,
        'include_clockwrapper' => 0.0,
      },
      'package' => 'ff1136',
      'part' => 'xc5vsx95t',
      'postgeneration_fcn' => 'xlNGCPostGeneration',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'settings_fcn' => 'xlngcsettings',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '51,50,-1,-1,red,beige,0,07734,right',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 51 51 0 ],[0 0 50 50 ],[0.93 0.92 0.86]);
patch([12 4 16 4 12 25 29 33 47 36 25 17 29 17 25 36 47 33 29 25 12 ],[5 13 25 37 45 45 41 45 45 34 45 37 25 13 5 16 5 5 9 5 5 ],[0.6 0.2 0.25]);
plot([0 51 51 0 0 ],[0 0 50 50 0 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');
',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 96274.00732421875,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 100.0,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'xilinx_device' => 'xc5vsx95t-1ff1136',
      'xilinxfamily' => 'virtex5',
    },
    'sysgen_Root' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 100.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => '/scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => '/tmp/sysgentmp-zaki',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '1375.000000 ns',
    'write_port_labels_on_update' => 1.0,
    'xilinx' => '/scratch/Xilinx/13.3/ISE_DS/ISE',
    'xilinx_device' => 'xc5vsx95t-1ff1136',
    'xilinx_family' => 'virtex5',
    'xilinx_package' => 'ff1136',
    'xilinx_part' => 'xc5vsx95t',
    'xilinxdevice' => 'xc5vsx95t-1ff1136',
    'xilinxfamily' => 'virtex5',
    'xilinxpart' => 'xc5vsx95t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7278cc6d2681503b42f7a4b4201bd1f5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_9a0fa0f632',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '081fd9bd24ee222f5c5d9647ba670fc6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4630dbaf3509d6b4a8fc05647a4092b6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5857be404a1f55e9b92297e17400df45',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldsp48e.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8326bebda559fc7371fc1161e70046df',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((30 - 1) downto 0);
  signal output_port_5_5_force: signed((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_eb03bc3377',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1fbb8dfefb01491bd9ea8a54c58a4ff9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((48 - 1) downto 0);
  signal output_port_5_5_force: signed((48 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((48 - 1) downto 0);
    output_port : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_7ea107432a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '58cc9b54ea29e7bf84571ac5ab977a5e',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'abdf8152fcff5f44bf2ba3bd28905eb9',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '908c27b641ca752b17d493067e198c76',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4c449dd556',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '26c90b101ce1ca8b2f28c242a8215ef7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_963ed6358a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8fe814692903faea56ecec2003964cb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_822933f89b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '69b50d12346ea589c8a9837172650e77',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '116079b41ffb2b4983a6f837b544f828',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((24 - 1) downto 0);
  signal y_2_1_concat: unsigned((48 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((24 - 1) downto 0);
    y : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b57c4be2de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2b373105557d39549f92ec8b878d467b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0110011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_270746ab47',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c4d43c4592c4583994a5de0ed959bdb',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '985e9d76d6ae3c271b8459f1fce995ff',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((24 - 1) downto 0);
  signal output_port_5_5_force: unsigned((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_3fb4604c01',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2530f8df112851d515ce162394e0a81b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((24 - 1) downto 0);
  signal output_port_5_5_force: signed((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4bf1ad328a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4517d6063b9559e7a92d10cf38135e94',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9b170629b0900bb584d432fdce846ba',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4200b6e5902c60514d88b8f48094bfa0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_8038205d89',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed9057cdda22f0e298eb638800508a9c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b198bd62b0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c5ae4ed7a90830b07c3ff2596ce4fc5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((18 - 1) downto 0);
  signal output_port_5_5_force: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_580feec131',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cdddafb0693d138b30991be4df6ead7',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1899a3cb359c4a6df2e0f1f184ab3d7c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((19 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_9f61027ba4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1b450bcdb005adf8b7f864caef9a0cc1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_118598964d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e771fae83e3ce153cf1c2720e5709fbb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a3923dd146',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '66b549abead4ab5509046254029d7863',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_0604807f72',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '13366d021ddc9f5413827bc05cb9e24f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_6293007044',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_18c024ef1595096b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '41e0fb2bea204fd7f72226f8cadb186f',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_18c024ef1595096b',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '79cfaf8c15ce6d93b744ee6a4a4e8394',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_aacf6e1b0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '298203483c3de52896eed04fd75246a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_80f90b97d0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cbc8f55ab0bdad8c93c57462ba138dc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_1bef4ba0e4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dca08c57a49d58b068e6447a87a53acc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_2147430058',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '77179eb8d1d1c5009f0e60643c384b37',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_b4b277ae0f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_92cf1c8e61537910',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ba688bfaa54242d8a74b04af61c7f4bc',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_92cf1c8e61537910',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a16df67c5246f54629ba207a0ad480c7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((10 - 1) downto 0);
  signal d1_1_27: std_logic_vector((10 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "0000000000");
  signal pipe_16_22_front_din: std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((10 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_bdc1db9d7e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f6d1e6dbfa67667bc0d35f47c5472e77',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '63c6c8bca85371e8631a02ab41990ced',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_3a48054ca3a8deec',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d003b6415d5553c6e7a444a175d3420',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_3a48054ca3a8deec',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0628afa094f79311a0faa9cc1e63119e',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '09ba9802958678862fccf5793ffb3ec5',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '78f1cf42611d4cad3e2d8eb3993eb745',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((10 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_0f6b6badfe',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '856c58be1b0a0f72f980484626d50a4f',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '71b2c813dd9a88605f2903f053f0dda9',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 200, 100, 300, 80, 280, 180, 380, 40, 240, 140, 340, C0, 2C0, 1C0, 3C0, 20, 220, 120, 320, A0, 2A0, 1A0, 3A0, 60, 260, 160, 360, E0, 2E0, 1E0, 3E0, 10, 210, 110, 310, 90, 290, 190, 390, 50, 250, 150, 350, D0, 2D0, 1D0, 3D0, 30, 230, 130, 330, B0, 2B0, 1B0, 3B0, 70, 270, 170, 370, F0, 2F0, 1F0, 3F0, 8, 208, 108, 308, 88, 288, 188, 388, 48, 248, 148, 348, C8, 2C8, 1C8, 3C8, 28, 228, 128, 328, A8, 2A8, 1A8, 3A8, 68, 268, 168, 368, E8, 2E8, 1E8, 3E8, 18, 218, 118, 318, 98, 298, 198, 398, 58, 258, 158, 358, D8, 2D8, 1D8, 3D8, 38, 238, 138, 338, B8, 2B8, 1B8, 3B8, 78, 278, 178, 378, F8, 2F8, 1F8, 3F8, 4, 204, 104, 304, 84, 284, 184, 384, 44, 244, 144, 344, C4, 2C4, 1C4, 3C4, 24, 224, 124, 324, A4, 2A4, 1A4, 3A4, 64, 264, 164, 364, E4, 2E4, 1E4, 3E4, 14, 214, 114, 314, 94, 294, 194, 394, 54, 254, 154, 354, D4, 2D4, 1D4, 3D4, 34, 234, 134, 334, B4, 2B4, 1B4, 3B4, 74, 274, 174, 374, F4, 2F4, 1F4, 3F4, C, 20C, 10C, 30C, 8C, 28C, 18C, 38C, 4C, 24C, 14C, 34C, CC, 2CC, 1CC, 3CC, 2C, 22C, 12C, 32C, AC, 2AC, 1AC, 3AC, 6C, 26C, 16C, 36C, EC, 2EC, 1EC, 3EC, 1C, 21C, 11C, 31C, 9C, 29C, 19C, 39C, 5C, 25C, 15C, 35C, DC, 2DC, 1DC, 3DC, 3C, 23C, 13C, 33C, BC, 2BC, 1BC, 3BC, 7C, 27C, 17C, 37C, FC, 2FC, 1FC, 3FC, 2, 202, 102, 302, 82, 282, 182, 382, 42, 242, 142, 342, C2, 2C2, 1C2, 3C2, 22, 222, 122, 322, A2, 2A2, 1A2, 3A2, 62, 262, 162, 362, E2, 2E2, 1E2, 3E2, 12, 212, 112, 312, 92, 292, 192, 392, 52, 252, 152, 352, D2, 2D2, 1D2, 3D2, 32, 232, 132, 332, B2, 2B2, 1B2, 3B2, 72, 272, 172, 372, F2, 2F2, 1F2, 3F2, A, 20A, 10A, 30A, 8A, 28A, 18A, 38A, 4A, 24A, 14A, 34A, CA, 2CA, 1CA, 3CA, 2A, 22A, 12A, 32A, AA, 2AA, 1AA, 3AA, 6A, 26A, 16A, 36A, EA, 2EA, 1EA, 3EA, 1A, 21A, 11A, 31A, 9A, 29A, 19A, 39A, 5A, 25A, 15A, 35A, DA, 2DA, 1DA, 3DA, 3A, 23A, 13A, 33A, BA, 2BA, 1BA, 3BA, 7A, 27A, 17A, 37A, FA, 2FA, 1FA, 3FA, 6, 206, 106, 306, 86, 286, 186, 386, 46, 246, 146, 346, C6, 2C6, 1C6, 3C6, 26, 226, 126, 326, A6, 2A6, 1A6, 3A6, 66, 266, 166, 366, E6, 2E6, 1E6, 3E6, 16, 216, 116, 316, 96, 296, 196, 396, 56, 256, 156, 356, D6, 2D6, 1D6, 3D6, 36, 236, 136, 336, B6, 2B6, 1B6, 3B6, 76, 276, 176, 376, F6, 2F6, 1F6, 3F6, E, 20E, 10E, 30E, 8E, 28E, 18E, 38E, 4E, 24E, 14E, 34E, CE, 2CE, 1CE, 3CE, 2E, 22E, 12E, 32E, AE, 2AE, 1AE, 3AE, 6E, 26E, 16E, 36E, EE, 2EE, 1EE, 3EE, 1E, 21E, 11E, 31E, 9E, 29E, 19E, 39E, 5E, 25E, 15E, 35E, DE, 2DE, 1DE, 3DE, 3E, 23E, 13E, 33E, BE, 2BE, 1BE, 3BE, 7E, 27E, 17E, 37E, FE, 2FE, 1FE, 3FE, 1, 201, 101, 301, 81, 281, 181, 381, 41, 241, 141, 341, C1, 2C1, 1C1, 3C1, 21, 221, 121, 321, A1, 2A1, 1A1, 3A1, 61, 261, 161, 361, E1, 2E1, 1E1, 3E1, 11, 211, 111, 311, 91, 291, 191, 391, 51, 251, 151, 351, D1, 2D1, 1D1, 3D1, 31, 231, 131, 331, B1, 2B1, 1B1, 3B1, 71, 271, 171, 371, F1, 2F1, 1F1, 3F1, 9, 209, 109, 309, 89, 289, 189, 389, 49, 249, 149, 349, C9, 2C9, 1C9, 3C9, 29, 229, 129, 329, A9, 2A9, 1A9, 3A9, 69, 269, 169, 369, E9, 2E9, 1E9, 3E9, 19, 219, 119, 319, 99, 299, 199, 399, 59, 259, 159, 359, D9, 2D9, 1D9, 3D9, 39, 239, 139, 339, B9, 2B9, 1B9, 3B9, 79, 279, 179, 379, F9, 2F9, 1F9, 3F9, 5, 205, 105, 305, 85, 285, 185, 385, 45, 245, 145, 345, C5, 2C5, 1C5, 3C5, 25, 225, 125, 325, A5, 2A5, 1A5, 3A5, 65, 265, 165, 365, E5, 2E5, 1E5, 3E5, 15, 215, 115, 315, 95, 295, 195, 395, 55, 255, 155, 355, D5, 2D5, 1D5, 3D5, 35, 235, 135, 335, B5, 2B5, 1B5, 3B5, 75, 275, 175, 375, F5, 2F5, 1F5, 3F5, D, 20D, 10D, 30D, 8D, 28D, 18D, 38D, 4D, 24D, 14D, 34D, CD, 2CD, 1CD, 3CD, 2D, 22D, 12D, 32D, AD, 2AD, 1AD, 3AD, 6D, 26D, 16D, 36D, ED, 2ED, 1ED, 3ED, 1D, 21D, 11D, 31D, 9D, 29D, 19D, 39D, 5D, 25D, 15D, 35D, DD, 2DD, 1DD, 3DD, 3D, 23D, 13D, 33D, BD, 2BD, 1BD, 3BD, 7D, 27D, 17D, 37D, FD, 2FD, 1FD, 3FD, 3, 203, 103, 303, 83, 283, 183, 383, 43, 243, 143, 343, C3, 2C3, 1C3, 3C3, 23, 223, 123, 323, A3, 2A3, 1A3, 3A3, 63, 263, 163, 363, E3, 2E3, 1E3, 3E3, 13, 213, 113, 313, 93, 293, 193, 393, 53, 253, 153, 353, D3, 2D3, 1D3, 3D3, 33, 233, 133, 333, B3, 2B3, 1B3, 3B3, 73, 273, 173, 373, F3, 2F3, 1F3, 3F3, B, 20B, 10B, 30B, 8B, 28B, 18B, 38B, 4B, 24B, 14B, 34B, CB, 2CB, 1CB, 3CB, 2B, 22B, 12B, 32B, AB, 2AB, 1AB, 3AB, 6B, 26B, 16B, 36B, EB, 2EB, 1EB, 3EB, 1B, 21B, 11B, 31B, 9B, 29B, 19B, 39B, 5B, 25B, 15B, 35B, DB, 2DB, 1DB, 3DB, 3B, 23B, 13B, 33B, BB, 2BB, 1BB, 3BB, 7B, 27B, 17B, 37B, FB, 2FB, 1FB, 3FB, 7, 207, 107, 307, 87, 287, 187, 387, 47, 247, 147, 347, C7, 2C7, 1C7, 3C7, 27, 227, 127, 327, A7, 2A7, 1A7, 3A7, 67, 267, 167, 367, E7, 2E7, 1E7, 3E7, 17, 217, 117, 317, 97, 297, 197, 397, 57, 257, 157, 357, D7, 2D7, 1D7, 3D7, 37, 237, 137, 337, B7, 2B7, 1B7, 3B7, 77, 277, 177, 377, F7, 2F7, 1F7, 3F7, F, 20F, 10F, 30F, 8F, 28F, 18F, 38F, 4F, 24F, 14F, 34F, CF, 2CF, 1CF, 3CF, 2F, 22F, 12F, 32F, AF, 2AF, 1AF, 3AF, 6F, 26F, 16F, 36F, EF, 2EF, 1EF, 3EF, 1F, 21F, 11F, 31F, 9F, 29F, 19F, 39F, 5F, 25F, 15F, 35F, DF, 2DF, 1DF, 3DF, 3F, 23F, 13F, 33F, BF, 2BF, 1BF, 3BF, 7F, 27F, 17F, 37F, FF, 2FF, 1FF, 3FF;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 10',
    'CSET read_width_b = 10',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = false',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 10',
    'CSET write_width_b = 10',
    'CSET component_name = bmg_62_aae57d00ceec7456',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b27aaaccc998aa8afb1b5961d7fa3836',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_aae57d00ceec7456',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FF, 1FF, 2FF, FF, 37F, 17F, 27F, 7F, 3BF, 1BF, 2BF, BF, 33F, 13F, 23F, 3F, 3DF, 1DF, 2DF, DF, 35F, 15F, 25F, 5F, 39F, 19F, 29F, 9F, 31F, 11F, 21F, 1F, 3EF, 1EF, 2EF, EF, 36F, 16F, 26F, 6F, 3AF, 1AF, 2AF, AF, 32F, 12F, 22F, 2F, 3CF, 1CF, 2CF, CF, 34F, 14F, 24F, 4F, 38F, 18F, 28F, 8F, 30F, 10F, 20F, F, 3F7, 1F7, 2F7, F7, 377, 177, 277, 77, 3B7, 1B7, 2B7, B7, 337, 137, 237, 37, 3D7, 1D7, 2D7, D7, 357, 157, 257, 57, 397, 197, 297, 97, 317, 117, 217, 17, 3E7, 1E7, 2E7, E7, 367, 167, 267, 67, 3A7, 1A7, 2A7, A7, 327, 127, 227, 27, 3C7, 1C7, 2C7, C7, 347, 147, 247, 47, 387, 187, 287, 87, 307, 107, 207, 7, 3FB, 1FB, 2FB, FB, 37B, 17B, 27B, 7B, 3BB, 1BB, 2BB, BB, 33B, 13B, 23B, 3B, 3DB, 1DB, 2DB, DB, 35B, 15B, 25B, 5B, 39B, 19B, 29B, 9B, 31B, 11B, 21B, 1B, 3EB, 1EB, 2EB, EB, 36B, 16B, 26B, 6B, 3AB, 1AB, 2AB, AB, 32B, 12B, 22B, 2B, 3CB, 1CB, 2CB, CB, 34B, 14B, 24B, 4B, 38B, 18B, 28B, 8B, 30B, 10B, 20B, B, 3F3, 1F3, 2F3, F3, 373, 173, 273, 73, 3B3, 1B3, 2B3, B3, 333, 133, 233, 33, 3D3, 1D3, 2D3, D3, 353, 153, 253, 53, 393, 193, 293, 93, 313, 113, 213, 13, 3E3, 1E3, 2E3, E3, 363, 163, 263, 63, 3A3, 1A3, 2A3, A3, 323, 123, 223, 23, 3C3, 1C3, 2C3, C3, 343, 143, 243, 43, 383, 183, 283, 83, 303, 103, 203, 3, 3FD, 1FD, 2FD, FD, 37D, 17D, 27D, 7D, 3BD, 1BD, 2BD, BD, 33D, 13D, 23D, 3D, 3DD, 1DD, 2DD, DD, 35D, 15D, 25D, 5D, 39D, 19D, 29D, 9D, 31D, 11D, 21D, 1D, 3ED, 1ED, 2ED, ED, 36D, 16D, 26D, 6D, 3AD, 1AD, 2AD, AD, 32D, 12D, 22D, 2D, 3CD, 1CD, 2CD, CD, 34D, 14D, 24D, 4D, 38D, 18D, 28D, 8D, 30D, 10D, 20D, D, 3F5, 1F5, 2F5, F5, 375, 175, 275, 75, 3B5, 1B5, 2B5, B5, 335, 135, 235, 35, 3D5, 1D5, 2D5, D5, 355, 155, 255, 55, 395, 195, 295, 95, 315, 115, 215, 15, 3E5, 1E5, 2E5, E5, 365, 165, 265, 65, 3A5, 1A5, 2A5, A5, 325, 125, 225, 25, 3C5, 1C5, 2C5, C5, 345, 145, 245, 45, 385, 185, 285, 85, 305, 105, 205, 5, 3F9, 1F9, 2F9, F9, 379, 179, 279, 79, 3B9, 1B9, 2B9, B9, 339, 139, 239, 39, 3D9, 1D9, 2D9, D9, 359, 159, 259, 59, 399, 199, 299, 99, 319, 119, 219, 19, 3E9, 1E9, 2E9, E9, 369, 169, 269, 69, 3A9, 1A9, 2A9, A9, 329, 129, 229, 29, 3C9, 1C9, 2C9, C9, 349, 149, 249, 49, 389, 189, 289, 89, 309, 109, 209, 9, 3F1, 1F1, 2F1, F1, 371, 171, 271, 71, 3B1, 1B1, 2B1, B1, 331, 131, 231, 31, 3D1, 1D1, 2D1, D1, 351, 151, 251, 51, 391, 191, 291, 91, 311, 111, 211, 11, 3E1, 1E1, 2E1, E1, 361, 161, 261, 61, 3A1, 1A1, 2A1, A1, 321, 121, 221, 21, 3C1, 1C1, 2C1, C1, 341, 141, 241, 41, 381, 181, 281, 81, 301, 101, 201, 1, 3FE, 1FE, 2FE, FE, 37E, 17E, 27E, 7E, 3BE, 1BE, 2BE, BE, 33E, 13E, 23E, 3E, 3DE, 1DE, 2DE, DE, 35E, 15E, 25E, 5E, 39E, 19E, 29E, 9E, 31E, 11E, 21E, 1E, 3EE, 1EE, 2EE, EE, 36E, 16E, 26E, 6E, 3AE, 1AE, 2AE, AE, 32E, 12E, 22E, 2E, 3CE, 1CE, 2CE, CE, 34E, 14E, 24E, 4E, 38E, 18E, 28E, 8E, 30E, 10E, 20E, E, 3F6, 1F6, 2F6, F6, 376, 176, 276, 76, 3B6, 1B6, 2B6, B6, 336, 136, 236, 36, 3D6, 1D6, 2D6, D6, 356, 156, 256, 56, 396, 196, 296, 96, 316, 116, 216, 16, 3E6, 1E6, 2E6, E6, 366, 166, 266, 66, 3A6, 1A6, 2A6, A6, 326, 126, 226, 26, 3C6, 1C6, 2C6, C6, 346, 146, 246, 46, 386, 186, 286, 86, 306, 106, 206, 6, 3FA, 1FA, 2FA, FA, 37A, 17A, 27A, 7A, 3BA, 1BA, 2BA, BA, 33A, 13A, 23A, 3A, 3DA, 1DA, 2DA, DA, 35A, 15A, 25A, 5A, 39A, 19A, 29A, 9A, 31A, 11A, 21A, 1A, 3EA, 1EA, 2EA, EA, 36A, 16A, 26A, 6A, 3AA, 1AA, 2AA, AA, 32A, 12A, 22A, 2A, 3CA, 1CA, 2CA, CA, 34A, 14A, 24A, 4A, 38A, 18A, 28A, 8A, 30A, 10A, 20A, A, 3F2, 1F2, 2F2, F2, 372, 172, 272, 72, 3B2, 1B2, 2B2, B2, 332, 132, 232, 32, 3D2, 1D2, 2D2, D2, 352, 152, 252, 52, 392, 192, 292, 92, 312, 112, 212, 12, 3E2, 1E2, 2E2, E2, 362, 162, 262, 62, 3A2, 1A2, 2A2, A2, 322, 122, 222, 22, 3C2, 1C2, 2C2, C2, 342, 142, 242, 42, 382, 182, 282, 82, 302, 102, 202, 2, 3FC, 1FC, 2FC, FC, 37C, 17C, 27C, 7C, 3BC, 1BC, 2BC, BC, 33C, 13C, 23C, 3C, 3DC, 1DC, 2DC, DC, 35C, 15C, 25C, 5C, 39C, 19C, 29C, 9C, 31C, 11C, 21C, 1C, 3EC, 1EC, 2EC, EC, 36C, 16C, 26C, 6C, 3AC, 1AC, 2AC, AC, 32C, 12C, 22C, 2C, 3CC, 1CC, 2CC, CC, 34C, 14C, 24C, 4C, 38C, 18C, 28C, 8C, 30C, 10C, 20C, C, 3F4, 1F4, 2F4, F4, 374, 174, 274, 74, 3B4, 1B4, 2B4, B4, 334, 134, 234, 34, 3D4, 1D4, 2D4, D4, 354, 154, 254, 54, 394, 194, 294, 94, 314, 114, 214, 14, 3E4, 1E4, 2E4, E4, 364, 164, 264, 64, 3A4, 1A4, 2A4, A4, 324, 124, 224, 24, 3C4, 1C4, 2C4, C4, 344, 144, 244, 44, 384, 184, 284, 84, 304, 104, 204, 4, 3F8, 1F8, 2F8, F8, 378, 178, 278, 78, 3B8, 1B8, 2B8, B8, 338, 138, 238, 38, 3D8, 1D8, 2D8, D8, 358, 158, 258, 58, 398, 198, 298, 98, 318, 118, 218, 18, 3E8, 1E8, 2E8, E8, 368, 168, 268, 68, 3A8, 1A8, 2A8, A8, 328, 128, 228, 28, 3C8, 1C8, 2C8, C8, 348, 148, 248, 48, 388, 188, 288, 88, 308, 108, 208, 8, 3F0, 1F0, 2F0, F0, 370, 170, 270, 70, 3B0, 1B0, 2B0, B0, 330, 130, 230, 30, 3D0, 1D0, 2D0, D0, 350, 150, 250, 50, 390, 190, 290, 90, 310, 110, 210, 10, 3E0, 1E0, 2E0, E0, 360, 160, 260, 60, 3A0, 1A0, 2A0, A0, 320, 120, 220, 20, 3C0, 1C0, 2C0, C0, 340, 140, 240, 40, 380, 180, 280, 80, 300, 100, 200, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 10',
    'CSET read_width_b = 10',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = false',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 10',
    'CSET write_width_b = 10',
    'CSET component_name = bmg_62_33b17ff3d27389a4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb115c8e41c4e16e50c03ec1fbed3818',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_33b17ff3d27389a4',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '33d0bd4da38e5cae4fc9beffbd0ed266',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_498bc68c14',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_511daee48ac62764',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6585352deeace4161d48b64cc4c0c288',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_511daee48ac62764',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a718a86fca8b289e561fd7c3b1d2e511',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3bd769a2a0d5fb03dd00e37269cbb560',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
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
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_b75bc1e5be',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '62bc9f8a3c249b32ba23a34fb1c28724',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_0ffd72e037',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d20d839a3244f157f3847a6567003a1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '65ce384455e414413f6615decfb0965f',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'abe8cc11c1b7f3f14f3dceea5dedbb3d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9233aa5aafccb6c4ad0c1bd10424ca1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((20 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((21 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((20 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_c615d93998',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf47f6226af7dc204120ae835177b53d',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((20 - 1) downto 0);
  signal output_port_5_5_force: unsigned((20 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((20 - 1) downto 0);
    output_port : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4a8cbc85ce',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7dd15878aea81d180d2930d8e9f6a651',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((21 - 1) downto 0);
  signal b_17_35: unsigned((19 - 1) downto 0);
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
  signal cast_69_18: signed((22 - 1) downto 0);
  signal cast_69_22: signed((22 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((22 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
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
  cast_69_18 <= s2s_cast(a_17_32, 19, 22, 19);
  cast_69_22 <= u2s_cast(b_17_35, 19, 22, 19);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 19, 18, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((21 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_27fae134d1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e5ef021c199111e8c4536f3ac1de1ef',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4709ea49b5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '38c82ea780377b3d66c5d0ebdeac9136',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '56e3e19ccb2ee936cc3aae545e8799ac',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
  signal output_port_5_5_force: signed((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d357e69fa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6531fc5dc936d23c947bd517d32fa9f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((19 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((19 - 1) downto 0);
    output_port : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d2180c9169',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9d8fb65ef5d0bd11d018ca31310b0297',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= fully_2_1_bit;
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_938d99ac11',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cf1275c526d4fdaa6b609b12e027d5cf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_e9e6541380',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '81014419997820679cf383b2fa7476b0',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb6ae1ac1a97b1a556c3680481227ede',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de4543ef2796aec3076335969ebf2eb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_a6d07705dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ec0814da6cf9de952ea660722875ef4c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((19 - 1) downto 0);
  signal d1_1_27: std_logic_vector((19 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "00000000000000000000",
    "00000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((20 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
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
        unregy_join_6_1 <= cast(d0_1_24, 17, 20, 18, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 18, 20, 18, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((19 - 1) downto 0);
    d1 : in std_logic_vector((19 - 1) downto 0);
    y : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_28159dbdb9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bea4305dc882ee0c60c8116a045af5da',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_a14e3dd1bd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_511daee48ac62764',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c56b06fe9dae5b0609beda7bb153eaad',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_511daee48ac62764',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_2d23f33d919b4b99',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e6bab60aeeeeb398ce92722a8170a7f',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_2d23f33d919b4b99',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_92cf1c8e61537910',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '40e16c79685c026efd1e645b19e74265',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_92cf1c8e61537910',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '50e00086a424689f23ac2c4d38472363',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_444d3f5046',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb840e412e429ef1dc4193d23739cbd7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4bb6f691f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '699a777ef2bfa8612931f4faecb72907',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '72511a2f38a3364368b2065fbb0f32b2',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f11f3291b95af3b13446ebaf0eb07b87',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2b172d87cddcaebf6decaf819a79fbc0',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '15f46eb664aed2a3fbf76ad9d7fecff4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((25 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_f133931c1f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '17afa54311647355dce3d967bcd53819',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
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
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((21 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_2969055f39',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'affa79c5d22a480ab845ce71f11104b2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000000000111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_9a2c97cce5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4a0a80501d034567e678bb7d59f82cba',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '12d27a02cda9786477d78546fd1a1f46',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((25 - 1) downto 0);
  signal output_port_5_5_force: signed((25 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((25 - 1) downto 0);
    output_port : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_60ea556961',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f2032764d891b4918eda4a6785bbac08',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_299ca43e25',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '81e7c932de5c09c96dd7f87083de57fb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_182ac6c51e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '65caf6032a4141934d06eaa2c8c768a7',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '982c4a3eeaa3e7397e9e6529d23aa8ff',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f866281a576bd82a213cd5acb2f1d20',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6a2053b8e78d93000c3d191ade79144e',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005, FFFF, 3FE6E, B3E8, 349E0, EBE8, 39C95, 6084, 312E4, FAC5, 3CC84, 8CEB, 32A46, D3FB, 37078, 3067, 3049E, FE9C, 3E558, A130, 3391E, E107, 385F0, 48CF, 30A92, F484, 3B42F, 774A, 31D7E, C4E4, 35C62, 1787, 30115, FF9C, 3F1DF, AAC1, 34144, E6BF, 39121, 54C3, 30E71, F7F1, 3C046, 8243, 3239E, CCAE, 3663E, 2402, 3028C, FCFE, 3D8E2, 973C, 33172, DAC4, 37B0B, 3CAE, 3074C, F080, 3A847, 6C08, 317E9, BCA0, 352EC, AFE, 3003C, FFE1, 3F826, AF62, 34583, E966, 396D3, 5AAA, 31098, F96E, 3C661, 87A1, 326E2, D065, 36B50, 2A38, 30381, FDE1, 3DF1B, 9C42, 33539, DDF7, 38074, 42C3, 308DC, F295, 3AE35, 71B2, 31AA2, C0D1, 3579A, 1144, 30095, FF30, 3EB9A, A605, 33D22, E3F4, 38B80, 4ECF, 30C6F, F64E, 3BA35, 7CD0, 3207D, C8D9, 36144, 1DC7, 301BD, FBF5, 3D2B0, 921F, 32DCC, D770, 375B7, 368E, 305E1, EE47, 3A267, 664E, 31555, B852, 34E58, 4B6, 3000B, FFF5, 3FB4A, B1A8, 347AE, EAAB, 399B2, 5D99, 311B9, FA1F, 3C972, 8A49, 32890, D234, 36DE1, 2D50, 3040B, FE43, 3E239, 9EBC, 33727, DF83, 38330, 45CB, 309B2, F391, 3B131, 7480, 31C0C, C2DE, 359FB, 1466, 300D0, FF6B, 3EEBC, A866, 33F2F, E55E, 38E4E, 51CB, 30D6B, F724, 3BD3D, 7F8C, 32209, CAC7, 363BE, 20E5, 3021F, FC7F, 3D5C8, 94B0, 32F9B, D91E, 3785F, 399F, 30692, EF68, 3A556, 692D, 3169A, BA7D, 3509E, 7DA, 3001F, FFC4, 3F502, AD14, 34360, E817, 393F8, 57B9, 30F80, F8B4, 3C352, 84F5, 3253C, CE8E, 368C4, 271E, 30302, FD74, 3DBFE, 99C2, 33352, DC62, 37DBD, 3FBA, 3080F, F18F, 3AB3D, 6EDF, 31941, BEBC, 3553F, E21, 30064, FEEB, 3E879, A39E, 33B1C, E282, 388B6, 4BD1, 30B7C, F56E, 3B731, 7A10, 31EF9, C6E2, 35ED0, 1AA8, 30164, FB62, 3CF99, 8F88, 32C05, D5BA, 37315, 337C, 3053B, ED1C, 39F7C, 636B, 31418, B620, 34C18, 192, 30001;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_df2046baee47f05f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b216bc674940c56d57f2e5b5ecdeb19a',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_df2046baee47f05f',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC, 3FE6E, 30001, 349E0, 34C18, 39C95, 31418, 312E4, 39F7C, 3CC84, 3053B, 32A46, 37315, 37078, 32C05, 3049E, 3CF99, 3E558, 30164, 3391E, 35ED0, 385F0, 31EF9, 30A92, 3B731, 3B42F, 30B7C, 31D7E, 388B6, 35C62, 33B1C, 30115, 3E879, 3F1DF, 30064, 34144, 3553F, 39121, 31941, 30E71, 3AB3D, 3C046, 3080F, 3239E, 37DBD, 3663E, 33352, 3028C, 3DBFE, 3D8E2, 30302, 33172, 368C4, 37B0B, 3253C, 3074C, 3C352, 3A847, 30F80, 317E9, 393F8, 352EC, 34360, 3003C, 3F502, 3F826, 3001F, 34583, 3509E, 396D3, 3169A, 31098, 3A556, 3C661, 30692, 326E2, 3785F, 36B50, 32F9B, 30381, 3D5C8, 3DF1B, 3021F, 33539, 363BE, 38074, 32209, 308DC, 3BD3D, 3AE35, 30D6B, 31AA2, 38E4E, 3579A, 33F2F, 30095, 3EEBC, 3EB9A, 300D0, 33D22, 359FB, 38B80, 31C0C, 30C6F, 3B131, 3BA35, 309B2, 3207D, 38330, 36144, 33727, 301BD, 3E239, 3D2B0, 3040B, 32DCC, 36DE1, 375B7, 32890, 305E1, 3C972, 3A267, 311B9, 31555, 399B2, 34E58, 347AE, 3000B, 3FB4A, 3FB4A, 3000B, 347AE, 34E58, 399B2, 31555, 311B9, 3A267, 3C972, 305E1, 32890, 375B7, 36DE1, 32DCC, 3040B, 3D2B0, 3E239, 301BD, 33727, 36144, 38330, 3207D, 309B2, 3BA35, 3B131, 30C6F, 31C0C, 38B80, 359FB, 33D22, 300D0, 3EB9A, 3EEBC, 30095, 33F2F, 3579A, 38E4E, 31AA2, 30D6B, 3AE35, 3BD3D, 308DC, 32209, 38074, 363BE, 33539, 3021F, 3DF1B, 3D5C8, 30381, 32F9B, 36B50, 3785F, 326E2, 30692, 3C661, 3A556, 31098, 3169A, 396D3, 3509E, 34583, 3001F, 3F826, 3F502, 3003C, 34360, 352EC, 393F8, 317E9, 30F80, 3A847, 3C352, 3074C, 3253C, 37B0B, 368C4, 33172, 30302, 3D8E2, 3DBFE, 3028C, 33352, 3663E, 37DBD, 3239E, 3080F, 3C046, 3AB3D, 30E71, 31941, 39121, 3553F, 34144, 30064, 3F1DF, 3E879, 30115, 33B1C, 35C62, 388B6, 31D7E, 30B7C, 3B42F, 3B731, 30A92, 31EF9, 385F0, 35ED0, 3391E, 30164, 3E558, 3CF99, 3049E, 32C05, 37078, 37315, 32A46, 3053B, 3CC84, 39F7C, 312E4, 31418, 39C95, 34C18, 349E0, 30001, 3FE6E;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_c6cafe6c47d0544c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '148d6133ee728c1a1b4dac07a6236901',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_c6cafe6c47d0544c',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8f867605071ba3a910f723c27f146e2a',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '67f9224462ecbcb4c07751e419e5c7d5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000",
    "0000000000000000000");
  signal op_mem_91_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_91_20_back: signed((19 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((37 - 1) downto 0);
  signal cast_71_22: signed((37 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((37 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((19 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_71_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_71_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 33, 19, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_6db2f9c02b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6d3bbfa5c8c9cad9ed2d8902646caa39',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000",
    "0000000000000000000");
  signal op_mem_91_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_91_20_back: signed((19 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((37 - 1) downto 0);
  signal cast_69_22: signed((37 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((37 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((19 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_69_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_69_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 33, 19, 17);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_8ce31f90bc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5a0162cd525b1b34efaf89a82b305d23',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '831b5d4976b08efe4bdb28e623d17e32',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '714226d6ce60f465780e15779e2d4bb5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_38898c80c0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '783533ef32c77785bfede10fce9b696d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '341ac14d7a1978db3ccee897b50852fe',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= \'1\';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_f295e5f0f2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6e051d24fcbed1196a0b3f5352ab4a40',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((23 - 1) downto 0);
  signal d1_1_27: std_logic_vector((23 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000000000",
    "000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((24 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
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
        unregy_join_6_1 <= cast(d0_1_24, 19, 24, 20, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 20, 24, 20, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((23 - 1) downto 0);
    d1 : in std_logic_vector((23 - 1) downto 0);
    y : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_f1f44b96f0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dae74d78d89571218d665e6f3713eb8f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((23 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((23 - 1) downto 0);
    op : out std_logic_vector((23 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_e5d0b4a1ec',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5257a0eb5f203098dd35d83136a607ea',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "01";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a7e2bb9e12',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c15e43b2cb0e2493cbb9c38d1c14235',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_cda50df78a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b1f0ae968b381ba6ab9669a6ba2c3226',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8ddc079e9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9f5113eef58d42f3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8ab69f5571d60e7d8626b282a624cdc',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_9f5113eef58d42f3',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e38df6234de90c5b0953b584276e970',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_5f1eb17108',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5e85df7ec719ce87aaaf17afb6ac7fb4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f9928864ea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_38c9cb0851a20d91',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e52b97998ce4f6d82790769070e52a83',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_38c9cb0851a20d91',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b784916ae817967eddb6e8f59a19d248',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8935d6d994bbd880208b48fd4d336c5',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005, FFFF, 3FE6E, B3E8, 349E0, EBE8, 39C95, 6084, 312E4, FAC5, 3CC84, 8CEB, 32A46, D3FB, 37078, 3067, 3049E, FE9C, 3E558, A130, 3391E, E107, 385F0, 48CF, 30A92, F484, 3B42F, 774A, 31D7E, C4E4, 35C62, 1787, 30115, FF9C, 3F1DF, AAC1, 34144, E6BF, 39121, 54C3, 30E71, F7F1, 3C046, 8243, 3239E, CCAE, 3663E, 2402, 3028C, FCFE, 3D8E2, 973C, 33172, DAC4, 37B0B, 3CAE, 3074C, F080, 3A847, 6C08, 317E9, BCA0, 352EC, AFE, 3003C, FFE1, 3F826, AF62, 34583, E966, 396D3, 5AAA, 31098, F96E, 3C661, 87A1, 326E2, D065, 36B50, 2A38, 30381, FDE1, 3DF1B, 9C42, 33539, DDF7, 38074, 42C3, 308DC, F295, 3AE35, 71B2, 31AA2, C0D1, 3579A, 1144, 30095, FF30, 3EB9A, A605, 33D22, E3F4, 38B80, 4ECF, 30C6F, F64E, 3BA35, 7CD0, 3207D, C8D9, 36144, 1DC7, 301BD, FBF5, 3D2B0, 921F, 32DCC, D770, 375B7, 368E, 305E1, EE47, 3A267, 664E, 31555, B852, 34E58, 4B6, 3000B, FFF5, 3FB4A, B1A8, 347AE, EAAB, 399B2, 5D99, 311B9, FA1F, 3C972, 8A49, 32890, D234, 36DE1, 2D50, 3040B, FE43, 3E239, 9EBC, 33727, DF83, 38330, 45CB, 309B2, F391, 3B131, 7480, 31C0C, C2DE, 359FB, 1466, 300D0, FF6B, 3EEBC, A866, 33F2F, E55E, 38E4E, 51CB, 30D6B, F724, 3BD3D, 7F8C, 32209, CAC7, 363BE, 20E5, 3021F, FC7F, 3D5C8, 94B0, 32F9B, D91E, 3785F, 399F, 30692, EF68, 3A556, 692D, 3169A, BA7D, 3509E, 7DA, 3001F, FFC4, 3F502, AD14, 34360, E817, 393F8, 57B9, 30F80, F8B4, 3C352, 84F5, 3253C, CE8E, 368C4, 271E, 30302, FD74, 3DBFE, 99C2, 33352, DC62, 37DBD, 3FBA, 3080F, F18F, 3AB3D, 6EDF, 31941, BEBC, 3553F, E21, 30064, FEEB, 3E879, A39E, 33B1C, E282, 388B6, 4BD1, 30B7C, F56E, 3B731, 7A10, 31EF9, C6E2, 35ED0, 1AA8, 30164, FB62, 3CF99, 8F88, 32C05, D5BA, 37315, 337C, 3053B, ED1C, 39F7C, 636B, 31418, B620, 34C18, 192, 30001, 10000, 3FF37, B477, 34A6D, EC36, 39D4F, 613E, 31330, FAED, 3CD49, 8D93, 32AB5, D46B, 3711F, 312C, 304C4, FEB0, 3E620, A1CC, 3399D, E167, 386A1, 4990, 30ACC, F4BF, 3B4F0, 77FC, 31DDC, C564, 35CFD, 1850, 30128, FFA7, 3F2A7, AB56, 341CA, E716, 391D6, 5581, 30EB4, F823, 3C109, 82F0, 32405, CD27, 366DF, 24C9, 302A8, FD1D, 3D9A9, 97DE, 331E9, DB2C, 37BB7, 3D71, 3077B, F0C5, 3A904, 6CBE, 3183E, BD28, 35380, BC7, 30045, FFE7, 3F8EF, AFF4, 3460D, E9B8, 3978A, 5B66, 310DF, F99B, 3C725, 884C, 3274C, D0D9, 36BF4, 2AFE, 303A3, FDFA, 3DFE2, 9CE1, 335B3, DE5B, 38123, 4385, 30911, F2D5, 3AEF4, 7266, 31AFC, C155, 35832, 120D, 300A3, FF3F, 3EC62, A69E, 33DA4, E450, 38C33, 4F8E, 30CAD, F684, 3BAF7, 7D7F, 320DF, C955, 361E2, 1E8F, 301D5, FC18, 3D376, 92C4, 32E3F, D7DC, 37661, 3753, 3060D, EE90, 3A322, 6706, 315A5, B8DD, 34EE9, 57F, 3000F, FFF8, 3FC13, B239, 3483A, EAFC, 39A6B, 5E54, 31203, FA49, 3CA36, 8AF2, 328FD, D2A6, 36E87, 2E16, 3042F, FE5A, 3E301, 9F5A, 337A4, DFE5, 383E0, 468C, 309EA, F3CF, 3B1F0, 7533, 31C67, C360, 35A94, 152E, 300E1, FF78, 3EF85, A8FD, 33FB4, E5B7, 38F02, 5289, 30DAC, F758, 3BDFF, 803A, 3226E, CB42, 3645D, 21AD, 30239, FCA0, 3D68F, 9554, 33010, D989, 37909, 3A63, 306BF, EFAF, 3A612, 69E4, 316ED, BB06, 35131, 8A3, 30025, FFCC, 3F5CB, ADA8, 343E8, E86B, 394AE, 5875, 30FC5, F8E4, 3C416, 85A0, 325A4, CF04, 36966, 27E4, 30321, FD90, 3DCC5, 9A63, 333CB, DCC8, 37E6B, 407C, 30841, F1D2, 3ABFA, 6F94, 31999, BF42, 355D6, EEA, 3006F, FEFD, 3E941, A438, 33B9D, E2DF, 38968, 4C90, 30BB8, F5A6, 3B7F2, 7AC0, 31F59, C761, 35F6C, 1B70, 30179, FB88, 3D05F, 902E, 32C76, D628, 373BD, 3440, 30564, ED68, 3A037, 6424, 31466, B6AD, 34CA8, 25B, 30003, FFFD, 3FDA5, B358, 34953, EB9A, 39BDC, 5FC9, 31298, FA9C, 3CBC0, 8C43, 329D8, D38A, 36FD2, 2FA1, 30478, FE87, 3E490, A094, 3389F, E0A7, 38540, 480E, 30A5A, F448, 3B370, 7698, 31D21, C463, 35BC8, 16BF, 30103, FF91, 3F116, AA2A, 340BE, E667, 3906C, 5406, 30E2E, F7BF, 3BF84, 8195, 32338, CC35, 3659D, 233B, 30270, FCDF, 3D81C, 969A, 330FC, DA5C, 37A60, 3BEA, 3071C, F03B, 3A78B, 6B52, 31795, BC18, 35258, A35, 30034, FFDB, 3F75D, AECF, 344FA, E913, 3961C, 59EE, 31051, F941, 3C59D, 86F7, 32677, CFF0, 36AAC, 2971, 30360, FDC7, 3DE53, 9BA3, 334BE, DD92, 37FC6, 4201, 308A8, F254, 3AD77, 70FE, 31A49, C04C, 35703, 107B, 30088, FF1F, 3EAD2, A56C, 33CA0, E399, 38ACD, 4E10, 30C31, F616, 3B974, 7C20, 3201B, C85C, 360A6, 1CFF, 301A6, FBD1, 3D1EA, 9179, 32D5A, D703, 3750E, 35CA, 305B7, EDFD, 3A1AC, 6595, 31504, B7C6, 34DC7, 3ED, 30008, FFF1, 3FA81, B117, 34723, EA5B, 398FA, 5CDE, 31170, F9F3, 3C8AD, 899F, 32824, D1C1, 36D3C, 2C8A, 303E8, FE2B, 3E171, 9E1E, 336AB, DF21, 38281, 4509, 3097C, F353, 3B072, 73CD, 31BB0, C25C, 35962, 139E, 300C1, FF5D, 3EDF3, A7CE, 33EAB, E504, 38D9A, 510C, 30D2B, F6EF, 3BC7B, 7EDD, 321A5, CA4D, 3631F, 201E, 30206, FC5D, 3D502, 940C, 32F27, D8B4, 377B4, 38DB, 30665, EF21, 3A49A, 6876, 31648, B9F3, 3500C, 711, 30019, FFBB, 3F439, AC80, 342D8, E7C2, 39342, 56FC, 30F3B, F885, 3C28F, 8449, 324D4, CE17, 36822, 2657, 302E3, FD58, 3DB37, 9921, 332D9, DBFB, 37D10, 3EF7, 307DD, F14C, 3AA7F, 6E2A, 318EA, BE36, 354AA, D59, 30059, FED8, 3E7B0, A303, 33A9C, E224, 38804, 4B10, 30B41, F534, 3B670, 795F, 31E99, C663, 35E34, 19E0, 30150, FB3C, 3CED4, 8EE1, 32B95, D54B, 3726D, 32B7, 30513, ECD0, 39EC2, 62B1, 313CA, B593, 34B89, C9, 30000;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_250528f931baf469',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8bcb667fd4df162e939fa1a5006d506b',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_250528f931baf469',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC, 3FE6E, 30001, 349E0, 34C18, 39C95, 31418, 312E4, 39F7C, 3CC84, 3053B, 32A46, 37315, 37078, 32C05, 3049E, 3CF99, 3E558, 30164, 3391E, 35ED0, 385F0, 31EF9, 30A92, 3B731, 3B42F, 30B7C, 31D7E, 388B6, 35C62, 33B1C, 30115, 3E879, 3F1DF, 30064, 34144, 3553F, 39121, 31941, 30E71, 3AB3D, 3C046, 3080F, 3239E, 37DBD, 3663E, 33352, 3028C, 3DBFE, 3D8E2, 30302, 33172, 368C4, 37B0B, 3253C, 3074C, 3C352, 3A847, 30F80, 317E9, 393F8, 352EC, 34360, 3003C, 3F502, 3F826, 3001F, 34583, 3509E, 396D3, 3169A, 31098, 3A556, 3C661, 30692, 326E2, 3785F, 36B50, 32F9B, 30381, 3D5C8, 3DF1B, 3021F, 33539, 363BE, 38074, 32209, 308DC, 3BD3D, 3AE35, 30D6B, 31AA2, 38E4E, 3579A, 33F2F, 30095, 3EEBC, 3EB9A, 300D0, 33D22, 359FB, 38B80, 31C0C, 30C6F, 3B131, 3BA35, 309B2, 3207D, 38330, 36144, 33727, 301BD, 3E239, 3D2B0, 3040B, 32DCC, 36DE1, 375B7, 32890, 305E1, 3C972, 3A267, 311B9, 31555, 399B2, 34E58, 347AE, 3000B, 3FB4A, 3FB4A, 3000B, 347AE, 34E58, 399B2, 31555, 311B9, 3A267, 3C972, 305E1, 32890, 375B7, 36DE1, 32DCC, 3040B, 3D2B0, 3E239, 301BD, 33727, 36144, 38330, 3207D, 309B2, 3BA35, 3B131, 30C6F, 31C0C, 38B80, 359FB, 33D22, 300D0, 3EB9A, 3EEBC, 30095, 33F2F, 3579A, 38E4E, 31AA2, 30D6B, 3AE35, 3BD3D, 308DC, 32209, 38074, 363BE, 33539, 3021F, 3DF1B, 3D5C8, 30381, 32F9B, 36B50, 3785F, 326E2, 30692, 3C661, 3A556, 31098, 3169A, 396D3, 3509E, 34583, 3001F, 3F826, 3F502, 3003C, 34360, 352EC, 393F8, 317E9, 30F80, 3A847, 3C352, 3074C, 3253C, 37B0B, 368C4, 33172, 30302, 3D8E2, 3DBFE, 3028C, 33352, 3663E, 37DBD, 3239E, 3080F, 3C046, 3AB3D, 30E71, 31941, 39121, 3553F, 34144, 30064, 3F1DF, 3E879, 30115, 33B1C, 35C62, 388B6, 31D7E, 30B7C, 3B42F, 3B731, 30A92, 31EF9, 385F0, 35ED0, 3391E, 30164, 3E558, 3CF99, 3049E, 32C05, 37078, 37315, 32A46, 3053B, 3CC84, 39F7C, 312E4, 31418, 39C95, 34C18, 349E0, 30001, 3FE6E, 3FF37, 30000, 34A6D, 34B89, 39D4F, 313CA, 31330, 39EC2, 3CD49, 30513, 32AB5, 3726D, 3711F, 32B95, 304C4, 3CED4, 3E620, 30150, 3399D, 35E34, 386A1, 31E99, 30ACC, 3B670, 3B4F0, 30B41, 31DDC, 38804, 35CFD, 33A9C, 30128, 3E7B0, 3F2A7, 30059, 341CA, 354AA, 391D6, 318EA, 30EB4, 3AA7F, 3C109, 307DD, 32405, 37D10, 366DF, 332D9, 302A8, 3DB37, 3D9A9, 302E3, 331E9, 36822, 37BB7, 324D4, 3077B, 3C28F, 3A904, 30F3B, 3183E, 39342, 35380, 342D8, 30045, 3F439, 3F8EF, 30019, 3460D, 3500C, 3978A, 31648, 310DF, 3A49A, 3C725, 30665, 3274C, 377B4, 36BF4, 32F27, 303A3, 3D502, 3DFE2, 30206, 335B3, 3631F, 38123, 321A5, 30911, 3BC7B, 3AEF4, 30D2B, 31AFC, 38D9A, 35832, 33EAB, 300A3, 3EDF3, 3EC62, 300C1, 33DA4, 35962, 38C33, 31BB0, 30CAD, 3B072, 3BAF7, 3097C, 320DF, 38281, 361E2, 336AB, 301D5, 3E171, 3D376, 303E8, 32E3F, 36D3C, 37661, 32824, 3060D, 3C8AD, 3A322, 31170, 315A5, 398FA, 34EE9, 34723, 3000F, 3FA81, 3FC13, 30008, 3483A, 34DC7, 39A6B, 31504, 31203, 3A1AC, 3CA36, 305B7, 328FD, 3750E, 36E87, 32D5A, 3042F, 3D1EA, 3E301, 301A6, 337A4, 360A6, 383E0, 3201B, 309EA, 3B974, 3B1F0, 30C31, 31C67, 38ACD, 35A94, 33CA0, 300E1, 3EAD2, 3EF85, 30088, 33FB4, 35703, 38F02, 31A49, 30DAC, 3AD77, 3BDFF, 308A8, 3226E, 37FC6, 3645D, 334BE, 30239, 3DE53, 3D68F, 30360, 33010, 36AAC, 37909, 32677, 306BF, 3C59D, 3A612, 31051, 316ED, 3961C, 35131, 344FA, 30025, 3F75D, 3F5CB, 30034, 343E8, 35258, 394AE, 31795, 30FC5, 3A78B, 3C416, 3071C, 325A4, 37A60, 36966, 330FC, 30321, 3D81C, 3DCC5, 30270, 333CB, 3659D, 37E6B, 32338, 30841, 3BF84, 3ABFA, 30E2E, 31999, 3906C, 355D6, 340BE, 3006F, 3F116, 3E941, 30103, 33B9D, 35BC8, 38968, 31D21, 30BB8, 3B370, 3B7F2, 30A5A, 31F59, 38540, 35F6C, 3389F, 30179, 3E490, 3D05F, 30478, 32C76, 36FD2, 373BD, 329D8, 30564, 3CBC0, 3A037, 31298, 31466, 39BDC, 34CA8, 34953, 30003, 3FDA5, 3FDA5, 30003, 34953, 34CA8, 39BDC, 31466, 31298, 3A037, 3CBC0, 30564, 329D8, 373BD, 36FD2, 32C76, 30478, 3D05F, 3E490, 30179, 3389F, 35F6C, 38540, 31F59, 30A5A, 3B7F2, 3B370, 30BB8, 31D21, 38968, 35BC8, 33B9D, 30103, 3E941, 3F116, 3006F, 340BE, 355D6, 3906C, 31999, 30E2E, 3ABFA, 3BF84, 30841, 32338, 37E6B, 3659D, 333CB, 30270, 3DCC5, 3D81C, 30321, 330FC, 36966, 37A60, 325A4, 3071C, 3C416, 3A78B, 30FC5, 31795, 394AE, 35258, 343E8, 30034, 3F5CB, 3F75D, 30025, 344FA, 35131, 3961C, 316ED, 31051, 3A612, 3C59D, 306BF, 32677, 37909, 36AAC, 33010, 30360, 3D68F, 3DE53, 30239, 334BE, 3645D, 37FC6, 3226E, 308A8, 3BDFF, 3AD77, 30DAC, 31A49, 38F02, 35703, 33FB4, 30088, 3EF85, 3EAD2, 300E1, 33CA0, 35A94, 38ACD, 31C67, 30C31, 3B1F0, 3B974, 309EA, 3201B, 383E0, 360A6, 337A4, 301A6, 3E301, 3D1EA, 3042F, 32D5A, 36E87, 3750E, 328FD, 305B7, 3CA36, 3A1AC, 31203, 31504, 39A6B, 34DC7, 3483A, 30008, 3FC13, 3FA81, 3000F, 34723, 34EE9, 398FA, 315A5, 31170, 3A322, 3C8AD, 3060D, 32824, 37661, 36D3C, 32E3F, 303E8, 3D376, 3E171, 301D5, 336AB, 361E2, 38281, 320DF, 3097C, 3BAF7, 3B072, 30CAD, 31BB0, 38C33, 35962, 33DA4, 300C1, 3EC62, 3EDF3, 300A3, 33EAB, 35832, 38D9A, 31AFC, 30D2B, 3AEF4, 3BC7B, 30911, 321A5, 38123, 3631F, 335B3, 30206, 3DFE2, 3D502, 303A3, 32F27, 36BF4, 377B4, 3274C, 30665, 3C725, 3A49A, 310DF, 31648, 3978A, 3500C, 3460D, 30019, 3F8EF, 3F439, 30045, 342D8, 35380, 39342, 3183E, 30F3B, 3A904, 3C28F, 3077B, 324D4, 37BB7, 36822, 331E9, 302E3, 3D9A9, 3DB37, 302A8, 332D9, 366DF, 37D10, 32405, 307DD, 3C109, 3AA7F, 30EB4, 318EA, 391D6, 354AA, 341CA, 30059, 3F2A7, 3E7B0, 30128, 33A9C, 35CFD, 38804, 31DDC, 30B41, 3B4F0, 3B670, 30ACC, 31E99, 386A1, 35E34, 3399D, 30150, 3E620, 3CED4, 304C4, 32B95, 3711F, 3726D, 32AB5, 30513, 3CD49, 39EC2, 31330, 313CA, 39D4F, 34B89, 34A6D, 30000, 3FF37;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_dd882f44239ec05c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '87fc1a524b0dbdb55c07685b12ebc81c',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_dd882f44239ec05c',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6f6c3c369a0bc3baca1f3a7f476f82a7',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '75c12273c370348e5798a1b6a483522b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_223a0f3237',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b7413fec40b27b6f9e0bce89ba4c3c51',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '06147583934842d4b7db66bae46fbe69',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '422e6516394081f43117ae842cb09e70',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7205573ac4d5d7b5b6dedeebf807ecc6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((10 - 1) downto 0) := "0000000000";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((11 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0000000000";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("0000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_61242a554d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c6a7586d7a005d6959cc44312de4062',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (7 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(6);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 6 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_ae3f84524a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e0ef66beafff85fb2d8750a611131ccc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0",
    "0",
    "0",
    "0");
  signal op_mem_20_24_front_din: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_848c26f47b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '799d7dbc65ff662bfeefbeb4f39c5ed5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_2f744cdafb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '86ef03a3aa63e14be570e8c1d1cc4149',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_cbdfa55dc3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c757019693f8032fa79ae996578cb9a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\');
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_e18fb31a3d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '82059a2f64aca194b76a9e84ed5a2164',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (5 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(4);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_69e3090cc7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ea3343259534f2ab735322ff3a76128',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_181e58d842',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '51a1b7f9e7cd415c1803063a30e25c95',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_18_25: signed((18 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "0000000000000000000");
  signal op_mem_42_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_42_20_back: signed((19 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((19 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((19 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_42_20_push_front_pop_back_en = \'1\')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  op_mem_42_20_front_din <= internal_ip_30_1_neg;
  op_mem_42_20_push_front_pop_back_en <= \'1\';
  op <= signed_to_std_logic_vector(op_mem_42_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'negate_e1a9d1ade1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '09f4105f7e459250f9619f3a3c277454',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b9730cea34623a8b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0749b3d28fbf8537c7fe17189d1bba1f',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_b9730cea34623a8b',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 512',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_a6f6b809007e69f9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0385616735dc3a0c2a8c26618fa43054',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_a6f6b809007e69f9',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '823820561dc563133ddef3a7b5a1cee2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_f1ac4bddff',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e2fac6b5513f4f7f53f6e95600afecc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fbc2f0cce1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_7ca694f8efe8d963',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e318f0be778d98a52ff14260c5c71139',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_7ca694f8efe8d963',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '91aa5fe6e672c7518ca04268dcbd48a9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f6702ea2f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a165e7f948f0fa929e7921a0978cc526',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_62_f0d8e22702089fe9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '345d75a98f699e6ae43df5c7bd68f26b',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_62_f0d8e22702089fe9',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_62_252dff5223562ed1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'da4a0095f19f09b85ba154a3c94ae1ce',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_62_252dff5223562ed1',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '26b28185d41d82b6c740a19078146406',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_df2bb90b8fe02ecf',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed42289caf01faad2f8362409ce36482',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_df2bb90b8fe02ecf',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 256',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_f1ca57bbf79f0673',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cdecd9e9209f7ffe40fc45244114887',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_f1ca57bbf79f0673',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '469d0b121781904ac966646231cd68c5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b4ec9de7d1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ec7211565fb5370885d253fd4556ebc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fd85eb7067',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4d54d02eccb7e9661541234c5cb7c5ba',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4a391b9a0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_d4d70c5a247867e8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5c49470d0dc594203072cd0dc5c726a',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_d4d70c5a247867e8',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0a63ec0c3ee5b001c3703d08c6cdfb43',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_6c3ee657fa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '92622afe276f2073e58b81817cc03bd6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_78eac2928d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b9730cea34623a8b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7406bb7217a6532d3e107c6b78479f99',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_b9730cea34623a8b',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '90d0d528c30102c3fb5006679aaac64b',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f10ab6401d9c482da4d9bf47a16a1e5',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_62_fcbc247e5bff391a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '20ab6ebee6d30d3d9414aec4bde247b2',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_62_fcbc247e5bff391a',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_62_598fcf326e540b6a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5a40630a62b44458e6115322d36afb83',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_62_598fcf326e540b6a',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '55a2914ce02fbb6b56f38b9f5883dabd',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9adf5a9f785e3fb8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fa097a13feb10cff9f4c70a3155b53cf',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_9adf5a9f785e3fb8',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 128',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_51321cc7c8e9865c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a5a8286b86454088e6947bbb2e77cf0b',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_51321cc7c8e9865c',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd79079c104728231229f8185fe35b4f8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b437b02512',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6881e3e9fe47f0cbdc2e654a4e3326e1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_91ef1678ca',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3357ffe50653e9d14d4f9101dfc712bf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8aae5d3bb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b2e26777d24cb38d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0914b00c5e07b57151566630cd0df208',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_b2e26777d24cb38d',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a40234a17f28f2875a29b26c0a65bcc1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_54048c8b02',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f656afd1eff99591face4c094ec46614',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_16235eb2bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_df2bb90b8fe02ecf',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '54b312efb028a1c58a4a3affd6eeb651',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_df2bb90b8fe02ecf',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '144c85b91d6a4657c779e4b874403c41',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e30fa56b3df1c0eb7a31b6010f2e9ff0',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_6ea787275fdc24d6',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '167232f7c77776a644f7ba7ec23dc311',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_6ea787275fdc24d6',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_37f844592d213796',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f7dbcead2cf6f143934036bffcb1c012',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_37f844592d213796',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '65454a898068028a09080cbb1cb86e16',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_20f60aed18821bec',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '012d8da8467bbe10d9294dc625c58f01',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_20f60aed18821bec',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 64',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_62_665c019c1c5f5676',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '87fa3eeeae26c514a6f3d729d25cc2c9',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_665c019c1c5f5676',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '538e91b9afa9a360bc51bc0f34c944b6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_180df391de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b5248d3f5b5143ba54a49d01587b0d86',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7244cd602b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'db61cfd489a472805db2684370ef5f3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7b07120b87',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_c53e3b0687343f7a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '49423cef674eccdce2f4d30c4f4553bd',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_c53e3b0687343f7a',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '66dfbca33c2eb8499dfa0680a72e029e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9a3978c602',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9275a22a9596054be859a55eb4c3d6fc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_23065a6aa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9adf5a9f785e3fb8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5b27219d4428a1a2c79406ec4d680cdc',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_9adf5a9f785e3fb8',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7f948156a1816a5a60d6ed561d61a5c8',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '19f7d1656472d7f50138e547b53d9d62',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_daa5a8eb8c5c2eed',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5ecc0de667b94f35ec0e9bb69db3a7a3',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_daa5a8eb8c5c2eed',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_7061fc74b87e2931',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0545bcbb75f838ae2b216918e4d02937',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_7061fc74b87e2931',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd086fb48c9eb4d85519555a2d80dfa01',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '77e1d19c450c95f45d970982a0d9b071',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e163d7f31d7f1730f06e420761e0c64',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a267c870be',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'af2bad13c77b7b041e1467dc41d140d0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7ea0f2fff7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '64d46ae81054cf988daec38e904bcb92',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_961b61f8a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_73d90f0f459a7002',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a1060c5334f4f830b562d6b3519c93c7',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_73d90f0f459a7002',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9163d19d006ec8f52dad0282d12b679c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_931d61fb72',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '162cd14d16c67b581f57f28fba5ced10',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_fe487ce1c7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_20f60aed18821bec',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '573279f5ff645bbad82169bcedee42c2',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_20f60aed18821bec',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fb609c141c97fef5acb12d1eb16bbfe6',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '432fee28061405445b0a4a8155ec59eb',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_16e54f007b53b02e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4341f032f4d3b3ebb164f990ecba217f',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_16e54f007b53b02e',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_721e2d25fd18b8a2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd405ea693e3aca1701480d2d4c40969e',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_721e2d25fd18b8a2',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '79eb5db32824e5f8ef8b9218fa329185',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ea0776dd4b0d439ea4f3d52dd2e2e01a',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ebf68832c148b48ebeed45be1fa6f494',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_582a3706dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4522f477ee817d9344e420e7e82c7ec4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fe72737ca0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c6c785c7da534170701dbff999551b5f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_ef0e2e5fc6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_e0d381bcdb78c3cc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'eabd98d9f85396bfa5ea9b91625c680b',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_e0d381bcdb78c3cc',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b9b8874384342e8df155cd2fa01f6ece',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9ece3c8c4e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1167186bd3ee0a0898f6e43d489ee960',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_dc5bc996c9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_35c81e3155ab2f6f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '400cf6c475581ebb326c8ff10b7b5bac',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_35c81e3155ab2f6f',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5cf870529e80241f8a229cbe6921c7eb',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '014892b5ecb2709e42d785d7353c2258',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_92fa6367e92d9ee0',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4d179d00cf75d8923db4dd65e83dbbfb',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_92fa6367e92d9ee0',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_89660d475f29ded2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6cda640a7f3000d9eb987372acb7a993',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_89660d475f29ded2',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '65702c71495b69f534d6ee890707d748',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0edd9abff70e77b558802b886e529c9d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bab4e5f03ee70a1f19e04ed8bab64e3b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_67ad97ca70',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fadb300e660d2c903d1fcb082af6b277',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_145086465d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_c2e89722de712678',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2da512971a1252fabd9303ec49bfc69a',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_c2e89722de712678',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed6a8def7bf6484a39b73ea223890ecf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_4d3cfceaf4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7281288dfdea268164419c50e848831c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_d930162434',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_c84d65465c59fb07',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '59954000508505d89b391c26416bbe18',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_c84d65465c59fb07',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0a8969cc941a402d814e3b7c48c6fc36',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dab9efcee2395c0596cf23190eecfbf1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_66e53735c699b53b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5c6058fba3e53922de694371d20e681b',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_66e53735c699b53b',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex5 Xilinx,_Inc. 6.2',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_62_83efd1fdf9477a72',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f1fcb025103f2bec67b7256e860be217',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_62_83efd1fdf9477a72',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0de9e3f1cc311cb2a1617de214c0d810',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'eeb7fcc24309ac23b7f72539b69866d5',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e32d0c3084ab554ef45ac9172ce46a7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a1c496ea88',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3cbb4b7449173f2ec4bd2eb1d7435974',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_469094441c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_e9eaaa5672e4be4d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d83a5e73223642e1e46ce20b6e93918',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_e9eaaa5672e4be4d',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0d2830fc6f3d63f3fed155175c35a0f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8fc7f5539b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91e16f9e52f2fc6ba0a751b004ae0945',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_47b317dab6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_05042eb8e8f7781c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b44657d2c9c4d1045c9e7ca865a8cd4d',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_05042eb8e8f7781c',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1a15928fdf1e06c3a6d1cda842335a12',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '13a326cf017fa4f000f4fe2724a99658',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566') || 
    croak 'couldn\'t open /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566';
};

if ($@) {
  open(RESULTS, '> /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566') || 
    croak 'couldn\'t open /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/roachfengine/fft_1024ch_core/sysgen/script_results8851905525082726566';
  exit(1);
}

exit(0);
