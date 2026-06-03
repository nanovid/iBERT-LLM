xvlog -sv array_tb.sv array.sv mac.sv
xelab -debug typical array_tb -s array_tb

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim array_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim array_tb -t xsim.tcl
fi

