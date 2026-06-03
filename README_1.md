# LAB1: Accumulate (ACC), Multiply and Accumulate (MAC), Maximum (MAX), Array of MACs [Design and Simulation]

Deadline: 16th Jan 2025 23:59

## Getting Started
First, clone the git repository onto your home directory on the `eceubuntu` lab server.

```zsh
mkdir -p $HOME/ece327-w25/labs
cd $HOME/ece327-w25/labs
git clone ist-git@git.uwaterloo.ca:ece327-w25/labs/v2sharda-lab1.git
cd v2sharda-lab1
```

## Lab Objectives

The objective of the first lab is to make you comfortable with writing a Verilog code, use the Xilinx Vivado `xsim` simulator, and get familiar with the git submission interface.
Specifically, you will implement the following modules:
- `acc.sv` - **Accumulate** module that computes `result = result + in_data` on a stream of `in_data` input to generate a stream of `result` output.
- `mac.sv`  - **Multiply and Accumulate** module that computes `result = result + a * b` on a stream of `a` and `b` inputs to generate a stream of `result` output.
- `max.sv` - **Maximum** module that computes `result = max(result, in_data)` on a stream of `in_data` input to generate a stream of `result` output.
- `array.sv` - **Array** of `N` instances of a `mac` module.

## Design

To edit a module, open its Verilog file using your favourite text editor tool (e.g., Visual Studio Code or `vi`). In this lab, you will make changes only to these four files:
`acc.sv`, `mac.sv`, `max.sv`, and `array.sv`.

#### ACC module

The following are the parameters of the `acc.sv` module:

- `D_W` : data width of the input.
- `D_W_ACC` : data width of the accumulator.

The following are the I/O ports of the `acc.sv` module:

- `clk` : 1 bit input : This is the clock input.
- `rst` : 1 bit input : This is a synchronous active high reset.
- `initialize` : 1 bit input : This instructs the accumulator to reset.
- `in_data` : D_W bits input : This is the streaming input.
- `result` : D_W_ACC bits output : This is the output of the ACC module.

Description:

* The high level functionality of the `acc` module can be considered as finding the sum of the elements of a vector.
* The `clk` signal is generated in the testbench and provided to your module. You are expected to operate on the positive edge of the clock.
* The `rst` signal is asserted initially by the test bench for a single clock cycle. You are expected to reset all registers in your design to `0`.
* The input `in_data` is supplied in continuous fashion after `rst` is de-asserted. This _continuous_ supply of inputs is called _streaming_ as data is flowing into your hardware block like water in a stream.
* The `initialize` signal behavior is important! When it is asserted, the accumulator should restart the accumulation process. This means the accumulator will discard the accumulated value and start a fresh new accumulation. Take care to ensure you do not lose input data `in_data` when `initialize` is asserted.
* The addition `result + in_data` should be accumulated into the `result` register.
* The output `result` is observed after a fixed latency of 1 cycle.

#### MAC module

The following are the parameters of the `mac.sv` module:

- `D_W` : data width of the input.
- `D_W_ACC` : data width of the accumulator.

The following are the I/O ports of the `mac.sv` module:

- `clk` : 1 bit input : This is the clock input.
- `rst` : 1 bit input : This is a synchronous active high reset.
- `a` : D_W bits input : This is the first streaming input.
- `b` : D_W bits input : This is the second streaming input.
- `initialize` : 1 bit input : This instructs the accumulator to reset.
- `result` : D_W_ACC bits output : This is the output of the MAC module.


Description:

* The high level functionality of the `mac` module can be considered as finding a dot product of two vectors.
* The `clk` and `rst` signals have the same behaviour described above.
* The input operands `a` and `b` are supplied in continuous fashion after `rst` is de-asserted.
* The `initialize` signal restarts the accumulation process. This means the accumulator will discard the accumulated value and start a fresh new accumulation. Take care to ensure you do not lose input data `a` and `b` when `initialize` is asserted.
* The multiplication `a * b` should be accumulated into the `result` register.

#### MAX Module

The following is the parameter of the `max.sv` module:

- `D_W` : data width of the input and output.

The following are the I/O ports of the `max.sv` module :

- `clk` : 1 bit input : This is the clock input.
- `rst` : 1 bit input : This is a synchronous active high reset.
- `initialize` : 1 bit input : This instructs the result to reset.
- `in_data` : D_W bits input : This is the streaming input.
- `result` : D_W bits output : This is the output of the MAX module.

Description:

