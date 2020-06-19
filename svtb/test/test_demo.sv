`ifndef TEST_DEMO
`define TEST_DEMO


class test_demo extends base_test;
  
   function new(string name = "test_demo", uvm_component parent = null);
      super.new(name,parent);
   endfunction 
   
   extern virtual function void build_phase(uvm_phase phase); 
   extern  task      main_phase(uvm_phase phase);
   `uvm_component_utils(test_demo)
endclass


function void test_demo::build_phase(uvm_phase phase);
   super.build_phase(phase);
   with_sram_hex = 1;
//   uvm_config_db#(uvm_object_wrapper)::set(this, 
//                                           "env.i_agt.sqr.main_phase", 
//                                           "default_sequence", 
//                                           sanity1_sequence::type_id::get());
endfunction


task  test_demo::main_phase(uvm_phase phase);
   super.main_phase(phase);


endtask
`endif
