#!/bin/zsh

# DIR=~/ece327-w25/labs-admin/lab2-sol
# cp $DIR/*.sh .
# cp $DIR/*.tcl .
# cp $DIR/*_tb.sv .
# cp $DIR/*_vtb.sv .
# cp $DIR/lopd.sv .
# cp $DIR/*.golden .
# cp $DIR/*.mem .
# cp $DIR/*.xdc .
# cp $DIR/*.cpp .

make clean
rm -rf *.txt *.csv *_impl.sv *_synth.sv

# Lint
lint_div=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only div.sv lopd.sv --top-module div 2>&1 | grep Error | wc -l`
lint_exp=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only exp.sv 2>&1 | grep Error | wc -l`
lint_gelu=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only gelu.sv 2>&1 | grep Error | wc -l`

# Lint Grades: 2,2,2
if [[ $lint_div -eq 0 ]]; then lint_div=2 else lint_div=0; fi
if [[ $lint_exp -eq 0 ]]; then lint_exp=2 else lint_exp=0; fi
if [[ $lint_gelu -eq 0 ]]; then lint_gelu=2 else lint_gelu=0; fi

# Simulation
make div-xsim | grep "Error\|PASSED" > div_xsim.txt 2>&1
div_err=`grep "Error" div_xsim.txt | wc -l`
div_pass=`grep "PASSED" div_xsim.txt | wc -l`

make exp-xsim | grep "Error\|PASSED" > exp_xsim.txt 2>&1
exp_err=`grep "Error" exp_xsim.txt | wc -l`
exp_pass=`grep "PASSED" exp_xsim.txt | wc -l`

make gelu-xsim | grep "Error\|PASSED" > gelu_xsim.txt 2>&1
gelu_err=`grep "Error" gelu_xsim.txt | wc -l`
gelu_pass=`grep "PASSED" gelu_xsim.txt | wc -l`

# Sim Grades: 20,15,15
if [[ $div_err -eq 0 && $div_pass -eq 1 ]]; then div_sim=15 else div_sim=0; fi
if [[ $exp_err -eq 0 && $exp_pass -eq 1 ]]; then exp_sim=10 else exp_sim=0; fi
if [[ $gelu_err -eq 0 && $gelu_pass -eq 1 ]]; then gelu_sim=10 else gelu_sim=0; fi

# Post-Synth Simulation & Post-Impl Utilization
make div-impl
if [ -e "div_synth.sv" ]; then
    make div-synth-xsim | grep "Error\|PASSED" > div_synth_xsim.txt 2>&1
    div_synth_err=`grep "Error" div_synth_xsim.txt | wc -l`
    div_synth_pass=`grep "PASSED" div_synth_xsim.txt | wc -l`

    if [[ $div_synth_err -eq 0 && $div_synth_pass -eq 1 ]]; then div_synth_sim=10 else div_synth_sim=0; fi
else
    div_synth_sim=0
fi

if [ -e "div_util.txt" ]; then
    div_gold_lut=`cat div_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    div_gold_ff=`cat div_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    div_impl_lut=`cat div_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    div_impl_ff=`cat div_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    div_impl_dsp=`cat div_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    div_diff_lut=`expr 100 \* \( $div_impl_lut - $div_gold_lut \) \/ $div_gold_lut`
    div_diff_ff=`expr 100 \* \( $div_impl_ff - $div_gold_ff \) \/ $div_gold_ff`

    if [[ $div_impl_lut -eq 0 || $div_impl_ff -eq 0 || $div_diff_lut -gt 20 || $div_diff_ff -gt 20 || $div_impl_dsp -gt 0 ]]; then div_util=0; else div_util=6; fi
else
    div_util=0
fi

