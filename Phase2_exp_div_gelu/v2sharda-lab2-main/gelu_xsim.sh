#!/bin/zsh

GUI=$1
MODE=$2

if [ -z "$MODE" ]; then
    echo "Starting functional simulation of GELU module..."
    xvlog -sv gelu_tb.sv gelu.sv
    xelab -debug typical gelu_tb -s gelu_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "gelu_synth.sv" ]; then
            echo "Starting post-synthesis simulation of GELU module..."
            xvlog -d XIL_TIMING -sv gelu_tb.sv gelu_synth.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 --generic_top SHIFT=14 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl gelu_tb -s gelu_tb  
        else
            echo "Error: Can not find file gelu_synth.sv. Make sure to complete synthesis step first: make gelu-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "gelu_impl.sv" ]; then
            echo "Starting post-implementation simulation of GELU module..."
            xvlog -d XIL_TIMING -sv gelu_tb.sv gelu_impl.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 --generic_top SHIFT=14 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl gelu_tb -s gelu_tb
        else
            echo "Error: Can not find file gelu_impl.sv. Make sure to complete implementation step first: make gelu-impl"
            exit 1
        fi
    fi
fi

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim gelu_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim gelu_tb -t xsim.tcl
fi
