// See LICENSE.SiFive for license details.
//VCS coverage exclude_file
`ifndef RESET_DELAY
 `define RESET_DELAY 777.7
`endif


`define INIT_MEM_DELAY 100

`define DRAM_HIR DUT.mem.srams.mem.mem_ext
`define BOOTROM_HIR TestDriver.DUT.top.bootrom //.rom[0:4095]


`include "uart_mon.sv"

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
  
  
  
bit [`BOOTROM_WIDTH - 1 :0] rom_content[0:`BOOTROM_DEPTH -1];

bit [`MEM_WIDTH -1      :0] mem_content[0:`MEM_DEPTH_TB -1];



//Initial BOOTROM and SRAM
initial begin
	int rom_depth_idx = 0;
	int ram_depth_idx = 0;
	int ram_depth_idx_lsb26 = 0;  
	int fp;



	string boot_rom_hex_file;
	string out_sram_hex_file;

	

	

  #`INIT_MEM_DELAY;
//////////////////////////////////////////////////////////////////////
///  Write BootROM
/////////////////////////////////////////////////////////////////////
	if ($value$plusargs("BOOT_ROM_HEX_FILE=%s",boot_rom_hex_file))
	begin
			$display("boot_rom_hex_file =%s\n",boot_rom_hex_file);
	end
	$readmemh(boot_rom_hex_file  ,rom_content);
	for(rom_depth_idx = 0;rom_depth_idx <= `BOOTROM_DEPTH-1;rom_depth_idx++)
	begin
		`BOOTROM_HIR.rom[rom_depth_idx] = rom_content[rom_depth_idx];		
	end	



//////////////////////////////////////////////////////////////////////
///  Write SRAM  @0x8000_0000
/////////////////////////////////////////////////////////////////////


	if ($value$plusargs("OUT_SRAM_HEX_FILE=%s",out_sram_hex_file))
	begin
			$display("out_sram_hex_file =%s\n",out_sram_hex_file);
			// Check wheather the hex  exist
		  if($fopen(out_sram_hex_file,"r") == null)
				$fatal();
	end

	$readmemh(out_sram_hex_file,mem_content);
	
	for(ram_depth_idx = 0;ram_depth_idx < 10;ram_depth_idx++)
	begin
		$display("mem_content[%x]=%x\n",ram_depth_idx,mem_content[ram_depth_idx]);
	end	



	for(ram_depth_idx = 0;ram_depth_idx <= `MEM_DEPTH_TB-1;ram_depth_idx++)
	begin
		ram_depth_idx_lsb26 = ram_depth_idx[25:0];
		case (ram_depth_idx[27:26])
			2'b00: begin
				`DRAM_HIR.mem_0_0.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][7 : 0 ];		
				`DRAM_HIR.mem_0_1.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][15: 8 ];		
				`DRAM_HIR.mem_0_2.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][23: 16];		
				`DRAM_HIR.mem_0_3.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][31: 24];		
				`DRAM_HIR.mem_0_4.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][39: 32];		
				`DRAM_HIR.mem_0_5.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][47: 40];		
				`DRAM_HIR.mem_0_6.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][55: 48];		
				`DRAM_HIR.mem_0_7.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][63: 56];				
			end
			2'b01: begin
				`DRAM_HIR.mem_1_0.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][7 : 0 ];		
				`DRAM_HIR.mem_1_1.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][15: 8 ];		
				`DRAM_HIR.mem_1_2.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][23: 16];		
				`DRAM_HIR.mem_1_3.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][31: 24];		
				`DRAM_HIR.mem_1_4.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][39: 32];		
				`DRAM_HIR.mem_1_5.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][47: 40];		
				`DRAM_HIR.mem_1_6.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][55: 48];		
				`DRAM_HIR.mem_1_7.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][63: 56];						
			end
			2'b10: begin
				`DRAM_HIR.mem_2_0.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][7 : 0 ];		
				`DRAM_HIR.mem_2_1.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][15: 8 ];		
				`DRAM_HIR.mem_2_2.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][23: 16];		
				`DRAM_HIR.mem_2_3.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][31: 24];		
				`DRAM_HIR.mem_2_4.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][39: 32];		
				`DRAM_HIR.mem_2_5.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][47: 40];		
				`DRAM_HIR.mem_2_6.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][55: 48];		
				`DRAM_HIR.mem_2_7.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][63: 56];					
			end
			2'b11: begin
				`DRAM_HIR.mem_3_0.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][7 : 0 ];		
				`DRAM_HIR.mem_3_1.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][15: 8 ];		
				`DRAM_HIR.mem_3_2.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][23: 16];		
				`DRAM_HIR.mem_3_3.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][31: 24];		
				`DRAM_HIR.mem_3_4.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][39: 32];		
				`DRAM_HIR.mem_3_5.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][47: 40];		
				`DRAM_HIR.mem_3_6.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][55: 48];		
				`DRAM_HIR.mem_3_7.ram[ram_depth_idx_lsb26] = mem_content[ram_depth_idx_lsb26][63: 56];						
			end
			default: begin 
					$display("RAM ADDR ERROR!!!") ;
					$finish();
			end
		endcase
	  
	end	

	
end

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
                    
                    
endmodule
