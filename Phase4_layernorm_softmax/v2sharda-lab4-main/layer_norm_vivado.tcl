source args.tcl
create_project -force layer_norm ./vivado -part xc7z020clg400-1
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]

add_files layer_norm.sv sreg.sv fifo.sv sqrt.sv acc.sv mac.sv div.sv lopd.sv
add_files layer_norm.xdc

update_compile_order -fileset sources_1
set_property top layer_norm [current_fileset]

set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
set_property generic "D_W=8 D_W_ACC=32 N=768 N_INV=1398101" [current_fileset]
# set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY full [get_runs synth_1]

if {$MODE == "synth"} {
    puts "Starting Vivado synthesis of LayerNorm module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim layer_norm_synth.sv
    report_utilization -file layer_norm_util.txt
    report_timing -file layer_norm_timing.txt
} elseif {$MODE == "impl"} {
    puts "Starting Vivado implementation of LayerNorm module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim layer_norm_synth.sv

    launch_runs impl_1 -jobs 4
    wait_on_run impl_1

    open_run impl_1 -name impl_1
    write_verilog -force -mode funcsim layer_norm_impl.sv
    report_utilization -file layer_norm_util.txt
    report_timing -file layer_norm_timing.txt
}

exit
