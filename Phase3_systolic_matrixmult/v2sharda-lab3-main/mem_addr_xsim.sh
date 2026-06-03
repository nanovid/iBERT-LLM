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
DUT=$10
BLOCKS=$11

if [ "$MODE" = "" ]; then
    if (( BLOCKS > 1 )); then
        if [ "$DUT" = "MEM_A" ]; then
            echo "Starting functional simulation of mem_write_A module..."
            xvlog -d MEM_A -sv mem_addr_tb.sv mem_write_A.sv
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    elif [ "$DUT" = "MEM_B" ]; then
            echo "Starting functional simulation of mem_write_B_pp module..."
            xvlog -d MEM_B -d PING_PONG -sv mem_addr_tb.sv mem_write_B_pp.sv
            xelab --generic_top "BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    elif [ "$DUT" = "MEM_D" ]; then
            echo "Starting functional simulation of mem_read_D_pp module..."
            xvlog -d MEM_D -d PING_PONG -sv mem_addr_tb.sv mem_read_D_pp.sv
            xelab --generic_top "BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    fi
    else
	    if [ "$DUT" = "MEM_A" ]; then
            echo "Starting functional simulation of mem_write_A module..."
            xvlog -d MEM_A -sv mem_addr_tb.sv mem_write_A.sv
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    elif [ "$DUT" = "MEM_B" ]; then
            echo "Starting functional simulation of mem_write_B module..."
            xvlog -d MEM_B -sv mem_addr_tb.sv mem_write_B.sv
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    elif [ "$DUT" = "MEM_D" ]; then
            echo "Starting functional simulation of mem_read_D module..."
            xvlog -d MEM_D -sv mem_addr_tb.sv mem_read_D.sv
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical mem_addr_tb -s mem_addr_tb
	    fi
    fi
