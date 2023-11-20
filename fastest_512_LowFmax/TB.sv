`timescale 1ps/1ps

module TB;
  logic clock;
  logic  resetN;
  logic [31:0] results;
  logic [9:0] cycles;
  logic done;

  LABTWO dut (
	  .CLK(clock),
	  .RSTN(resetN),
	  .result(results),
	  .clkcount(cycles),
	  .done_L(done)
  );

  initial begin
    $dumpfile("Lab2_tb.vcd");
    $dumpvars(0, TB);
  end

  initial begin
    clock = 1'b0;
    forever #1 clock = ~clock;
  end

  initial begin
    resetN = 1'b0;
    #1 resetN = 1'b1;
  end

  initial begin
    @(negedge done);
    $display("@%0t: Finished!", $time);
    $display("@%0t: The sum is %h", $time, results);
	 #10; $finish();
  end

endmodule