* The high level functionality of the `max` module can be considered as finding a maximum of the elements of a vector.
* The `clk` and `rst` signals have the same behaviour described above.
* The input `in_data` is supplied in continuous fashion after `rst` is de-asserted.
* The `initialize` signal restarts the process of finding maximum. This means the `result` will discard the current value and start a new maximum calculation. Take care to ensure you do not lose input data `in_data` when `initialize` is asserted.
* The `result` register should store whichever is larger: its previous `result` value or new input data `in_data`.

#### Array Module

The following are the parameters of the `array.sv` module:

- `D_W` : data width of the input.
- `D_W_ACC` : data width of the accumulator.
- `N` : number of `mac` module instances that need to be generated.

The following are the I/O ports of the `array.sv` module:

* `clk` : 1 bit input : This is the clock input.
* `rst` : 1 bit input : This is a synchronous active high reset.
* `a` : D_W bits x N input : a's data lane to feed into array.
* `b` : D_W bits x N input : b's data lane to feed into array.
* `initialize` : N bits input : initialize's lane to feed into array.
* `result` : D_W_ACC bits x N : This is the output of the array module.

Description:

* This module implements an array of N independent MAC modules by instantiating those modules using a Verilog `generate` statement.
* The `clk`, `rst`, and `initialize` signals are exactly the same signals that we explained above which will be connected to all MAC modules in the array.
* In the array module instead of 1-element input streams for `a` and `b`, there are N-element array of streams for `a` and `b`. Each MAC module in the array receives a 1-element set of streams for its `a` and `b` inputs.
* There is a 1-element output `result` that corresponds to each MAC module. Therefore, the array output is an N-element `result` signal.

## Simulation

To compile and simulate a module using `xsim`, simply type:

```zsh
make acc-xsim
make mac-xsim
make max-xsim
make array-xsim
```

You can add `GUI=1` option to launch `xsim` in GUI mode to see the waveforms:
```zsh
make acc-xsim GUI=1
```

#### Expected Simulation Output for ACC Module

Below is the expected output of running `make acc-xsim`. The text trace is the output of `$display` statements from the `acc_tb.sv`. Successful completion of the test should show "PASSED!" message.

```txt
# Time=5, in_data=0, cntr=0, init=1, result_valid=0, result=0
# Time=7, in_data=-40, cntr=0, init=1, result_valid=0, result=0
# Time=9, in_data=-30, cntr=1, init=0, result_valid=0, result=-40
# Time=11, in_data=-20, cntr=2, init=0, result_valid=0, result=-70
# Time=13, in_data=-10, cntr=3, init=0, result_valid=0, result=-90
# Time=15, in_data=101, cntr=0, init=1, result_valid=1, result=-100
# Time=17, in_data=-102, cntr=1, init=0, result_valid=0, result=101
# Time=19, in_data=-104, cntr=2, init=0, result_valid=0, result=-1
# Time=21, in_data=-103, cntr=3, init=0, result_valid=0, result=-105
# Time=23, in_data=7, cntr=0, init=1, result_valid=1, result=-208
# Time=25, in_data=-6, cntr=1, init=0, result_valid=0, result=7
# Time=27, in_data=8, cntr=2, init=0, result_valid=0, result=1
# Time=29, in_data=5, cntr=3, init=0, result_valid=0, result=9
# Time=31, in_data=0, cntr=0, init=1, result_valid=1, result=14
# Time=33, in_data=0, cntr=0, init=0, result_valid=0, result=0

--
PASSED!
--
```

When you run `make acc-xsim GUI=1` to launch `xsim` in GUI mode, below is the expected waveform:

![acc](img/acc.png)

#### Expected Simulation Output for MAC Module

Below is the expected output of running `make mac-xsim`. The text trace is the output of `$display` statements from the `mac_tb.sv`. Successful completion of the test should show "PASSED!" message.

```txt
# Time=5, a=0, b=0, cntr=0, init=1, result_valid=0, result=0
# Time=7, a=-40, b=-40, cntr=0, init=1, result_valid=0, result=0
# Time=9, a=-30, b=-30, cntr=1, init=0, result_valid=0, result=1600
# Time=11, a=-20, b=-20, cntr=2, init=0, result_valid=0, result=2500
# Time=13, a=-10, b=-10, cntr=3, init=0, result_valid=0, result=2900
# Time=15, a=101, b=101, cntr=0, init=1, result_valid=1, result=3000
# Time=17, a=-102, b=-102, cntr=1, init=0, result_valid=0, result=10201
# Time=19, a=-104, b=-104, cntr=2, init=0, result_valid=0, result=20605
# Time=21, a=-103, b=-103, cntr=3, init=0, result_valid=0, result=31421
# Time=23, a=7, b=7, cntr=0, init=1, result_valid=1, result=42030
# Time=25, a=-6, b=-6, cntr=1, init=0, result_valid=0, result=49
# Time=27, a=8, b=8, cntr=2, init=0, result_valid=0, result=85
# Time=29, a=5, b=5, cntr=3, init=0, result_valid=0, result=149
# Time=31, a=0, b=0, cntr=0, init=1, result_valid=1, result=174
# Time=33, a=0, b=0, cntr=0, init=0, result_valid=0, result=0

--
PASSED!
--
```

