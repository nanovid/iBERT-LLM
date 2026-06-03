GUI ?= 0

acc-xsim:
	zsh acc_xsim.sh ${GUI}

mac-xsim:
	zsh mac_xsim.sh ${GUI}

max-xsim:
	zsh max_xsim.sh ${GUI}

array-xsim:
	zsh array_xsim.sh ${GUI}

grade:
	zsh grade.sh
	cat grade.csv

clean:
	rm -rf result*.txt lint*.txt *.jou *.log *.pb *.wdb *.str args.tcl xsim.dir/ .Xil/ work/ lints/

