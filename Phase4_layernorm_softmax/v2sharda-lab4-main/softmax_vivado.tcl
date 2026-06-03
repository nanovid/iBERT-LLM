source args.tcl
create_project -force softmax ./vivado -part xc7z020clg400-1
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]

add_files sreg.sv exp.sv max.sv acc.sv lopd.sv div.sv softmax.sv fifo.sv
add_files softmax.xdc

update_compile_order -fileset sources_1
set_property top softmax [current_fileset]

set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
set_property generic "D_W=8 D_W_ACC=32 N=${SOFTMAX_N}" [current_fileset]

if {$MODE == "synth"} {
    puts "Starting Vivado synthesis of SOFTMAX module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim softmax_synth.sv
} elseif {$MODE == "impl"} {
    puts "Starting Vivado implementation of SOFTMAX module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim softmax_synth.sv

    launch_runs impl_1 -jobs 4
    wait_on_run impl_1

    open_run impl_1 -name impl_1
    write_verilog -force -mode funcsim softmax_impl.sv
    report_utilization -file softmax_util.txt
    report_timing -file softmax_timing.txt
}

exit
