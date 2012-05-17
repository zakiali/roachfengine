#
# Created by System Generator     Tue May 15 10:30:57 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {pfb_fir_1024ch_core_cw}
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
    set Frequency {200}
    set NewXSTParser {0}
    set ProjectFiles {
        {{pfb_fir_1024ch_core_cw.vhd} -view All}
        {{pfb_fir_1024ch_core.vhd} -view All}
        {{pfb_fir_1024ch_core_cw.ucf}}
        {{bmg_62_735f28ddf1ae429b.mif}}
        {{bmg_62_beb524cb9c89c7df.mif}}
        {{bmg_62_499e71ff1ce34aaf.mif}}
        {{bmg_62_251c08a4fe5aabec.mif}}
        {{bmg_62_13b9b50a4ba14112.mif}}
        {{/scratch/zaki/workspace/roachfengine/pfb_fir_1024ch_core.mdl}}
    }
    set TopLevelModule {pfb_fir_1024ch_core_cw}
    set SynthesisConstraintsFile {pfb_fir_1024ch_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
