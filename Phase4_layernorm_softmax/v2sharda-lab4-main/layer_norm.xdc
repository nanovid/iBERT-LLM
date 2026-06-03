create_clock -period 16.000 -waveform {0.000 8.000} [get_nets clk]
#set_property BLOCK_SYNTH.RETIMING 1 [get_cells -hierarchical qdiv]