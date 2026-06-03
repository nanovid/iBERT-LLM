source args.tcl
if {$_BLOCK_NUM > 1} {
    create_project -force mm_pp ./vivado -part xc7z020clg400-1
} else {
    create_project -force mm ./vivado -part xc7z020clg400-1
}
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]

if {$_BLOCK_NUM > 1} {
    add_files systolic.sv pe.sv control_pp.sv counter.sv s2mm_pp.sv mm2s_pp.sv mem_read.sv mem_read_D_pp.sv mem_write_A.sv mem_write_B_pp.sv mem_write.sv mem.sv ping_pong_control.sv mm_pp.sv
    set_property verilog_define PING_PONG=1 [current_fileset]
} else {
    add_files systolic.sv pe.sv control.sv counter.sv s2mm.sv mm2s.sv mem_read.sv mem_read_D.sv mem_write_A.sv mem_write_B.sv mem_write.sv mem.sv mm.sv
}
add_files mm.xdc

update_compile_order -fileset sources_1
if {$_BLOCK_NUM > 1} {
set_property top mm_pp [current_fileset]
} else {
set_property top mm [current_fileset]
}
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
if {$_BLOCK_NUM > 1} {
    set_property generic "D_W=8 D_W_ACC=32 MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH_A=${MEM_DEPTH} MEM_DEPTH_B=${MEM_DEPTH} MEM_DEPTH_D=${MEM_DEPTH} N1=${N1} N2=${N2} _BLOCK_NUM=${_BLOCK_NUM}" [current_fileset]
} else {
    set_property generic "D_W=8 D_W_ACC=32 MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH=${MEM_DEPTH} N1=${N1} N2=${N2}" [current_fileset]
}
if {$MODE == "synth"} {
    puts "Starting Vivado synthesis of MM module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim mm_synth.sv
} elseif {$MODE == "impl"} {
    puts "Starting Vivado implementation of MM module..."
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    open_run synth_1 -name synth_1
    write_verilog -force -mode funcsim mm_synth.sv

    launch_runs impl_1 -jobs 4
    wait_on_run impl_1

    open_run impl_1 -name impl_1
    write_verilog -force -mode funcsim mm_impl.sv
}

exit
