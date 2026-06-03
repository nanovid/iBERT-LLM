#!/bin/zsh

SOFTMAX_N=$1
DUMP_VCD=$2
DUMP_FST=$3
GUI=$4
TOP=$5
MODE=$6

if [ "$DUMP_VCD" = "1" ] || [ "$DUMP_FST" = "1" ]; then
  echo "Overriding DUMP_VCD=1 and DUMP_FST=0 as Xsim does not generate FSTs, it is written by lowly Gundabad Orcs with no sense or purpose."
  DUMP_VCD=1
  DUMP_FST=0
fi

if (( $TOP > 0 )) then
    echo "Starting functional simulation of SOFTMAX_TOP module..."
    xvlog -sv softmax_top_tb.sv softmax_top.sv softmax.sv rom.sv counter.sv sreg.sv fifo.sv exp.sv max.sv acc.sv div.sv lopd.sv
    xelab --O3 --generic_top "N=$SOFTMAX_N" --generic_top "DUMP_VCD=$DUMP_VCD" -debug typical softmax_top_tb -s softmax_top_tb
    if (( $GUI > 0 )) then
        echo "set GUI 1" > args.tcl
        xsim softmax_top_tb -gui -t xsim.tcl
    else
        echo "set GUI 0" > args.tcl
        xsim softmax_top_tb -t xsim.tcl
    fi
else
    if [ "$MODE" = "" ]; then
        echo "Starting functional simulation of SOFTMAX module..."
        xvlog -sv softmax_tb.sv max.sv sreg.sv fifo.sv acc.sv lopd.sv glbl.v exp.sv div.sv softmax.sv
        xelab --O3 --generic_top "N=$SOFTMAX_N" --generic_top "DUMP_VCD=$DUMP_VCD" -debug typical -L secureip -L simprims_ver glbl softmax_tb -s softmax_tb
    else
        if [ "$MODE" = "synth" ]; then
            if [ -e "softmax_synth.sv" ]; then
                echo "Starting post-synthesis simulation of SOFTMAX module..."
                xvlog -d XIL_TIMING -sv softmax_tb.sv softmax_synth.sv
                xelab --O3 --generic_top "N=$SOFTMAX_N" --generic_top "DUMP_VCD=$DUMP_VCD" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl softmax_tb -s softmax_tb
            else
                echo "Error: Can not find file softmax_synth.sv. Make sure to complete synthesis step first: make softmax-synth"
                exit 1
            fi
        elif [ "$MODE" = "impl" ]; then
            if [ -e "softmax_impl.sv" ]; then
                echo "Starting post-implementation simulation of SOFTMAX module..."
                xvlog -d XIL_TIMING -sv softmax_tb.sv softmax_impl.sv
                xelab --O3 --generic_top "N=$SOFTMAX_N" --generic_top "DUMP_VCD=$DUMP_VCD" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl softmax_tb -s softmax_tb
            else
                echo "Error: Can not find file softmax_impl.sv. Make sure to complete implementation step first: make softmax-impl"
                exit 1
            fi
        fi
    fi

    if (( $GUI > 0 )) then
        echo "set GUI 1" > args.tcl
        xsim softmax_tb -gui -t xsim.tcl
        if (( $DUMP_VCD == 1 )) then
          vcd2fst softmax.vcd softmax.fst
        fi
    else
        echo "set GUI 0" > args.tcl
        xsim softmax_tb -t xsim.tcl
        if (( $DUMP_VCD == 1 )) then
          vcd2fst softmax.vcd softmax.fst
        fi
    fi
fi
