// This is a modulo k counter where k = 10

module decade_counter ( // Decade Counter
    input clk, rst, 
    output [3:0] state
);

localparam MAX_COUNT = 4'd9;

reg [3:0] q;

always @(posedge clk) 
begin
    if (rst)
        q <= 4'b0000;
    else if (q == MAX_COUNT)
        q <= 4'b0000;
    else
        q <= q + 1;
end

assign state = q;

endmodule