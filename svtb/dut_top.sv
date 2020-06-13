
module dut_top(
  input   clock, 
  input   reset

);

  wire  top_clock; 
  wire  top_reset; 
  wire  top_debug_systemjtag_jtag_TCK; 
  wire  top_debug_systemjtag_jtag_TMS; 
  wire  top_debug_systemjtag_jtag_TDI; 
  wire  top_debug_systemjtag_jtag_TDO_data; 
  wire  top_debug_systemjtag_jtag_TDO_driven; 
  wire  top_debug_systemjtag_reset; 
  wire [10:0] top_debug_systemjtag_mfr_id; 
  wire [15:0] top_debug_systemjtag_part_number; 
  wire [3:0] top_debug_systemjtag_version; 
  wire  top_debug_ndreset; 
  wire  top_debug_dmactive; 
  wire [31:0] top_reset_vector; 
  wire [1:0] top_interrupts; 
  wire  top_mem_axi4_0_aw_ready; 
  wire  top_mem_axi4_0_aw_valid; 
  wire [3:0] top_mem_axi4_0_aw_bits_id; 
  wire [31:0] top_mem_axi4_0_aw_bits_addr; 
  wire [7:0] top_mem_axi4_0_aw_bits_len; 
  wire [2:0] top_mem_axi4_0_aw_bits_size; 
  wire [1:0] top_mem_axi4_0_aw_bits_burst; 
  wire  top_mem_axi4_0_aw_bits_lock; 
  wire [3:0] top_mem_axi4_0_aw_bits_cache; 
  wire [2:0] top_mem_axi4_0_aw_bits_prot; 
  wire [3:0] top_mem_axi4_0_aw_bits_qos; 
  wire  top_mem_axi4_0_w_ready; 
  wire  top_mem_axi4_0_w_valid; 
  wire [63:0] top_mem_axi4_0_w_bits_data; 
  wire [7:0] top_mem_axi4_0_w_bits_strb; 
  wire  top_mem_axi4_0_w_bits_last; 
  wire  top_mem_axi4_0_b_ready; 
  wire  top_mem_axi4_0_b_valid; 
  wire [3:0] top_mem_axi4_0_b_bits_id; 
  wire [1:0] top_mem_axi4_0_b_bits_resp; 
  wire  top_mem_axi4_0_ar_ready; 
  wire  top_mem_axi4_0_ar_valid; 
  wire [3:0] top_mem_axi4_0_ar_bits_id; 
  wire [31:0] top_mem_axi4_0_ar_bits_addr; 
  wire [7:0] top_mem_axi4_0_ar_bits_len; 
  wire [2:0] top_mem_axi4_0_ar_bits_size; 
  wire [1:0] top_mem_axi4_0_ar_bits_burst; 
  wire  top_mem_axi4_0_ar_bits_lock; 
  wire [3:0] top_mem_axi4_0_ar_bits_cache; 
  wire [2:0] top_mem_axi4_0_ar_bits_prot; 
  wire [3:0] top_mem_axi4_0_ar_bits_qos; 
  wire  top_mem_axi4_0_r_ready; 
  wire  top_mem_axi4_0_r_valid; 
  wire [3:0] top_mem_axi4_0_r_bits_id; 
  wire [63:0] top_mem_axi4_0_r_bits_data; 
  wire [1:0] top_mem_axi4_0_r_bits_resp; 
  wire  top_mem_axi4_0_r_bits_last; 
  wire  top_mmio_axi4_0_aw_ready; 
  wire  top_mmio_axi4_0_aw_valid; 
  wire [3:0] top_mmio_axi4_0_aw_bits_id; 
  wire [30:0] top_mmio_axi4_0_aw_bits_addr; 
  wire [7:0] top_mmio_axi4_0_aw_bits_len; 
  wire [2:0] top_mmio_axi4_0_aw_bits_size; 
  wire [1:0] top_mmio_axi4_0_aw_bits_burst; 
  wire  top_mmio_axi4_0_aw_bits_lock; 
  wire [3:0] top_mmio_axi4_0_aw_bits_cache; 
  wire [2:0] top_mmio_axi4_0_aw_bits_prot; 
  wire [3:0] top_mmio_axi4_0_aw_bits_qos; 
  wire  top_mmio_axi4_0_w_ready; 
  wire  top_mmio_axi4_0_w_valid; 
  wire [63:0] top_mmio_axi4_0_w_bits_data; 
  wire [7:0] top_mmio_axi4_0_w_bits_strb; 
  wire  top_mmio_axi4_0_w_bits_last; 
  wire  top_mmio_axi4_0_b_ready; 
  wire  top_mmio_axi4_0_b_valid; 
  wire [3:0] top_mmio_axi4_0_b_bits_id; 
  wire [1:0] top_mmio_axi4_0_b_bits_resp; 
  wire  top_mmio_axi4_0_ar_ready; 
  wire  top_mmio_axi4_0_ar_valid; 
  wire [3:0] top_mmio_axi4_0_ar_bits_id; 
  wire [30:0] top_mmio_axi4_0_ar_bits_addr; 
  wire [7:0] top_mmio_axi4_0_ar_bits_len; 
  wire [2:0] top_mmio_axi4_0_ar_bits_size; 
  wire [1:0] top_mmio_axi4_0_ar_bits_burst; 
  wire  top_mmio_axi4_0_ar_bits_lock; 
  wire [3:0] top_mmio_axi4_0_ar_bits_cache; 
  wire [2:0] top_mmio_axi4_0_ar_bits_prot; 
  wire [3:0] top_mmio_axi4_0_ar_bits_qos; 
  wire  top_mmio_axi4_0_r_ready; 
  wire  top_mmio_axi4_0_r_valid; 
  wire [3:0] top_mmio_axi4_0_r_bits_id; 
  wire [63:0] top_mmio_axi4_0_r_bits_data; 
  wire [1:0] top_mmio_axi4_0_r_bits_resp; 
  wire  top_mmio_axi4_0_r_bits_last; 
  wire  top_l2_frontend_bus_axi4_0_aw_ready; 
  wire  top_l2_frontend_bus_axi4_0_aw_valid; 
  wire [7:0] top_l2_frontend_bus_axi4_0_aw_bits_id; 
  wire [31:0] top_l2_frontend_bus_axi4_0_aw_bits_addr; 
  wire [7:0] top_l2_frontend_bus_axi4_0_aw_bits_len; 
  wire [2:0] top_l2_frontend_bus_axi4_0_aw_bits_size; 
  wire [1:0] top_l2_frontend_bus_axi4_0_aw_bits_burst; 
  wire  top_l2_frontend_bus_axi4_0_aw_bits_lock; 
  wire [3:0] top_l2_frontend_bus_axi4_0_aw_bits_cache; 
  wire [2:0] top_l2_frontend_bus_axi4_0_aw_bits_prot; 
  wire [3:0] top_l2_frontend_bus_axi4_0_aw_bits_qos; 
  wire  top_l2_frontend_bus_axi4_0_w_ready; 
  wire  top_l2_frontend_bus_axi4_0_w_valid; 
  wire [63:0] top_l2_frontend_bus_axi4_0_w_bits_data; 
  wire [7:0] top_l2_frontend_bus_axi4_0_w_bits_strb; 
  wire  top_l2_frontend_bus_axi4_0_w_bits_last; 
  wire  top_l2_frontend_bus_axi4_0_b_ready; 
  wire  top_l2_frontend_bus_axi4_0_b_valid; 
  wire [7:0] top_l2_frontend_bus_axi4_0_b_bits_id; 
  wire [1:0] top_l2_frontend_bus_axi4_0_b_bits_resp; 
  wire  top_l2_frontend_bus_axi4_0_ar_ready; 
  wire  top_l2_frontend_bus_axi4_0_ar_valid; 
  wire [7:0] top_l2_frontend_bus_axi4_0_ar_bits_id; 
  wire [31:0] top_l2_frontend_bus_axi4_0_ar_bits_addr; 
  wire [7:0] top_l2_frontend_bus_axi4_0_ar_bits_len; 
  wire [2:0] top_l2_frontend_bus_axi4_0_ar_bits_size; 
  wire [1:0] top_l2_frontend_bus_axi4_0_ar_bits_burst; 
  wire  top_l2_frontend_bus_axi4_0_ar_bits_lock; 
  wire [3:0] top_l2_frontend_bus_axi4_0_ar_bits_cache; 
  wire [2:0] top_l2_frontend_bus_axi4_0_ar_bits_prot; 
  wire [3:0] top_l2_frontend_bus_axi4_0_ar_bits_qos; 
  wire  top_l2_frontend_bus_axi4_0_r_ready; 
  wire  top_l2_frontend_bus_axi4_0_r_valid; 
  wire [7:0] top_l2_frontend_bus_axi4_0_r_bits_id; 
  wire [63:0] top_l2_frontend_bus_axi4_0_r_bits_data; 
  wire [1:0] top_l2_frontend_bus_axi4_0_r_bits_resp; 
  wire  top_l2_frontend_bus_axi4_0_r_bits_last; 
  wire  top_uart_0_txd; 
  wire  top_uart_0_rxd; 




  wire  mem_clock; 
  wire  mem_reset; 
  wire  mem_io_axi4_0_aw_ready; 
  wire  mem_io_axi4_0_aw_valid; 
  wire [3:0] mem_io_axi4_0_aw_bits_id; 
  wire [30:0] mem_io_axi4_0_aw_bits_addr; 
  wire [7:0] mem_io_axi4_0_aw_bits_len; 
  wire [2:0] mem_io_axi4_0_aw_bits_size; 
  wire [1:0] mem_io_axi4_0_aw_bits_burst; 
  wire  mem_io_axi4_0_w_ready; 
  wire  mem_io_axi4_0_w_valid; 
  wire [63:0] mem_io_axi4_0_w_bits_data; 
  wire [7:0] mem_io_axi4_0_w_bits_strb; 
  wire  mem_io_axi4_0_w_bits_last; 
  wire  mem_io_axi4_0_b_ready; 
  wire  mem_io_axi4_0_b_valid; 
  wire [3:0] mem_io_axi4_0_b_bits_id; 
  wire [1:0] mem_io_axi4_0_b_bits_resp; 
  wire  mem_io_axi4_0_ar_ready; 
  wire  mem_io_axi4_0_ar_valid; 
  wire [3:0] mem_io_axi4_0_ar_bits_id; 
  wire [30:0] mem_io_axi4_0_ar_bits_addr; 
  wire [7:0] mem_io_axi4_0_ar_bits_len; 
  wire [2:0] mem_io_axi4_0_ar_bits_size; 
  wire [1:0] mem_io_axi4_0_ar_bits_burst; 
  wire  mem_io_axi4_0_r_ready; 
  wire  mem_io_axi4_0_r_valid; 
  wire [3:0] mem_io_axi4_0_r_bits_id; 
  wire [63:0] mem_io_axi4_0_r_bits_data; 
  wire [1:0] mem_io_axi4_0_r_bits_resp; 
  wire  mem_io_axi4_0_r_bits_last; 



