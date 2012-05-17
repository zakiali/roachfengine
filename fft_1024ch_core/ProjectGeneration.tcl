#
# Created by System Generator     Tue May 15 11:21:22 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {fft_1024ch_core_cw}
    set Family {Virtex5}
    set Device {xc5vsx95t}
    set Package {ff1136}
    set Speed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {10}
    set NewXSTParser {0}
    set ProjectFiles {
        {{fft_1024ch_core_cw.vhd} -view All}
        {{fft_1024ch_core.vhd} -view All}
        {{fft_1024ch_core_cw.ucf}}
        {{bmg_62_f1ca57bbf79f0673.mif}}
        {{bmg_62_6ea787275fdc24d6.mif}}
        {{bmg_62_3a48054ca3a8deec.mif}}
        {{bmg_62_721e2d25fd18b8a2.mif}}
        {{bmg_62_c6cafe6c47d0544c.mif}}
        {{bmg_62_a6f6b809007e69f9.mif}}
        {{bmg_62_2d23f33d919b4b99.mif}}
        {{dmg_62_fcbc247e5bff391a.mif}}
        {{bmg_62_89660d475f29ded2.mif}}
        {{bmg_62_37f844592d213796.mif}}
        {{bmg_62_51321cc7c8e9865c.mif}}
        {{bmg_62_df2046baee47f05f.mif}}
        {{dmg_62_252dff5223562ed1.mif}}
        {{bmg_62_66e53735c699b53b.mif}}
        {{bmg_62_92fa6367e92d9ee0.mif}}
        {{bmg_62_16e54f007b53b02e.mif}}
        {{bmg_62_daa5a8eb8c5c2eed.mif}}
        {{bmg_62_665c019c1c5f5676.mif}}
        {{bmg_62_aae57d00ceec7456.mif}}
        {{bmg_62_83efd1fdf9477a72.mif}}
        {{bmg_62_7061fc74b87e2931.mif}}
        {{bmg_62_33b17ff3d27389a4.mif}}
        {{dmg_62_f0d8e22702089fe9.mif}}
        {{dmg_62_598fcf326e540b6a.mif}}
        {{bmg_62_250528f931baf469.mif}}
        {{bmg_62_dd882f44239ec05c.mif}}
        {{/scratch/zaki/workspace/roachfengine/fft_1024ch_core.mdl}}
    }
    set TopLevelModule {fft_1024ch_core_cw}
    set SynthesisConstraintsFile {fft_1024ch_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
