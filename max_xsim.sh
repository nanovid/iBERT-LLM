xvlog -sv max_tb.sv max.sv
xelab -debug typical max_tb -s max_tb

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim max_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim max_tb -t xsim.tcl
fi