if [[ -e "div_timing.txt" && $div_synth_sim -ne 0 ]]; then
    div_timing_met=`grep "MET" div_timing.txt | wc -l`
    div_slack=`cat div_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $div_timing_met -eq 1 || $div_slack -gt -0.3 ]]; then div_timing=5 else div_timing=0; fi
else
    div_timing=0
fi

make exp-impl
if [ -e "exp_synth.sv" ]; then
    make exp-synth-xsim | grep "Error\|PASSED" > exp_synth_xsim.txt 2>&1
    exp_synth_err=`grep "Error" exp_synth_xsim.txt | wc -l`
    exp_synth_pass=`grep "PASSED" exp_synth_xsim.txt | wc -l`

    if [[ $exp_synth_err -eq 0 && $exp_synth_pass -eq 1 ]]; then exp_synth_sim=8 else exp_synth_sim=0; fi
else
    exp_synth_sim=0
fi

if [ -e "exp_util.txt" ]; then
    exp_gold_lut=`cat exp_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    exp_gold_ff=`cat exp_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    exp_gold_dsp=`cat exp_util.golden | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    exp_impl_lut=`cat exp_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    exp_impl_ff=`cat exp_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    exp_impl_dsp=`cat exp_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    exp_diff_lut=`expr 100 \* \( $exp_impl_lut - $exp_gold_lut \) \/ $exp_gold_lut`
    exp_diff_ff=`expr 100 \* \( $exp_impl_ff - $exp_gold_ff \) \/ $exp_gold_ff`
    exp_diff_dsp=`expr 100 \* \( $exp_impl_dsp - $exp_gold_dsp \) \/ $exp_gold_dsp`

    if [[ $exp_impl_lut -eq 0 || $exp_impl_ff -eq 0 || $exp_diff_lut -gt 20 || $exp_diff_ff -gt 20 || $exp_diff_dsp -gt 20 ]]; then exp_util=0; else exp_util=6; fi
else
    exp_util=0
fi

if [[ -e "exp_timing.txt"  && $exp_synth_sim -ne 0 ]]; then
    exp_timing_met=`grep "MET" exp_timing.txt | wc -l`
    exp_slack=`cat exp_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $exp_timing_met -eq 1 || $exp_slack -gt -0.3 ]]; then exp_timing=5 else exp_timing=0; fi
else
    exp_timing=0
fi

make gelu-impl
if [ -e "gelu_synth.sv" ]; then
    make gelu-synth-xsim | grep "Error\|PASSED" > gelu_synth_xsim.txt 2>&1
    gelu_synth_err=`grep "Error" gelu_synth_xsim.txt | wc -l`
    gelu_synth_pass=`grep "PASSED" gelu_synth_xsim.txt | wc -l`

    if [[ $gelu_synth_err -eq 0 && $gelu_synth_pass -eq 1 ]]; then gelu_synth_sim=8 else gelu_synth_sim=0; fi
else
    gelu_synth_sim=0
fi

if [ -e "gelu_util.txt" ]; then
    gelu_gold_lut=`cat gelu_util.golden | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    gelu_gold_ff=`cat gelu_util.golden | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    gelu_gold_dsp=`cat gelu_util.golden | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    
    gelu_impl_lut=`cat gelu_util.txt | grep "Slice LUTs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`
    gelu_impl_ff=`cat gelu_util.txt | grep "Slice Registers" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g | head -1`
    gelu_impl_dsp=`cat gelu_util.txt | grep "DSPs" | head -n 1 | cut -d"|" -f 3 | sed s/\ //g`

    gelu_diff_lut=`expr 100 \* \( $gelu_impl_lut - $gelu_gold_lut \) \/ $gelu_gold_lut`
    gelu_diff_ff=`expr 100 \* \( $gelu_impl_ff - $gelu_gold_ff \) \/ $gelu_gold_ff`
    gelu_diff_dsp=`expr 100 \* \( $gelu_impl_dsp - $gelu_gold_dsp \) \/ $gelu_gold_dsp`
    
    if [[ $gelu_impl_lut -eq 0 || $gelu_impl_ff -eq 0 || $gelu_diff_lut -gt 20 || $gelu_diff_ff -gt 20 || $gelu_diff_dsp -gt 20 ]]; then gelu_util=0; else gelu_util=6; fi
else
    gelu_util=0
fi

if [[ -e "gelu_timing.txt" && $gelu_synth_sim -ne 0 ]]; then
    gelu_timing_met=`grep "MET" gelu_timing.txt | wc -l`
    gelu_slack=`cat gelu_timing.txt | grep Slack | cut -d" " -f11 | cut -d"n" -f1`
    if [[ $gelu_timing_met -eq 1 || $gelu_slack -gt -0.3 ]]; then gelu_timing=5 else gelu_timing=0; fi
else
    gelu_timing=0
fi

# grade.csv
{
    echo "$div_sim"
    echo "$exp_sim"
    echo "$gelu_sim"
    echo "$div_synth_sim"
    echo "$exp_synth_sim"
    echo "$gelu_synth_sim"
    echo "$div_util"
    echo "$exp_util"
    echo "$gelu_util"
    echo "$lint_div"
    echo "$lint_exp"
    echo "$lint_gelu"
    echo "$div_timing"
    echo "$exp_timing"
    echo "$gelu_timing"
} > grade.csv