else
   if [ "$MODE" = "synth" ]; then
        if (( BLOCKS > 1 )); then
            if [ "$DUT" = "MEM_A" ]; then
                if [ -e "mem_write_A_synth.sv" ]; then
                    echo "Starting post-synthesis simulation of mem_write_A module..."
                    xvlog -d XIL_TIMING -d MEM_A -sv mem_addr_tb.sv mem_write_A_synth.sv
                else
                    echo "Error: Can not find file mem_write_A_synth.sv. Make sure to complete synthesis step first: make write-a-synth"
                    exit 1
                fi
            elif [ "$DUT" = "MEM_B" ]; then
                    if [ -e "mem_write_B_synth.sv" ]; then
                        echo "Starting post-synthesis simulation of mem_write_B_pp module..."
                        xvlog -d XIL_TIMING -d MEM_B -d PING_PONG -sv mem_addr_tb.sv mem_write_B_synth.sv
                    else
                        echo "Error: Can not find file mem_write_B_synth.sv. Make sure to complete synthesis step first: make write-b-synth"
                        exit 1
                    fi
            elif [ "$DUT" = "MEM_D" ]; then
                    if [ -e "mem_read_D_synth.sv" ]; then
                        echo "Starting post-synthesis simulation of mem_read_D_pp module..."
                        xvlog -d XIL_TIMING -d MEM_D -d PING_PONG -sv mem_addr_tb.sv mem_read_D_synth.sv
                    else
                        echo "Error: Can not find file mem_read_D_synth.sv. Make sure to complete synthesis step first: make read-d-synth"
                        exit 1
                    fi
            fi
            xelab --generic_top "BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl mem_addr_tb -s mem_addr_tb
        else
            if [ "$DUT" = "MEM_A" ]; then
                if [ -e "mem_write_A_synth.sv" ]; then
                    echo "Starting post-synthesis simulation of mem_write_A module..."
                    xvlog -d XIL_TIMING -d MEM_A -sv mem_addr_tb.sv mem_write_A_synth.sv
                else
                    echo "Error: Can not find file mem_write_A_synth.sv. Make sure to complete synthesis step first: make write-a-synth"
                    exit 1
                fi
            elif [ "$DUT" = "MEM_B" ]; then
                    if [ -e "mem_write_B_synth.sv" ]; then
                        echo "Starting post-synthesis simulation of mem_write_B_pp module..."
                        xvlog -d XIL_TIMING -d MEM_B -sv mem_addr_tb.sv mem_write_B_synth.sv
                    else
                        echo "Error: Can not find file mem_write_B_synth.sv. Make sure to complete synthesis step first: make write-b-synth"
                        exit 1
                    fi
            elif [ "$DUT" = "MEM_D" ]; then
                    if [ -e "mem_read_D_synth.sv" ]; then
                        echo "Starting post-synthesis simulation of mem_read_D_pp module..."
                        xvlog -d XIL_TIMING -d MEM_D -sv mem_addr_tb.sv mem_read_D_synth.sv
                    else
                        echo "Error: Can not find file mem_read_D_synth.sv. Make sure to complete synthesis step first: make read-d-synth"
                        exit 1
                    fi
            fi
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 glbl mem_addr_tb -s mem_addr_tb
        fi
   elif [ "$MODE" = "impl" ]; then
        if (( BLOCKS > 1 )); then
            if [ "$DUT" = "MEM_A" ]; then
                if [ -e "mem_write_A_impl.sv" ]; then
                    echo "Starting post-implementation simulation of mem_write_A module..."
                    xvlog -d XIL_TIMING -d MEM_A -sv mem_addr_tb.sv mem_write_A_impl.sv
                else
                    echo "Error: Can not find file mem_write_A_impl.sv. Make sure to complete implementation step first: make write-a-impl"
                    exit 1
                fi
            elif [ "$DUT" = "MEM_B" ]; then
                    if [ -e "mem_write_B_impl.sv" ]; then
                        echo "Starting post-implementation simulation of mem_write_B_pp module..."
                        xvlog -d XIL_TIMING -d MEM_B -d PING_PONG -sv mem_addr_tb.sv mem_write_B_impl.sv
                    else
                        echo "Error: Can not find file mem_write_B_impl.sv. Make sure to complete implementation step first: make write-b-impl"
                        exit 1
                    fi
            elif [ "$DUT" = "MEM_D" ]; then
                    if [ -e "mem_read_D_impl.sv" ]; then
                        echo "Starting post-implementation simulation of mem_read_D_pp module..."
                        xvlog -d XIL_TIMING -d MEM_D -d PING_PONG -sv mem_addr_tb.sv mem_read_D_impl.sv
                    else
                        echo "Error: Can not find file mem_read_D_impl.sv. Make sure to complete implementation step first: make read-d-impl"
                        exit 1
                    fi
            fi
            xelab --generic_top "BLOCK_NUM=$BLOCKS" --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl mem_addr_tb -s mem_addr_tb
        else
            if [ "$DUT" = "MEM_A" ]; then
                if [ -e "mem_write_A_impl.sv" ]; then
                    echo "Starting post-implementation simulation of mem_write_A module..."
                    xvlog -d XIL_TIMING -d MEM_A -sv mem_addr_tb.sv mem_write_A_impl.sv
                else
                    echo "Error: Can not find file mem_write_A_impl.sv. Make sure to complete implementation step first: make write-a-impl"
                    exit 1
                fi
            elif [ "$DUT" = "MEM_B" ]; then
                    if [ -e "mem_write_B_impl.sv" ]; then
                        echo "Starting post-implementation simulation of mem_write_B module..."
                        xvlog -d XIL_TIMING -d MEM_B -sv mem_addr_tb.sv mem_write_B_impl.sv
                    else
                        echo "Error: Can not find file mem_write_B_impl.sv. Make sure to complete implementation step first: make write-b-impl"
                        exit 1
                    fi
            elif [ "$DUT" = "MEM_D" ]; then
                    if [ -e "mem_read_D_impl.sv" ]; then
                        echo "Starting post-implementation simulation of mem_read_D module..."
                        xvlog -d XIL_TIMING -d MEM_D -sv mem_addr_tb.sv mem_read_D_impl.sv
                    else
                        echo "Error: Can not find file mem_read_D_impl.sv. Make sure to complete implementation step first: make read-d-impl"
                        exit 1
                    fi
            fi
            xelab --generic_top "MATRIXSIZE_W=$MATRIXSIZE_W" --generic_top "MEM_DEPTH=$MEM_DEPTH" --generic_top "M1=$M1" --generic_top "M2=$M2" --generic_top "M3=$M3" --generic_top "N1=$N1" --generic_top "N2=$N2" -debug typical -maxdelay -L secureip -L simprims_ver -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 glbl mem_addr_tb -s mem_addr_tb
        fi
    fi
fi

if (( $GUI > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim mem_addr_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim mem_addr_tb -t xsim.tcl
fi
