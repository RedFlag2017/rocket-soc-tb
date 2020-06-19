`ifndef BASE_TEST__SV
`define BASE_TEST__SV

class base_test extends uvm_test;

   bit with_sram_hex = 1;
   
   function new(string name = "base_test", uvm_component parent = null);
      super.new(name,parent);
   endfunction
   
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual function void report_phase(uvm_phase phase);   
   extern task  main_phase(uvm_phase phase);
   
   `uvm_component_utils(base_test)
endclass


function void base_test::build_phase(uvm_phase phase);
   string svn_info;
   super.build_phase(phase);



   
endfunction

function void base_test::report_phase(uvm_phase phase);
   integer file; 
   string test_log_file;
   string cur_time;
   string test_name;
   int    blk_n;
   
   string pass_fail;
   string log_info;
   
   uvm_report_server server;
   int err_num;
   super.report_phase(phase);

   server = get_report_server();
   err_num = server.get_severity_count(UVM_ERROR);

   if (err_num != 0) begin
      pass_fail = "FAIL";//$display("TEST CASE FAILED");
   end
   else begin
      pass_fail = "PASS";//$display("TEST CASE PASSED");
   end





endfunction


task  base_test::main_phase(uvm_phase phase);
	bit [`BOOTROM_WIDTH - 1 :0] rom_content[0:`BOOTROM_DEPTH -1];
	
	bit [`MEM_WIDTH -1      :0] mem_content[0:`MEM_DEPTH_TB -1];
	int rom_depth_idx = 0;
	int ram_depth_idx = 0;
	int ram_depth_idx_lsb26 = 0;  
	int fp;



	string boot_rom_hex_file;
	string out_sram_hex_file;

   super.main_phase(phase);
   phase.raise_objection(this);
   `uvm_info("base_test", "main phase.",UVM_NONE)
   



//Initial BOOTROM and SRAM



	

	

//  #`INIT_MEM_DELAY;
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
			if(with_sram_hex == 1) begin
			  if($fopen(out_sram_hex_file,"r") == null)
					$fatal();
			end
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

	
 
   
   
   
   #500000;
   
   phase.drop_objection(this);

endtask

`endif
