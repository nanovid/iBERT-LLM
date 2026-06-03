#!/bin/zsh

M1=$1
DUMP_VCD=$2
DUMP_FST=$3
GUI=$4
MODE=$5
TOP=$6

if [ "$DUMP_VCD" = "1" ] || [ "$DUMP_FST" = "1" ]; then
  echo "Overriding DUMP_VCD=1 and DUMP_FST=0 as Xsim does not generate FSTs, it is written by lowly Gundabad Orcs with no sense or purpose."
  DUMP_VCD=1
  DUMP_FST=0
fi

if (( $TOP > 0 )) then
    echo "Starting functional simulation of LayerNorm_TOP module..."
    xvlog -sv layer_norm_top_tb.sv layer_norm_top.sv sreg.sv fifo.sv sqrt.sv acc.sv mac.sv div.sv lopd.sv
    xelab --O3 --generic_top "M1=$M1" --generic_top "DUMP_VCD=$DUMP_VCD" -generic_top "DUMP_FST=$DUMP_FST" -debug typical layer_norm_top_tb -s layer_norm_top_tb
    if (( $GUI > 0 )) then
        echo "set GUI 1" > args.tcl
        xsim layer_norm_top_tb -gui -t xsim.tcl
    else
        echo "set GUI 0" > args.tcl
        xsim layer_norm_top_tb -t xsim.tcl
    fi
else
    if [ "$MODE" = "" ]; then
        echo "Starting functional simulation of LayerNorm module..."
        xvlog -sv layer_norm_tb.sv glbl.v layer_norm.sv sreg.sv fifo.sv sqrt.sv acc.sv mac.sv div.sv lopd.sv
        xelab --O3 --generic_top "M1=$M1" --generic_top "DUMP_VCD=$DUMP_VCD" -generic_top "DUMP_FST=$DUMP_FST" -debug typical -L secureip -L simprims_ver glbl layer_norm_tb -s layer_norm_tb
    else
        if [ "$MODE" = "synth" ]; then
            if [ -e "layer_norm_synth.sv" ]; then
                echo "Starting post-synthesis simulation of LayerNorm module..."
                xvlog -d XIL_TIMING -sv layer_norm_tb.sv layer_norm_synth.sv
                xelab --O3 --generic_top "M1=$M1" --generic_top "DUMP_VCD=$DUMP_VCD" -generic_top "DUMP_FST=$DUMP_FST" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl layer_norm_tb -s layer_norm_tb
            else
                echo "Error: Can not find file layer_norm_synth.sv. Make sure to complete synthesis step first: make layernorm-synth"
                exit 1
            fi
        elif [ "$MODE" = "impl" ]; then
            if [ -e "layer_norm_impl.sv" ]; then
                echo "Starting post-implementation simulation of LayerNorm module..."
                xvlog -d XIL_TIMING -sv layer_norm_tb.sv layer_norm_impl.sv
                xelab --O3 --generic_top "M1=$M1" --generic_top "DUMP_VCD=$DUMP_VCD" -generic_top "DUMP_FST=$DUMP_FST" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl layer_norm_tb -s layer_norm_tb
            else
                echo "Error: Can not find file layer_norm_impl.sv. Make sure to complete implementation step first: make layernorm-impl"
                exit 1
            fi
        fi
    fi

    if (( $GUI > 0 )) then
        echo "set GUI 1" > args.tcl
        xsim layer_norm_tb -gui -t xsim.tcl
        if (( $DUMP_VCD == 1 )) then
          vcd2fst ln.vcd ln.fst
        fi
    else
        echo "set GUI 0" > args.tcl
        xsim layer_norm_tb -t xsim.tcl
        if (( $DUMP_VCD == 1 )) then
          vcd2fst ln.vcd ln.fst
        fi
    fi
fi
