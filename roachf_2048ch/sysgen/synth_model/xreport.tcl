if {[file exists {roachf_2048ch_cw.ise}] && [file exists {roachf_2048ch_cw.xise}] && [file exists {roachf_2048ch_cw.gise}]} {
    project open {roachf_2048ch_cw}
} else {
    file delete {roachf_2048ch_cw.ise} {roachf_2048ch_cw.xise} {roachf_2048ch_cw.gise}
    project new {roachf_2048ch_cw}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close
