module testbench;

reg clk, rst;
wire [3:0] state;

decade_counter counter(
    .clk(clk),
    .rst(rst),
    .state(state)
);

initial 
    begin
        clk = 1'b0;
        forever #5 clk = ~clk;   
    end

initial 
    begin
        $dumpfile("dump.vcd");
        $dumpvars(1, testbench);
        rst = 1'b1;
        @(posedge clk) #1;

        rst = 1'b0; 
        repeat(11) @(posedge clk) #1;

        $finish;
               
    end

endmodule