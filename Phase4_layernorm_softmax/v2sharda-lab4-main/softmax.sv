`timescale 1ps / 1ps

module softmax
#(
    parameter integer D_W      = 8,
    parameter integer D_W_ACC  = 32,
    parameter integer N        = 32,
    parameter integer FP_BITS  = 30,
    parameter integer MAX_BITS = 30,
    parameter integer OUT_BITS = 6
)
(
    input  logic                      clk,
    input  logic                      rst,
    input  logic                      enable,
    input  logic                      in_valid,
    input  logic signed [D_W_ACC-1:0] qin,           // softmax input
    input  logic signed [D_W_ACC-1:0] qb,            // exp coefficient
    input  logic signed [D_W_ACC-1:0] qc,            // exp coefficient
    input  logic signed [D_W_ACC-1:0] qln2,          // exp coefficient
    input  logic signed [D_W_ACC-1:0] qln2_inv,      // exp coefficient
    input  logic        [D_W_ACC-1:0] Sreq,
    output logic                      out_valid,
    output logic signed [D_W_ACC-1:0]     qout           // softmax output
);

// Your code here
//Counter for the inital 32 bit vector coming in and counting when to read fifo and initalize max
logic [5:0] counter;
logic [5:0] counter_next;
//logic to initialize the max function (init_max)
logic my_init;

//registered qin
logic signed [D_W_ACC-1:0] q_in_stored;

//out put of themax function and qmax latched
logic signed [D_W_ACC-1:0] max_1;
logic signed [D_W_ACC-1:0] max_1_pipe;
logic signed [D_W_ACC-1:0] max_1_LATCHED;

//buffered q_in output coming out of fifo
logic signed [D_W_ACC-1:0] q_in_buffered;
//outputs that come out of fifo
logic fifo_1_full;
logic fifo_1_empty;
logic fifo_1_read;
logic firstrunswitch;

//read fifo counter, need a coutner to determine when to stop reading the fifo
logic [5:0] fifo_read_counter;
logic next_fifo_read_predict;

//valid signal for q_hat piplined once for delay
logic q_hat_valid_pipe;
logic q_hat_valid_pipe2;
logic q_hat_valid;

//qhat pipelined input

logic signed [D_W_ACC-1:0] q_hat;

logic q_exp_valid;
logic signed [D_W_ACC-1:0] q_exp;
logic signed [D_W_ACC*2-1:0] q_req;

logic q_req_valid;


//the next 2 fifos materials
logic [5:0] fifo2_write_counter;
logic [5:0] fifo3_write_counter;
logic fifo2_write;
logic fifo3_write;
logic fifo2_read;
logic fifo3_read;

logic signed [D_W_ACC-1:0] q_sum;
logic fifo2_full;
logic fifo2_empty;
logic signed [D_W_ACC-1:0] factor;
logic fifo3_full;
logic fifo3_empty;

logic switch_end;


logic init_acc;
logic init_acc_firsttime;
logic signed [D_W_ACC-1:0] q_sum_top;

logic signed [D_W_ACC-1:0] factor_top;
logic out_valid_div;
logic init_div;

logic [5:0] div_counter;
logic init_div_toggle;

logic signed [D_W_ACC-1:0] storing_div_out;
logic signed [D_W_ACC-1:0] factor_top_complete;
logic signed [D_W_ACC-1:0] factor_top_pipe;

logic signed [D_W-1:0] shift;

//logic [D_W_ACC-1:0] gigacoutner;
logic outvalid1;

max#(
    .D_W(D_W_ACC)    
)
max_inst_1(
    .clk(clk), 
    .rst(rst),
    .enable(enable),
    .initialize(my_init),
    .in_data(qin),
    .result(max_1)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(D_W_ACC)
)
fifo_inst_1(
    .clk(clk),
    .rst(rst), 
    .write(in_valid), 
    .read(fifo_1_read),
    .data_in(qin), 
    .data_out(q_in_buffered), 
    .full(fifo_1_full), 
    .empty(fifo_1_empty)
);

exp
#(
    .D_W(D_W_ACC),
    .FP_BITS(FP_BITS)
)
exp_inst_1(
    .clk(clk),
    .rst(rst), 
    .in_valid(q_hat_valid), 
    .enable(enable),
    .qin(q_hat), 
    .qb(qb), 
    .qc(qc), 
    .qln2(qln2),
    .qln2_inv(qln2_inv),
    .out_valid(q_exp_valid),
    .qout(q_exp)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(D_W_ACC)
)
fifo_inst_2(
    .clk(clk),
    .rst(rst), 
    .write(fifo2_write), 
    .read(fifo2_read),
    .data_in(q_req), 
    .data_out(q_sum), 
    .full(fifo2_full), 
    .empty(fifo2_empty)
);

fifo
#(
    .D_W(D_W_ACC),
    .DEPTH(D_W_ACC)
)
fifo_inst_3(
    .clk(clk),
    .rst(rst), 
    .write(fifo3_write), 
    .read(fifo3_read),
    .data_in(q_sum), 
    .data_out(factor), 
    .full(fifo3_full), 
    .empty(fifo3_empty)
);

acc
#(
    .D_W(D_W_ACC),
    .D_W_ACC(D_W_ACC)
)
acc1(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .initialize(init_acc),
    .in_data(q_req),
    .result(q_sum_top)
);

div
#(
    .D_W(D_W_ACC)
)
div1(
    .clk(clk),
    .rst(rst),
    .in_valid((fifo2_read)?init_div:0),
    .enable(enable),
    .divisor(q_sum_top),
    .dividend(1 << (MAX_BITS)),
    .quotient(factor_top),
    .out_valid(out_valid_div)
);

always_ff @( posedge clk ) begin : letsgetthingsgoing
    if(rst) begin
        out_valid <= 0;
        qout <= 0;

        q_in_stored <= 0;

        counter <= 0;
        my_init <=0;
        fifo_1_read <=0;
        counter_next <=0;
        firstrunswitch <=0;
        max_1_LATCHED <=0;
        max_1_pipe <=0;
        max_1_LATCHED <=0;

        fifo_read_counter <=0;
        next_fifo_read_predict <=0;

        q_hat_valid_pipe <=0;
        q_hat_valid_pipe2 <=0;
        q_hat_valid <=0;
        q_hat <=0;

        q_req <=0;
        q_req_valid <= 0;

        //q_exp_valid <=0;
        //q_exp<=0;

        //second fifo stuff
        fifo2_write_counter <= 0;
        fifo3_write_counter <= 0;
        fifo2_write<=0;
        fifo3_write <=0;

        fifo3_read <=0;
        fifo2_read <=0;

        switch_end <=0;

        init_acc <=0;
        init_acc_firsttime <=0;

        init_div <=0;
        init_div_toggle <=0;
        div_counter <= 0;

        storing_div_out <= 0;
        factor_top_pipe <=0;
        factor_top_complete <=0;

        shift <= 0;
       // gigacoutner <= 0;
        outvalid1 <= 0;


    end

    else if (enable) begin

     
        //calculating shift here much in advance, makes sense since we will use it later
        

        shift <= MAX_BITS - OUT_BITS;

        if(in_valid) begin

            //this never gets used, we dont need it 
            if(counter < 2) begin
                q_in_stored <= qin;
            end

            //BASICALLY ONLY RUNS ON THE FIRST RUN TO MAKE IT MORE THAN 1 AT FIRST - i prefer to count this way 
            if(!firstrunswitch) begin
                counter <=2;
                firstrunswitch <= 1;
            end
            //THIS IS WHAT SHOULD HAPPEN EVERY TIME AFTER THE FIRST RUN
            //timing wise this works out to initialize max with my init
            else begin 
                my_init <=0;    //initialize max force it to be zero
                counter <= counter +1; //keep a counter to make sure we 
            end 

            //i am using the init signal also as the write signal into the first fifo, which means when the coutner hits dwacc we reset the coutner
            //but we also
            if(counter == D_W_ACC) begin
                counter <= 1;
                my_init <=1; //can now start the max function
                fifo_1_read <=1; //want to start reading from the fifo cause its full
                fifo_read_counter <=1; //start the read counter, in hindsight we dont actually need this 
                max_1_pipe <= max_1; // i need to keep the max value that we need to work with while max_1 gets overwritten
                //might be too early 
                q_hat_valid_pipe <=1; //qhat is now valid for launch
                
                counter_next <=counter_next +1; //we ccan keep this second coutner
            end
        end

        // else begin
        //     q_hat_valid_pipe <= 0;
        // end

            //got to stop reading fifo once were done reading the 32 bit input, should turn fifo read high again if a new vector had come in 
            //if were reading the fifo and there is no valid inputs, this is outside the in_valid block
            if(fifo_1_read == 1) begin
                //and the counter is not full, we should keep reading and update the counter
                if(counter != D_W_ACC) begin
                    fifo_read_counter <= fifo_read_counter + 1;
                end
                //might be too early again
                counter_next <= counter_next + 1;
                //basically if my read counter has read all 32 values and the coutner is not being filled up we can shut stuff off
                if(fifo_read_counter == D_W_ACC && counter != D_W_ACC) begin
                    fifo_1_read <= 0;
                    q_hat_valid_pipe2 <=0;
                    q_hat_valid_pipe <=0;
                    
                end
            end

            //q_hat was coming in a little early so threw in a little bit of pipelined delay for the valid signals
            q_hat_valid_pipe2 <= q_hat_valid_pipe;
            q_hat_valid <= q_hat_valid_pipe2;

            //if were valid lets get moving
            if(q_hat_valid_pipe2) begin
                q_hat <= q_in_buffered - max_1_LATCHED;
            end
            


            max_1_LATCHED <= max_1_pipe;

            // if(counter_next == D_W_ACC) begin
            //     fifo_1_read <=0;   
            // end

            if(q_exp_valid) begin
                q_req <=  ((q_exp * Sreq) + (1 << (FP_BITS - 1))) >> FP_BITS; //keeps rounding precision, by adding the 1 << part, we add half of the smallest frsctional value
                q_req_valid <=1;
                fifo2_write <=1;    
                init_acc <=!init_acc_firsttime && q_exp_valid; //can start to initialize accumulate, again a first time switch variable
                init_acc_firsttime <= 1;
                //fifo2_write_counter <= fifo2_write_counter + 1;

            end
            else begin
                //this stop condition is beatiful
                q_req_valid <=0;
                q_req <= 0;
                fifo2_write <=0;
            end


            //COUNTER LOGIC MAINLY FOR COUNTERS 

            //this bit works perfectly it seems, the fifo2 write is good
            if(q_exp_valid && !fifo3_write && fifo2_write_counter != D_W_ACC-1) begin
                fifo2_write_counter <= fifo2_write_counter + 1;
            end
            //ur input is no longer valid but you are also reading, this means the coutner shold go down
            else if(!q_exp_valid && fifo2_read) begin
                fifo2_write_counter <= fifo2_write_counter - 1;
                //now if ur fifo 2 is empty, its time to stop writing to the fifo3 and drain fifo 3
            
                if(fifo2_write_counter == 0) begin //i mean shit we finished writing
                    fifo3_write <= 0;
                    fifo3_write_counter <= D_W_ACC; //fifo 3 has to know this will needs to be drained
                    switch_end <= 1;
                end
            end

            //if fifo 2 is almost full were gonna wanna
            if(fifo2_write_counter == D_W_ACC-1) begin
                fifo3_write_counter <= fifo3_write_counter + 1; //start to write to next one
                //this is also going to be the read of fifo2
                fifo2_read <= 1; //start reading from old one
                //just to time div properly - makes sense to do this as we start to read from the second fifo
                //init gtoggle so it doesnt turn on all the other times that fifo2 will have to be that value, can remove this now it was for testing
                div_counter <= !init_div_toggle && (fifo2_write_counter == D_W_ACC-1); 
                init_div <= !init_div_toggle && (fifo2_write_counter == D_W_ACC-1); 
                init_div_toggle <=1;
            end
            else if(fifo2_write_counter == 0) begin
                fifo2_read <= 0;
            end

            //THIS SHOULD BE THE READ AND WRITE LOGIC HERE, MAKES MORE SENSE DONT MIX THEM UP 


            //switch end ensures were not tuning on any counters when we are first filling up fifo 2

            //simple, if were not reading from fifo2 andwhihc also means were not writing to the second fifo, so keep draining till its empty
            if(fifo2_read == 0 && fifo3_write_counter !=1 && switch_end) begin
                fifo3_write_counter <= fifo3_write_counter - 1;
            end
            //if fifo is full we read it
            else if(fifo3_write_counter == D_W_ACC) begin
                fifo3_write_counter <= 1;
                fifo3_read <= 1;
            end
            //when fifo 2 is donezo
            else if (fifo3_write_counter == 1 && switch_end) begin
                fifo3_read <= 0;
            end

            // if(fifo2_empty && switch_end) begin
            //     fifo2_read <=0;
            // end
            
            fifo3_write <= fifo2_read; //timing, this as a pain no cap 

            //
            if(fifo3_write_counter == 1 || switch_end) begin
                init_acc <= 1;
            end
            //
            if(fifo3_write_counter == 2 || (switch_end && D_W_ACC)) begin
                init_acc <= 0;
            end
            //needs to happen before this
            //init_div <= init_acc;
            
            //if were reading from the first fifo in the pair
            if(fifo2_read) begin
                init_div <= !init_div_toggle && fifo2_read; //can be just init div, this was for testing
                //init_div_toggle <=1;
                div_counter <= div_counter + 1;
                if(div_counter == D_W_ACC) begin
                    div_counter <=1;
                    init_div <= 1;
            end
            end



            else if (div_counter == 1) begin
                init_div <= 0;
            end

            if(out_valid_div) begin
                storing_div_out <= factor_top;
            end

            if(div_counter == D_W_ACC) begin
                factor_top_pipe <= storing_div_out;
                
            end

            
            // gigacoutner <= gigacoutner + 1;             
            // if (gigacoutner == 108) begin
            //     out_valid <= 1;
            // end

            // if(gigacoutner == 1132) begin
            //         out_valid <= 0;
            // end

            outvalid1 <= fifo3_read;
            out_valid <= outvalid1;

            factor_top_complete <= factor_top_pipe;

            qout <= ((factor*factor_top_complete) >>> shift);
            //qout <= ((factor * factor_top_complete) + (1 << (shift - 1))) >>> shift;
            //qout <= 42;
            // if(gigacoutner == 216-1) begin
            //     out_valid <= 1;
            // end

    end
    
end


endmodule

//i think what we can do now is run this one time and check if the q_max latched is in the right spot
//then check if qhat valid is showing up in the right spot and if it is then we can start to calcuate q_hat prolly
//additionally check if that new if block is stopping the read and stuff properly as we imagined it
//dont forget that the waveform we colored, dont keep rechecking everything, all in red is all good. :) <3



//well now things work i think as everything should, a little clean up never hurt anybody. Now we have
//to make sure the fifo read actually turns off along with the q_hat valid signal and then we can move ahead with the rest
//MAKE SURE NOTHING ELSE NEEDS TURNING OFF much love <3


//div is like now working at the right time we are enableing it correct and im pretty sure its also calucating
//correctly but must check 
//i think accum is turning off at the right just, make sure of that
//and then just sure you turn off div conditions eventually if they arent happening on their own
//and the div logic to collect all the input at once like gather them bitches up.
//W mans