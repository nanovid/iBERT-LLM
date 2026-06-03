#!/bin/zsh

FIRST=$1
GUI=$2
MODE=$3

if [ "$MODE" = "" ]; then
    echo "Starting functional simulation of pe module..."
    xvlog -sv pe_tb.sv pe.sv
    xelab --generic_top "FIRST=$FIRST" -debug typical pe_tb -s pe_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "pe_synth.sv" ]; then
            echo "Starting post-synthesis simulation of pe module..."
            xvlog -d XIL_TIMING -sv pe_tb.sv pe_synth.sv
            xelab --generic_top "FIRST=$FIRST" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl pe_tb -s pe_tb
        else
            echo "Error: Can not find file pe_synth.sv. Make sure to complete synthesis step first: make pe-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "pe_impl.sv" ]; then
            echo "Starting post-implementation simulation of pe module..."
            xvlog -d XIL_TIMING -sv pe_tb.sv pe_impl.sv
            xelab --generic_top "FIRST=$FIRST" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl pe_tb -s pe_tb
        else
            echo "Error: Can not find file pe_impl.sv. Make sure to complete implementation step first: make pe-impl"
            exit 1
        fi
    fi
fi

if (( $GUI > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim pe_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim pe_tb -t xsim.tcl
fi
