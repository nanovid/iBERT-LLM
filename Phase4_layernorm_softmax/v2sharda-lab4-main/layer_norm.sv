`timescale 1ps / 1ps

module layer_norm
#(
    parameter integer       D_W      = 8,
    parameter integer       D_W_ACC  = 32,
    parameter integer       N        = 768,
    parameter signed [D_W_ACC-1:0] N_INV = 1398101,
    parameter integer       FP_BITS  = 30,
    parameter integer       MAX_BITS = 31
)
(
    input  logic                       clk,
    input  logic                       rst,
    input  logic                       enable,
    input  logic                       in_valid,
    input  logic signed  [D_W_ACC-1:0] qin,
    input  logic signed  [D_W_ACC-1:0] bias,
    input  logic [$clog2(D_W_ACC)-1:0] shift,
    output logic                       out_valid,
    output logic signed  [D_W_ACC-1:0] qout
);

//Your variable here
logic F1_write;
logic F1_read;
logic signed [D_W_ACC-1:0] F1_counter;
logic signed [D_W_ACC-1:0] F2_counter;
logic signed [D_W_ACC-1:0] F3_counter;
logic F2_write;
logic F2_read;
logic firstrunswitch;

logic signed [D_W_ACC-1:0] bias_F1_buffered;
logic signed [D_W_ACC-1:0] bias_F2_buffered;
logic signed [D_W_ACC-1:0] qin_F3_buffered;
logic signed [D_W_ACC-1:0] qin_F3_buffered_pipeline1;
logic signed [D_W_ACC-1:0] qin_F3_buffered_pipeline2;
logic F1_full;
logic F2_full;
logic F1_empty;
logic F2_empty;
logic F3_full;
logic F3_empty;
logic F3_read;

logic in_valid_acc; //pipelined version of invalid signal
logic signed [D_W_ACC-1:0] qin_pipelined;
logic signed [(D_W_ACC*2)-1:0] qsum_top;
logic signed [(D_W_ACC*2)-1:0] qsum;
logic [D_W_ACC-1:0] acc_counter;
logic initialize_acc_toggle;
logic initialize_acc;

logic signed [D_W_ACC-1:0] q_shift;
logic signed [(D_W_ACC*2)-1:0] q_sum_sq;
logic signed [(D_W_ACC*2)-1:0] q_sum_sq_pipe1;
logic signed [(D_W_ACC*2)-1:0] q_sum_sq_pipe2;
logic signed [(D_W_ACC*2)-1:0] q_sum_sq_aligned;
logic q_sum_top_valid;
logic q_sum_sq_valid;
logic q_sum_sq_valid_pipe1;
logic q_sum_sq_valid_pipe2;
logic q_sum_sq_valid_aligned;

logic signed [(D_W_ACC*2)-1:0] qsum_mult_ninv;
logic signed [D_W_ACC-1:0] qmean;
logic signed [(D_W_ACC*2)-1:0] qsum_top_pipelined;
logic signed [(D_W_ACC*2)-1:0] qsum_top_mul_qmean;

logic q_mean_valid;
logic signed [D_W_ACC-1:0] qmean_sq;
logic signed [D_W_ACC-1:0] r;
logic signed [D_W_ACC-1:0] r_aligned_qmeansq;
logic r_valid;
logic r_valid_aligned;




logic signed [(D_W_ACC*2)-1:0] qsum_sub_qmean_sq;
logic sqrt_out_valid;
logic [15:0] var_var;

logic [D_W_ACC-1:0] std;
logic [D_W_ACC-1:0] factor;
logic factor_valid;
logic [D_W_ACC-1:0] div_latch1;
logic [D_W_ACC-1:0] div_latch2;

logic div_valid;
logic div_valid2;

logic [9:0] r_valid_counter;
logic r_valid_stretch;
logic [9:0] div_counter1;
logic [9:0] div_counter2;

logic F4_read;
logic signed [D_W_ACC-1:0] r_buffered;
logic F4_full;
logic F4_empty;
logic [9:0] F4_counter;

logic signed [D_W_ACC-1:0] factor_times_r;
logic outvalid1;
logic out_valid2;
// Your intantiations here
fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(N)
)
F1(
    .clk(clk),
    .rst(rst), 
    .write(in_valid), 
    .read(F1_read),
    .data_in(bias), 
    .data_out(bias_F1_buffered), 
    .full(F1_full), 
    .empty(F1_empty)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(D_W_ACC)
)
F2(
    .clk(clk),
    .rst(rst), 
    .write(F2_write), 
    .read(F2_read),
    .data_in(bias_F1_buffered), 
    .data_out(bias_F2_buffered), 
    .full(F2_full), 
    .empty(F2_empty)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(N)
)
F3(
    .clk(clk),
    .rst(rst), 
    .write(in_valid_acc), 
    .read(F3_read),
    .data_in(qin_pipelined), 
    .data_out(qin_F3_buffered), 
    .full(F3_full), 
    .empty(F3_empty)
);

acc
#(
    .D_W(D_W_ACC),
    .D_W_ACC((D_W_ACC*2))
)
acc1(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .initialize(initialize_acc),
    .in_data(qin_pipelined),
    .result(qsum)
);

mac
#(
    .D_W(D_W_ACC),
    .D_W_ACC((D_W_ACC*2))
)
mac1(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .initialize(initialize_acc),
    .a(q_shift),
    .b(q_shift),
    .result(q_sum_sq)
);

sqrt
#(
    .D_W(D_W_ACC)
)
sqrt1(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .in_valid(q_sum_sq_valid_aligned),
    .qin(qsum_sub_qmean_sq),
    .out_valid(sqrt_out_valid),
    .qout(var_var)
);

div
#(
    .D_W(D_W_ACC)
)
div1(
    .clk(clk),
    .rst(rst),
    .in_valid(div_valid2),
    .enable(enable),
    .divisor((std)),
    .dividend(32'b10000000000000000000000000000000),
    .quotient(factor),
    .out_valid(factor_valid)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(N)
)
F4(
    .clk(clk),
    .rst(rst), 
    .write(r_valid_stretch), 
    .read(F4_read),
    .data_in(r_aligned_qmeansq), 
    .data_out(r_buffered), 
    .full(F4_full), 
    .empty(F4_empty)
);

//Your code here


always_ff @( posedge clk ) begin : letsdoit

    if(rst) begin
        out_valid <= 0;
        qout <= 0;
        F1_write<=0;
        F1_read<=0;
        F1_counter<=0;
        F2_counter<=0;
        F2_write<=0;
        F2_read<=0;
        firstrunswitch<=0;

        F3_counter <=0;
        F3_read<=0;
        qin_pipelined <=0;
        qsum_top <= 0;
        initialize_acc_toggle <=0;
        acc_counter <= 0;
        initialize_acc <= 0;
        q_sum_top_valid <=0;
        q_sum_sq_valid <=0;

        qsum_mult_ninv <= 0;
        qmean <= 0;
        qsum_top_mul_qmean <=0;
        qmean_sq <=0;
        qin_F3_buffered_pipeline1 <=0;
        qin_F3_buffered_pipeline2 <=0;
        r <= 0;
        r_aligned_qmeansq <=0;

        q_sum_sq_pipe1 <=0;
        q_sum_sq_pipe2 <=0;
        q_sum_sq_aligned <=0;
        q_sum_sq_valid_pipe1<=0;
        q_sum_sq_valid_pipe2<=0;
        q_sum_sq_valid_aligned<=0;
        qsum_sub_qmean_sq <=0;
        std <= 0;

        in_valid_acc <= 0;
        q_shift <=0;
        //qsum_sq <=0;
        qsum_top_pipelined <=0;
        q_mean_valid <= 0;

        div_valid <=0;
        div_valid2 <=0;
        r_valid_stretch<=0;
        r_valid_counter <=0;

        r_valid <= 0;
        r_valid_aligned <=0;

        div_counter1 <= 0;
        div_counter2 <= 0;
        div_latch1 <=0;
        div_latch2 <= 0;


        F4_read <= 0;
        // r_buffered <= 0; 
        // F4_full <= 0;
        // F4_empty <=0;
        F4_counter <=0;
        factor_times_r<=0;  
        outvalid1 <=0;

    end
    
    else if (enable) begin
        //qout <= 1;
        //out_valid <= 1;

        in_valid_acc <= in_valid;
        qin_pipelined <= qin;

        if(in_valid) begin
            //F1_write <= in_valid;
            if(!firstrunswitch) begin
                F1_counter <=2;
                F3_counter <=2;
                firstrunswitch <= 1;
            end
            
            //if inputs are valid, and the fifo is not being read from, update the counter
            if(F1_read == 0 && firstrunswitch) begin
                F1_counter <= F1_counter + 1;
            end
            //if we are valid input and reading then just leave counter as is
            if(F1_read && !firstrunswitch) begin
                F1_counter <= F1_counter;
            end


            //if inputs are valid and the first fifo is about to be full, turn on the read signal so next cycle output can be pushed out 
            if(F1_counter == 824 -1) begin
                F1_read <= 1;
            end
            //if the fifo is now officially full, we can enable the read signal for the next fifo
            if(F1_counter == 824) begin
                F2_write <= 1;
            end

            //if F3 is not being read from and being written to, then count up
            if(!F3_read && firstrunswitch) begin
                F3_counter <= F3_counter + 1;
            end
   


        end else begin

            //if we are not getting valid input and the first fifo is reading, count down
            if(in_valid == 0 && F1_read) begin
                F1_counter <= F1_counter -1;
            end

            //if the inputs are not valid and we have diminshed the coutner, we can stop read and write
            if(F1_counter == 2) begin
                F1_read <=0;
                
            end
            
            if(F1_counter == 1) begin
                F2_write <=0;
            end
        end

        //invalid finishes here

        //the f2 has nothing to do really with valid inputs or not, so outside the invalid if statement
        if(F2_counter == D_W_ACC - 1) begin
            F2_read <= 1;
        end
        //if the first fifo is not reading, then i gotta lwoer the f2 counter
        if(F2_read && !F2_write) begin
            F2_counter <= F2_counter -1;
        end

        //technically this should be for f2 write and not read, but for timing we will make it f1 read
        if(F1_read && !F2_read) begin
            F2_counter <= F2_counter +1;
        end

        if(F2_counter == 2) begin
            F2_read <=0;
        end

        //if the second fifo is not reading 
        // if(!F2_read && firstrunswitch) begin
        //     F1_counter<=0;
        //     F2_counter <=0;
        // end

//if f3 coutner is almost full, start to read from it, one cycle delay is why the -1
        if(F3_counter == N -1)begin
            F3_read <= 1;
        end 

        if(!in_valid && F3_read) begin
            F3_counter <= F3_counter -1;
            if(F3_counter == 2) begin //for timing purposes turning off read in time is better
                F3_read <=0;
            end
        end


        //counter logic for acc to work
        if(in_valid) begin
            initialize_acc <= in_valid && !initialize_acc_toggle;
            initialize_acc_toggle <= 1;
            acc_counter <= acc_counter + 1;
        end


        // if(acc_counter==N-1) begin
        //     initialize_acc <=1;

        // end

        if (acc_counter == N) begin
            initialize_acc <= 1;
            acc_counter <= 1;
            q_sum_top_valid <=1; //i changed names of top and stuff but same signal applies for the bottom as well, line 305 its used
            q_sum_sq_valid <=1;

            //for the sake of timing it makes sense to do the qsum * ninv calultion here

             qsum_mult_ninv <= qsum * N_INV;


        end



        else if (acc_counter == 1 && initialize_acc_toggle) begin
            initialize_acc <=0;
            q_sum_top_valid <=0;
            q_sum_sq_valid <=0;
        end
        
        q_shift <= qin >>> shift;
        qsum_top <= qsum;
        qsum_top_pipelined <= qsum_top;
        

        //qsum_mult_ninv <= qsum * N_INV;
        //qmean <= qsum_mult_ninv >>> FP_BITS;

        //  qsum_top_pipelined <= qsum_top * qmean;

        if(q_sum_top_valid) begin
            q_mean_valid <= 1;
        end

        else begin
            q_mean_valid <= 0;
        end

           
        qmean <= qsum_mult_ninv >>> FP_BITS;

        if(q_mean_valid) begin
            qsum_top_mul_qmean <= qsum_top_pipelined * qmean;
        end
        
        qmean_sq <= qsum_top_mul_qmean >>> (2*shift); //this should align with r but as of right now it will be a bit behind 

        qin_F3_buffered_pipeline1 <= qin_F3_buffered;
        qin_F3_buffered_pipeline2 <= qin_F3_buffered_pipeline1;
        r <= qin_F3_buffered_pipeline2 - qmean;
        r_aligned_qmeansq <= r;

        r_valid <=q_mean_valid;
        r_valid_aligned <= r_valid;

        if(r_valid == 1) begin
            r_valid_stretch <=1;
            r_valid_counter <= r_valid_counter + 1;
        end

        if(r_valid_stretch) begin
            r_valid_counter <= r_valid_counter + 1;
        end

        if(r_valid_counter == N) begin
            r_valid_counter <= 1;
            if(!r_valid) begin
                r_valid_stretch <= 0;
            end
        end

        // if(r_valid_counter == N-1 && !q_mean_valid) begin
        //     r_valid_stretch <= 0;
        // end

        //pipeline the qsum_sq
        if(q_sum_sq_valid) begin
            q_sum_sq_pipe1 <= q_sum_sq;
        end

        q_sum_sq_pipe2 <= q_sum_sq_pipe1; 
        q_sum_sq_aligned <= q_sum_sq_pipe2;

        //line up the valid with the sq
        q_sum_sq_valid_pipe1<= q_sum_sq_valid;
        q_sum_sq_valid_pipe2<= q_sum_sq_valid_pipe1;
        q_sum_sq_valid_aligned<= q_sum_sq_valid_pipe2;

        qsum_sub_qmean_sq <= q_sum_sq_aligned - qmean_sq;

        div_valid <= sqrt_out_valid;
        div_valid2 <= div_valid;
        std <= var_var <<< shift;


        if(div_valid2) begin
            div_counter1 <= div_counter1 + 1;
            //div_latch1 <= factor;
        end

        if (div_counter1 > 0) begin
            div_counter1 <= div_counter1 + 1;
        end

        if (div_counter1 == 31) begin
            div_counter1 <= 0;
            div_counter2 <= div_counter2 + 1;
            div_latch2 <= div_latch1;
        end

        if(factor_valid) begin
            //div_counter2 <= div_counter2 + 1;
            div_latch1 <= factor;
        end

        if(div_counter2 > 0) begin
            div_counter2 <= div_counter2 + 1;
        end

        if(div_counter2 == N) begin
            div_counter2 <= 1;
        end

//         logic F4_read,
// logic signed [D_W_ACC-1:0] r_buffered, 
// logic F4_full;
// logic F4_empty;

        if(r_valid_stretch && !F4_read) begin
            F4_counter <= F4_counter + 1;
        end

        if(!r_valid_stretch && F4_read) begin
            F4_counter <= F4_counter - 1;
        end

        if(F4_counter == 49) begin
            F4_read <= 1;
        end

        if(F4_counter == 1) begin
            F4_read <=0;
        end

        factor_times_r <= div_latch2 * r_buffered;

        qout <= (factor_times_r >>> 1) + bias_F1_buffered;
        outvalid1 <= F4_read;
        out_valid2 <= outvalid1;
        out_valid <= out_valid2;


//at the minute the fucking mac and acc are working, 
//tmr move forward witht he shit qsumtop and qsumsq
//pipeline dat bih
//i made valud signals on top and sq make sure they work properly



        



    end


end

endmodule
