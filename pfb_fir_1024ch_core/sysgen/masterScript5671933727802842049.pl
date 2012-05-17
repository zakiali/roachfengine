
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
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
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
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-zaki/cg_wk/c5490d3ab0b098c01',
    'coregen_part_family' => 'virtex5',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'pfb_fir_1024ch_core',
    'design_full_path' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core.mdl',
    'device' => 'xc5vsx95t-1ff1136',
    'device_speed' => '-1',
    'directory' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core',
    'dsp_cache_root_path' => '/tmp/sysgentmp-zaki',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 85664.49060058594,
    'generating_subsystem_handle' => 85664.49060058594,
    'generation_directory' => './pfb_fir_1024ch_core',
    'hdlDir' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/scratch/zaki/workspace/roachfengine',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_version' => '13.3i',
    'master_sysgen_token_handle' => 86635.00512695312,
    'matlab' => '/scratch/mathworks/R2010a',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 85664.49060058594,
    'mdlPath' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core.mdl',
    'modelDiagnostics' => [
      {
        'count' => 312.0,
        'isMask' => 0.0,
        'type' => 'pfb_fir_1024ch_core Total blocks',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DataTypeDuplicate',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Gain',
      },
      {
        'count' => 55.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'MultiPortSwitch',
      },
      {
        'count' => 52.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'RandomNumber',
      },
      {
        'count' => 145.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'SignalConversion',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'SignalSpecification',
      },
      {
        'count' => 38.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Sum',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'Switch',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'ToWorkspace',
      },
      {
        'count' => 1.0,
        'isMask' => 0.0,
        'type' => 'UnitDelay',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Band-Limited White Noise.',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Counter Limited',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Data Type Propagation',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Real World Value Increment',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Repeating Sequence Stair',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Wrap To Zero',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 10.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 15.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 7.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 38.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'adder_tree',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'c_to_ri',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'first_tap',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'last_tap',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'pfb_add_tree',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'pfb_coeff_gen',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'pfb_fir',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'ri_to_c',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'tap',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core.mdl',
    'myxilinx' => '/scratch/Xilinx/13.3/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 0.0,
      'include_clockwrapper' => 0.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1136',
    'part' => 'xc5vsx95t',
    'partFamily' => 'virtex5',
    'port_data_types_enabled' => 0.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'report_true_rates' => 0.0,
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '',
    'simulation_island_subsystem_handle' => 85664.49060058594,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 5.0,
    'sysgen' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'base_system_period_hardware' => 5.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
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
      'coregen_part_family' => 'virtex5',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './pfb_fir_1024ch_core',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 86635.00512695312,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 0.0,
      },
      'package' => 'ff1136',
      'part' => 'xc5vsx95t',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'simulation_island_subsystem_handle' => 85664.49060058594,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc5vsx95t-1ff1136',
      'xilinxfamily' => 'virtex5',
    },
    'sysgen_Root' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'tmpDir' => '/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen',
    'trim_vbits' => 1.0,
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
    'vsimtime' => '330.000000 ns',
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
    'entity_declaration_hash' => 'f8bcc339ab1dd4d8c279cce5e794b5e3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4389dc89bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0ab4016ccf4c005c0f960665cf5aabdc',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9cc09536f73e9b90c20f6bee0dac5e48',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
    'entity_declaration_hash' => 'c02368dd76f819c63f39120a436ce5e7',
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
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 16',
    'CSET read_width_b = 16',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 16',
    'CSET write_width_b = 16',
    'CSET component_name = bmg_62_251c08a4fe5aabec',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4350b4b0fe65d3633e06d0463947228f',
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
      'core_name0' => 'bmg_62_251c08a4fe5aabec',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ecacdc34b5fae3ec926227d44fb7ee3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_a1e126f11c',
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
    'entity_declaration_hash' => '2f69645b39de73775b80b8014c6d6696',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '986b9633a363f1520321e2ac9cca1d63',
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
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_62_499e71ff1ce34aaf',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dbe0ef68e29b8119e91e55ee5f339b23',
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
      'core_name0' => 'bmg_62_499e71ff1ce34aaf',
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
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
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
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_62_beb524cb9c89c7df',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '19d0071d537c6549c71860dc08068536',
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
      'core_name0' => 'bmg_62_beb524cb9c89c7df',
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
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_62_13b9b50a4ba14112',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '79c613a0fc77a03bd253693bf1f5c010',
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
      'core_name0' => 'bmg_62_13b9b50a4ba14112',
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
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
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
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_62_735f28ddf1ae429b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c66df6ff1beffd424a62c5748383e837',
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
      'core_name0' => 'bmg_62_735f28ddf1ae429b',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cc68dc6ce6e7a378abf25a294dee9c96',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '57f1496f368ca03c45ad4e2bae591da4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d51df7ac30',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f6ff3d3c0884b1ea76b53c5d1035ec3e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_a369e00c6b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f013ab77c4e010db58e314e4e22146f3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((16 - 1) downto 0);
  signal output_port_5_5_force: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_7025463ea8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9a20ba3c55299d4f5696f7a971675316',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7c91b1b314',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c4edbeb504e6c7bd6c55a443b6cbf50',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fd28b32bf8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '713d56752ee6c93620a688f34d949cad',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e054d850c5',
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
    'CSET output_width = 12',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_d8f886b0b4d10089',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e7e50f7ca4fb717eaedd8557008bc0c0',
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
      'core_name0' => 'cntr_11_0_d8f886b0b4d10089',
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
    'entity_declaration_hash' => '07beef4b6f82356c571a058e3f280ba9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_d36fe12c1c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '97d4368f6023048dfa9fc25443ca4262',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_acb3c05dd0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5fd3da16d1a18a62da3e070fd0ffbe9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((8 - 1) downto 0);
  signal b_1_25: signed((8 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (3 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "0000000000000000",
    "0000000000000000",
    "0000000000000000");
  signal op_mem_65_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_65_20_back: signed((16 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((16 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(2);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
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
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    p : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_1f4d330bcc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '903c8d183f2409f4b00bb2e618157bf1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '174e4e248f65b8e379eb6005a43d307d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter virtex5 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex5',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 1',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_386215f5ee0a1ff2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8b710068e9462c7875af36af735b1996',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(17 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_386215f5ee0a1ff2',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd167fa9c5b18fa387aab7ae5d5bdb150',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\');
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
      'entity_name' => 'delay_c53de546ea',
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
    'entity_declaration_hash' => 'b7c7ecd4954e87633b88dfca486b21be',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_151459306d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5137137395528793c7b464b2483f0e76',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'aeb7056732ae58fd84b13d60ab397b10',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c6af0d4d6c34488c80d34f8d03210d0f',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd2bde85d1e31b3c51cffcaf01df57f99',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '13155f43983129931533feec38cd2e4d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd342192badca43e1b42ff671483af366',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd2b71767a4ac466ee7e8c4a210e291e1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '567233d0058616de5744deceda13c6b3',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0345f04f600fda5cc96bd5b3a4e27f66',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5c389965acc8cacc392234d26d32f304',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '71b2c813dd9a88605f2903f053f0dda9',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f76c6db6331e130742f6aa1317cdd7be',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((16 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_fa7c2ab9f6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '75190a6ddf0d8a848c94a550f5fd4760',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((96 - 1) downto 0);
  signal y_2_1_concat: unsigned((128 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((96 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_65b7cc6f0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '8d20d839a3244f157f3847a6567003a1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf290ef325a9158a3d67c2d8c3d1403c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((64 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_62c4475a80',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '43d22ab3d6ee1817e5b8b1935b68521d',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2a63bf636b11e6e90244b517f84900c1',
    'sourceFile' => '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3d520c48142eb1a8d8d12fde02acc9fe',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((64 - 1) downto 0);
  signal y_2_1_concat: unsigned((96 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((64 - 1) downto 0);
    y : out std_logic_vector((96 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_0e2072f8e1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e58ef8f167370b083de134f9b5db3fad',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((16 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_8e53793314',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/scratch/Xilinx/13.3/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277') || 
    croak 'couldn\'t open /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277';
};

if ($@) {
  open(RESULTS, '> /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277') || 
    croak 'couldn\'t open /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core/sysgen/script_results1926654884178823277';
  exit(1);
}

exit(0);
