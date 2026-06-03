source args.tcl
create_project -force mm ./vivado -part xc7z020clg400-1
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]

if {$DUT == "MEM_A"} {
    add_files mem_write_A.sv
    update_compile_order -fileset sources_1
    set_property top mem_write_A [current_fileset]

    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
    set_property generic "MATRIXSIZE_W=24 ADDR_W=24 N1=${N1}" [current_fileset]
} elseif {$DUT == "MEM_B"} {
    if {$_BLOCK_NUM > 1} {
        add_files mem_write_B_pp.sv
    } else {
        add_files mem_write_B.sv
    }
    update_compile_order -fileset sources_1
    set_property top mem_write_B [current_fileset]
    
    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
    set_property generic "MATRIXSIZE_W=24 ADDR_W=24 N2=${N2}" [current_fileset]
} elseif {$DUT == "MEM_D"} {
    if {$_BLOCK_NUM > 1} {
        add_files mem_read_D_pp.sv
    } else {
        add_files mem_read_D.sv
    }
    update_compile_order -fileset sources_1
    set_property top mem_read_D [current_fileset]

    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
    set_property generic "MATRIXSIZE_W=24 ADDR_W=24 N1=${N1} N2=${N2}" [current_fileset]
}

add_files pe.xdc

launch_runs synth_1 -jobs 4
wait_on_run synth_1

open_run synth_1 -name synth_1
if {$DUT == "MEM_A"} {
    write_verilog -force -mode funcsim mem_write_A_synth.sv
    report_utilization -file mem_write_A_synth_util.txt
    report_timing -file mem_write_A_synth_timing.txt
} elseif {$DUT == "MEM_B"} {
    write_verilog -force -mode funcsim mem_write_B_synth.sv
    if {$_BLOCK_NUM > 1} {
        report_utilization -file mem_write_B_synth_util_pp.txt
        report_timing -file mem_write_B_synth_timing_pp.txt
    } else {
        report_utilization -file mem_write_B_synth_util.txt
        report_timing -file mem_write_B_synth_timing.txt
    }
} elseif {$DUT == "MEM_D"} {
    write_verilog -force -mode funcsim mem_read_D_synth.sv
    if {$_BLOCK_NUM > 1} {
        report_utilization -file mem_read_D_synth_util_pp.txt
        report_timing -file mem_read_D_synth_timing_pp.txt
    } else {
        report_utilization -file mem_read_D_synth_util.txt
        report_timing -file mem_read_D_synth_timing.txt
    }
}

if {$MODE == "impl"} {
    launch_runs impl_1 -jobs 4
    wait_on_run impl_1

    open_run impl_1 -name impl_1
    if {$DUT == "MEM_A"} {
        write_verilog -force -mode funcsim mem_write_A_impl.sv
        report_utilization -file mem_write_A_impl_util.txt
        report_timing -file mem_write_A_impl_timing.txt
    } elseif {$DUT == "MEM_B"} {
        write_verilog -force -mode funcsim mem_write_B_impl.sv
        if {$_BLOCK_NUM > 1} {
            report_utilization -file mem_write_B_impl_util_pp.txt
            report_timing -file mem_write_B_impl_timing_pp.txt
        } else {
            report_utilization -file mem_write_B_impl_util.txt
            report_timing -file mem_write_B_impl_timing.txt
        }
    } elseif {$DUT == "MEM_D"} {
        write_verilog -force -mode funcsim mem_read_D_impl.sv
        if {$_BLOCK_NUM > 1} {
            report_utilization -file mem_read_D_impl_util_pp.txt
            report_timing -file mem_read_D_impl_timing_pp.txt
        } else {
            report_utilization -file mem_read_D_impl_util.txt
            report_timing -file mem_read_D_impl_timing.txt
        }
    }
}

exit
