`timescale 1ps / 1ps

module mem_read_D
#(
    parameter integer N1           = 4,
    parameter integer N2           = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer ADDR_W       = 12
)
(
    input  logic                    clk,
    input  logic                    rst,
    input  logic [MATRIXSIZE_W-1:0] M3,
    input  logic [MATRIXSIZE_W-1:0] M1dN1,
    input  logic                    valid_D,
    output logic  [ADDR_W-1:0]       rd_addr_D,
    output logic  [N1-1:0]           activate_D
);

// write your code here

logic [ADDR_W-1:0] offset;
logic [N1-1:0] N1_counter;
logic [MATRIXSIZE_W-1:0] m3_n1_counter;
logic [MATRIXSIZE_W-1:0] limit; 
logic switch;
logic second_switch;
logic [ADDR_W-1:0] pipe;

logic [MATRIXSIZE_W-1:0] offsetter_Accum;

enum{init, s1, s2, s3, s4} state;

always_ff @(posedge clk) begin: runthemmachines
    if (rst) begin
        state <= init;
    end else begin
        case(state)
            init: if(valid_D) state <=s1;
            s1:if(activate_D != 0) state <=s2;
            s2: begin
                if(N1_counter == N1 && rd_addr_D == limit) state <= s3;
                else if (rd_addr_D == limit) state <= s1;
            end
            s3: begin
                if(second_switch) state<=s2;
                else if(m3_n1_counter == M1dN1) state <=s4;
            end 
            default: state <= init;
        endcase
    end
end
//assign pipe = M3*(offset+1);
always_ff @( posedge clk ) begin : dostuff

    if (rst) begin 
        offset <=0; 
        N1_counter <=0;
        m3_n1_counter <=0;
        activate_D <=0;
        rd_addr_D <=0;
        limit <=0;
        switch <=0;
        second_switch <=0;

        offsetter_Accum <=0;
        //pipe <=0;
    
    end else begin
        case(state)
            init: begin
                activate_D <=0;
                if(valid_D) begin
                    activate_D <=1;
                    rd_addr_D <= (N2-1);
                end
            end

            s1: begin
                N1_counter <= N1_counter + 1;
                if(rd_addr_D != offset) begin
                    rd_addr_D <= rd_addr_D - 1;

                end 
                // else if (rd_addr_D == M3 * offset) begin
                //     rd_addr_D <=M3 + (offset*M3)- 1;
                // end

                //pipe <= M3*offset;

            end

            s2: begin
                //not sure if this did anything
                if(!second_switch)begin
                    limit <= M3 - N2;
                end
                //rd_addr_D <= rd_addr_D - 1;
                switch <=1;

                //activate_D <= N1_counter;

                if(rd_addr_D != offset) begin
                    rd_addr_D <= rd_addr_D - 1;

                end else if (rd_addr_D == offset) begin
                    rd_addr_D <=M3 + (offset)- 1;
                end

//next 2 ifs should be combined i think 
               
                if(rd_addr_D == limit) begin
                    activate_D <= activate_D << 1;
                    if(N1_counter == N1) begin 
                        limit <= limit + M3;
                        $display(limit);
                        second_switch <=1;
                        offset <= offset + M3;
                        activate_D <=1;
                        N1_counter <=1; 
                        //rd_addr_D <= rd_addr_D + 1;
                        rd_addr_D <= limit + M3 -1; 
                    end
                end end



            s3: begin
                $display(offset);
                //offset <= offset + 1;
                activate_D <=1;
                N1_counter <=1;
                m3_n1_counter <= m3_n1_counter + 1;
                rd_addr_D <= rd_addr_D - 1; 
            end

            s4: begin
                m3_n1_counter <= M1dN1;
            end 
    endcase
    end
end
endmodule
