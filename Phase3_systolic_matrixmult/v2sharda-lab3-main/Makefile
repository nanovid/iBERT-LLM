GUI ?= 0
MODE ?= ""
FIRST ?= 0
USE_BOARD ?= 0
TIMEOUT ?= 1
PYNQ_IP ?= pynq-lab-10.eng.uwaterloo.ca

M ?= 8
N ?= 4
M1 ?= $M
M2 ?= $M
M3 ?= $M
N1 ?= $N
N2 ?= $N
BLOCKS ?= 1
REUSE ?= 1
DEBUG ?= 0
MATRIXSIZE_W ?= 24
MEM_DEPTH ?= 4096
FOR_627 ?= 0
MEM_X ?= ""
ifneq (${BLOCKS},1)
VFLAGS += -DPING_PONG
endif

ifeq (${DUT},MEM_A)
MEM_X_NAME = mem_write_A
MEM_X = MEM_A
else ifeq (${DUT},MEM_B)
ifneq (${BLOCKS},1)
MEM_X_NAME = mem_write_B_pp
else
MEM_X_NAME = mem_write_B
endif
MEM_X = MEM_B
else ifeq (${DUT},MEM_D)
ifneq (${BLOCKS},1)
MEM_X_NAME = mem_read_D_pp
else
MEM_X_NAME = mem_read_D
endif
MEM_X = MEM_D
endif

DUT ?= ""
pe-lint:
	verilator -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only pe.sv

pe-xsim:
	rm -rf *.mem
	zsh pe_xsim.sh ${FIRST} ${GUI} ${MODE}

pe-synth:
	echo 'set MODE "synth"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source pe_vivado.tcl

pe-synth-xsim: pe-synth
	rm -rf *.mem
	make pe-xsim FIRST=${FIRST} GUI=${GUI} MODE=synth

pe-impl:
	echo 'set MODE "impl"' > args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source pe_vivado.tcl

pe-impl-xsim: pe-impl
	rm -rf *.mem
	make pe-xsim FIRST=${FIRST} GUI=${GUI} MODE=impl

pe-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --timing \
		--top top pe_tb.sv pe.sv \
		-GFIRST=${FIRST} \
		top.cpp \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

pe-run:
	rm -rf *.mem
	rm -rf *.vcd
	make pe-build
	./dut_tb/dut_tb
	make clean

systolic-lint:
	verilator -GD_W=8 -GD_W_ACC=32 -GN1=3 -GN2=3 -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only systolic.sv

systolic-xsim:
	rm -rf *.mem
	python3 make_mem.py ${M1} ${M2} ${M3} ${BLOCKS} ${REUSE} ${DEBUG}
	zsh systolic_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${GUI} ${MODE} ${BLOCKS}
	python3 test.py ${M1} ${M2} ${M3}

systolic-synth:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo 'set MODE "synth"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source systolic_vivado.tcl

systolic-synth-xsim: systolic-synth
	rm -rf *.mem
	make systolic-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} GUI=${GUI} MODE=synth BLOCKS=${BLOCKS}

systolic-impl:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo 'set MODE "impl"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source systolic_vivado.tcl

systolic-impl-xsim: systolic-impl
	rm -rf *.mem
	make systolic-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} GUI=${GUI} MODE=impl BLOCKS=${BLOCKS}

systolic-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --timing \
		${VFLAGS} --top top systolic_tb.sv systolic.sv \
		-GM1=${M1} -GM2=${M2} -GM3=${M3} \
		-GN1=${N1} -GN2=${N2} \
		top.cpp \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

systolic-run:
	rm -rf *.mem
	python3 make_mem.py ${M1} ${M2} ${M3} ${BLOCKS} ${REUSE} ${DEBUG}
	rm -rf *.vcd
	make systolic-build
	./dut_tb/dut_tb
	python3 test.py ${M1} ${M2} ${M3}
	make clean

