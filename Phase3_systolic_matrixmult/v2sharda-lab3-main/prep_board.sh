#!/bin/zsh
FOR_627=$1
rpt_file=overlay/tutorial/tutorial.runs/impl_1/tutorial_wrapper_timing_summary_routed.rpt
make clean

# force FMAX as 100 MHz
sed -i "s/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {.*}/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100}/" overlay/tutorial.tcl

#make bitstream N1=8 N2=4 TIMEOUT=1
if [[ -f ${rpt_file} ]] then
    if grep -q "Slack (VIOLATED) :" ${rpt_file}; then
        slack1=0
    else
        slack1=6
    fi
else
    slack1=6
fi

#make clean

sed -i "s/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {.*}/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100}/" overlay/tutorial.tcl

if [[ $FOR_627 -eq 1 ]]; then
    #make bitstream N1=4 N2=4 TIMEOUT=1 BLOCKS=2
    if [[ -f ${rpt_file} ]] then
        if grep -q "Slack (VIOLATED) :" ${rpt_file}; then
            slack2=0
        else
            slack2=6
        fi
    else
        slack2=6
    fi
    echo "$slack1" > grade_board_timing.csv
    echo "$slack2" >> grade_board_timing.csv
else
    slack2=0
    echo "$slack1" > grade_board_timing.csv
fi