When you run `make mac-xsim GUI=1` to launch `xsim` in GUI mode, below is the expected waveform:

![mac](img/mac.png)


#### Expected Simulation Output for MAX Module

Below is the expected output of running `make max-xsim`. The text trace is the output of `$display` statements from the `max_tb.sv`. Successful completion of the test should show "PASSED!" message.

```txt
# Time=5, in_data=0, cntr=0, init=1, result_valid=0, result=0
# Time=7, in_data=-40, cntr=0, init=1, result_valid=0, result=0
# Time=9, in_data=-30, cntr=1, init=0, result_valid=0, result=-40
# Time=11, in_data=-20, cntr=2, init=0, result_valid=0, result=-30
# Time=13, in_data=-10, cntr=3, init=0, result_valid=0, result=-20
# Time=15, in_data=101, cntr=0, init=1, result_valid=1, result=-10
# Time=17, in_data=-102, cntr=1, init=0, result_valid=0, result=101
# Time=19, in_data=-104, cntr=2, init=0, result_valid=0, result=101
# Time=21, in_data=-103, cntr=3, init=0, result_valid=0, result=101
# Time=23, in_data=7, cntr=0, init=1, result_valid=1, result=101
# Time=25, in_data=-6, cntr=1, init=0, result_valid=0, result=7
# Time=27, in_data=8, cntr=2, init=0, result_valid=0, result=7
# Time=29, in_data=5, cntr=3, init=0, result_valid=0, result=8
# Time=31, in_data=0, cntr=0, init=1, result_valid=1, result=8
# Time=33, in_data=0, cntr=0, init=0, result_valid=0, result=0

--
PASSED!
--
```

When you run `make max-xsim GUI=1` to launch `xsim` in GUI mode, below is the expected waveform:

![max](img/max.png)

#### Expected Simulation Output for Array Module

Below is the expected output of running `make array-xsim`. The text trace is the output of `$display` statements from the `array_tb.sv` for N=3. Successful completion of the test should show "PASSED!" message.

