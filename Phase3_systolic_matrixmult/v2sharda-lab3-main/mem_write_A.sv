`timescale 1ps / 1ps

module mem_write_A
#(
    parameter integer N1           = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer ADDR_W       = 12
)
(
    input  logic                    clk,
    input  logic                    rst,
    input  logic [MATRIXSIZE_W-1:0] M2,
    input  logic [MATRIXSIZE_W-1:0] M1dN1,
    input  logic                    valid_A,
    output logic  [ADDR_W-1:0]       wr_addr_A,
    output logic  [N1-1:0]           activate_A
);

// write your code here

//testbench doesnt check for end condition so make sure you know when to stop, could be the issue, and then also check all combinatinos I GUESS

//logic [4-1:0] counter_activateA;
//logic [8-1:0] counter_wr_addrA;
//logic [4-1:0] row_counter;
logic  [ADDR_W-1:0] offset;
logic [N1-1:0] N1_counter;
logic [MATRIXSIZE_W-1:0] m1_n1_counter;
logic [MATRIXSIZE_W-1:0] limit; 
logic switch;
logic second_switch;

enum{init, s1, s2, s3, s4} state;

always_ff @(posedge clk) begin: runstmc
    if (rst) begin
        state <= init;
        end else begin 
        case(state)
            init: if(valid_A) state <= s1;
            s1: if(activate_A != 0) state <= s2;
            s2: begin
                if(N1_counter == N1-1 && wr_addr_A == limit) state <= s3;
                else if (wr_addr_A == limit) state <= s1;
            end
            s3: begin
                if(second_switch) state <= s2;
                else if (m1_n1_counter == M1dN1) state <= s4;
            end 
            s4: if(m1_n1_counter == m1_n1_counter) state <= init;
            default: state <= init; //KEEP THIS IN MIND
        endcase
    end 
end


always_ff @( posedge clk ) begin : letsrunnit

    if (rst) begin
        offset <= 0;
        N1_counter <= 0;
        m1_n1_counter <= 0;
        activate_A <=0;
        wr_addr_A <=0;
        limit<=0;
        switch <=0;
        second_switch <=0;
    
    end else begin 

        case(state)
            init: begin 
                activate_A <= 0;
                if (valid_A) begin
                    activate_A <= 1;
                    wr_addr_A <= 0 + offset*M2;
                end
            end

            s1: begin
                //activate_A <= activate_A==0 ? 1: activate_A << 1;
                if (switch == 0) begin
                    wr_addr_A <= 1;
                end
                else begin N1_counter <= N1_counter + 1;
                wr_addr_A <= 0 + offset*M2;
                activate_A <= activate_A << 1;
                end
                
            end 

            s2: begin
                limit <= M2 + offset*M2 - 2;
                wr_addr_A = wr_addr_A + 1;
                switch <=1;

                // MOST RECENT CHANGE DONT TRUST IT JUST YET, GOAL WAS TO CHANGE THE LIMIT A BIT EARLIER AND TO CORRECT VALUE, 
                //IT DID MAKE IT CORRECT BUT NOT RIGHT TIME STYLL 
                if(N1_counter == N1-1 && wr_addr_A == limit) begin
                    limit <= M2 + offset*M2 - 2;
                    second_switch <=1;
                    //N1_counter <= 0;
                    
                end


            end
            
            s3: begin 
                offset <= offset + 1;
                activate_A <= 1;
                N1_counter <= 0;
                m1_n1_counter <= m1_n1_counter + 1;
                wr_addr_A = wr_addr_A + 1;

            end

            s4: begin
                m1_n1_counter <= M1dN1;
            end
        endcase

    end

    
end


endmodule
