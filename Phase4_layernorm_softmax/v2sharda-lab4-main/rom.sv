`timescale 1ps / 1ps

module rom 
#(
    parameter integer D_W  = 32,
    parameter integer DEPTH = 768,
    parameter         INIT = "NONE"
)
(
    input  logic                     clk,
    input  logic [$clog2(DEPTH)-1:0] rdaddr,
    output logic signed     [D_W-1:0] rddata
);

(* rom_style = "distributed" *) logic [D_W-1:0] mem[0:DEPTH-1];

initial begin
    if (INIT != "NONE")
        $readmemh(INIT, mem);
end

always_ff @(posedge clk) begin
    rddata <= mem[rdaddr];
end

endmodule