```txt
# Time=5, a[0]=0, b[0]=0, init=1, result_valid=0, result[0]=0
# Time=5, a[1]=1, b[1]=1, init=1, result_valid=0, result[1]=0
# Time=5, a[2]=2, b[2]=2, init=1, result_valid=0, result[2]=0
--
# Time=7, a[0]=-40, b[0]=40, init=1, result_valid=0, result[0]=0
# Time=7, a[1]=-39, b[1]=41, init=1, result_valid=0, result[1]=1
# Time=7, a[2]=-38, b[2]=42, init=1, result_valid=0, result[2]=4
--
# Time=9, a[0]=-30, b[0]=30, init=0, result_valid=0, result[0]=-1600
# Time=9, a[1]=-29, b[1]=31, init=0, result_valid=0, result[1]=-1599
# Time=9, a[2]=-28, b[2]=32, init=0, result_valid=0, result[2]=-1596
--
# Time=11, a[0]=-20, b[0]=20, init=0, result_valid=0, result[0]=-2500
# Time=11, a[1]=-19, b[1]=21, init=0, result_valid=0, result[1]=-2498
# Time=11, a[2]=-18, b[2]=22, init=0, result_valid=0, result[2]=-2492
--
# Time=13, a[0]=-10, b[0]=10, init=0, result_valid=0, result[0]=-2900
# Time=13, a[1]=-9, b[1]=11, init=0, result_valid=0, result[1]=-2897
# Time=13, a[2]=-8, b[2]=12, init=0, result_valid=0, result[2]=-2888
--
# Time=15, a[0]=101, b[0]=-101, init=1, result_valid=1, result[0]=-3000
# Time=15, a[1]=102, b[1]=-100, init=1, result_valid=1, result[1]=-2996
# Time=15, a[2]=103, b[2]=-99, init=1, result_valid=1, result[2]=-2984
--
# Time=17, a[0]=-102, b[0]=102, init=0, result_valid=0, result[0]=-10201
# Time=17, a[1]=-101, b[1]=103, init=0, result_valid=0, result[1]=-10200
# Time=17, a[2]=-100, b[2]=104, init=0, result_valid=0, result[2]=-10197
--
# Time=19, a[0]=-104, b[0]=104, init=0, result_valid=0, result[0]=-20605
# Time=19, a[1]=-103, b[1]=105, init=0, result_valid=0, result[1]=-20603
# Time=19, a[2]=-102, b[2]=106, init=0, result_valid=0, result[2]=-20597
--
# Time=21, a[0]=-103, b[0]=103, init=0, result_valid=0, result[0]=-31421
# Time=21, a[1]=-102, b[1]=104, init=0, result_valid=0, result[1]=-31418
# Time=21, a[2]=-101, b[2]=105, init=0, result_valid=0, result[2]=-31409
--
# Time=23, a[0]=7, b[0]=-7, init=1, result_valid=1, result[0]=-42030
# Time=23, a[1]=8, b[1]=-6, init=1, result_valid=1, result[1]=-42026
# Time=23, a[2]=9, b[2]=-5, init=1, result_valid=1, result[2]=-42014
--
# Time=25, a[0]=-6, b[0]=6, init=0, result_valid=0, result[0]=-49
# Time=25, a[1]=-5, b[1]=7, init=0, result_valid=0, result[1]=-48
# Time=25, a[2]=-4, b[2]=8, init=0, result_valid=0, result[2]=-45
--
# Time=27, a[0]=8, b[0]=-8, init=0, result_valid=0, result[0]=-85
# Time=27, a[1]=9, b[1]=-7, init=0, result_valid=0, result[1]=-83
# Time=27, a[2]=10, b[2]=-6, init=0, result_valid=0, result[2]=-77
--
# Time=29, a[0]=5, b[0]=-5, init=0, result_valid=0, result[0]=-149
# Time=29, a[1]=6, b[1]=-4, init=0, result_valid=0, result[1]=-146
# Time=29, a[2]=7, b[2]=-3, init=0, result_valid=0, result[2]=-137
--
# Time=31, a[0]=0, b[0]=0, init=1, result_valid=1, result[0]=-174
# Time=31, a[1]=1, b[1]=1, init=1, result_valid=1, result[1]=-170
# Time=31, a[2]=2, b[2]=2, init=1, result_valid=1, result[2]=-158
--
# Time=33, a[0]=0, b[0]=0, init=0, result_valid=0, result[0]=0
# Time=33, a[1]=1, b[1]=1, init=0, result_valid=0, result[1]=1
# Time=33, a[2]=2, b[2]=2, init=0, result_valid=0, result[2]=4
--

--
PASSED!
--
```

When you run `make array-xsim GUI=1` to launch `xsim` in GUI mode, below is the expected waveform:

![array](img/array.png)

## Grading

To grade your code, just type:

```zsh
make grade
```

This grade rule will run `grade.sh` script and fill in `grade.csv` file with your marks. This is the script we will use to grade you and we are giving you this script to self-assess. This will be our policy for all labs.

Lab1 grading breakdown:
- 20% of the lab grade will be reserved for passing `make acc-xsim`. The script will check for the absence of "Error" messages and the presence of a "PASSED!" message in the simulation output.
- 20% of the lab grade will be reserved for passing `make mac-xsim`. The script will check for the absence of "Error" messages and the presence of a "PASSED!" message in the simulation output.
- 20% of the lab grade will be reserved for passing `make max-xsim`. The script will check for the absence of "Error" messages and the presence of a "PASSED!" message in the simulation output.
- 20% of the lab grade will be reserved for passing `make array-xsim`. The script will check for the absence of "Error" messages and the presence of a "PASSED!" message in the simulation output.
- 20% of the lab grade will be reserved for verilator lint generating no "Error" message: 5% for each module. The lint checks help guard against bad coding practices.
- Penalty for late submissions is 0% of the grade.

Our scripts will replace all the test files, such as, `in.mem`, `array_tb.sv`, `grade.sh`, etc., so do not edit these files. You only need to edit `acc.sv`, `mac.sv`, `max.sv`, and `array.sv`.

## Submission

Go to the cloned git repository for lab1.

Please fill in your solution code in `acc.sv`, `mac.sv`, `max.sv`, and `array.sv` and ensure that the test outputs match the waveforms shown above.

You can commit your design in two steps:
```
git commit -a -m "Sauron is the only true kind of Mordor and I am a lowly Orc/Uruk-Hai"
git push origin main
```

You may commit and push as many times as you want prior to submission deadline.
The most recently pushed commit prior to the deadline will be graded.
The contents of the commit message do not matter.

Frequently committing and pushing your code to the repository is recommended, so you can track your design progress over time under `Activity` tab on `git.uwaterloo.ca` in the browser.

