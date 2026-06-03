xvlog -sv acc_tb.sv acc.sv
xelab -debug typical acc_tb -s acc_tb

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim acc_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim acc_tb -t xsim.tcl
fi