assign top_reset_vector = 32'h1_0000;
assign top_clock = clock;
assign top_reset = reset;

  Top top ( 
    .clock(top_clock),
    .reset(top_reset),
    // .debug_systemjtag_jtag_TCK(top_debug_systemjtag_jtag_TCK),
    // .debug_systemjtag_jtag_TMS(top_debug_systemjtag_jtag_TMS),
    // .debug_systemjtag_jtag_TDI(top_debug_systemjtag_jtag_TDI),
    // .debug_systemjtag_jtag_TDO_data(top_debug_systemjtag_jtag_TDO_data),
    // .debug_systemjtag_jtag_TDO_driven(top_debug_systemjtag_jtag_TDO_driven),
    // .debug_systemjtag_reset(top_debug_systemjtag_reset),
    // .debug_systemjtag_mfr_id(top_debug_systemjtag_mfr_id),
    // .debug_systemjtag_part_number(top_debug_systemjtag_part_number),
    // .debug_systemjtag_version(top_debug_systemjtag_version),
    // .debug_ndreset(top_debug_ndreset),
    // .debug_dmactive(top_debug_dmactive),
    .reset_vector(top_reset_vector),
    .interrupts(top_interrupts),
    .mem_axi4_0_aw_ready(top_mem_axi4_0_aw_ready),
    .mem_axi4_0_aw_valid(top_mem_axi4_0_aw_valid),
    .mem_axi4_0_aw_bits_id(top_mem_axi4_0_aw_bits_id),
    .mem_axi4_0_aw_bits_addr(top_mem_axi4_0_aw_bits_addr),
    .mem_axi4_0_aw_bits_len(top_mem_axi4_0_aw_bits_len),
    .mem_axi4_0_aw_bits_size(top_mem_axi4_0_aw_bits_size),
    .mem_axi4_0_aw_bits_burst(top_mem_axi4_0_aw_bits_burst),
    .mem_axi4_0_aw_bits_lock(top_mem_axi4_0_aw_bits_lock),
    .mem_axi4_0_aw_bits_cache(top_mem_axi4_0_aw_bits_cache),
    .mem_axi4_0_aw_bits_prot(top_mem_axi4_0_aw_bits_prot),
    .mem_axi4_0_aw_bits_qos(top_mem_axi4_0_aw_bits_qos),
    .mem_axi4_0_w_ready(top_mem_axi4_0_w_ready),
    .mem_axi4_0_w_valid(top_mem_axi4_0_w_valid),
    .mem_axi4_0_w_bits_data(top_mem_axi4_0_w_bits_data),
    .mem_axi4_0_w_bits_strb(top_mem_axi4_0_w_bits_strb),
    .mem_axi4_0_w_bits_last(top_mem_axi4_0_w_bits_last),
    .mem_axi4_0_b_ready(top_mem_axi4_0_b_ready),
    .mem_axi4_0_b_valid(top_mem_axi4_0_b_valid),
    .mem_axi4_0_b_bits_id(top_mem_axi4_0_b_bits_id),
    .mem_axi4_0_b_bits_resp(top_mem_axi4_0_b_bits_resp),
    .mem_axi4_0_ar_ready(top_mem_axi4_0_ar_ready),
    .mem_axi4_0_ar_valid(top_mem_axi4_0_ar_valid),
    .mem_axi4_0_ar_bits_id(top_mem_axi4_0_ar_bits_id),
    .mem_axi4_0_ar_bits_addr(top_mem_axi4_0_ar_bits_addr),
    .mem_axi4_0_ar_bits_len(top_mem_axi4_0_ar_bits_len),
    .mem_axi4_0_ar_bits_size(top_mem_axi4_0_ar_bits_size),
    .mem_axi4_0_ar_bits_burst(top_mem_axi4_0_ar_bits_burst),
    .mem_axi4_0_ar_bits_lock(top_mem_axi4_0_ar_bits_lock),
    .mem_axi4_0_ar_bits_cache(top_mem_axi4_0_ar_bits_cache),
    .mem_axi4_0_ar_bits_prot(top_mem_axi4_0_ar_bits_prot),
    .mem_axi4_0_ar_bits_qos(top_mem_axi4_0_ar_bits_qos),
    .mem_axi4_0_r_ready(top_mem_axi4_0_r_ready),
    .mem_axi4_0_r_valid(top_mem_axi4_0_r_valid),
    .mem_axi4_0_r_bits_id(top_mem_axi4_0_r_bits_id),
    .mem_axi4_0_r_bits_data(top_mem_axi4_0_r_bits_data),
    .mem_axi4_0_r_bits_resp(top_mem_axi4_0_r_bits_resp),
    .mem_axi4_0_r_bits_last(top_mem_axi4_0_r_bits_last),
    // .mmio_axi4_0_aw_ready(top_mmio_axi4_0_aw_ready),
    // .mmio_axi4_0_aw_valid(top_mmio_axi4_0_aw_valid),
    // .mmio_axi4_0_aw_bits_id(top_mmio_axi4_0_aw_bits_id),
    // .mmio_axi4_0_aw_bits_addr(top_mmio_axi4_0_aw_bits_addr),
    // .mmio_axi4_0_aw_bits_len(top_mmio_axi4_0_aw_bits_len),
    // .mmio_axi4_0_aw_bits_size(top_mmio_axi4_0_aw_bits_size),
    // .mmio_axi4_0_aw_bits_burst(top_mmio_axi4_0_aw_bits_burst),
    // .mmio_axi4_0_aw_bits_lock(top_mmio_axi4_0_aw_bits_lock),
    // .mmio_axi4_0_aw_bits_cache(top_mmio_axi4_0_aw_bits_cache),
    // .mmio_axi4_0_aw_bits_prot(top_mmio_axi4_0_aw_bits_prot),
    // .mmio_axi4_0_aw_bits_qos(top_mmio_axi4_0_aw_bits_qos),
    // .mmio_axi4_0_w_ready(top_mmio_axi4_0_w_ready),
    // .mmio_axi4_0_w_valid(top_mmio_axi4_0_w_valid),
    // .mmio_axi4_0_w_bits_data(top_mmio_axi4_0_w_bits_data),
    // .mmio_axi4_0_w_bits_strb(top_mmio_axi4_0_w_bits_strb),
    // .mmio_axi4_0_w_bits_last(top_mmio_axi4_0_w_bits_last),
    // .mmio_axi4_0_b_ready(top_mmio_axi4_0_b_ready),
    // .mmio_axi4_0_b_valid(top_mmio_axi4_0_b_valid),
    // .mmio_axi4_0_b_bits_id(top_mmio_axi4_0_b_bits_id),
    // .mmio_axi4_0_b_bits_resp(top_mmio_axi4_0_b_bits_resp),
    // .mmio_axi4_0_ar_ready(top_mmio_axi4_0_ar_ready),
    // .mmio_axi4_0_ar_valid(top_mmio_axi4_0_ar_valid),
    // .mmio_axi4_0_ar_bits_id(top_mmio_axi4_0_ar_bits_id),
    // .mmio_axi4_0_ar_bits_addr(top_mmio_axi4_0_ar_bits_addr),
    // .mmio_axi4_0_ar_bits_len(top_mmio_axi4_0_ar_bits_len),
    // .mmio_axi4_0_ar_bits_size(top_mmio_axi4_0_ar_bits_size),
    // .mmio_axi4_0_ar_bits_burst(top_mmio_axi4_0_ar_bits_burst),
    // .mmio_axi4_0_ar_bits_lock(top_mmio_axi4_0_ar_bits_lock),
    // .mmio_axi4_0_ar_bits_cache(top_mmio_axi4_0_ar_bits_cache),
    // .mmio_axi4_0_ar_bits_prot(top_mmio_axi4_0_ar_bits_prot),
    // .mmio_axi4_0_ar_bits_qos(top_mmio_axi4_0_ar_bits_qos),
    // .mmio_axi4_0_r_ready(top_mmio_axi4_0_r_ready),
    // .mmio_axi4_0_r_valid(top_mmio_axi4_0_r_valid),
    // .mmio_axi4_0_r_bits_id(top_mmio_axi4_0_r_bits_id),
    // .mmio_axi4_0_r_bits_data(top_mmio_axi4_0_r_bits_data),
    // .mmio_axi4_0_r_bits_resp(top_mmio_axi4_0_r_bits_resp),
    // .mmio_axi4_0_r_bits_last(top_mmio_axi4_0_r_bits_last),
    // .l2_frontend_bus_axi4_0_aw_ready(top_l2_frontend_bus_axi4_0_aw_ready),
    // .l2_frontend_bus_axi4_0_aw_valid(top_l2_frontend_bus_axi4_0_aw_valid),
    // .l2_frontend_bus_axi4_0_aw_bits_id(top_l2_frontend_bus_axi4_0_aw_bits_id),
    // .l2_frontend_bus_axi4_0_aw_bits_addr(top_l2_frontend_bus_axi4_0_aw_bits_addr),
    // .l2_frontend_bus_axi4_0_aw_bits_len(top_l2_frontend_bus_axi4_0_aw_bits_len),
    // .l2_frontend_bus_axi4_0_aw_bits_size(top_l2_frontend_bus_axi4_0_aw_bits_size),
    // .l2_frontend_bus_axi4_0_aw_bits_burst(top_l2_frontend_bus_axi4_0_aw_bits_burst),
    // .l2_frontend_bus_axi4_0_aw_bits_lock(top_l2_frontend_bus_axi4_0_aw_bits_lock),
    // .l2_frontend_bus_axi4_0_aw_bits_cache(top_l2_frontend_bus_axi4_0_aw_bits_cache),
    // .l2_frontend_bus_axi4_0_aw_bits_prot(top_l2_frontend_bus_axi4_0_aw_bits_prot),
    // .l2_frontend_bus_axi4_0_aw_bits_qos(top_l2_frontend_bus_axi4_0_aw_bits_qos),
    // .l2_frontend_bus_axi4_0_w_ready(top_l2_frontend_bus_axi4_0_w_ready),
    // .l2_frontend_bus_axi4_0_w_valid(top_l2_frontend_bus_axi4_0_w_valid),
    // .l2_frontend_bus_axi4_0_w_bits_data(top_l2_frontend_bus_axi4_0_w_bits_data),
    // .l2_frontend_bus_axi4_0_w_bits_strb(top_l2_frontend_bus_axi4_0_w_bits_strb),
    // .l2_frontend_bus_axi4_0_w_bits_last(top_l2_frontend_bus_axi4_0_w_bits_last),
    // .l2_frontend_bus_axi4_0_b_ready(top_l2_frontend_bus_axi4_0_b_ready),
    // .l2_frontend_bus_axi4_0_b_valid(top_l2_frontend_bus_axi4_0_b_valid),
    // .l2_frontend_bus_axi4_0_b_bits_id(top_l2_frontend_bus_axi4_0_b_bits_id),
    // .l2_frontend_bus_axi4_0_b_bits_resp(top_l2_frontend_bus_axi4_0_b_bits_resp),
    // .l2_frontend_bus_axi4_0_ar_ready(top_l2_frontend_bus_axi4_0_ar_ready),
    // .l2_frontend_bus_axi4_0_ar_valid(top_l2_frontend_bus_axi4_0_ar_valid),
    // .l2_frontend_bus_axi4_0_ar_bits_id(top_l2_frontend_bus_axi4_0_ar_bits_id),
    // .l2_frontend_bus_axi4_0_ar_bits_addr(top_l2_frontend_bus_axi4_0_ar_bits_addr),
    // .l2_frontend_bus_axi4_0_ar_bits_len(top_l2_frontend_bus_axi4_0_ar_bits_len),
    // .l2_frontend_bus_axi4_0_ar_bits_size(top_l2_frontend_bus_axi4_0_ar_bits_size),
    // .l2_frontend_bus_axi4_0_ar_bits_burst(top_l2_frontend_bus_axi4_0_ar_bits_burst),
    // .l2_frontend_bus_axi4_0_ar_bits_lock(top_l2_frontend_bus_axi4_0_ar_bits_lock),
    // .l2_frontend_bus_axi4_0_ar_bits_cache(top_l2_frontend_bus_axi4_0_ar_bits_cache),
    // .l2_frontend_bus_axi4_0_ar_bits_prot(top_l2_frontend_bus_axi4_0_ar_bits_prot),
    // .l2_frontend_bus_axi4_0_ar_bits_qos(top_l2_frontend_bus_axi4_0_ar_bits_qos),
    // .l2_frontend_bus_axi4_0_r_ready(top_l2_frontend_bus_axi4_0_r_ready),
    // .l2_frontend_bus_axi4_0_r_valid(top_l2_frontend_bus_axi4_0_r_valid),
    // .l2_frontend_bus_axi4_0_r_bits_id(top_l2_frontend_bus_axi4_0_r_bits_id),
    // .l2_frontend_bus_axi4_0_r_bits_data(top_l2_frontend_bus_axi4_0_r_bits_data),
    // .l2_frontend_bus_axi4_0_r_bits_resp(top_l2_frontend_bus_axi4_0_r_bits_resp),
    // .l2_frontend_bus_axi4_0_r_bits_last(top_l2_frontend_bus_axi4_0_r_bits_last),
    .uart_0_txd(top_uart_0_txd),
    .uart_0_rxd(top_uart_0_rxd)
  );




