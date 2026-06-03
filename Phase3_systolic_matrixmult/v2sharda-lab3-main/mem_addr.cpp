#include <cstddef>
#include <cstdint>
#include <ios>
#include <iostream>
#include <random>
#include <array>
#include <queue>
#include <utility>

#include <verilated.h>
#include "verilated_vcd_c.h"


#include <Vmem_addr_tb.h>
#define STR(S) #S

constexpr vluint64_t maxtime = MAX_TIME;
static vluint64_t time_stamp = 0;
double sc_time_stamp() { return time_stamp; }

class DutTb {
    public:
        DutTb() 
            : mem_addr_tb(new Vmem_addr_tb)
        {
            mem_addr_tb->clk = 0;
            // mem_addr_tb->fclk = 0;
            mem_addr_tb->rst = 1;
            enableTrace();
        }

        void enableTrace() {
            vtrace = new VerilatedVcdC();
            mem_addr_tb->trace(vtrace, 0);
            vtrace->open(STR(MEM_X) ".vcd");
        }

        ~DutTb() {
            mem_addr_tb->final();
            delete mem_addr_tb;

            vtrace->flush();
            vtrace->close();
            delete vtrace;
        }
        
        void half_tick() {
            mem_addr_tb->eval();
            mem_addr_tb->clk = !mem_addr_tb->clk;
            // mem_addr_tb->fclk = !mem_addr_tb->fclk;
            mem_addr_tb->eval();
            vtrace->dump(time_stamp);
            time_stamp++;
            
            // mem_addr_tb->fclk = !mem_addr_tb->fclk;
            // mem_addr_tb->eval();
            // vtrace->dump(time_stamp);
            // time_stamp++;
        }

        void tick() {
            // Toggle the clock edge twice
            half_tick();
            half_tick();
        }

        void initial() {
            mem_addr_tb->rst = 1;
            mem_addr_tb->eval();
            vtrace->dump(time_stamp);
            time_stamp++;

            mem_addr_tb->eval();
            tick();

            mem_addr_tb->eval();
            tick();

            // Release reset
            mem_addr_tb->rst = 0;
            mem_addr_tb->eval();
            tick();
        }

        void test() {
            while(!Verilated::gotFinish() && time_stamp < maxtime){
                tick();
            }
        }

    private:
        Vmem_addr_tb* mem_addr_tb;
        VerilatedVcdC* vtrace;
};


int main(int argc, char* argv[]) {
    Verilated::traceEverOn(true);
    Verilated::commandArgs(argc, argv);

    DutTb tb;
    tb.initial();
    tb.test();

    if (time_stamp >= maxtime) {
        std::cerr << "Error: Timed out!";
        return -1;
    }

    return 0;
}
