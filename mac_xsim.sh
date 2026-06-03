xvlog -sv mac_tb.sv mac.sv
xelab -debug typical mac_tb -s mac_tb

if (( $1 > 0 )) then
    echo "set GUI 1" > args.tcl
    xsim mac_tb -gui -t xsim.tcl
else
    echo "set GUI 0" > args.tcl
    xsim mac_tb -t xsim.tcl
fi
