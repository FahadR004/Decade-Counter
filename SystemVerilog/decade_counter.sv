// This is a modulo k counter where k = 10

module decade_counter ( // Decade Counter
    input  logic       clk, rst,
    output logic [3:0] state
);

    localparam logic [3:0] MAX_COUNT = 4'd9;

    logic [3:0] q;

    always_ff @(posedge clk)
    begin
        if (rst)
            q <= 4'b0000;
        else if (q == MAX_COUNT)
            q <= 4'b0000;
        else
            q <= q + 1'b1;
    end

    assign state = q;

endmodule
