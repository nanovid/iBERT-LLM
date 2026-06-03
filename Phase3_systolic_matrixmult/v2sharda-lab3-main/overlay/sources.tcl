if {$_BLOCK_NUM > 1} {
    add_files ../mm_axi.v ../mm_pp.sv ../systolic.sv ../pe.sv ../control_pp.sv ../counter.sv ../s2mm_pp.sv ../mm2s_pp.sv ../mem_read.sv ../mem_write.sv ../mem.sv ../mm_axi_lites_s.v ../mem_read_D_pp.sv ../mem_write_A.sv ../mem_write_B_pp.sv ../ping_pong_control.sv
    set_property verilog_define {PING_PONG=1} [current_fileset]
} else {
    add_files ../mm_axi.v ../mm.sv ../systolic.sv ../pe.sv ../control.sv ../counter.sv ../s2mm.sv ../mm2s.sv ../mem_read.sv ../mem_read_D.sv ../mem_write_A.sv ../mem_write_B.sv ../mem_write.sv ../mem.sv ../mm_axi_lites_s.v
}

set_property source_mgmt_mode All [current_project]
update_compile_order -fileset sources_1
