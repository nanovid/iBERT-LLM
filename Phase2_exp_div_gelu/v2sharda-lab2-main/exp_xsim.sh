#!/bin/zsh

GUI=$1
MODE=$2

if [ -z "$MODE" ]; then
    echo "Starting functional simulation of EXP module..."
    xvlog -sv exp_tb.sv exp.sv
    xelab -debug typical exp_tb -s exp_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "exp_synth.sv" ]; then
            echo "Starting post-synthesis simulation of EXP module..."
            xvlog -d XIL_TIMING -sv exp_tb.sv exp_synth.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 --generic_top FP_BITS=30 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl exp_tb -s exp_tb  
        else
            echo "Error: Can not find file exp_synth.sv. Make sure to complete synthesis step first: make exp-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "exp_impl.sv" ]; then
            echo "Starting post-implementation simulation of EXP module..."
            xvlog -d XIL_TIMING -sv exp_tb.sv exp_impl.sv
            xvlog $(dirname $(dirname $(which vivado)))/data/verilog/src/glbl.v
            xelab --generic_top D_W=32 --generic_top FP_BITS=30 -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl exp_tb -s exp_tb
        else
            echo "Error: Can not find file exp_impl.sv. Make sure to complete implementation step first: make exp-impl"
            exit 1
        fi
    fi
fi

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim exp_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim exp_tb -t xsim.tcl
fi
