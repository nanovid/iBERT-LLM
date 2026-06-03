`timescale 1ps / 1ps

module mem_write_B
#(
    parameter integer N2           = 4,
    parameter integer MATRIXSIZE_W = 16,
    parameter integer ADDR_W       = 12
)
(
    input  logic                    clk,
    input  logic                    rst,
    input  logic [MATRIXSIZE_W-1:0] M2,
    input  logic [MATRIXSIZE_W-1:0] M3dN2,
    input  logic                    valid_B,
    output logic  [ADDR_W-1:0]       wr_addr_B,
    output logic  [N2-1:0]           activate_B
);

// write your code here

logic [ADDR_W-1:0] offset;
logic [N2-1:0] N2_counter;
logic [MATRIXSIZE_W-1:0] m3_n2_counter;
logic [MATRIXSIZE_W-1:0] totalcounter; 
logic switch;
logic second_switch;

enum{init, s1, s2} state;

always_ff @( posedge clk ) begin : runthemstates
    if (rst) begin 
        state <= init;
    end else begin
        case(state)
            init: if(valid_B) state <=s1;
            s1: if(activate_B[N2-1] == 1) state <= s2;
            s2: if(totalcounter != M2*N2*(M3dN2)) state <= s1;
            default: state <= init;
        endcase   
    end
end

always_ff @( posedge clk ) begin : trainengine
    if(rst) begin
        offset <= 0;
        N2_counter <= 0;
        m3_n2_counter <=0;
        totalcounter <= 0;
        switch <= 0;
        second_switch <=0;
        wr_addr_B <= 0;
        activate_B <=0;
    
    end else begin    
        case(state)
            init: begin
                activate_B <=0;
                if(valid_B) begin
                    activate_B <=1;
                end
            end

            s1: begin
                activate_B <= activate_B << 1;
                totalcounter <= totalcounter + 1;
                if(activate_B[N2-1] == 1)begin
                    switch <= !switch;
                    activate_B <=1;
                    if(M3dN2 == 1) begin
                        wr_addr_B <= wr_addr_B + 1;
                    end
                    else begin wr_addr_B <= wr_addr_B + (1*switch) + (!switch*(M2)) - ((M2)*switch);
                    end end
            end

            s2: begin
                totalcounter <= totalcounter + 1;
                activate_B <= activate_B <<1;
            end
    endcase
end
end

endmodule