///////////////////////////////////////////////////////////////////
// connect Core 's AXI interfase to SRAM
//
/////////////////////////////////////////////////////////////////////

  assign top_mem_axi4_0_aw_ready = mem_io_axi4_0_aw_ready; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_w_ready = mem_io_axi4_0_w_ready; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_b_valid = mem_io_axi4_0_b_valid; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_b_bits_id = mem_io_axi4_0_b_bits_id; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_b_bits_resp = mem_io_axi4_0_b_bits_resp; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_ar_ready = mem_io_axi4_0_ar_ready; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_r_valid = mem_io_axi4_0_r_valid; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_r_bits_id = mem_io_axi4_0_r_bits_id; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_r_bits_data = mem_io_axi4_0_r_bits_data; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_r_bits_resp = mem_io_axi4_0_r_bits_resp; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign top_mem_axi4_0_r_bits_last = mem_io_axi4_0_r_bits_last; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]

  assign mem_io_axi4_0_aw_valid = top_mem_axi4_0_aw_valid; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_aw_bits_id = top_mem_axi4_0_aw_bits_id; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_aw_bits_addr = top_mem_axi4_0_aw_bits_addr[27:0]; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_aw_bits_len = top_mem_axi4_0_aw_bits_len; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_aw_bits_size = top_mem_axi4_0_aw_bits_size; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_aw_bits_burst = top_mem_axi4_0_aw_bits_burst; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_w_valid = top_mem_axi4_0_w_valid; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_w_bits_data = top_mem_axi4_0_w_bits_data; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_w_bits_strb = top_mem_axi4_0_w_bits_strb; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_w_bits_last = top_mem_axi4_0_w_bits_last; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_b_ready = top_mem_axi4_0_b_ready; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_valid = top_mem_axi4_0_ar_valid; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_bits_id = top_mem_axi4_0_ar_bits_id; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_bits_addr = top_mem_axi4_0_ar_bits_addr[27:0]; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_bits_len = top_mem_axi4_0_ar_bits_len; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_bits_size = top_mem_axi4_0_ar_bits_size; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_ar_bits_burst = top_mem_axi4_0_ar_bits_burst; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]
  assign mem_io_axi4_0_r_ready = top_mem_axi4_0_r_ready; // @[Ports.scala 76:41:example.TestHarness.SmallBoomConfig.fir@308230.4]


