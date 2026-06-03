#!/bin/zsh

USE_BOARD=$1

DIR=$HOME/ece327-w25/labs-admin/lab3-sol
cp -Rf $DIR/*.sh .
cp -Rf $DIR/*.tcl .
cp -Rf $DIR/*.py .
cp -Rf $DIR/*_tb.sv .
cp -Rf $DIR/mm_axi_lites_s.v $DIR/mm_axi.v $DIR/s2mm.sv $DIR/mm2s.sv .

export PATH=/zfsspare/opt/Xilinx/Vivado/2022.1/bin:$PATH

make clean

# Lint
lint_pe=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only pe.sv 2>&1 | grep Error | wc -l`
lint_systolic=`verilator -GD_W=8 -GD_W_ACC=32 -GN1=3 -GN2=3 -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only systolic.sv 2>&1 | grep Error | wc -l`

# Lint Grades
if [[ $lint_pe -eq 0 ]]; then lint_pe=2 else lint_pe=0; fi
if [[ $lint_systolic -eq 0 ]]; then lint_systolic=2 else lint_systolic=0; fi

# Simulation
make pe-xsim | grep "Error\|PASSED" > pe.txt 2>&1
pe_err1=`grep "Error" pe.txt | wc -l`
pe_pass1=`grep "PASSED" pe.txt | wc -l`

make pe-xsim FIRST=1 | grep "Error\|PASSED" > pe.txt 2>&1
pe_err2=`grep "Error" pe.txt | wc -l`
pe_pass2=`grep "PASSED" pe.txt | wc -l`

make systolic-xsim M=4 N=4 > systolic.txt 2>&1
systolic_pass1=`grep "Thank Mr. Goose" systolic.txt | wc -l`

make systolic-xsim M=8 N=4 > systolic.txt 2>&1
systolic_pass2=`grep "Thank Mr. Goose" systolic.txt | wc -l`

make systolic-xsim M1=8 M2=16 M3=8 N=8 > systolic.txt 2>&1
systolic_pass3=`grep "Thank Mr. Goose" systolic.txt | wc -l`

make systolic-xsim M1=8 M2=24 M3=8 N1=8 N2=4 > systolic.txt 2>&1
systolic_pass4=`grep "Thank Mr. Goose" systolic.txt | wc -l`

declare -A addr_sim1
declare -A addr_sim2
declare -A addr_sim3

addr_sim1=(MEM_A 0 MEM_B 0 MEM_D 0)
addr_sim2=(MEM_A 0 MEM_B 0 MEM_D 0)
addr_sim3=(MEM_A 0 MEM_B 0 MEM_D 0)

for dut in MEM_A MEM_B MEM_D; do
    make addr-xsim M=4 N=4 DUT=$dut | grep "Error\|PASSED" > addr.txt 2>&1
    addr_err=`grep "Error" addr.txt | wc -l`
    addr_pass=`grep "PASSED" addr.txt | wc -l`
    if [[ $addr_err -eq 0 && $addr_pass -eq 1 ]]; then addr_sim1[$dut]=2 else addr_sim1[$dut]=0; fi

    make addr-xsim M=8 N=4 DUT=$dut | grep "Error\|PASSED" > addr.txt 2>&1
    addr_err=`grep "Error" addr.txt | wc -l`
    addr_pass=`grep "PASSED" addr.txt | wc -l`
    if [[ $addr_err -eq 0 && $addr_pass -eq 1 ]]; then addr_sim2[$dut]=2 else addr_sim2[$dut]=0; fi

    make addr-xsim M1=32 M2=16 M3=8 N1=8 N2=4 DUT=$dut | grep "Error\|PASSED" > addr.txt 2>&1
    addr_err=`grep "Error" addr.txt | wc -l`
    addr_pass=`grep "PASSED" addr.txt | wc -l`
    if [[ $addr_err -eq 0 && $addr_pass -eq 1 ]]; then addr_sim3[$dut]=2 else addr_sim3[$dut]=0; fi
done


# Simulation Grades
if [[ $pe_err1 -eq 0 && $pe_pass1 -eq 1 ]]; then pe_sim1=2 else pe_sim1=0; fi
if [[ $pe_err2 -eq 0 && $pe_pass2 -eq 1 ]]; then pe_sim2=2 else pe_sim2=0; fi
if [[ $systolic_pass1 -eq 1 ]]; then systolic_sim1=2 else systolic_sim1=0; fi
if [[ $systolic_pass2 -eq 1 ]]; then systolic_sim2=2 else systolic_sim2=0; fi
if [[ $systolic_pass3 -eq 1 ]]; then systolic_sim3=2 else systolic_sim3=0; fi
if [[ $systolic_pass4 -eq 1 ]]; then systolic_sim4=2 else systolic_sim4=0; fi

# Post-Synth Simulation
make pe-impl
if [ -e "pe_impl.sv" ]; then
    make pe-impl-xsim | grep "Error\|PASSED" > pe.txt 2>&1
    pe_impl_pass=`grep "PASSED" pe.txt | wc -l`

    if [[ $pe_impl_pass -eq 1 ]]; then pe_impl_sim=2 else pe_impl_sim=0; fi
else
    pe_impl_sim=0
fi

if [ -e "pe_impl_util.txt" ]; then
    pe_impl_gold_lut=`cat pe_impl_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    pe_impl_gold_ff=`cat pe_impl_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    pe_impl_lut=`cat pe_impl_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    pe_impl_ff=`cat pe_impl_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    pe_impl_dsp=`cat pe_impl_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    pe_impl_diff_lut=`expr 100 \* \( $pe_impl_lut - $pe_impl_gold_lut \) \/ $pe_impl_gold_lut`
    pe_impl_diff_ff=`expr 100 \* \( $pe_impl_ff - $pe_impl_gold_ff \) \/ $pe_impl_gold_ff`

    if [[ $pe_impl_lut -eq 0 || $pe_impl_ff -eq 0 || $pe_impl_diff_lut -gt 20 || $pe_impl_diff_ff -gt 20 || $pe_impl_dsp -gt 0 ]]; then pe_impl_util=0; else pe_impl_util=1; fi
else
    pe_impl_util=0
fi

if [[ -e "pe_impl_timing.txt" && $pe_impl_sim -ne 0 ]]; then
    pe_impl_timing_met=`grep "MET" pe_impl_timing.txt | wc -l`
    pe_slack=`cat pe_impl_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $pe_impl_timing_met -eq 1 || $pe_slack -gt -0.3 ]]; then pe_impl_timing=1 else pe_impl_timing=0; fi
else
    pe_impl_timing=0
fi

make systolic-impl N1=8 N2=4
if [ -e "systolic_impl.sv" ]; then
    make systolic-impl-xsim M1=8 M2=24 M3=8 N1=8 N2=4 > systolic.txt 2>&1
    systolic_impl_pass=`grep "Thank Mr. Goose" systolic.txt | wc -l`

    if [[ $systolic_impl_pass -eq 1 ]]; then systolic_impl_sim=5 else systolic_impl_sim=0; fi
else
    systolic_impl_sim=0
fi

if [ -e "systolic_impl_util.txt" ]; then
    systolic_impl_gold_lut=`cat systolic_impl_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    systolic_impl_gold_ff=`cat systolic_impl_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    systolic_impl_lut=`cat systolic_impl_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    systolic_impl_ff=`cat systolic_impl_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    systolic_impl_dsp=`cat systolic_impl_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    systolic_impl_diff_lut=`expr 100 \* \( $systolic_impl_lut - $systolic_impl_gold_lut \) \/ $systolic_impl_gold_lut`
    systolic_impl_diff_ff=`expr 100 \* \( $systolic_impl_ff - $systolic_impl_gold_ff \) \/ $systolic_impl_gold_ff`

    if [[ $systolic_impl_lut -eq 0 || $systolic_impl_ff -eq 0 || $systolic_impl_diff_lut -gt 20 || $systolic_impl_diff_ff -gt 20 || $systolic_impl_dsp -gt 0 ]]; then systolic_impl_util=0; else systolic_impl_util=2; fi
else
    systolic_impl_util=0
fi

if [[ -e "systolic_impl_timing.txt" && $systolic_impl_sim -ne 0 ]]; then
    systolic_impl_timing_met=`grep "MET" systolic_impl_timing.txt | wc -l`
    systolic_slack=`cat systolic_impl_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $systolic_impl_timing_met -eq 1 || $systolic_slack -gt -0.3 ]]; then systolic_impl_timing=2 else systolic_impl_timing=0; fi
else
    systolic_impl_timing=0
fi

declare -A addr_impl_sim
addr_impl_sim=(MEM_A 0 MEM_B 0 MEM_D 0)
for dut in MEM_A MEM_B MEM_D; do
    make addr-impl N1=8 N2=4 DUT=$dut
    make addr-xsim M1=32 M2=16 M3=8 N1=8 N2=4 DUT=$dut MODE=impl | grep "Error\|PASSED" > addr_impl.txt 2>&1
    addr_impl_pass=`grep "PASSED" addr_impl.txt | wc -l`
    if [[ $addr_impl_pass -eq 1 ]]; then addr_impl_sim[$dut]=5 else addr_impl_sim[$dut]=0; fi
done


# Util A,B,C
if [ -e "mem_write_A_impl_util.txt" ]; then
    mem_write_A_impl_gold_lut=`cat mem_write_A_impl_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_write_A_impl_gold_ff=`cat mem_write_A_impl_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_write_A_impl_lut=`cat mem_write_A_impl_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_write_A_impl_ff=`cat mem_write_A_impl_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    mem_write_A_impl_dsp=`cat mem_write_A_impl_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_write_A_impl_diff_lut=`expr 100 \* \( $mem_write_A_impl_lut - $mem_write_A_impl_gold_lut \) \/ $mem_write_A_impl_gold_lut`
    mem_write_A_impl_diff_ff=`expr 100 \* \( $mem_write_A_impl_ff - $mem_write_A_impl_gold_ff \) \/ $mem_write_A_impl_gold_ff`

    if [[ $mem_write_A_impl_lut -eq 0 || $mem_write_A_impl_ff -eq 0 || $mem_write_A_impl_diff_lut -gt 20 || $mem_write_A_impl_diff_ff -gt 20 || $mem_write_A_impl_dsp -gt 0 ]]; then mem_write_A_impl_util=0; else mem_write_A_impl_util=2; fi
else
    mem_write_A_impl_util=0
fi
if [ -e "mem_write_B_impl_util.txt" ]; then
    mem_write_B_impl_gold_lut=`cat mem_write_B_impl_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_write_B_impl_gold_ff=`cat mem_write_B_impl_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_write_B_impl_lut=`cat mem_write_B_impl_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_write_B_impl_ff=`cat mem_write_B_impl_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    mem_write_B_impl_dsp=`cat mem_write_B_impl_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_write_B_impl_diff_lut=`expr 100 \* \( $mem_write_B_impl_lut - $mem_write_B_impl_gold_lut \) \/ $mem_write_B_impl_gold_lut`
    mem_write_B_impl_diff_ff=`expr 100 \* \( $mem_write_B_impl_ff - $mem_write_B_impl_gold_ff \) \/ $mem_write_B_impl_gold_ff`

    if [[ $mem_write_B_impl_lut -eq 0 || $mem_write_B_impl_ff -eq 0 || $mem_write_B_impl_diff_lut -gt 20 || $mem_write_B_impl_diff_ff -gt 20 || $mem_write_B_impl_dsp -gt 0 ]]; then mem_write_B_impl_util=0; else mem_write_B_impl_util=2; fi
else
    mem_write_B_impl_util=0
fi
if [ -e "mem_read_D_impl_util.txt" ]; then
    mem_read_D_impl_gold_lut=`cat mem_read_D_impl_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_read_D_impl_gold_ff=`cat mem_read_D_impl_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_read_D_impl_lut=`cat mem_read_D_impl_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    mem_read_D_impl_ff=`cat mem_read_D_impl_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    mem_read_D_impl_dsp=`cat mem_read_D_impl_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    mem_read_D_impl_diff_lut=`expr 100 \* \( $mem_read_D_impl_lut - $mem_read_D_impl_gold_lut \) \/ $mem_read_D_impl_gold_lut`
    mem_read_D_impl_diff_ff=`expr 100 \* \( $mem_read_D_impl_ff - $mem_read_D_impl_gold_ff \) \/ $mem_read_D_impl_gold_ff`

    if [[ $mem_read_D_impl_lut -eq 0 || $mem_read_D_impl_ff -eq 0 || $mem_read_D_impl_diff_lut -gt 20 || $mem_read_D_impl_diff_ff -gt 20 || $mem_read_D_impl_dsp -gt 0 ]]; then mem_read_D_impl_util=0; else mem_read_D_impl_util=2; fi
else
    mem_read_D_impl_util=0
fi


# Timing
if [[ -e "mem_write_A_impl_timing.txt" && $addr_impl_sim[MEM_A] -ne 0 ]]; then
    mem_write_A_impl_timing_met=`grep "MET" mem_write_A_impl_timing.txt | wc -l`
    mem_write_A_impl_slack=`cat mem_write_A_impl_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $mem_write_A_impl_timing_met -eq 1 || $mem_write_A_impl_slack -gt -0.3 ]]; then mem_write_A_impl_timing=2 else mem_write_A_impl_timing=0; fi
else
    mem_write_A_impl_timing=0
fi
if [[ -e "mem_write_B_impl_timing.txt" && $addr_impl_sim[MEM_B] -ne 0 ]]; then
    mem_write_B_impl_timing_met=`grep "MET" mem_write_B_impl_timing.txt | wc -l`
    mem_write_B_impl_slack=`cat mem_write_B_impl_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $mem_write_B_impl_timing_met -eq 1 || $mem_write_B_impl_slack -gt -0.3 ]]; then mem_write_B_impl_timing=2 else mem_write_B_impl_timing=0; fi
else
    mem_write_B_impl_timing=0
fi
if [[ -e "mem_read_D_impl_timing.txt" && $addr_impl_sim[MEM_D] -ne 0 ]]; then
    mem_read_D_impl_timing_met=`grep "MET" mem_read_D_impl_timing.txt | wc -l`
    mem_read_D_impl_slack=`cat mem_read_D_impl_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $mem_read_D_impl_timing_met -eq 1 || $mem_read_D_impl_slack -gt -0.3 ]]; then mem_read_D_impl_timing=2 else mem_read_D_impl_timing=0; fi
else
    mem_read_D_impl_timing=0
fi


# Grades
# Simulations
echo "### Simulations ###" > grade.csv
echo "pe_sim1: $pe_sim1" >> grade.csv
echo "pe_sim2: $pe_sim2" >> grade.csv
echo "systolic_sim1: $systolic_sim1" >> grade.csv
echo "systolic_sim2: $systolic_sim2" >> grade.csv
echo "systolic_sim3: $systolic_sim3" >> grade.csv
echo "systolic_sim4: $systolic_sim4" >> grade.csv
for dut in MEM_A MEM_B MEM_D; do
    echo "addr_sim1[$dut]: ${addr_sim1[$dut]}" >> grade.csv
    echo "addr_sim2[$dut]: ${addr_sim2[$dut]}" >> grade.csv
    echo "addr_sim3[$dut]: ${addr_sim3[$dut]}" >> grade.csv
done
echo "pe_impl_sim: $pe_impl_sim" >> grade.csv
echo "systolic_impl_sim: $systolic_impl_sim" >> grade.csv
echo "addr_impl_sim[MEM_A]: ${addr_impl_sim[MEM_A]}" >> grade.csv
echo "addr_impl_sim[MEM_B]: ${addr_impl_sim[MEM_B]}" >> grade.csv
echo "addr_impl_sim[MEM_D]: ${addr_impl_sim[MEM_D]}" >> grade.csv

# Utilizations
echo "### Utilizations ###" >> grade.csv
echo "pe_impl_util: $pe_impl_util" >> grade.csv
echo "systolic_impl_util: $systolic_impl_util" >> grade.csv
echo "mem_write_A_impl_util: $mem_write_A_impl_util" >> grade.csv
echo "mem_write_B_impl_util: $mem_write_B_impl_util" >> grade.csv
echo "mem_read_D_impl_util: $mem_read_D_impl_util" >> grade.csv

# Timings
echo "### Timings ###" >> grade.csv
echo "pe_impl_timing: $pe_impl_timing" >> grade.csv
echo "systolic_impl_timing: $systolic_impl_timing" >> grade.csv
echo "mem_write_A_impl_timing: $mem_write_A_impl_timing" >> grade.csv
echo "mem_write_B_impl_timing: $mem_write_B_impl_timing" >> grade.csv
echo "mem_read_D_impl_timing: $mem_read_D_impl_timing" >> grade.csv

# Lint
echo "### Lint ###" >> grade.csv
echo "lint_pe: $lint_pe" >> grade.csv
echo "lint_systolic: $lint_systolic" >> grade.csv


## When server connected to board also has vivado
if [[ $USE_BOARD -eq 1 ]]; then
   make clean
   make prep-board 0
   if [ -e "grade_board_timing.csv" ]; then
       board_grade_timing=$(cat grade_board_timing.csv | tr -d '\n')
       echo "board_timing_grade: $board_grade_timing" >> grade.csv
   else 
        echo "board_timing_grade: 0" >> grade.csv
   fi
   make clean
   make grade-board 0
   if [ -e "grade_board.csv" ]; then
       board_grade=$(cat grade_board.csv | tr -d '\n')
       echo "board_grade: $board_grade" >> grade.csv
    else
        echo "board_grade: 0" >> grade.csv
   fi
fi
