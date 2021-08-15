# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/94776/assignment_1/assignment_1.cache/wt [current_project]
set_property parent.project_path C:/Users/94776/assignment_1/assignment_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/94776/assignment_1/assignment_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/94776/assignment_1/assignment_1.srcs/sources_1/new/or_gate.vhd
  C:/Users/94776/assignment_1/assignment_1.srcs/sources_1/new/and3.vhd
  C:/Users/94776/assignment_1/assignment_1.srcs/sources_1/new/and.vhd
  C:/Users/94776/assignment_1/assignment_1.srcs/sources_1/new/schematicFile.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/94776/assignment_1/assignment_1.srcs/constrs_1/new/basys3_xdc.xdc
set_property used_in_implementation false [get_files C:/Users/94776/assignment_1/assignment_1.srcs/constrs_1/new/basys3_xdc.xdc]


synth_design -top schematicFile -part xc7a35tcpg236-1


write_checkpoint -force -noxdef schematicFile.dcp

catch { report_utilization -file schematicFile_utilization_synth.rpt -pb schematicFile_utilization_synth.pb }