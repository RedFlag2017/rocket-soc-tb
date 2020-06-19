// See LICENSE.SiFive for license details.
//VCS coverage exclude_file
import uvm_pkg::*;


`ifndef RESET_DELAY
 `define RESET_DELAY 777.7
`endif



`define DRAM_HIR TestDriver.DUT.mem.srams.mem.mem_ext
`define BOOTROM_HIR TestDriver.DUT.top.bootrom //.rom[0:4095]


`include "uart_mon.sv"
`include "test/testcase_list.svh"

module TestDriver;

  reg clock = 1'b0;
  reg reset = 1'b1;

  always #(`CLOCK_PERIOD/2.0) clock = ~clock;
  initial #(`RESET_DELAY) reset = 0;

  // Read input arguments and initialize
  reg verbose = 1'b0;
  wire printf_cond = verbose && !reset;
  reg [63:0] max_cycles = 0;
  reg [63:0] dump_start = 0;
  reg [63:0] trace_count = 0;
  reg [2047:0] fsdbfile = 0;

  int unsigned rand_value;
  initial
  begin
    void'($value$plusargs("max-cycles=%d", max_cycles));
    void'($value$plusargs("dump-start=%d", dump_start));
    verbose = $test$plusargs("verbose");

    // do not delete the lines below.
    // $random function needs to be called with the seed once to affect all
    // the downstream $random functions within the Chisel-generated Verilog
    // code.
    // $urandom is seeded via cmdline (+ntb_random_seed in VCS) but that
    // doesn't seed $random.
    rand_value = $urandom;
    rand_value = $random(rand_value);
    if (verbose) begin
`ifdef VCS
      $fdisplay(stderr, "testing $random %0x seed %d", rand_value, unsigned'($get_initial_random_seed));
`else
      $fdisplay(stderr, "testing $random %0x", rand_value);
`endif
    end



    if ($value$plusargs("fsdbfile=%s", fsdbfile))
    begin
`ifdef FSDB
      $fsdbDumpfile(fsdbfile);
      $fsdbDumpvars("+all");
      //$fsdbDumpSVA;
`else
      $fdisplay(stderr, "Error: +fsdbfile is FSDB-only; use +vcdfile/+vcdplus instead or recompile with FSDB=1");
      $fatal;
`endif
    end



	`ifdef FSDB
	`define VCDPLUSON $fsdbDumpon;
	`define VCDPLUSCLOSE $fsdbDumpoff;
	
	`endif


    if (dump_start == 0)
    begin
      // Start dumping before first clock edge to capture reset sequence in waveform
      `VCDPLUSON
    end
  end

`ifdef TESTBENCH_IN_UVM
  // UVM library has its own way to manage end-of-simulation.
  // A UVM-based testbench will raise an objection, watch this signal until this goes 1, then drop the objection.
  reg finish_request = 1'b0;
`endif
  reg [255:0] reason = "";

  integer stderr = 32'h80000002;
  always @(posedge clock)
  begin


    trace_count = trace_count + 1;

    if (trace_count == dump_start)
    begin
      `VCDPLUSON
    end

    if (!reset)
    begin
      if (max_cycles > 0 && trace_count > max_cycles)
      begin
        reason = " (timeout)";
        $fdisplay(stderr, "\n\n*** TIMEOUT ***%s after %d simulation cycles\n\n", reason, trace_count);
        `VCDPLUSCLOSE
        $finish();
      end


    end
  end


  dut_top DUT(
    .clock(clock),
    .reset(reset)
    
  );
  
  
  


wire clk_uart_mon ;
wire valid_1_uart_mon ;
wire valid_2_uart_mon ;
wire[7:0] data_uart_mon ;
assign  clk_uart_mon     =  TestDriver.DUT.top.uart_0_1.txm.clock;
assign  valid_1_uart_mon =  TestDriver.DUT.top.uart_0_1.txm._T_4;
assign  valid_2_uart_mon =  TestDriver.DUT.top.uart_0_1.txm._T_2;
assign  data_uart_mon    =  TestDriver.DUT.top.uart_0_1.txm.io_in_bits[7:0];

///////////////////////////////////////////////
// Check UART data to decide when to finish simulation
//////////////////////////////////////////////
uart_mon u_uart_mon(                       
.clk        (  clk_uart_mon     ),          
.valid_1    (  valid_1_uart_mon ),
.valid_2    (  valid_2_uart_mon ),
.data       (  data_uart_mon    ));  
                    
 
initial begin
   uvm_top.enable_print_topology = 1;
   run_test();
end   

                 
endmodule
