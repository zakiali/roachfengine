#
# Created by System Generator     Mon Dec 19 13:58:53 2011
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

source SgIseProject.tcl

namespace eval ::xilinx::dsptool::iseproject::param {

    set Project {roachf_2048ch_cw}
    set Family {Virtex5}
    set Device {xc5vsx95t}
    set Package {ff1136}
    set Speed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores False
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set ProjectFiles {
        {{roachf_2048ch_cw.vhd} -view Implementation}
        {{roachf_2048ch.vhd} -view Implementation}
        {{roachf_2048ch_cw.ucf}}
        {{bmg_33_4c2b84f72036519d.mif}}
        {{bmg_33_e4cac21e8ed012aa.mif}}
        {{bmg_33_ceba1f83ce9d2509.mif}}
        {{bmg_33_2ddf565839052280.mif}}
        {{asr_11_0_372caaa934b22d95.mif}}
        {{bmg_33_7de9efda5baafcf4.mif}}
        {{dmg_43_7b326199bbc0575c.mif}}
        {{bmg_33_ea646125a4d80bcf.mif}}
        {{bmg_33_c09e2494d7a7b5a4.mif}}
        {{/scratch/zaki/workspace/roachfengine/roachf_2048ch.mdl}}
    }
    set TopLevelModule {roachf_2048ch_cw}
    set SynthesisConstraintsFile {roachf_2048ch_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
::xilinx::dsptool::iseproject::create
