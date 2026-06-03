source args.tcl
create_project -force gelu ./vivado -part xc7z020clg400-1
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]

add_files gelu.sv
add_files clock.xdc

update_compile_order -fileset sources_1
set_property top gelu [current_fileset]

set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
set_property generic "D_W=32 SHIFT=14" [current_fileset]

if {$MODE == "synth"} {
    puts "Starting Vivado synthesis of GELU module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim gelu_synth.sv
    #report_utilization -file gelu_util.txt
    #report_timing -file gelu_timing.txt
} elseif {$MODE == "impl"} {
    puts "Starting Vivado implementation of GELU module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim gelu_synth.sv

    launch_runs impl_1 -jobs 4
    wait_on_run impl_1

    open_run impl_1 -name impl_1
    write_verilog -force -mode funcsim gelu_impl.sv
    report_utilization -file gelu_util.txt
    report_timing -file gelu_timing.txt
}

exit
