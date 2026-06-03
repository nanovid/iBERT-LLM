GUI ?= 0

lint-div:
	verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only div.sv lopd.sv --top-module div

lint-exp:
	verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only exp.sv

lint-gelu:
	verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only gelu.sv

lint-always:
	grep -E "always\s*(@|\s+)" div.sv exp.sv gelu.sv | grep -v "always_\(ff\|comb\)" && (echo "Error: Use always_ff for sequential logic or always_comb for combinational logic" && exit 1)


div-py:
	python3 div.py

div-xsim:
	zsh div_xsim.sh ${GUI}

div-synth:
	echo 'set MODE "synth"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source div_vivado.tcl

div-edif:
	sv2v lopd.sv > lopd.v
	sv2v div.sv > div.v
	yosys -p "read_verilog +/xilinx/cells_xtra.v div.v lopd.v; hierarchy -top div; proc; opt; synth_xilinx -edif div.edif -top div; write_verilog div_edif_synth.v"

div-synth-xsim:
	zsh div_xsim.sh ${GUI} synth

div-edif-iverilog-sim:
	iverilog -g2012 div_edif_synth.v div_tb.sv

div-impl:
	echo 'set MODE "impl"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source div_vivado.tcl

div-impl-xsim:
	zsh div_xsim.sh ${GUI} impl

div-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --no-timing \
		--top div_tb div_vtb.sv div.sv \
		div.cpp \
		-CFLAGS -DMAX_TIME=1000000 \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

div-run:
	rm -rf *.vcd
	make div-build
	./dut_tb/dut_tb
	make clean

div-impl-gold: div-impl
	mv div_util.txt div_util_golden
	mv div_timing.txt div_timing_golden

exp-py:
	python3 exp.py

exp-xsim:
	zsh exp_xsim.sh ${GUI}

exp-synth:
	echo 'set MODE "synth"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source exp_vivado.tcl

exp-edif:
	sv2v exp.sv > exp.v
	yosys -p "read_verilog +/xilinx/cells_xtra.v exp.v; hierarchy -top exp; proc; opt; synth_xilinx -edif exp.edif -top exp;"

exp-synth-xsim:
	zsh exp_xsim.sh ${GUI} synth

exp-impl:
	echo 'set MODE "impl"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source exp_vivado.tcl

exp-impl-xsim:
	zsh exp_xsim.sh ${GUI} impl

exp-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --no-timing \
		--top exp_tb exp_vtb.sv exp.sv \
		exp.cpp \
		-CFLAGS -DMAX_TIME=1000000 \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

exp-run:
	rm -rf *.vcd
	make exp-build
	./dut_tb/dut_tb
	make clean

exp-impl-gold: exp-impl
	mv exp_util.txt exp_util_golden
	mv exp_timing.txt exp_timing_golden

gelu-py:
	python3 gelu.py

gelu-xsim:
	zsh gelu_xsim.sh ${GUI}

gelu-synth:
	echo 'set MODE "synth"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source gelu_vivado.tcl

gelu-edif:
	sv2v gelu.sv > gelu.v
	yosys -p "read_verilog +/xilinx/cells_xtra.v gelu.v; hierarchy -top gelu; proc; opt; synth_xilinx -edif gelu.edif -top gelu;"

gelu-synth-xsim:
	zsh gelu_xsim.sh ${GUI} synth

gelu-impl:
	echo 'set MODE "impl"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source gelu_vivado.tcl

gelu-impl-xsim:
	zsh gelu_xsim.sh ${GUI} impl

gelu-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --no-timing \
		--top gelu_tb gelu_vtb.sv gelu.sv \
		gelu.cpp \
		-CFLAGS -DMAX_TIME=1000000 \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

gelu-run:
	rm -rf *.vcd
	make gelu-build
	./dut_tb/dut_tb
	make clean

gelu-impl-gold: gelu-impl
	mv gelu_util.txt gelu_util_golden
	mv gelu_timing.txt gelu_timing_golden

all-impl-gold: 
	make div-impl-gold
	make exp-impl-gold
	make gelu-impl-gold


grade:
	zsh grade.sh
	cat grade.csv

clean:
	rm -rf dut_tb/
	rm -rf *.jou *.log *.pb *.wdb *.wcfg *.str args.tcl xsim.dir/ .Xil/ work/ lints/ vivado/

copy_as_goldens:
	cp div_util.txt div_util.golden
	cp exp_util.txt exp_util.golden
	cp gelu_util.txt gelu_util.golden