assign mem_clock = clock;
assign mem_reset = reset;
  
  SimAXIMem_inTestHarness mem ( // @[Ports.scala 76:15:example.TestHarness.SmallBoomConfig.fir@308732.4]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_axi4_0_aw_ready(mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid(mem_io_axi4_0_aw_valid),
    .io_axi4_0_aw_bits_id(mem_io_axi4_0_aw_bits_id),
    .io_axi4_0_aw_bits_addr(mem_io_axi4_0_aw_bits_addr),
    .io_axi4_0_aw_bits_len(mem_io_axi4_0_aw_bits_len),
    .io_axi4_0_aw_bits_size(mem_io_axi4_0_aw_bits_size),
    .io_axi4_0_aw_bits_burst(mem_io_axi4_0_aw_bits_burst),
    .io_axi4_0_w_ready(mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid(mem_io_axi4_0_w_valid),
    .io_axi4_0_w_bits_data(mem_io_axi4_0_w_bits_data),
    .io_axi4_0_w_bits_strb(mem_io_axi4_0_w_bits_strb),
    .io_axi4_0_w_bits_last(mem_io_axi4_0_w_bits_last),
    .io_axi4_0_b_ready(mem_io_axi4_0_b_ready),
    .io_axi4_0_b_valid(mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id(mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp(mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready(mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid(mem_io_axi4_0_ar_valid),
    .io_axi4_0_ar_bits_id(mem_io_axi4_0_ar_bits_id),
    .io_axi4_0_ar_bits_addr(mem_io_axi4_0_ar_bits_addr),
    .io_axi4_0_ar_bits_len(mem_io_axi4_0_ar_bits_len),
    .io_axi4_0_ar_bits_size(mem_io_axi4_0_ar_bits_size),
    .io_axi4_0_ar_bits_burst(mem_io_axi4_0_ar_bits_burst),
    .io_axi4_0_r_ready(mem_io_axi4_0_r_ready),
    .io_axi4_0_r_valid(mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id(mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data(mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp(mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last(mem_io_axi4_0_r_bits_last)
  );

endmodule
                                                     