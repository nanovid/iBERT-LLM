source args.tcl
if {$GUI == 1} {
	create_wave_config; add_wave [get_objects -r]; set_property needs_save false [current_wave_config]
}
run 1ms
if {$GUI == 0} {
	exit
}
