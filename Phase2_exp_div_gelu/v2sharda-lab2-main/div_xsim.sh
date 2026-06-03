#!/bin/zsh

GUI=$1
MODE=$2

if [ -z "$MODE" ]; then
    echo "Starting functional simulation of DIV module..."
    xvlog -sv div_tb.sv div.sv lopd.sv
    xelab -debug typical div_tb -s div_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "div_synth.sv" ]; then
            echo "Starting post-synthesis simulation of DIV module..."
            xvlog -d XIL_TIMING -sv div_tb.sv div_synth.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl div_tb -s div_tb  
        else
            echo "Error: Can not find file div_synth.sv. Make sure to complete synthesis step first: make div-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "div_impl.sv" ]; then
            echo "Starting post-implementation simulation of DIV module..."
            xvlog -d XIL_TIMING -sv div_tb.sv div_impl.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl div_tb -s div_tb
        else
            echo "Error: Can not find file div_impl.sv. Make sure to complete implementation step first: make div-impl"
            exit 1
        fi
    fi
fi

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim div_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim div_tb -t xsim.tcl
fi
