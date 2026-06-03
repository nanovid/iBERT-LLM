#!/bin/zsh

make clean
zsh acc_xsim.sh 0 | grep "Error\|PASSED" > result_acc.txt 2>&1
zsh mac_xsim.sh 0 | grep "Error\|PASSED" > result_mac.txt 2>&1
zsh max_xsim.sh 0 | grep "Error\|PASSED" > result_max.txt 2>&1
zsh array_xsim.sh 0 | grep "Error\|PASSED" > result_array.txt 2>&1

lint_acc=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only acc.sv 2>&1 | grep Error | wc -l`
lint_mac=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only mac.sv 2>&1 | grep Error | wc -l`
lint_max=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only max.sv 2>&1 | grep Error | wc -l`
lint_array=`verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only array.sv mac.sv --top-module array 2>&1 | grep Error | wc -l`

acc_err=`grep "Error" result_acc.txt | wc -l`
acc_pass=`grep "PASSED" result_acc.txt | wc -l`
mac_err=`grep "Error" result_mac.txt | wc -l`
mac_pass=`grep "PASSED" result_mac.txt | wc -l`
max_err=`grep "Error" result_max.txt | wc -l`
max_pass=`grep "PASSED" result_max.txt | wc -l`
array_err=`grep "Error" result_array.txt | wc -l`
array_pass=`grep "PASSED" result_array.txt | wc -l`

if [[ $acc_err -eq 0 && $acc_pass -eq 1 ]]; then acc_sim=20 else acc_sim=0; fi
if [[ $mac_err -eq 0 && $mac_pass -eq 1 ]]; then mac_sim=20 else mac_sim=0; fi
if [[ $max_err -eq 0 && $max_pass -eq 1 ]]; then max_sim=20 else max_sim=0; fi
if [[ $array_err -eq 0 && $array_pass -eq 1 ]]; then array_sim=20 else array_sim=0; fi

if [[ $lint_acc -eq 0 ]]; then lint_acc=5 else lint_acc=0; fi
if [[ $lint_mac -eq 0 ]]; then lint_mac=5 else lint_mac=0; fi
if [[ $lint_max -eq 0 ]]; then lint_max=5 else lint_max=0; fi
if [[ $lint_array -eq 0 ]]; then lint_array=5 else lint_array=0; fi

echo "$acc_sim,$mac_sim,$max_sim,$array_sim" > grade.csv
echo "$lint_acc,$lint_mac,$lint_max,$lint_array" >> grade.csv
make clean
