#!/bin/zsh
FOR_627=$1
sed -i "s/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {.*}/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100}/" overlay/tutorial.tcl
#make bitstream N1=8 N2=4 TIMEOUT=1
if [ -e "overlay/tutorial_8_4.bit" ]; then
    make run-board M=8 N1=8 N2=4 | tee board.txt
    board1=`cat board.txt | grep "Thank Mr. Goose" | wc -l`
else 
    echo "Error: Can not find bitstream file overlay/tutorial_8_8_8_8_4.bit for M=8 N1=8 N2=4. Make sure to complete prep-board step first: make prep-board"
    board1=0
fi
sed -i "s/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {.*}/CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100}/" overlay/tutorial.tcl
if [[ $FOR_627 -eq 1 ]]; then
    #make bitstream M=8 N1=4 N2=4 TIMEOUT=1 BLOCKS=2
    if [ -e "overlay/tutorial_4_4.bit" ]; then
        make run-board M=8 N1=4 N2=4 BLOCKS=2 | tee board.txt
        board2=`cat board.txt | grep "Thank Mr. Goose" | wc -l`
    else 
        echo "Error: Can not find bitstream file overlay/tutorial_8_8_8_4_4.bit for M=8 N1=4 N2=4. Make sure to complete prep-board step first: make prep-board"
        board2=0
    fi
    if [[ $board1 -eq 1 ]]; then board1=8; else board1=0; fi
    if [[ $board2 -eq 1 ]]; then board2=8; else board2=0; fi
    echo "$board1" > grade_board.csv
    echo "$board2" >> grade_board.csv
else 
    if [[ $board1 -eq 1 ]]; then board1=8; else board1=0; fi
    echo "$board1" > grade_board.csv
fi
