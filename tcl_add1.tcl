create_project -force Automation [pwd]/Automation -part xc7a35tcpg236-1 
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project] 
update_compile_order -fileset sources_1 
add_files -norecurse [pwd]/Modules/top_CLA32.v
add_files -norecurse [pwd]/Modules/PGGen.v
add_files -norecurse [pwd]/Modules/top_CLA8.v
add_files -norecurse [pwd]/Modules/top_CLA16.v
add_files -norecurse [pwd]/Modules/top_ENCODER_BEHAVIOURAL.v
add_files -norecurse [pwd]/Modules/top_RCA_8BIT.v
add_files -norecurse [pwd]/Modules/top_4BIT_ARRAY_MULTIPLIER.v
update_compile_order -fileset sources_1 
close_project 