mm-lint:
	verilator -GD_W=8 -GD_W_ACC=32 -GN1=4 -GN2=4 -Wall -Wno-DECLFILENAME -Wno-EOFNEWLINE -Wno-TIMESCALEMOD -Wno-width -Wno-unused --lint-only mm_pp.sv systolic.sv pe.sv control_pp.sv counter.sv s2mm_pp.sv mm2s_pp.sv mem_read.sv mem_read_D_pp.sv mem_write_A.sv mem_write_B_pp.sv mem_write.sv mem.sv ping_pong_control.sv

mm-xsim:
	rm -rf *.mem
	python3 make_mem.py ${M1} ${M2} ${M3} ${BLOCKS} ${REUSE} ${DEBUG}
	zsh mm_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} ${BLOCKS}
	python3 test.py ${M1} ${M2} ${M3}

mm-synth:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set MATRIXSIZE_W ${MATRIXSIZE_W}" >> args.tcl
	echo "set MEM_DEPTH ${MEM_DEPTH}" >> args.tcl
	echo 'set MODE "synth"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mm_vivado.tcl

mm-synth-xsim: mm-synth
	rm -rf *.mem
	make mm-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH=${MEM_DEPTH} GUI=${GUI} MODE=synth BLOCKS=${BLOCKS}

mm-impl:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set MATRIXSIZE_W ${MATRIXSIZE_W}" >> args.tcl
	echo "set MEM_DEPTH ${MEM_DEPTH}" >> args.tcl
	echo 'set MODE "impl"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mm_vivado.tcl

mm-impl-xsim: mm-impl
	rm -rf *.mem
	make mm-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH=${MEM_DEPTH} GUI=${GUI} MODE=impl

mm-axi-xsim:
	rm -rf *.mem
	python3 make_mem.py ${M1} ${M2} ${M3} ${BLOCKS} ${REUSE} ${DEBUG}
	zsh mm_axi_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} ${BLOCKS}
	python3 test.py ${M1} ${M2} ${M3}

mm-axi-synth:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set MATRIXSIZE_W ${MATRIXSIZE_W}" >> args.tcl
	echo "set MEM_DEPTH ${MEM_DEPTH}" >> args.tcl
	echo 'set MODE "synth"' >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mm_axi_vivado.tcl

mm-axi-synth-xsim:
	rm -rf *.mem
	make mm-axi-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH=${MEM_DEPTH} GUI=${GUI} MODE=synth BLOCKS=${BLOCKS}

mm-axi-impl:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set MATRIXSIZE_W ${MATRIXSIZE_W}" >> args.tcl
	echo "set MEM_DEPTH ${MEM_DEPTH}" >> args.tcl
	echo 'set MODE "impl"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mm_axi_vivado.tcl

mm-axi-impl-xsim:
	rm -rf *.mem
	make mm-axi-xsim M1=${M1} M2=${M2} M3=${M3} N1=${N1} N2=${N2} MATRIXSIZE_W=${MATRIXSIZE_W} MEM_DEPTH=${MEM_DEPTH} GUI=${GUI} MODE=impl BLOCKS=${BLOCKS}

mm-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --timing \
		${VFLAGS} --top top mm_tb.sv mm.sv mm_pp.sv \
		-GM1=${M1} -GM2=${M2} -GM3=${M3} \
		-GN1=${N1} -GN2=${N2} -G_BLOCK_NUM=${BLOCKS} \
		-GMATRIXSIZE_W=${MATRIXSIZE_W} -GMEM_DEPTH=${MEM_DEPTH} \
		top.cpp \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

mm-run:
	rm -rf *.mem
	rm -rf *.vcd
	python3 make_mem.py ${M1} ${M2} ${M3} ${BLOCKS} ${REUSE} ${DEBUG}
	make mm-build
	./dut_tb/dut_tb
	python3 test.py ${M1} ${M2} ${M3}
	make clean

addr-xsim:
	rm -rf *.mem
	zsh mem_addr_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} ${DUT} ${BLOCKS}

addr-synth:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set DUT ${DUT}" >> args.tcl
	echo 'set MODE "synth"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mem_addr_vivado.tcl

