#!/bin/zsh

M1=$1
M2=$2
M3=$3
N1=$4
N2=$5
GUI=$6
MODE=$7

if [ "$MODE" = "" ]; then
    echo "Starting functional simulation of systolic module..."
    xvlog -sv systolic_tb.sv systolic.sv pe.sv control.sv counter.sv mem_read.sv
    xelab --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical systolic_tb -s systolic_tb
else
    if [ "$MODE" = "synth" ]; then
        if [ -e "systolic_synth.sv" ]; then
            echo "Starting post-synthesis simulation of systolic module..."
            xvlog -d XIL_TIMING -sv systolic_tb.sv systolic_synth.sv control.sv counter.sv mem_read.sv
            xelab --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl systolic_tb -s systolic_tb
        else
            echo "Error: Can not find file systolic_synth.sv. Make sure to complete synthesis step first: make systolic-synth"
            exit 1
        fi
    elif [ "$MODE" = "impl" ]; then
        if [ -e "systolic_impl.sv" ]; then
            echo "Starting post-implementation simulation of systolic module..."
            xvlog -d XIL_TIMING -sv systolic_tb.sv systolic_impl.sv control.sv counter.sv mem_read.sv
            xelab --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl systolic_tb -s systolic_tb
        else
            echo "Error: Can not find file systolic_impl.sv. Make sure to complete implementation step first: make systolic-impl"
            exit 1
        fi
    fi
fi

if (( $GUI > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim systolic_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim systolic_tb -t xsim.tcl
fi
