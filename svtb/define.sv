
// for chisel generated code
`define RANDOMIZE
`define RANDOMIZE_MEM_INIT 
`define RANDOMIZE_REG_INIT 
`define RANDOMIZE_GARBAGE_ASSIGN 
`define RANDOMIZE_INVALID_ASSIGN 

// Enable wave dump
`define FSDB 



/////////////////////////////////////////////////////////////////
// bootrom and memory parameters
/////////////////////////////////////////////////////////////////
`define MEM_WIDTH         64
`define MEM_DEPTH_TB         32'h0100_0000
//`define MEM_DEPTH_TB         32'h0800_0000
`define MEM_DEPTH_DUT        32'h1000_0000

`define BOOTROM_WIDTH     64
`define BOOTROM_DEPTH     4096

//////////////////////////////////////////////////////////////////