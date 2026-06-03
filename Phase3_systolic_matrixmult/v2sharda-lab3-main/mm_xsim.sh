#!/bin/zsh

M1=$1
M2=$2
M3=$3
N1=$4
N2=$5
MATRIXSIZE_W=$6
MEM_DEPTH=$7
GUI=$8
MODE=$9
BLOCKS=$10

if [ "$MODE" = "" ]; then
    if (( $BLOCKS > 1 )); then
    echo "Starting functional simulation of mm module..."
        xvlog -d PING_PONG -sv mm_tb.sv mm_pp.sv systolic.sv pe.sv control_pp.sv counter.sv s2mm_pp.sv mm2s_pp.sv mem_read.sv mem_read_D_pp.sv mem_write_A.sv mem_write_B_pp.sv mem_write.sv mem.sv glbl.v ping_pong_control.sv
    else
    echo "Starting functional simulation of mm_pp module..."
        xvlog -sv mm_tb.sv mm.sv systolic.sv pe.sv control.sv counter.sv s2mm.sv mm2s.sv mem_read.sv mem_read_D.sv mem_write_A.sv mem_write_B.sv mem_write.sv mem.sv
    fi
    xelab --generic_top "_BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mm_tb -s mm_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "mm_synth.sv" ]; then
            if (( $BLOCKS > 1 )); then
                echo "Starting post-synthesis simulation of mm_pp module..."
                xvlog -d XIL_TIMING -d PING_PONG -sv mm_tb.sv mm_synth.sv
            else
                echo "Starting post-synthesis simulation of mm module..."
                xvlog -d XIL_TIMING -sv mm_tb.sv mm_synth.sv
            fi
            xelab --O3 --generic_top "_BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl mm_tb -s mm_tb
        else
            echo "Error: Can not find file mm_synth.sv. Make sure to complete synthesis step first: make mm-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "mm_impl.sv" ]; then
            if (( $BLOCKS > 1 )); then
                echo "Starting post-implementation simulation of mm_pp module..."
                xvlog -d XIL_TIMING -d PING_PONG -sv mm_tb.sv mm_impl.sv
            else
                echo "Starting post-implementation simulation of mm module..."
                xvlog -d XIL_TIMING -sv mm_tb.sv mm_impl.sv
            fi
            xelab --log xelab_log --generic_top "_BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl mm_tb -s mm_tb
        else
            echo "Error: Can not find file mm_impl.sv. Make sure to complete implementation step first: make mm-impl"
            exit 1
        fi
    fi
fi

if (( $GUI > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim mm_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim mm_tb -t xsim.tcl
fi