addr-impl:
	echo "set N1 ${N1}" > args.tcl
	echo "set N2 ${N2}" >> args.tcl
	echo "set DUT ${DUT}" >> args.tcl
	echo 'set MODE "impl"' >> args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> args.tcl
	vivado -nolog -nojournal -notrace -mode tcl -source mem_addr_vivado.tcl

write-a-xsim:
	rm -rf *.mem
	zsh mem_addr_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} MEM_A

write-b-xsim:
	rm -rf *.mem
	zsh mem_addr_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} MEM_B ${BLOCKS}

read-d-xsim:
	rm -rf *.mem
	zsh mem_addr_xsim.sh ${M1} ${M2} ${M3} ${N1} ${N2} ${MATRIXSIZE_W} ${MEM_DEPTH} ${GUI} ${MODE} MEM_D ${BLOCKS}

addr-build:
	verilator --build --exe --cc --trace \
		-Wno-COMBDLY -Wno-width --timing \
		${VFLAGS} --top top mem_addr_tb.sv ${MEM_X_NAME}.sv \
		-GM1=${M1} -GM2=${M2} -GM3=${M3} \
		-GN1=${N1} -GN2=${N2} -GBLOCK_NUM=${BLOCKS} \
		-GMATRIXSIZE_W=${MATRIXSIZE_W} -GMEM_DEPTH=41952 -D${MEM_X} \
		top.cpp \
		--Mdir $(shell pwd)/dut_tb \
		-o dut_tb

addr-run:
	rm -rf *.mem
	rm -rf *.vcd
	make addr-build
	./dut_tb/dut_tb
	make clean

write-a-run:
	make addr-run MEM_X=MEM_A

write-b-run:
	make addr-run MEM_X=MEM_B
	
read-d-run:
	make addr-run MEM_X=MEM_D

bitstream:
	make clean
	echo "set N1 ${N1}" > overlay/args.tcl
	echo "set N2 ${N2}" >> overlay/args.tcl
	echo "set MATRIXSIZE_W ${MATRIXSIZE_W}" >> overlay/args.tcl
	echo "set MEM_DEPTH ${MEM_DEPTH}" >> overlay/args.tcl
	echo "set TIMEOUT ${TIMEOUT}" >> overlay/args.tcl
	echo "set _BLOCK_NUM ${BLOCKS}" >> overlay/args.tcl
	cd overlay && vivado -nolog -nojournal -notrace -mode tcl -source build.tcl

ping-board:
	ping -c 4 ${PYNQ_IP}

run-board: overlay/tutorial_${N1}_${N2}.bit overlay/tutorial_${N1}_${N2}.hwh
	scp board.py xilinx@${PYNQ_IP}:~/
	scp overlay/tutorial_${N1}_${N2}.bit xilinx@${PYNQ_IP}:~/tutorial.bit
	scp overlay/tutorial_${N1}_${N2}.hwh xilinx@${PYNQ_IP}:~/tutorial.hwh
	ssh xilinx@${PYNQ_IP} "bash -lc 'echo xilinx | sudo -SE python3 board.py ${M1} ${M2} ${M3} ${N1} ${N2} ${BLOCKS}'"
	ssh xilinx@${PYNQ_IP} "rm -Rf tutorial.* *.py"

grade_327:
	zsh grade_327.sh ${USE_BOARD}
	cat grade.csv

grade_627:
	zsh grade_627.sh ${USE_BOARD}
	cat grade.csv

prep-board:
	zsh prep_board.sh ${FOR_627}
	cat grade_board_timing.csv

grade-board:
	zsh grade_board.sh ${FOR_627}
	cat grade_board.csv

clean:
	rm -rf dut_tb/
	rm -rf *.jou *.log *.pb *.wcfg *.wdb *.str args.tcl xsim.dir/ .Xil/ work/ lints/ vivado/ overlay/args.tcl overlay/.gen overlay/.srcs overlay/*.log overlay/*.jou overlay/tutorial overlay/.Xil overlay/NA xelab_log *.mem
	rm -rf *.txt
