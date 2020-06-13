module Queue_6_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@38616.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@38617.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@38618.4]
  output        io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  input         io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  input  [63:0] io_enq_bits_data, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  input  [7:0]  io_enq_bits_strb, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  input         io_enq_bits_last, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  input         io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  output        io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  output [63:0] io_deq_bits_data, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  output [7:0]  io_deq_bits_strb, // @[:example.TestHarness.RocketConfig.fir@38619.4]
  output        io_deq_bits_last // @[:example.TestHarness.RocketConfig.fir@38619.4]
);
  reg [63:0] _T_data [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_data__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_data__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg [7:0] _T_strb [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg [31:0] _RAND_1;
  wire [7:0] _T_strb__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_strb__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire [7:0] _T_strb__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_strb__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_strb__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_strb__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg  _T_last [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg [31:0] _RAND_2;
  wire  _T_last__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_last__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_last__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_last__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_last__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  wire  _T_last__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@38622.4]
  reg [31:0] _RAND_3;
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@38624.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@38627.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@38630.4]
  wire  _GEN_9; // @[Decoupled.scala 240:27:example.TestHarness.RocketConfig.fir@38661.6]
  wire  _GEN_14; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@38656.4]
  wire  _GEN_13; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@38656.4]
  wire  _T_11; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@38641.4]
  wire  _T_12; // @[Decoupled.scala 231:19:example.TestHarness.RocketConfig.fir@38645.4]
  assign _T_data__T_14_addr = 1'h0;
  assign _T_data__T_14_data = _T_data[_T_data__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = 1'h0;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_strb__T_14_addr = 1'h0;
  assign _T_strb__T_14_data = _T_strb[_T_strb__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  assign _T_strb__T_10_data = io_enq_bits_strb;
  assign _T_strb__T_10_addr = 1'h0;
  assign _T_strb__T_10_mask = 1'h1;
  assign _T_strb__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_last__T_14_addr = 1'h0;
  assign _T_last__T_14_data = _T_last[_T_last__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
  assign _T_last__T_10_data = io_enq_bits_last;
  assign _T_last__T_10_addr = 1'h0;
  assign _T_last__T_10_mask = 1'h1;
  assign _T_last__T_10_en = _T_3 ? _GEN_9 : _T_6;
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@38624.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@38627.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@38630.4]
  assign _GEN_9 = io_deq_ready ? 1'h0 : _T_6; // @[Decoupled.scala 240:27:example.TestHarness.RocketConfig.fir@38661.6]
  assign _GEN_14 = _T_3 ? _GEN_9 : _T_6; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@38656.4]
  assign _GEN_13 = _T_3 ? 1'h0 : _T_8; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@38656.4]
  assign _T_11 = _GEN_14 != _GEN_13; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@38641.4]
  assign _T_12 = _T_3 == 1'h0; // @[Decoupled.scala 231:19:example.TestHarness.RocketConfig.fir@38645.4]
  assign io_enq_ready = _T_1 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@38648.4]
  assign io_deq_valid = io_enq_valid | _T_12; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@38646.4 Decoupled.scala 236:40:example.TestHarness.RocketConfig.fir@38654.6]
  assign io_deq_bits_data = _T_3 ? io_enq_bits_data : _T_data__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@38652.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@38659.6]
  assign io_deq_bits_strb = _T_3 ? io_enq_bits_strb : _T_strb__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@38651.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@38658.6]
  assign io_deq_bits_last = _T_3 ? io_enq_bits_last : _T_last__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@38650.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@38657.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_last[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
    end
    if(_T_strb__T_10_en & _T_strb__T_10_mask) begin
      _T_strb[_T_strb__T_10_addr] <= _T_strb__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
    end
    if(_T_last__T_10_en & _T_last__T_10_mask) begin
      _T_last[_T_last__T_10_addr] <= _T_last__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@38621.4]
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_11) begin
        if (_T_3) begin
          if (io_deq_ready) begin
            _T_1 <= 1'h0;
          end else begin
            _T_1 <= _T_6;
          end
        end else begin
          _T_1 <= _T_6;
        end
      end
    end
  end
endmodule
module Queue_36_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@199732.2]
  input        clock, // @[:example.TestHarness.RocketConfig.fir@199733.4]
  input        reset, // @[:example.TestHarness.RocketConfig.fir@199734.4]
  output       io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@199735.4]
  input        io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@199735.4]
  input  [7:0] io_enq_bits, // @[:example.TestHarness.RocketConfig.fir@199735.4]
  input        io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@199735.4]
  output       io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@199735.4]
  output [7:0] io_deq_bits // @[:example.TestHarness.RocketConfig.fir@199735.4]
);
  reg [7:0] _T [0:127]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  reg [31:0] _RAND_0;
  wire [7:0] _T__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  wire [6:0] _T__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  wire [7:0] _T__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  wire [6:0] _T__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  wire  _T__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  wire  _T__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  reg [6:0] value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199738.4]
  reg [31:0] _RAND_1;
  reg [6:0] value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199739.4]
  reg [31:0] _RAND_2;
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@199740.4]
  reg [31:0] _RAND_3;
  wire  _T_2; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@199741.4]
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@199742.4]
  wire  _T_4; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@199743.4]
  wire  _T_5; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@199744.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@199745.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@199748.4]
  wire [6:0] _T_12; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199756.6]
  wire [6:0] _T_14; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199762.6]
  wire  _T_15; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@199765.4]
  assign _T__T_18_addr = value_1;
  assign _T__T_18_data = _T[_T__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
  assign _T__T_10_data = io_enq_bits;
  assign _T__T_10_addr = value;
  assign _T__T_10_mask = 1'h1;
  assign _T__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@199741.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@199742.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@199743.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@199744.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@199745.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@199748.4]
  assign _T_12 = value + 7'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199756.6]
  assign _T_14 = value_1 + 7'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199762.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@199765.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@199772.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@199770.4]
  assign io_deq_bits = _T__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@199774.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    _T[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value_1 = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T__T_10_en & _T__T_10_mask) begin
      _T[_T__T_10_addr] <= _T__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@199737.4]
    end
    if (reset) begin
      value <= 7'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 7'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
// module UARTAdapter_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@199840.2]
//   input   clock, // @[:example.TestHarness.RocketConfig.fir@199841.4]
//   input   reset, // @[:example.TestHarness.RocketConfig.fir@199842.4]
//   input   io_uart_txd, // @[:example.TestHarness.RocketConfig.fir@199843.4]
//   output  io_uart_rxd // @[:example.TestHarness.RocketConfig.fir@199843.4]
// );
//   wire  txfifo_clock; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  txfifo_reset; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  txfifo_io_enq_ready; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  txfifo_io_enq_valid; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire [7:0] txfifo_io_enq_bits; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  txfifo_io_deq_ready; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  txfifo_io_deq_valid; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire [7:0] txfifo_io_deq_bits; // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//   wire  rxfifo_clock; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  rxfifo_reset; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  rxfifo_io_enq_ready; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  rxfifo_io_enq_valid; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire [7:0] rxfifo_io_enq_bits; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  rxfifo_io_deq_ready; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  rxfifo_io_deq_valid; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire [7:0] rxfifo_io_deq_bits; // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//   wire  sim_clock; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire  sim_reset; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire  sim_serial_in_ready; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire  sim_serial_in_valid; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire [7:0] sim_serial_in_bits; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire  sim_serial_out_ready; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire  sim_serial_out_valid; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   wire [7:0] sim_serial_out_bits; // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//   reg [1:0] txState; // @[UARTAdapter.scala 43:24:example.TestHarness.RocketConfig.fir@199851.4]
//   reg [31:0] _RAND_0;
//   reg [7:0] txData; // @[UARTAdapter.scala 44:19:example.TestHarness.RocketConfig.fir@199852.4]
//   reg [31:0] _RAND_1;
//   wire  _T; // @[UARTAdapter.scala 46:49:example.TestHarness.RocketConfig.fir@199853.4]
//   wire  _T_1; // @[UARTAdapter.scala 46:61:example.TestHarness.RocketConfig.fir@199854.4]
//   reg [2:0] value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199855.4]
//   reg [31:0] _RAND_2;
//   wire  _T_2; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199857.6]
//   wire [2:0] _T_4; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199859.6]
//   wire  txDataWrap; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199862.4]
//   wire  _T_5; // @[UARTAdapter.scala 48:51:example.TestHarness.RocketConfig.fir@199863.4]
//   wire  _T_6; // @[UARTAdapter.scala 48:63:example.TestHarness.RocketConfig.fir@199864.4]
//   reg [9:0] value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199865.4]
//   reg [31:0] _RAND_3;
//   wire  _T_7; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199867.6]
//   wire [9:0] _T_9; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199869.6]
//   wire  txBaudWrap; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199875.4]
//   wire  _T_10; // @[UARTAdapter.scala 49:53:example.TestHarness.RocketConfig.fir@199876.4]
//   wire  _T_11; // @[UARTAdapter.scala 49:80:example.TestHarness.RocketConfig.fir@199877.4]
//   wire  _T_12; // @[UARTAdapter.scala 49:65:example.TestHarness.RocketConfig.fir@199878.4]
//   wire  _T_13; // @[UARTAdapter.scala 49:88:example.TestHarness.RocketConfig.fir@199879.4]
//   reg [1:0] value_2; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199880.4]
//   reg [31:0] _RAND_4;
//   wire  _T_14; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199882.6]
//   wire [1:0] _T_16; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199884.6]
//   wire  txSlackWrap; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199887.4]
//   wire  _T_17; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199888.4]
//   wire  _T_18; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199896.6]
//   wire  _T_19; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199903.8]
//   wire [7:0] _GEN_30; // @[UARTAdapter.scala 65:41:example.TestHarness.RocketConfig.fir@199906.12]
//   wire [7:0] _T_20; // @[UARTAdapter.scala 65:41:example.TestHarness.RocketConfig.fir@199906.12]
//   wire [7:0] _T_21; // @[UARTAdapter.scala 65:26:example.TestHarness.RocketConfig.fir@199907.12]
//   wire  _T_24; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199921.10]
//   wire  _T_26; // @[UARTAdapter.scala 74:32:example.TestHarness.RocketConfig.fir@199924.12]
//   reg [1:0] rxState; // @[UARTAdapter.scala 84:24:example.TestHarness.RocketConfig.fir@199931.4]
//   reg [31:0] _RAND_5;
//   reg [9:0] value_3; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199932.4]
//   reg [31:0] _RAND_6;
//   wire  _T_27; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199934.6]
//   wire [9:0] _T_29; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199936.6]
//   wire  rxBaudWrap; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199942.4]
//   wire  _T_30; // @[UARTAdapter.scala 88:49:example.TestHarness.RocketConfig.fir@199943.4]
//   wire  _T_31; // @[UARTAdapter.scala 88:61:example.TestHarness.RocketConfig.fir@199944.4]
//   wire  _T_32; // @[UARTAdapter.scala 88:84:example.TestHarness.RocketConfig.fir@199945.4]
//   reg [2:0] value_4; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@199946.4]
//   reg [31:0] _RAND_7;
//   wire  _T_33; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199948.6]
//   wire [2:0] _T_35; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199950.6]
//   wire  rxDataWrap; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199953.4]
//   wire  _T_36; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199955.4]
//   wire  _T_37; // @[UARTAdapter.scala 94:24:example.TestHarness.RocketConfig.fir@199958.6]
//   wire  _T_38; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199964.6]
//   wire  _T_39; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199972.8]
//   wire [7:0] _T_40; // @[UARTAdapter.scala 105:42:example.TestHarness.RocketConfig.fir@199974.10]
//   wire  _T_41; // @[UARTAdapter.scala 105:55:example.TestHarness.RocketConfig.fir@199975.10]
//   wire  _T_42; // @[UARTAdapter.scala 106:23:example.TestHarness.RocketConfig.fir@199977.10]
//   wire  _GEN_24; // @[Conditional.scala 39:67:example.TestHarness.RocketConfig.fir@199973.8]
//   wire  _GEN_26; // @[Conditional.scala 39:67:example.TestHarness.RocketConfig.fir@199965.6]
//   wire  _T_44; // @[UARTAdapter.scala 111:48:example.TestHarness.RocketConfig.fir@199983.4]
//   wire  _T_45; // @[UARTAdapter.scala 111:62:example.TestHarness.RocketConfig.fir@199984.4]
//   Queue_36_inTestHarness txfifo ( // @[UARTAdapter.scala 37:22:example.TestHarness.RocketConfig.fir@199845.4]
//     .clock(txfifo_clock),
//     .reset(txfifo_reset),
//     .io_enq_ready(txfifo_io_enq_ready),
//     .io_enq_valid(txfifo_io_enq_valid),
//     .io_enq_bits(txfifo_io_enq_bits),
//     .io_deq_ready(txfifo_io_deq_ready),
//     .io_deq_valid(txfifo_io_deq_valid),
//     .io_deq_bits(txfifo_io_deq_bits)
//   );
//   Queue_36_inTestHarness rxfifo ( // @[UARTAdapter.scala 38:22:example.TestHarness.RocketConfig.fir@199848.4]
//     .clock(rxfifo_clock),
//     .reset(rxfifo_reset),
//     .io_enq_ready(rxfifo_io_enq_ready),
//     .io_enq_valid(rxfifo_io_enq_valid),
//     .io_enq_bits(rxfifo_io_enq_bits),
//     .io_deq_ready(rxfifo_io_deq_ready),
//     .io_deq_valid(rxfifo_io_deq_valid),
//     .io_deq_bits(rxfifo_io_deq_bits)
//   );
//   SimUART #(.UARTNO(0)) sim ( // @[UARTAdapter.scala 113:19:example.TestHarness.RocketConfig.fir@199987.4]
//     .clock(sim_clock),
//     .reset(sim_reset),
//     .serial_in_ready(sim_serial_in_ready),
//     .serial_in_valid(sim_serial_in_valid),
//     .serial_in_bits(sim_serial_in_bits),
//     .serial_out_ready(sim_serial_out_ready),
//     .serial_out_valid(sim_serial_out_valid),
//     .serial_out_bits(sim_serial_out_bits)
//   );
//   assign _T = txState == 2'h2; // @[UARTAdapter.scala 46:49:example.TestHarness.RocketConfig.fir@199853.4]
//   assign _T_1 = _T & txfifo_io_enq_ready; // @[UARTAdapter.scala 46:61:example.TestHarness.RocketConfig.fir@199854.4]
//   assign _T_2 = value == 3'h7; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199857.6]
//   assign _T_4 = value + 3'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199859.6]
//   assign txDataWrap = _T_1 & _T_2; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199862.4]
//   assign _T_5 = txState == 2'h1; // @[UARTAdapter.scala 48:51:example.TestHarness.RocketConfig.fir@199863.4]
//   assign _T_6 = _T_5 & txfifo_io_enq_ready; // @[UARTAdapter.scala 48:63:example.TestHarness.RocketConfig.fir@199864.4]
//   assign _T_7 = value_1 == 10'h363; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199867.6]
//   assign _T_9 = value_1 + 10'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199869.6]
//   assign txBaudWrap = _T_6 & _T_7; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199875.4]
//   assign _T_10 = txState == 2'h0; // @[UARTAdapter.scala 49:53:example.TestHarness.RocketConfig.fir@199876.4]
//   assign _T_11 = io_uart_txd == 1'h0; // @[UARTAdapter.scala 49:80:example.TestHarness.RocketConfig.fir@199877.4]
//   assign _T_12 = _T_10 & _T_11; // @[UARTAdapter.scala 49:65:example.TestHarness.RocketConfig.fir@199878.4]
//   assign _T_13 = _T_12 & txfifo_io_enq_ready; // @[UARTAdapter.scala 49:88:example.TestHarness.RocketConfig.fir@199879.4]
//   assign _T_14 = value_2 == 2'h3; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199882.6]
//   assign _T_16 = value_2 + 2'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199884.6]
//   assign txSlackWrap = _T_13 & _T_14; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199887.4]
//   assign _T_17 = 2'h0 == txState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199888.4]
//   assign _T_18 = 2'h1 == txState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199896.6]
//   assign _T_19 = 2'h2 == txState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199903.8]
//   assign _GEN_30 = {{7'd0}, io_uart_txd}; // @[UARTAdapter.scala 65:41:example.TestHarness.RocketConfig.fir@199906.12]
//   assign _T_20 = _GEN_30 << value; // @[UARTAdapter.scala 65:41:example.TestHarness.RocketConfig.fir@199906.12]
//   assign _T_21 = txData | _T_20; // @[UARTAdapter.scala 65:26:example.TestHarness.RocketConfig.fir@199907.12]
//   assign _T_24 = 2'h3 == txState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199921.10]
//   assign _T_26 = io_uart_txd & txfifo_io_enq_ready; // @[UARTAdapter.scala 74:32:example.TestHarness.RocketConfig.fir@199924.12]
//   assign _T_27 = value_3 == 10'h363; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199934.6]
//   assign _T_29 = value_3 + 10'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199936.6]
//   assign rxBaudWrap = txfifo_io_enq_ready & _T_27; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199942.4]
//   assign _T_30 = rxState == 2'h2; // @[UARTAdapter.scala 88:49:example.TestHarness.RocketConfig.fir@199943.4]
//   assign _T_31 = _T_30 & txfifo_io_enq_ready; // @[UARTAdapter.scala 88:61:example.TestHarness.RocketConfig.fir@199944.4]
//   assign _T_32 = _T_31 & rxBaudWrap; // @[UARTAdapter.scala 88:84:example.TestHarness.RocketConfig.fir@199945.4]
//   assign _T_33 = value_4 == 3'h7; // @[Counter.scala 37:24:example.TestHarness.RocketConfig.fir@199948.6]
//   assign _T_35 = value_4 + 3'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@199950.6]
//   assign rxDataWrap = _T_32 & _T_33; // @[Counter.scala 72:20:example.TestHarness.RocketConfig.fir@199953.4]
//   assign _T_36 = 2'h0 == rxState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199955.4]
//   assign _T_37 = rxBaudWrap & rxfifo_io_deq_valid; // @[UARTAdapter.scala 94:24:example.TestHarness.RocketConfig.fir@199958.6]
//   assign _T_38 = 2'h1 == rxState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199964.6]
//   assign _T_39 = 2'h2 == rxState; // @[Conditional.scala 37:30:example.TestHarness.RocketConfig.fir@199972.8]
//   assign _T_40 = rxfifo_io_deq_bits >> value_4; // @[UARTAdapter.scala 105:42:example.TestHarness.RocketConfig.fir@199974.10]
//   assign _T_41 = _T_40[0]; // @[UARTAdapter.scala 105:55:example.TestHarness.RocketConfig.fir@199975.10]
//   assign _T_42 = rxDataWrap & rxBaudWrap; // @[UARTAdapter.scala 106:23:example.TestHarness.RocketConfig.fir@199977.10]
//   assign _GEN_24 = _T_39 ? _T_41 : 1'h1; // @[Conditional.scala 39:67:example.TestHarness.RocketConfig.fir@199973.8]
//   assign _GEN_26 = _T_38 ? 1'h0 : _GEN_24; // @[Conditional.scala 39:67:example.TestHarness.RocketConfig.fir@199965.6]
//   assign _T_44 = _T_30 & rxDataWrap; // @[UARTAdapter.scala 111:48:example.TestHarness.RocketConfig.fir@199983.4]
//   assign _T_45 = _T_44 & rxBaudWrap; // @[UARTAdapter.scala 111:62:example.TestHarness.RocketConfig.fir@199984.4]
//   assign io_uart_rxd = _T_36 | _GEN_26; // @[UARTAdapter.scala 90:15:example.TestHarness.RocketConfig.fir@199954.4 UARTAdapter.scala 93:19:example.TestHarness.RocketConfig.fir@199957.6 UARTAdapter.scala 99:19:example.TestHarness.RocketConfig.fir@199966.8 UARTAdapter.scala 105:19:example.TestHarness.RocketConfig.fir@199976.10]
//   assign txfifo_clock = clock; // @[:example.TestHarness.RocketConfig.fir@199846.4]
//   assign txfifo_reset = reset; // @[:example.TestHarness.RocketConfig.fir@199847.4]
//   assign txfifo_io_enq_valid = _T_1 & _T_2; // @[UARTAdapter.scala 81:23:example.TestHarness.RocketConfig.fir@199930.4]
//   assign txfifo_io_enq_bits = txData; // @[UARTAdapter.scala 80:23:example.TestHarness.RocketConfig.fir@199929.4]
//   assign txfifo_io_deq_ready = sim_serial_out_ready; // @[UARTAdapter.scala 120:23:example.TestHarness.RocketConfig.fir@199996.4]
//   assign rxfifo_clock = clock; // @[:example.TestHarness.RocketConfig.fir@199849.4]
//   assign rxfifo_reset = reset; // @[:example.TestHarness.RocketConfig.fir@199850.4]
//   assign rxfifo_io_enq_valid = sim_serial_in_valid; // @[UARTAdapter.scala 123:23:example.TestHarness.RocketConfig.fir@199998.4]
//   assign rxfifo_io_enq_bits = sim_serial_in_bits; // @[UARTAdapter.scala 122:22:example.TestHarness.RocketConfig.fir@199997.4]
//   assign rxfifo_io_deq_ready = _T_45 & txfifo_io_enq_ready; // @[UARTAdapter.scala 111:23:example.TestHarness.RocketConfig.fir@199986.4]
//   assign sim_clock = clock; // @[UARTAdapter.scala 115:16:example.TestHarness.RocketConfig.fir@199991.4]
//   assign sim_reset = $unsigned(reset); // @[UARTAdapter.scala 116:16:example.TestHarness.RocketConfig.fir@199993.4]
//   assign sim_serial_in_ready = rxfifo_io_enq_ready; // @[UARTAdapter.scala 124:26:example.TestHarness.RocketConfig.fir@199999.4]
//   assign sim_serial_out_valid = txfifo_io_deq_valid; // @[UARTAdapter.scala 119:27:example.TestHarness.RocketConfig.fir@199995.4]
//   assign sim_serial_out_bits = txfifo_io_deq_bits; // @[UARTAdapter.scala 118:26:example.TestHarness.RocketConfig.fir@199994.4]
// `ifdef RANDOMIZE_GARBAGE_ASSIGN
// `define RANDOMIZE
// `endif
// `ifdef RANDOMIZE_INVALID_ASSIGN
// `define RANDOMIZE
// `endif
// `ifdef RANDOMIZE_REG_INIT
// `define RANDOMIZE
// `endif
// `ifdef RANDOMIZE_MEM_INIT
// `define RANDOMIZE
// `endif
// `ifndef RANDOM
// `define RANDOM $random
// `endif
// `ifdef RANDOMIZE_MEM_INIT
//   integer initvar;
// `endif
// initial begin
//   `ifdef RANDOMIZE
//     `ifdef INIT_RANDOM
//       `INIT_RANDOM
//     `endif
//     `ifndef VERILATOR
//       `ifdef RANDOMIZE_DELAY
//         #`RANDOMIZE_DELAY begin end
//       `else
//         #0.002 begin end
//       `endif
//     `endif
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_0 = {1{`RANDOM}};
//   txState = _RAND_0[1:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_1 = {1{`RANDOM}};
//   txData = _RAND_1[7:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_2 = {1{`RANDOM}};
//   value = _RAND_2[2:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_3 = {1{`RANDOM}};
//   value_1 = _RAND_3[9:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_4 = {1{`RANDOM}};
//   value_2 = _RAND_4[1:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_5 = {1{`RANDOM}};
//   rxState = _RAND_5[1:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_6 = {1{`RANDOM}};
//   value_3 = _RAND_6[9:0];
//   `endif // RANDOMIZE_REG_INIT
//   `ifdef RANDOMIZE_REG_INIT
//   _RAND_7 = {1{`RANDOM}};
//   value_4 = _RAND_7[2:0];
//   `endif // RANDOMIZE_REG_INIT
//   `endif // RANDOMIZE
// end
//   always @(posedge clock) begin
//     if (reset) begin
//       txState <= 2'h0;
//     end else begin
//       if (_T_17) begin
//         if (txSlackWrap) begin
//           txState <= 2'h1;
//         end
//       end else begin
//         if (_T_18) begin
//           if (txBaudWrap) begin
//             txState <= 2'h2;
//           end
//         end else begin
//           if (_T_19) begin
//             if (txDataWrap) begin
//               if (io_uart_txd) begin
//                 txState <= 2'h0;
//               end else begin
//                 txState <= 2'h3;
//               end
//             end else begin
//               if (txfifo_io_enq_ready) begin
//                 txState <= 2'h1;
//               end
//             end
//           end else begin
//             if (_T_24) begin
//               if (_T_26) begin
//                 txState <= 2'h0;
//               end
//             end
//           end
//         end
//       end
//     end
//     if (_T_17) begin
//       if (txSlackWrap) begin
//         txData <= 8'h0;
//       end
//     end else begin
//       if (!(_T_18)) begin
//         if (_T_19) begin
//           if (txfifo_io_enq_ready) begin
//             txData <= _T_21;
//           end
//         end
//       end
//     end
//     if (reset) begin
//       value <= 3'h0;
//     end else begin
//       if (_T_1) begin
//         value <= _T_4;
//       end
//     end
//     if (reset) begin
//       value_1 <= 10'h0;
//     end else begin
//       if (_T_6) begin
//         if (_T_7) begin
//           value_1 <= 10'h0;
//         end else begin
//           value_1 <= _T_9;
//         end
//       end
//     end
//     if (reset) begin
//       value_2 <= 2'h0;
//     end else begin
//       if (_T_13) begin
//         value_2 <= _T_16;
//       end
//     end
//     if (reset) begin
//       rxState <= 2'h0;
//     end else begin
//       if (_T_36) begin
//         if (_T_37) begin
//           rxState <= 2'h1;
//         end
//       end else begin
//         if (_T_38) begin
//           if (rxBaudWrap) begin
//             rxState <= 2'h2;
//           end
//         end else begin
//           if (_T_39) begin
//             if (_T_42) begin
//               rxState <= 2'h0;
//             end
//           end
//         end
//       end
//     end
//     if (reset) begin
//       value_3 <= 10'h0;
//     end else begin
//       if (txfifo_io_enq_ready) begin
//         if (_T_27) begin
//           value_3 <= 10'h0;
//         end else begin
//           value_3 <= _T_29;
//         end
//       end
//     end
//     if (reset) begin
//       value_4 <= 3'h0;
//     end else begin
//       if (_T_32) begin
//         value_4 <= _T_35;
//       end
//     end
//   end
// endmodule
module AXI4RAM_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200001.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@200002.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@200003.4]
  output        auto_in_aw_ready, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_aw_valid, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [30:0] auto_in_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_aw_bits_user, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_w_ready, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_w_valid, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [63:0] auto_in_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_b_ready, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_b_valid, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output [3:0]  auto_in_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output [1:0]  auto_in_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_b_bits_user, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_ar_ready, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_ar_valid, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input  [30:0] auto_in_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_ar_bits_user, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  input         auto_in_r_ready, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_r_valid, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output [3:0]  auto_in_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output [63:0] auto_in_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output [1:0]  auto_in_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200004.4]
  output        auto_in_r_bits_user // @[:example.TestHarness.RocketConfig.fir@200004.4]
);
  wire [27:0] mem_R0_addr; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_R0_en; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_4; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_5; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_6; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_R0_data_7; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [27:0] mem_W0_addr; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_en; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_4; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_5; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_6; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [7:0] mem_W0_data_7; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_4; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_5; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_6; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire  mem_W0_mask_7; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
  wire [27:0] _T; // @[SRAM.scala 54:49:example.TestHarness.RocketConfig.fir@200013.4]
  wire  _T_1; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200014.4]
  wire  _T_2; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200015.4]
  wire  _T_3; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200016.4]
  wire  _T_4; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200017.4]
  wire  _T_5; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200018.4]
  wire  _T_6; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200019.4]
  wire  _T_7; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200020.4]
  wire  _T_8; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200021.4]
  wire  _T_9; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200022.4]
  wire  _T_10; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200023.4]
  wire  _T_11; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200024.4]
  wire  _T_12; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200025.4]
  wire  _T_13; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200026.4]
  wire  _T_14; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200027.4]
  wire  _T_15; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200028.4]
  wire  _T_16; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200029.4]
  wire  _T_17; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200030.4]
  wire  _T_18; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200031.4]
  wire  _T_19; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200032.4]
  wire  _T_20; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200033.4]
  wire  _T_21; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200034.4]
  wire  _T_22; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200035.4]
  wire  _T_23; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200036.4]
  wire  _T_24; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200037.4]
  wire  _T_25; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200038.4]
  wire  _T_26; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200039.4]
  wire  _T_27; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200040.4]
  wire  _T_28; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200041.4]
  wire [6:0] _T_34; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200047.4]
  wire [13:0] _T_41; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200054.4]
  wire [6:0] _T_47; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200060.4]
  wire [13:0] _T_54; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200067.4]
  wire [27:0] _T_55; // @[SRAM.scala 55:49:example.TestHarness.RocketConfig.fir@200069.4]
  wire  _T_56; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200070.4]
  wire  _T_57; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200071.4]
  wire  _T_58; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200072.4]
  wire  _T_59; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200073.4]
  wire  _T_60; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200074.4]
  wire  _T_61; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200075.4]
  wire  _T_62; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200076.4]
  wire  _T_63; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200077.4]
  wire  _T_64; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200078.4]
  wire  _T_65; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200079.4]
  wire  _T_66; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200080.4]
  wire  _T_67; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200081.4]
  wire  _T_68; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200082.4]
  wire  _T_69; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200083.4]
  wire  _T_70; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200084.4]
  wire  _T_71; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200085.4]
  wire  _T_72; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200086.4]
  wire  _T_73; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200087.4]
  wire  _T_74; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200088.4]
  wire  _T_75; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200089.4]
  wire  _T_76; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200090.4]
  wire  _T_77; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200091.4]
  wire  _T_78; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200092.4]
  wire  _T_79; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200093.4]
  wire  _T_80; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200094.4]
  wire  _T_81; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200095.4]
  wire  _T_82; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200096.4]
  wire  _T_83; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200097.4]
  wire [6:0] _T_89; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200103.4]
  wire [13:0] _T_96; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200110.4]
  wire [6:0] _T_102; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200116.4]
  wire [13:0] _T_109; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200123.4]
  wire [31:0] _T_111; // @[Parameters.scala 125:49:example.TestHarness.RocketConfig.fir@200126.4]
  wire [31:0] _T_112; // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200127.4]
  wire [31:0] _T_113; // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200128.4]
  wire  r_sel0; // @[Parameters.scala 125:67:example.TestHarness.RocketConfig.fir@200129.4]
  wire [31:0] _T_115; // @[Parameters.scala 125:49:example.TestHarness.RocketConfig.fir@200131.4]
  wire [31:0] _T_116; // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200132.4]
  wire [31:0] _T_117; // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200133.4]
  wire  w_sel0; // @[Parameters.scala 125:67:example.TestHarness.RocketConfig.fir@200134.4]
  reg  w_full; // @[SRAM.scala 59:25:example.TestHarness.RocketConfig.fir@200135.4]
  reg [31:0] _RAND_0;
  reg [3:0] w_id; // @[SRAM.scala 60:21:example.TestHarness.RocketConfig.fir@200136.4]
  reg [31:0] _RAND_1;
  reg  w_user; // @[SRAM.scala 61:21:example.TestHarness.RocketConfig.fir@200137.4]
  reg [31:0] _RAND_2;
  reg  r_sel1; // @[SRAM.scala 62:21:example.TestHarness.RocketConfig.fir@200138.4]
  reg [31:0] _RAND_3;
  reg  w_sel1; // @[SRAM.scala 63:21:example.TestHarness.RocketConfig.fir@200139.4]
  reg [31:0] _RAND_4;
  wire  _T_118; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200140.4]
  wire  _GEN_0; // @[SRAM.scala 65:25:example.TestHarness.RocketConfig.fir@200141.4]
  wire  _T_140; // @[SRAM.scala 81:50:example.TestHarness.RocketConfig.fir@200210.4]
  wire  _T_141; // @[SRAM.scala 81:47:example.TestHarness.RocketConfig.fir@200211.4]
  wire  in_aw_ready; // @[SRAM.scala 81:32:example.TestHarness.RocketConfig.fir@200212.4]
  wire  _T_119; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200144.4]
  wire  _GEN_1; // @[SRAM.scala 66:25:example.TestHarness.RocketConfig.fir@200145.4]
  reg  r_full; // @[SRAM.scala 88:25:example.TestHarness.RocketConfig.fir@200222.4]
  reg [31:0] _RAND_5;
  reg [3:0] r_id; // @[SRAM.scala 89:21:example.TestHarness.RocketConfig.fir@200223.4]
  reg [31:0] _RAND_6;
  reg  r_user; // @[SRAM.scala 90:21:example.TestHarness.RocketConfig.fir@200224.4]
  reg [31:0] _RAND_7;
  wire  _T_147; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200225.4]
  wire  _GEN_40; // @[SRAM.scala 92:25:example.TestHarness.RocketConfig.fir@200226.4]
  wire  _T_156; // @[SRAM.scala 106:34:example.TestHarness.RocketConfig.fir@200264.4]
  wire  in_ar_ready; // @[SRAM.scala 106:31:example.TestHarness.RocketConfig.fir@200265.4]
  wire  _T_148; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200229.4]
  wire  _GEN_41; // @[SRAM.scala 93:25:example.TestHarness.RocketConfig.fir@200230.4]
  reg  _T_154; // @[package.scala 75:91:example.TestHarness.RocketConfig.fir@200249.4]
  reg [31:0] _RAND_8;
  reg [7:0] _T_155_0; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_9;
  reg [7:0] _T_155_1; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_10;
  reg [7:0] _T_155_2; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_11;
  reg [7:0] _T_155_3; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_12;
  reg [7:0] _T_155_4; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_13;
  reg [7:0] _T_155_5; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_14;
  reg [7:0] _T_155_6; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_15;
  reg [7:0] _T_155_7; // @[Reg.scala 15:16:example.TestHarness.RocketConfig.fir@200251.4]
  reg [31:0] _RAND_16;
  wire [7:0] _GEN_49; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_50; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_51; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_52; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_53; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_54; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_55; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [7:0] _GEN_56; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  wire [31:0] _T_162; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200273.4]
  wire [31:0] _T_165; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200276.4]
  mem_inTestHarness mem ( // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4]
    .R0_addr(mem_R0_addr),
    .R0_en(mem_R0_en),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .R0_data_4(mem_R0_data_4),
    .R0_data_5(mem_R0_data_5),
    .R0_data_6(mem_R0_data_6),
    .R0_data_7(mem_R0_data_7),
    .W0_addr(mem_W0_addr),
    .W0_en(mem_W0_en),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_data_4(mem_W0_data_4),
    .W0_data_5(mem_W0_data_5),
    .W0_data_6(mem_W0_data_6),
    .W0_data_7(mem_W0_data_7),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3),
    .W0_mask_4(mem_W0_mask_4),
    .W0_mask_5(mem_W0_mask_5),
    .W0_mask_6(mem_W0_mask_6),
    .W0_mask_7(mem_W0_mask_7)
  );
  assign _T = auto_in_ar_bits_addr[30:3]; // @[SRAM.scala 54:49:example.TestHarness.RocketConfig.fir@200013.4]
  assign _T_1 = _T[0]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200014.4]
  assign _T_2 = _T[1]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200015.4]
  assign _T_3 = _T[2]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200016.4]
  assign _T_4 = _T[3]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200017.4]
  assign _T_5 = _T[4]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200018.4]
  assign _T_6 = _T[5]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200019.4]
  assign _T_7 = _T[6]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200020.4]
  assign _T_8 = _T[7]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200021.4]
  assign _T_9 = _T[8]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200022.4]
  assign _T_10 = _T[9]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200023.4]
  assign _T_11 = _T[10]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200024.4]
  assign _T_12 = _T[11]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200025.4]
  assign _T_13 = _T[12]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200026.4]
  assign _T_14 = _T[13]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200027.4]
  assign _T_15 = _T[14]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200028.4]
  assign _T_16 = _T[15]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200029.4]
  assign _T_17 = _T[16]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200030.4]
  assign _T_18 = _T[17]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200031.4]
  assign _T_19 = _T[18]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200032.4]
  assign _T_20 = _T[19]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200033.4]
  assign _T_21 = _T[20]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200034.4]
  assign _T_22 = _T[21]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200035.4]
  assign _T_23 = _T[22]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200036.4]
  assign _T_24 = _T[23]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200037.4]
  assign _T_25 = _T[24]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200038.4]
  assign _T_26 = _T[25]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200039.4]
  assign _T_27 = _T[26]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200040.4]
  assign _T_28 = _T[27]; // @[SRAM.scala 54:73:example.TestHarness.RocketConfig.fir@200041.4]
  assign _T_34 = {_T_7,_T_6,_T_5,_T_4,_T_3,_T_2,_T_1}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200047.4]
  assign _T_41 = {_T_14,_T_13,_T_12,_T_11,_T_10,_T_9,_T_8,_T_34}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200054.4]
  assign _T_47 = {_T_21,_T_20,_T_19,_T_18,_T_17,_T_16,_T_15}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200060.4]
  assign _T_54 = {_T_28,_T_27,_T_26,_T_25,_T_24,_T_23,_T_22,_T_47}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200067.4]
  assign _T_55 = auto_in_aw_bits_addr[30:3]; // @[SRAM.scala 55:49:example.TestHarness.RocketConfig.fir@200069.4]
  assign _T_56 = _T_55[0]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200070.4]
  assign _T_57 = _T_55[1]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200071.4]
  assign _T_58 = _T_55[2]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200072.4]
  assign _T_59 = _T_55[3]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200073.4]
  assign _T_60 = _T_55[4]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200074.4]
  assign _T_61 = _T_55[5]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200075.4]
  assign _T_62 = _T_55[6]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200076.4]
  assign _T_63 = _T_55[7]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200077.4]
  assign _T_64 = _T_55[8]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200078.4]
  assign _T_65 = _T_55[9]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200079.4]
  assign _T_66 = _T_55[10]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200080.4]
  assign _T_67 = _T_55[11]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200081.4]
  assign _T_68 = _T_55[12]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200082.4]
  assign _T_69 = _T_55[13]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200083.4]
  assign _T_70 = _T_55[14]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200084.4]
  assign _T_71 = _T_55[15]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200085.4]
  assign _T_72 = _T_55[16]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200086.4]
  assign _T_73 = _T_55[17]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200087.4]
  assign _T_74 = _T_55[18]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200088.4]
  assign _T_75 = _T_55[19]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200089.4]
  assign _T_76 = _T_55[20]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200090.4]
  assign _T_77 = _T_55[21]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200091.4]
  assign _T_78 = _T_55[22]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200092.4]
  assign _T_79 = _T_55[23]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200093.4]
  assign _T_80 = _T_55[24]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200094.4]
  assign _T_81 = _T_55[25]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200095.4]
  assign _T_82 = _T_55[26]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200096.4]
  assign _T_83 = _T_55[27]; // @[SRAM.scala 55:73:example.TestHarness.RocketConfig.fir@200097.4]
  assign _T_89 = {_T_62,_T_61,_T_60,_T_59,_T_58,_T_57,_T_56}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200103.4]
  assign _T_96 = {_T_69,_T_68,_T_67,_T_66,_T_65,_T_64,_T_63,_T_89}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200110.4]
  assign _T_102 = {_T_76,_T_75,_T_74,_T_73,_T_72,_T_71,_T_70}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200116.4]
  assign _T_109 = {_T_83,_T_82,_T_81,_T_80,_T_79,_T_78,_T_77,_T_102}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200123.4]
  assign _T_111 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 125:49:example.TestHarness.RocketConfig.fir@200126.4]
  assign _T_112 = $signed(_T_111) & $signed(-32'sh80000000); // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200127.4]
  assign _T_113 = $signed(_T_112); // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200128.4]
  assign r_sel0 = $signed(_T_113) == $signed(32'sh0); // @[Parameters.scala 125:67:example.TestHarness.RocketConfig.fir@200129.4]
  assign _T_115 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 125:49:example.TestHarness.RocketConfig.fir@200131.4]
  assign _T_116 = $signed(_T_115) & $signed(-32'sh80000000); // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200132.4]
  assign _T_117 = $signed(_T_116); // @[Parameters.scala 125:52:example.TestHarness.RocketConfig.fir@200133.4]
  assign w_sel0 = $signed(_T_117) == $signed(32'sh0); // @[Parameters.scala 125:67:example.TestHarness.RocketConfig.fir@200134.4]
  assign _T_118 = auto_in_b_ready & w_full; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200140.4]
  assign _GEN_0 = _T_118 ? 1'h0 : w_full; // @[SRAM.scala 65:25:example.TestHarness.RocketConfig.fir@200141.4]
  assign _T_140 = w_full == 1'h0; // @[SRAM.scala 81:50:example.TestHarness.RocketConfig.fir@200210.4]
  assign _T_141 = auto_in_b_ready | _T_140; // @[SRAM.scala 81:47:example.TestHarness.RocketConfig.fir@200211.4]
  assign in_aw_ready = auto_in_w_valid & _T_141; // @[SRAM.scala 81:32:example.TestHarness.RocketConfig.fir@200212.4]
  assign _T_119 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200144.4]
  assign _GEN_1 = _T_119 | _GEN_0; // @[SRAM.scala 66:25:example.TestHarness.RocketConfig.fir@200145.4]
  assign _T_147 = auto_in_r_ready & r_full; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200225.4]
  assign _GEN_40 = _T_147 ? 1'h0 : r_full; // @[SRAM.scala 92:25:example.TestHarness.RocketConfig.fir@200226.4]
  assign _T_156 = r_full == 1'h0; // @[SRAM.scala 106:34:example.TestHarness.RocketConfig.fir@200264.4]
  assign in_ar_ready = auto_in_r_ready | _T_156; // @[SRAM.scala 106:31:example.TestHarness.RocketConfig.fir@200265.4]
  assign _T_148 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200229.4]
  assign _GEN_41 = _T_148 | _GEN_40; // @[SRAM.scala 93:25:example.TestHarness.RocketConfig.fir@200230.4]
  assign _GEN_49 = _T_154 ? mem_R0_data_0 : _T_155_0; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_50 = _T_154 ? mem_R0_data_1 : _T_155_1; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_51 = _T_154 ? mem_R0_data_2 : _T_155_2; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_52 = _T_154 ? mem_R0_data_3 : _T_155_3; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_53 = _T_154 ? mem_R0_data_4 : _T_155_4; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_54 = _T_154 ? mem_R0_data_5 : _T_155_5; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_55 = _T_154 ? mem_R0_data_6 : _T_155_6; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _GEN_56 = _T_154 ? mem_R0_data_7 : _T_155_7; // @[Reg.scala 16:19:example.TestHarness.RocketConfig.fir@200252.4]
  assign _T_162 = {_GEN_52,_GEN_51,_GEN_50,_GEN_49}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200273.4]
  assign _T_165 = {_GEN_56,_GEN_55,_GEN_54,_GEN_53}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@200276.4]
  assign auto_in_aw_ready = auto_in_w_valid & _T_141; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_w_ready = auto_in_aw_valid & _T_141; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_b_valid = w_full; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_b_bits_id = w_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_b_bits_resp = w_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_b_bits_user = w_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_ar_ready = auto_in_r_ready | _T_156; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_r_valid = r_full; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_r_bits_id = r_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_r_bits_data = {_T_165,_T_162}; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_r_bits_resp = r_sel1 ? 2'h0 : 2'h3; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign auto_in_r_bits_user = r_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200011.4]
  assign mem_R0_addr = {_T_54,_T_41}; // @[package.scala 75:58:example.TestHarness.RocketConfig.fir@200247.6]
  assign mem_R0_en = in_ar_ready & auto_in_ar_valid; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4 package.scala 75:58:example.TestHarness.RocketConfig.fir@200246.6]
  assign mem_R0_clk = clock; // @[package.scala 75:58:example.TestHarness.RocketConfig.fir@200247.6]
  assign mem_W0_addr = {_T_109,_T_96}; // @[:example.TestHarness.RocketConfig.fir@200183.6]
  assign mem_W0_en = _T_119 & w_sel0; // @[DescribedSRAM.scala 25:26:example.TestHarness.RocketConfig.fir@200012.4 :example.TestHarness.RocketConfig.fir@200183.6]
  assign mem_W0_clk = clock; // @[:example.TestHarness.RocketConfig.fir@200183.6]
  assign mem_W0_data_0 = auto_in_w_bits_data[7:0]; // @[:example.TestHarness.RocketConfig.fir@200185.8]
  assign mem_W0_data_1 = auto_in_w_bits_data[15:8]; // @[:example.TestHarness.RocketConfig.fir@200188.8]
  assign mem_W0_data_2 = auto_in_w_bits_data[23:16]; // @[:example.TestHarness.RocketConfig.fir@200191.8]
  assign mem_W0_data_3 = auto_in_w_bits_data[31:24]; // @[:example.TestHarness.RocketConfig.fir@200194.8]
  assign mem_W0_data_4 = auto_in_w_bits_data[39:32]; // @[:example.TestHarness.RocketConfig.fir@200197.8]
  assign mem_W0_data_5 = auto_in_w_bits_data[47:40]; // @[:example.TestHarness.RocketConfig.fir@200200.8]
  assign mem_W0_data_6 = auto_in_w_bits_data[55:48]; // @[:example.TestHarness.RocketConfig.fir@200203.8]
  assign mem_W0_data_7 = auto_in_w_bits_data[63:56]; // @[:example.TestHarness.RocketConfig.fir@200206.8]
  assign mem_W0_mask_0 = auto_in_w_bits_strb[0]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200185.8]
  assign mem_W0_mask_1 = auto_in_w_bits_strb[1]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200188.8]
  assign mem_W0_mask_2 = auto_in_w_bits_strb[2]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200191.8]
  assign mem_W0_mask_3 = auto_in_w_bits_strb[3]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200194.8]
  assign mem_W0_mask_4 = auto_in_w_bits_strb[4]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200197.8]
  assign mem_W0_mask_5 = auto_in_w_bits_strb[5]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200200.8]
  assign mem_W0_mask_6 = auto_in_w_bits_strb[6]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200203.8]
  assign mem_W0_mask_7 = auto_in_w_bits_strb[7]; // @[:example.TestHarness.RocketConfig.fir@200183.6 :example.TestHarness.RocketConfig.fir@200206.8]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  w_full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  w_id = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  w_user = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  r_sel1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  w_sel1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  r_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  r_id = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  r_user = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_154 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_155_0 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_155_1 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_155_2 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_155_3 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_155_4 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_155_5 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_155_6 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_155_7 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      w_full <= 1'h0;
    end else begin
      w_full <= _GEN_1;
    end
    if (_T_119) begin
      w_id <= auto_in_aw_bits_id;
    end
    if (_T_119) begin
      w_user <= auto_in_aw_bits_user;
    end
    if (_T_148) begin
      r_sel1 <= r_sel0;
    end
    if (_T_119) begin
      w_sel1 <= w_sel0;
    end
    if (reset) begin
      r_full <= 1'h0;
    end else begin
      r_full <= _GEN_41;
    end
    if (_T_148) begin
      r_id <= auto_in_ar_bits_id;
    end
    if (_T_148) begin
      r_user <= auto_in_ar_bits_user;
    end
    _T_154 <= in_ar_ready & auto_in_ar_valid;
    if (_T_154) begin
      _T_155_0 <= mem_R0_data_0;
    end
    if (_T_154) begin
      _T_155_1 <= mem_R0_data_1;
    end
    if (_T_154) begin
      _T_155_2 <= mem_R0_data_2;
    end
    if (_T_154) begin
      _T_155_3 <= mem_R0_data_3;
    end
    if (_T_154) begin
      _T_155_4 <= mem_R0_data_4;
    end
    if (_T_154) begin
      _T_155_5 <= mem_R0_data_5;
    end
    if (_T_154) begin
      _T_155_6 <= mem_R0_data_6;
    end
    if (_T_154) begin
      _T_155_7 <= mem_R0_data_7;
    end
  end
endmodule
module AXI4Xbar_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200412.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@200413.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@200414.4]
  output        auto_in_aw_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_aw_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [30:0] auto_in_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_in_w_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_w_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [63:0] auto_in_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_w_bits_last, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_b_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_in_b_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [3:0]  auto_in_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [1:0]  auto_in_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_in_ar_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_ar_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [30:0] auto_in_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_in_r_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_in_r_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [3:0]  auto_in_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [63:0] auto_in_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [1:0]  auto_in_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_in_r_bits_last, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_aw_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_aw_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [3:0]  auto_out_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [30:0] auto_out_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [7:0]  auto_out_aw_bits_len, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [2:0]  auto_out_aw_bits_size, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_w_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_w_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [63:0] auto_out_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [7:0]  auto_out_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_w_bits_last, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_b_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_b_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [3:0]  auto_out_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_ar_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_ar_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [3:0]  auto_out_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [30:0] auto_out_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [7:0]  auto_out_ar_bits_len, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [2:0]  auto_out_ar_bits_size, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  output        auto_out_r_ready, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_r_valid, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [3:0]  auto_out_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [63:0] auto_out_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200415.4]
  input         auto_out_r_bits_last // @[:example.TestHarness.RocketConfig.fir@200415.4]
);
  wire  _T_44; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200521.4]
  wire  _T_50; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200531.4]
  wire  _T_52; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200533.4]
  wire  _T_53; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200534.4]
  wire  _T_65; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200567.4]
  wire  _T_71; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200577.4]
  wire  _T_73; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200579.4]
  wire  _T_74; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200580.4]
  wire  _T_88; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200617.4]
  wire  _T_94; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200627.4]
  wire  _T_96; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200629.4]
  wire  _T_97; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200630.4]
  wire  _T_109; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200662.4]
  wire  _T_115; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200672.4]
  wire  _T_117; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200674.4]
  wire  _T_118; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200675.4]
  assign _T_44 = auto_in_aw_valid == 1'h0; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200521.4]
  assign _T_50 = _T_44 | auto_in_aw_valid; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200531.4]
  assign _T_52 = _T_50 | reset; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200533.4]
  assign _T_53 = _T_52 == 1'h0; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200534.4]
  assign _T_65 = auto_in_ar_valid == 1'h0; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200567.4]
  assign _T_71 = _T_65 | auto_in_ar_valid; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200577.4]
  assign _T_73 = _T_71 | reset; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200579.4]
  assign _T_74 = _T_73 == 1'h0; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200580.4]
  assign _T_88 = auto_out_r_valid == 1'h0; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200617.4]
  assign _T_94 = _T_88 | auto_out_r_valid; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200627.4]
  assign _T_96 = _T_94 | reset; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200629.4]
  assign _T_97 = _T_96 == 1'h0; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200630.4]
  assign _T_109 = auto_out_b_valid == 1'h0; // @[Xbar.scala 256:60:example.TestHarness.RocketConfig.fir@200662.4]
  assign _T_115 = _T_109 | auto_out_b_valid; // @[Xbar.scala 258:23:example.TestHarness.RocketConfig.fir@200672.4]
  assign _T_117 = _T_115 | reset; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200674.4]
  assign _T_118 = _T_117 == 1'h0; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200675.4]
  assign auto_in_aw_ready = auto_out_aw_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@200425.4]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@200424.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_53) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:258 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200536.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_53) begin
          $fatal; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200537.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_74) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:258 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200582.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_74) begin
          $fatal; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200583.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_97) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:258 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200632.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_97) begin
          $fatal; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200633.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_118) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:258 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200677.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_118) begin
          $fatal; // @[Xbar.scala 258:12:example.TestHarness.RocketConfig.fir@200678.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Queue_38_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200698.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@200699.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@200700.4]
  output        io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  input         io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  input  [3:0]  io_enq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  input  [30:0] io_enq_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  input         io_enq_bits_user, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  input         io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  output        io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  output [3:0]  io_deq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  output [30:0] io_deq_bits_addr, // @[:example.TestHarness.RocketConfig.fir@200701.4]
  output        io_deq_bits_user // @[:example.TestHarness.RocketConfig.fir@200701.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg [30:0] _T_addr [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg [31:0] _RAND_1;
  wire [30:0] _T_addr__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_addr__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire [30:0] _T_addr__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_addr__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_addr__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_addr__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg  _T_user [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg [31:0] _RAND_2;
  wire  _T_user__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  reg  value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200704.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200705.4]
  reg [31:0] _RAND_4;
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@200706.4]
  reg [31:0] _RAND_5;
  wire  _T_2; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200707.4]
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200708.4]
  wire  _T_4; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200709.4]
  wire  _T_5; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200710.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200711.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200714.4]
  wire  _T_12; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200731.6]
  wire  _T_14; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200737.6]
  wire  _T_15; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200740.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_addr__T_18_addr = value_1;
  assign _T_addr__T_18_data = _T_addr[_T_addr__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  assign _T_addr__T_10_data = io_enq_bits_addr;
  assign _T_addr__T_10_addr = value;
  assign _T_addr__T_10_mask = 1'h1;
  assign _T_addr__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200707.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200708.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200709.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200710.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200711.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200714.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200731.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200737.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200740.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@200747.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@200745.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200758.4]
  assign io_deq_bits_addr = _T_addr__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200757.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200749.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_addr[initvar] = _RAND_1[30:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
    end
    if(_T_addr__T_10_en & _T_addr__T_10_mask) begin
      _T_addr[_T_addr__T_10_addr] <= _T_addr__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200703.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_39_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200766.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@200767.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@200768.4]
  output        io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  input         io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  input  [63:0] io_enq_bits_data, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  input  [7:0]  io_enq_bits_strb, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  input         io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  output        io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  output [63:0] io_deq_bits_data, // @[:example.TestHarness.RocketConfig.fir@200769.4]
  output [7:0]  io_deq_bits_strb // @[:example.TestHarness.RocketConfig.fir@200769.4]
);
  reg [63:0] _T_data [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_data__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  reg [7:0] _T_strb [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  reg [31:0] _RAND_1;
  wire [7:0] _T_strb__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_strb__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire [7:0] _T_strb__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_strb__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_strb__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  wire  _T_strb__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  reg  value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200772.4]
  reg [31:0] _RAND_2;
  reg  value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200773.4]
  reg [31:0] _RAND_3;
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@200774.4]
  reg [31:0] _RAND_4;
  wire  _T_2; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200775.4]
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200776.4]
  wire  _T_4; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200777.4]
  wire  _T_5; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200778.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200779.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200782.4]
  wire  _T_12; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200792.6]
  wire  _T_14; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200798.6]
  wire  _T_15; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200801.4]
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_strb__T_18_addr = value_1;
  assign _T_strb__T_18_data = _T_strb[_T_strb__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
  assign _T_strb__T_10_data = io_enq_bits_strb;
  assign _T_strb__T_10_addr = value;
  assign _T_strb__T_10_mask = 1'h1;
  assign _T_strb__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200775.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200776.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200777.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200778.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200779.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200782.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200792.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200798.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200801.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@200808.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@200806.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200812.4]
  assign io_deq_bits_strb = _T_strb__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200811.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_strb[initvar] = _RAND_1[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
    end
    if(_T_strb__T_10_en & _T_strb__T_10_mask) begin
      _T_strb[_T_strb__T_10_addr] <= _T_strb__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200771.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_40_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200820.2]
  input        clock, // @[:example.TestHarness.RocketConfig.fir@200821.4]
  input        reset, // @[:example.TestHarness.RocketConfig.fir@200822.4]
  output       io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  input        io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  input  [3:0] io_enq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  input  [1:0] io_enq_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  input        io_enq_bits_user, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  input        io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  output       io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  output [3:0] io_deq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  output [1:0] io_deq_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200823.4]
  output       io_deq_bits_user // @[:example.TestHarness.RocketConfig.fir@200823.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg [1:0] _T_resp [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg [31:0] _RAND_1;
  wire [1:0] _T_resp__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_resp__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire [1:0] _T_resp__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_resp__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_resp__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_resp__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg  _T_user [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg [31:0] _RAND_2;
  wire  _T_user__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  reg  value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200826.4]
  reg [31:0] _RAND_3;
  reg  value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200827.4]
  reg [31:0] _RAND_4;
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@200828.4]
  reg [31:0] _RAND_5;
  wire  _T_2; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200829.4]
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200830.4]
  wire  _T_4; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200831.4]
  wire  _T_5; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200832.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200833.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200836.4]
  wire  _T_12; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200846.6]
  wire  _T_14; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200852.6]
  wire  _T_15; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200855.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_resp__T_18_addr = value_1;
  assign _T_resp__T_18_data = _T_resp[_T_resp__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  assign _T_resp__T_10_data = io_enq_bits_resp;
  assign _T_resp__T_10_addr = value;
  assign _T_resp__T_10_mask = 1'h1;
  assign _T_resp__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200829.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200830.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200831.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200832.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200833.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200836.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200846.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200852.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200855.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@200862.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@200860.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200866.4]
  assign io_deq_bits_resp = _T_resp__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200865.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200864.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_resp[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
    end
    if(_T_resp__T_10_en & _T_resp__T_10_mask) begin
      _T_resp[_T_resp__T_10_addr] <= _T_resp__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200825.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module Queue_42_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@200942.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@200943.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@200944.4]
  output        io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input         io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input  [3:0]  io_enq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input  [63:0] io_enq_bits_data, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input  [1:0]  io_enq_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input         io_enq_bits_user, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  input         io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output        io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output [3:0]  io_deq_bits_id, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output [63:0] io_deq_bits_data, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output [1:0]  io_deq_bits_resp, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output        io_deq_bits_user, // @[:example.TestHarness.RocketConfig.fir@200945.4]
  output        io_deq_bits_last // @[:example.TestHarness.RocketConfig.fir@200945.4]
);
  reg [3:0] _T_id [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_id__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [63:0] _T_data [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [63:0] _RAND_1;
  wire [63:0] _T_data__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_data__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire [63:0] _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_data__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_data__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_data__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [1:0] _T_resp [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [31:0] _RAND_2;
  wire [1:0] _T_resp__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_resp__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire [1:0] _T_resp__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_resp__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_resp__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_resp__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg  _T_user [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [31:0] _RAND_3;
  wire  _T_user__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_user__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_user__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_user__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_user__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg  _T_last [0:1]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg [31:0] _RAND_4;
  wire  _T_last__T_18_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_last__T_18_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_last__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_last__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_last__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  wire  _T_last__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  reg  value; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200948.4]
  reg [31:0] _RAND_5;
  reg  value_1; // @[Counter.scala 29:33:example.TestHarness.RocketConfig.fir@200949.4]
  reg [31:0] _RAND_6;
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@200950.4]
  reg [31:0] _RAND_7;
  wire  _T_2; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200951.4]
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200952.4]
  wire  _T_4; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200953.4]
  wire  _T_5; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200954.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200955.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200958.4]
  wire  _T_12; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200970.6]
  wire  _T_14; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200976.6]
  wire  _T_15; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200979.4]
  assign _T_id__T_18_addr = value_1;
  assign _T_id__T_18_data = _T_id[_T_id__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = value;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_data__T_18_addr = value_1;
  assign _T_data__T_18_data = _T_data[_T_data__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  assign _T_data__T_10_data = io_enq_bits_data;
  assign _T_data__T_10_addr = value;
  assign _T_data__T_10_mask = 1'h1;
  assign _T_data__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_resp__T_18_addr = value_1;
  assign _T_resp__T_18_data = _T_resp[_T_resp__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  assign _T_resp__T_10_data = io_enq_bits_resp;
  assign _T_resp__T_10_addr = value;
  assign _T_resp__T_10_mask = 1'h1;
  assign _T_resp__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_user__T_18_addr = value_1;
  assign _T_user__T_18_data = _T_user[_T_user__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  assign _T_user__T_10_data = io_enq_bits_user;
  assign _T_user__T_10_addr = value;
  assign _T_user__T_10_mask = 1'h1;
  assign _T_user__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_last__T_18_addr = value_1;
  assign _T_last__T_18_data = _T_last[_T_last__T_18_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
  assign _T_last__T_10_data = 1'h1;
  assign _T_last__T_10_addr = value;
  assign _T_last__T_10_mask = 1'h1;
  assign _T_last__T_10_en = io_enq_ready & io_enq_valid;
  assign _T_2 = value == value_1; // @[Decoupled.scala 214:41:example.TestHarness.RocketConfig.fir@200951.4]
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@200952.4]
  assign _T_4 = _T_2 & _T_3; // @[Decoupled.scala 215:33:example.TestHarness.RocketConfig.fir@200953.4]
  assign _T_5 = _T_2 & _T_1; // @[Decoupled.scala 216:32:example.TestHarness.RocketConfig.fir@200954.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200955.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@200958.4]
  assign _T_12 = value + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200970.6]
  assign _T_14 = value_1 + 1'h1; // @[Counter.scala 38:22:example.TestHarness.RocketConfig.fir@200976.6]
  assign _T_15 = _T_6 != _T_8; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@200979.4]
  assign io_enq_ready = _T_5 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@200986.4]
  assign io_deq_valid = _T_4 == 1'h0; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@200984.4]
  assign io_deq_bits_id = _T_id__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200992.4]
  assign io_deq_bits_data = _T_data__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200991.4]
  assign io_deq_bits_resp = _T_resp__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200990.4]
  assign io_deq_bits_user = _T_user__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200989.4]
  assign io_deq_bits_last = _T_last__T_18_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@200988.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_data[initvar] = _RAND_1[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_resp[initvar] = _RAND_2[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_user[initvar] = _RAND_3[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_last[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  value = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  value_1 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
    end
    if(_T_data__T_10_en & _T_data__T_10_mask) begin
      _T_data[_T_data__T_10_addr] <= _T_data__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
    end
    if(_T_resp__T_10_en & _T_resp__T_10_mask) begin
      _T_resp[_T_resp__T_10_addr] <= _T_resp__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
    end
    if(_T_user__T_10_en & _T_user__T_10_mask) begin
      _T_user[_T_user__T_10_addr] <= _T_user__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
    end
    if(_T_last__T_10_en & _T_last__T_10_mask) begin
      _T_last[_T_last__T_10_addr] <= _T_last__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@200947.4]
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      if (_T_6) begin
        value <= _T_12;
      end
    end
    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (_T_8) begin
        value_1 <= _T_14;
      end
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_15) begin
        _T_1 <= _T_6;
      end
    end
  end
endmodule
module AXI4Buffer_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@201000.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@201001.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@201002.4]
  output        auto_in_aw_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_aw_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [30:0] auto_in_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_aw_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_w_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_w_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [63:0] auto_in_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_b_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_b_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [3:0]  auto_in_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [1:0]  auto_in_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_b_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_ar_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_ar_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [30:0] auto_in_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_ar_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_in_r_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_r_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [3:0]  auto_in_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [63:0] auto_in_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [1:0]  auto_in_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_r_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_in_r_bits_last, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_aw_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_aw_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [3:0]  auto_out_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [30:0] auto_out_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_aw_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_w_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_w_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [63:0] auto_out_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [7:0]  auto_out_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_b_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_b_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [3:0]  auto_out_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_b_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_ar_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_ar_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [3:0]  auto_out_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output [30:0] auto_out_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_ar_bits_user, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  output        auto_out_r_ready, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_r_valid, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [3:0]  auto_out_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [63:0] auto_out_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201003.4]
  input         auto_out_r_bits_user // @[:example.TestHarness.RocketConfig.fir@201003.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire [30:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_enq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire [30:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_io_deq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire [63:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire [7:0] Queue_1_io_enq_bits_strb; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire [63:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire [7:0] Queue_1_io_deq_bits_strb; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire [3:0] Queue_2_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire [1:0] Queue_2_io_enq_bits_resp; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_enq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire [3:0] Queue_2_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire [1:0] Queue_2_io_deq_bits_resp; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_2_io_deq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire [3:0] Queue_3_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire [30:0] Queue_3_io_enq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_enq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire [3:0] Queue_3_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire [30:0] Queue_3_io_deq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_3_io_deq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [3:0] Queue_4_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [63:0] Queue_4_io_enq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [1:0] Queue_4_io_enq_bits_resp; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_enq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [3:0] Queue_4_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [63:0] Queue_4_io_deq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire [1:0] Queue_4_io_deq_bits_resp; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_deq_bits_user; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  wire  Queue_4_io_deq_bits_last; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
  Queue_38_inTestHarness Queue ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201014.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_user(Queue_io_enq_bits_user),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_user(Queue_io_deq_bits_user)
  );
  Queue_39_inTestHarness Queue_1 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201043.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_strb(Queue_1_io_enq_bits_strb),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_strb(Queue_1_io_deq_bits_strb)
  );
  Queue_40_inTestHarness Queue_2 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201058.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_id(Queue_2_io_enq_bits_id),
    .io_enq_bits_resp(Queue_2_io_enq_bits_resp),
    .io_enq_bits_user(Queue_2_io_enq_bits_user),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_id(Queue_2_io_deq_bits_id),
    .io_deq_bits_resp(Queue_2_io_deq_bits_resp),
    .io_deq_bits_user(Queue_2_io_deq_bits_user)
  );
  Queue_38_inTestHarness Queue_3 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201073.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_id(Queue_3_io_enq_bits_id),
    .io_enq_bits_addr(Queue_3_io_enq_bits_addr),
    .io_enq_bits_user(Queue_3_io_enq_bits_user),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_id(Queue_3_io_deq_bits_id),
    .io_deq_bits_addr(Queue_3_io_deq_bits_addr),
    .io_deq_bits_user(Queue_3_io_deq_bits_user)
  );
  Queue_42_inTestHarness Queue_4 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201102.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_id(Queue_4_io_enq_bits_id),
    .io_enq_bits_data(Queue_4_io_enq_bits_data),
    .io_enq_bits_resp(Queue_4_io_enq_bits_resp),
    .io_enq_bits_user(Queue_4_io_enq_bits_user),
    .io_deq_ready(Queue_4_io_deq_ready),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_id(Queue_4_io_deq_bits_id),
    .io_deq_bits_data(Queue_4_io_deq_bits_data),
    .io_deq_bits_resp(Queue_4_io_deq_bits_resp),
    .io_deq_bits_user(Queue_4_io_deq_bits_user),
    .io_deq_bits_last(Queue_4_io_deq_bits_last)
  );
  assign auto_in_aw_ready = Queue_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_w_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_b_bits_id = Queue_2_io_deq_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_b_bits_resp = Queue_2_io_deq_bits_resp; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_b_bits_user = Queue_2_io_deq_bits_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_ar_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_bits_id = Queue_4_io_deq_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_bits_data = Queue_4_io_deq_bits_data; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_bits_resp = Queue_4_io_deq_bits_resp; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_bits_user = Queue_4_io_deq_bits_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_in_r_bits_last = Queue_4_io_deq_bits_last; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201013.4]
  assign auto_out_aw_valid = Queue_io_deq_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_aw_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_aw_bits_addr = Queue_io_deq_bits_addr; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_aw_bits_user = Queue_io_deq_bits_user; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_w_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_w_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_w_bits_strb = Queue_1_io_deq_bits_strb; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_ar_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_ar_bits_id = Queue_3_io_deq_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_ar_bits_addr = Queue_3_io_deq_bits_addr; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_ar_bits_user = Queue_3_io_deq_bits_user; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign auto_out_r_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201012.4]
  assign Queue_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201015.4]
  assign Queue_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201016.4]
  assign Queue_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201017.4]
  assign Queue_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201027.4]
  assign Queue_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201026.4]
  assign Queue_io_enq_bits_user = auto_in_aw_bits_user; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201018.4]
  assign Queue_io_deq_ready = auto_out_aw_ready; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201041.4]
  assign Queue_1_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201044.4]
  assign Queue_1_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201045.4]
  assign Queue_1_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201046.4]
  assign Queue_1_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201049.4]
  assign Queue_1_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201048.4]
  assign Queue_1_io_deq_ready = auto_out_w_ready; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201056.4]
  assign Queue_2_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201059.4]
  assign Queue_2_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201060.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201061.4]
  assign Queue_2_io_enq_bits_id = auto_out_b_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201064.4]
  assign Queue_2_io_enq_bits_resp = auto_out_b_bits_resp; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201063.4]
  assign Queue_2_io_enq_bits_user = auto_out_b_bits_user; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201062.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201071.4]
  assign Queue_3_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201074.4]
  assign Queue_3_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201075.4]
  assign Queue_3_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201076.4]
  assign Queue_3_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201086.4]
  assign Queue_3_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201085.4]
  assign Queue_3_io_enq_bits_user = auto_in_ar_bits_user; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201077.4]
  assign Queue_3_io_deq_ready = auto_out_ar_ready; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201100.4]
  assign Queue_4_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201103.4]
  assign Queue_4_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201104.4]
  assign Queue_4_io_enq_valid = auto_out_r_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201105.4]
  assign Queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201110.4]
  assign Queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201109.4]
  assign Queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201108.4]
  assign Queue_4_io_enq_bits_user = auto_out_r_bits_user; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201107.4]
  assign Queue_4_io_deq_ready = auto_in_r_ready; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201119.4]
endmodule
module Queue_43_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@201122.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@201123.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@201124.4]
  output        io_enq_ready, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input         io_enq_valid, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input  [3:0]  io_enq_bits_id, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input  [30:0] io_enq_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input  [7:0]  io_enq_bits_len, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input  [2:0]  io_enq_bits_size, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input  [1:0]  io_enq_bits_burst, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  input         io_deq_ready, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output        io_deq_valid, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output [3:0]  io_deq_bits_id, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output [30:0] io_deq_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output [7:0]  io_deq_bits_len, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output [2:0]  io_deq_bits_size, // @[:example.TestHarness.RocketConfig.fir@201125.4]
  output [1:0]  io_deq_bits_burst // @[:example.TestHarness.RocketConfig.fir@201125.4]
);
  reg [3:0] _T_id [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [31:0] _RAND_0;
  wire [3:0] _T_id__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_id__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire [3:0] _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_id__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_id__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_id__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [30:0] _T_addr [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [31:0] _RAND_1;
  wire [30:0] _T_addr__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_addr__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire [30:0] _T_addr__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_addr__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_addr__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_addr__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [7:0] _T_len [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_len__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_len__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire [7:0] _T_len__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_len__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_len__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_len__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [2:0] _T_size [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [31:0] _RAND_3;
  wire [2:0] _T_size__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_size__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire [2:0] _T_size__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_size__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_size__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_size__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [1:0] _T_burst [0:0]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg [31:0] _RAND_4;
  wire [1:0] _T_burst__T_14_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_burst__T_14_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire [1:0] _T_burst__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_burst__T_10_addr; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_burst__T_10_mask; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  wire  _T_burst__T_10_en; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  reg  _T_1; // @[Decoupled.scala 212:35:example.TestHarness.RocketConfig.fir@201128.4]
  reg [31:0] _RAND_5;
  wire  _T_3; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@201130.4]
  wire  _T_6; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201133.4]
  wire  _T_8; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201136.4]
  wire  _GEN_15; // @[Decoupled.scala 240:27:example.TestHarness.RocketConfig.fir@201185.6]
  wire  _GEN_26; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@201174.4]
  wire  _GEN_25; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@201174.4]
  wire  _T_11; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@201153.4]
  wire  _T_12; // @[Decoupled.scala 231:19:example.TestHarness.RocketConfig.fir@201157.4]
  assign _T_id__T_14_addr = 1'h0;
  assign _T_id__T_14_data = _T_id[_T_id__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  assign _T_id__T_10_data = io_enq_bits_id;
  assign _T_id__T_10_addr = 1'h0;
  assign _T_id__T_10_mask = 1'h1;
  assign _T_id__T_10_en = _T_3 ? _GEN_15 : _T_6;
  assign _T_addr__T_14_addr = 1'h0;
  assign _T_addr__T_14_data = _T_addr[_T_addr__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  assign _T_addr__T_10_data = io_enq_bits_addr;
  assign _T_addr__T_10_addr = 1'h0;
  assign _T_addr__T_10_mask = 1'h1;
  assign _T_addr__T_10_en = _T_3 ? _GEN_15 : _T_6;
  assign _T_len__T_14_addr = 1'h0;
  assign _T_len__T_14_data = _T_len[_T_len__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  assign _T_len__T_10_data = io_enq_bits_len;
  assign _T_len__T_10_addr = 1'h0;
  assign _T_len__T_10_mask = 1'h1;
  assign _T_len__T_10_en = _T_3 ? _GEN_15 : _T_6;
  assign _T_size__T_14_addr = 1'h0;
  assign _T_size__T_14_data = _T_size[_T_size__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  assign _T_size__T_10_data = io_enq_bits_size;
  assign _T_size__T_10_addr = 1'h0;
  assign _T_size__T_10_mask = 1'h1;
  assign _T_size__T_10_en = _T_3 ? _GEN_15 : _T_6;
  assign _T_burst__T_14_addr = 1'h0;
  assign _T_burst__T_14_data = _T_burst[_T_burst__T_14_addr]; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
  assign _T_burst__T_10_data = io_enq_bits_burst;
  assign _T_burst__T_10_addr = 1'h0;
  assign _T_burst__T_10_mask = 1'h1;
  assign _T_burst__T_10_en = _T_3 ? _GEN_15 : _T_6;
  assign _T_3 = _T_1 == 1'h0; // @[Decoupled.scala 215:36:example.TestHarness.RocketConfig.fir@201130.4]
  assign _T_6 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201133.4]
  assign _T_8 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201136.4]
  assign _GEN_15 = io_deq_ready ? 1'h0 : _T_6; // @[Decoupled.scala 240:27:example.TestHarness.RocketConfig.fir@201185.6]
  assign _GEN_26 = _T_3 ? _GEN_15 : _T_6; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@201174.4]
  assign _GEN_25 = _T_3 ? 1'h0 : _T_8; // @[Decoupled.scala 237:18:example.TestHarness.RocketConfig.fir@201174.4]
  assign _T_11 = _GEN_26 != _GEN_25; // @[Decoupled.scala 227:16:example.TestHarness.RocketConfig.fir@201153.4]
  assign _T_12 = _T_3 == 1'h0; // @[Decoupled.scala 231:19:example.TestHarness.RocketConfig.fir@201157.4]
  assign io_enq_ready = _T_1 == 1'h0; // @[Decoupled.scala 232:16:example.TestHarness.RocketConfig.fir@201160.4]
  assign io_deq_valid = io_enq_valid | _T_12; // @[Decoupled.scala 231:16:example.TestHarness.RocketConfig.fir@201158.4 Decoupled.scala 236:40:example.TestHarness.RocketConfig.fir@201172.6]
  assign io_deq_bits_id = _T_3 ? io_enq_bits_id : _T_id__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@201170.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@201183.6]
  assign io_deq_bits_addr = _T_3 ? io_enq_bits_addr : _T_addr__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@201169.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@201182.6]
  assign io_deq_bits_len = _T_3 ? io_enq_bits_len : _T_len__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@201168.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@201181.6]
  assign io_deq_bits_size = _T_3 ? io_enq_bits_size : _T_size__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@201167.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@201180.6]
  assign io_deq_bits_burst = _T_3 ? io_enq_bits_burst : _T_burst__T_14_data; // @[Decoupled.scala 233:15:example.TestHarness.RocketConfig.fir@201166.4 Decoupled.scala 238:19:example.TestHarness.RocketConfig.fir@201179.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_id[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_addr[initvar] = _RAND_1[30:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_len[initvar] = _RAND_2[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_size[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    _T_burst[initvar] = _RAND_4[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_id__T_10_en & _T_id__T_10_mask) begin
      _T_id[_T_id__T_10_addr] <= _T_id__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
    end
    if(_T_addr__T_10_en & _T_addr__T_10_mask) begin
      _T_addr[_T_addr__T_10_addr] <= _T_addr__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
    end
    if(_T_len__T_10_en & _T_len__T_10_mask) begin
      _T_len[_T_len__T_10_addr] <= _T_len__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
    end
    if(_T_size__T_10_en & _T_size__T_10_mask) begin
      _T_size[_T_size__T_10_addr] <= _T_size__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
    end
    if(_T_burst__T_10_en & _T_burst__T_10_mask) begin
      _T_burst[_T_burst__T_10_addr] <= _T_burst__T_10_data; // @[Decoupled.scala 209:24:example.TestHarness.RocketConfig.fir@201127.4]
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if (_T_11) begin
        if (_T_3) begin
          if (io_deq_ready) begin
            _T_1 <= 1'h0;
          end else begin
            _T_1 <= _T_6;
          end
        end else begin
          _T_1 <= _T_6;
        end
      end
    end
  end
endmodule
module AXI4Fragmenter_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@201326.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@201327.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@201328.4]
  output        auto_in_aw_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_aw_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [30:0] auto_in_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_in_w_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_w_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [63:0] auto_in_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [7:0]  auto_in_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_w_bits_last, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_b_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_in_b_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [3:0]  auto_in_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [1:0]  auto_in_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_in_ar_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_ar_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [30:0] auto_in_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_in_r_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_in_r_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [3:0]  auto_in_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [63:0] auto_in_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [1:0]  auto_in_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_in_r_bits_last, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_aw_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_aw_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [3:0]  auto_out_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [30:0] auto_out_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_aw_bits_user, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_w_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_w_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [63:0] auto_out_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [7:0]  auto_out_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_b_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_b_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [3:0]  auto_out_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_b_bits_user, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_ar_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_ar_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [3:0]  auto_out_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output [30:0] auto_out_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_ar_bits_user, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  output        auto_out_r_ready, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_r_valid, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [3:0]  auto_out_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [63:0] auto_out_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_r_bits_user, // @[:example.TestHarness.RocketConfig.fir@201329.4]
  input         auto_out_r_bits_last // @[:example.TestHarness.RocketConfig.fir@201329.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [3:0] Queue_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [30:0] Queue_io_enq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [7:0] Queue_io_enq_bits_len; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [2:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [1:0] Queue_io_enq_bits_burst; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [3:0] Queue_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [30:0] Queue_io_deq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [7:0] Queue_io_deq_bits_len; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire [1:0] Queue_io_deq_bits_burst; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [3:0] Queue_1_io_enq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [30:0] Queue_1_io_enq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [7:0] Queue_1_io_enq_bits_len; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [2:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [1:0] Queue_1_io_enq_bits_burst; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [3:0] Queue_1_io_deq_bits_id; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [30:0] Queue_1_io_deq_bits_addr; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [7:0] Queue_1_io_deq_bits_len; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [2:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire [1:0] Queue_1_io_deq_bits_burst; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire [63:0] Queue_2_io_enq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire [7:0] Queue_2_io_enq_bits_strb; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_enq_bits_last; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire [63:0] Queue_2_io_deq_bits_data; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire [7:0] Queue_2_io_deq_bits_strb; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  wire  Queue_2_io_deq_bits_last; // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
  reg  _T_4; // @[Fragmenter.scala 58:29:example.TestHarness.RocketConfig.fir@201368.4]
  reg [31:0] _RAND_0;
  reg [30:0] _T_5; // @[Fragmenter.scala 59:25:example.TestHarness.RocketConfig.fir@201369.4]
  reg [31:0] _RAND_1;
  reg [7:0] _T_6; // @[Fragmenter.scala 60:25:example.TestHarness.RocketConfig.fir@201370.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_2_bits_len; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201361.4]
  wire [7:0] _T_7; // @[Fragmenter.scala 62:23:example.TestHarness.RocketConfig.fir@201371.4]
  wire [30:0] _T_2_bits_addr; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201362.4]
  wire [30:0] _T_8; // @[Fragmenter.scala 63:23:example.TestHarness.RocketConfig.fir@201372.4]
  wire [1:0] _T_2_bits_burst; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201359.4]
  wire  _T_50; // @[Fragmenter.scala 90:34:example.TestHarness.RocketConfig.fir@201414.4]
  wire [2:0] _T_2_bits_size; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201360.4]
  wire [15:0] _T_59; // @[Fragmenter.scala 98:38:example.TestHarness.RocketConfig.fir@201423.4]
  wire [30:0] _GEN_48; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201424.4]
  wire [30:0] _T_61; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201425.4]
  wire [15:0] _T_62; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@201426.4]
  wire [22:0] _GEN_49; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201427.4]
  wire [22:0] _T_63; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201427.4]
  wire [14:0] _T_64; // @[Bundles.scala 29:30:example.TestHarness.RocketConfig.fir@201428.4]
  wire  _T_66; // @[Fragmenter.scala 101:28:example.TestHarness.RocketConfig.fir@201432.4]
  wire [30:0] _GEN_50; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201434.6]
  wire [30:0] _T_67; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201434.6]
  wire [30:0] _T_68; // @[Fragmenter.scala 102:49:example.TestHarness.RocketConfig.fir@201435.6]
  wire [30:0] _T_69; // @[Fragmenter.scala 102:62:example.TestHarness.RocketConfig.fir@201436.6]
  wire [30:0] _T_70; // @[Fragmenter.scala 102:47:example.TestHarness.RocketConfig.fir@201437.6]
  wire [30:0] _T_71; // @[Fragmenter.scala 102:45:example.TestHarness.RocketConfig.fir@201438.6]
  wire  _T_73; // @[Fragmenter.scala 108:27:example.TestHarness.RocketConfig.fir@201445.4]
  wire [30:0] _T_75; // @[Fragmenter.scala 120:28:example.TestHarness.RocketConfig.fir@201451.4]
  wire [9:0] _T_77; // @[package.scala 189:77:example.TestHarness.RocketConfig.fir@201453.4]
  wire [2:0] _T_78; // @[package.scala 189:82:example.TestHarness.RocketConfig.fir@201454.4]
  wire [2:0] _T_79; // @[package.scala 189:46:example.TestHarness.RocketConfig.fir@201455.4]
  wire [30:0] _GEN_52; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201456.4]
  wire [30:0] _T_80; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201456.4]
  wire  _T_2_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201364.4]
  wire  _T_82; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201459.4]
  wire  _T_83; // @[Fragmenter.scala 123:19:example.TestHarness.RocketConfig.fir@201461.6]
  wire [8:0] _GEN_53; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201464.6]
  wire [8:0] _T_85; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201465.6]
  wire [8:0] _GEN_4; // @[Fragmenter.scala 122:27:example.TestHarness.RocketConfig.fir@201460.4]
  reg  _T_88; // @[Fragmenter.scala 58:29:example.TestHarness.RocketConfig.fir@201496.4]
  reg [31:0] _RAND_3;
  reg [30:0] _T_89; // @[Fragmenter.scala 59:25:example.TestHarness.RocketConfig.fir@201497.4]
  reg [31:0] _RAND_4;
  reg [7:0] _T_90; // @[Fragmenter.scala 60:25:example.TestHarness.RocketConfig.fir@201498.4]
  reg [31:0] _RAND_5;
  wire [7:0] _T_86_bits_len; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201489.4]
  wire [7:0] _T_91; // @[Fragmenter.scala 62:23:example.TestHarness.RocketConfig.fir@201499.4]
  wire [30:0] _T_86_bits_addr; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201490.4]
  wire [30:0] _T_92; // @[Fragmenter.scala 63:23:example.TestHarness.RocketConfig.fir@201500.4]
  wire [1:0] _T_86_bits_burst; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201487.4]
  wire  _T_134; // @[Fragmenter.scala 90:34:example.TestHarness.RocketConfig.fir@201542.4]
  wire [2:0] _T_86_bits_size; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201488.4]
  wire [15:0] _T_143; // @[Fragmenter.scala 98:38:example.TestHarness.RocketConfig.fir@201551.4]
  wire [30:0] _GEN_58; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201552.4]
  wire [30:0] _T_145; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201553.4]
  wire [15:0] _T_146; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@201554.4]
  wire [22:0] _GEN_59; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201555.4]
  wire [22:0] _T_147; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201555.4]
  wire [14:0] _T_148; // @[Bundles.scala 29:30:example.TestHarness.RocketConfig.fir@201556.4]
  wire  _T_150; // @[Fragmenter.scala 101:28:example.TestHarness.RocketConfig.fir@201560.4]
  wire [30:0] _GEN_60; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201562.6]
  wire [30:0] _T_151; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201562.6]
  wire [30:0] _T_152; // @[Fragmenter.scala 102:49:example.TestHarness.RocketConfig.fir@201563.6]
  wire [30:0] _T_153; // @[Fragmenter.scala 102:62:example.TestHarness.RocketConfig.fir@201564.6]
  wire [30:0] _T_154; // @[Fragmenter.scala 102:47:example.TestHarness.RocketConfig.fir@201565.6]
  wire [30:0] _T_155; // @[Fragmenter.scala 102:45:example.TestHarness.RocketConfig.fir@201566.6]
  wire  _T_157; // @[Fragmenter.scala 108:27:example.TestHarness.RocketConfig.fir@201573.4]
  reg [8:0] _T_182; // @[Fragmenter.scala 162:30:example.TestHarness.RocketConfig.fir@201636.4]
  reg [31:0] _RAND_6;
  wire  _T_183; // @[Fragmenter.scala 163:30:example.TestHarness.RocketConfig.fir@201637.4]
  reg  _T_171; // @[Fragmenter.scala 148:35:example.TestHarness.RocketConfig.fir@201612.4]
  reg [31:0] _RAND_7;
  wire  _T_178; // @[Fragmenter.scala 156:52:example.TestHarness.RocketConfig.fir@201628.4]
  wire  _T_179; // @[Fragmenter.scala 156:35:example.TestHarness.RocketConfig.fir@201629.4]
  wire [30:0] _T_159; // @[Fragmenter.scala 120:28:example.TestHarness.RocketConfig.fir@201579.4]
  wire [9:0] _T_161; // @[package.scala 189:77:example.TestHarness.RocketConfig.fir@201581.4]
  wire [2:0] _T_162; // @[package.scala 189:82:example.TestHarness.RocketConfig.fir@201582.4]
  wire [2:0] _T_163; // @[package.scala 189:46:example.TestHarness.RocketConfig.fir@201583.4]
  wire [30:0] _GEN_62; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201584.4]
  wire [30:0] _T_164; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201584.4]
  wire  _T_86_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201492.4]
  wire  _T_166; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201587.4]
  wire  _T_167; // @[Fragmenter.scala 123:19:example.TestHarness.RocketConfig.fir@201589.6]
  wire [8:0] _GEN_63; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201592.6]
  wire [8:0] _T_169; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201593.6]
  wire [8:0] _GEN_9; // @[Fragmenter.scala 122:27:example.TestHarness.RocketConfig.fir@201588.4]
  wire  _T_180; // @[Fragmenter.scala 157:38:example.TestHarness.RocketConfig.fir@201631.4]
  wire  _T_181; // @[Fragmenter.scala 157:35:example.TestHarness.RocketConfig.fir@201632.4]
  wire  _T_174; // @[Fragmenter.scala 151:26:example.TestHarness.RocketConfig.fir@201617.4]
  wire  _GEN_10; // @[Fragmenter.scala 151:43:example.TestHarness.RocketConfig.fir@201618.4]
  wire  _T_177; // @[Fragmenter.scala 155:35:example.TestHarness.RocketConfig.fir@201626.4]
  wire  _T_175; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201621.4]
  wire [8:0] _T_184; // @[Fragmenter.scala 164:35:example.TestHarness.RocketConfig.fir@201638.4]
  wire [8:0] _T_185; // @[Fragmenter.scala 164:23:example.TestHarness.RocketConfig.fir@201639.4]
  wire  _T_186; // @[Fragmenter.scala 165:27:example.TestHarness.RocketConfig.fir@201640.4]
  wire  _T_170_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201604.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201608.4]
  wire  _T_197; // @[Fragmenter.scala 171:37:example.TestHarness.RocketConfig.fir@201657.4]
  wire  _T_198; // @[Fragmenter.scala 171:51:example.TestHarness.RocketConfig.fir@201658.4]
  wire  _T_199; // @[Fragmenter.scala 171:33:example.TestHarness.RocketConfig.fir@201659.4]
  wire  _T_187; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201641.4]
  wire [8:0] _GEN_64; // @[Fragmenter.scala 166:27:example.TestHarness.RocketConfig.fir@201642.4]
  wire [8:0] _T_189; // @[Fragmenter.scala 166:27:example.TestHarness.RocketConfig.fir@201643.4]
  wire  _T_191; // @[Fragmenter.scala 167:15:example.TestHarness.RocketConfig.fir@201646.4]
  wire  _T_192; // @[Fragmenter.scala 167:39:example.TestHarness.RocketConfig.fir@201647.4]
  wire  _T_193; // @[Fragmenter.scala 167:29:example.TestHarness.RocketConfig.fir@201648.4]
  wire  _T_195; // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201650.4]
  wire  _T_196; // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201651.4]
  wire  _T_203; // @[Fragmenter.scala 176:15:example.TestHarness.RocketConfig.fir@201667.4]
  wire  _T_170_bits_last; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201604.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201605.4]
  wire  _T_204; // @[Fragmenter.scala 176:31:example.TestHarness.RocketConfig.fir@201668.4]
  wire  _T_205; // @[Fragmenter.scala 176:28:example.TestHarness.RocketConfig.fir@201669.4]
  wire  _T_206; // @[Fragmenter.scala 176:47:example.TestHarness.RocketConfig.fir@201670.4]
  wire  _T_208; // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201672.4]
  wire  _T_209; // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201673.4]
  wire  _T_214; // @[Fragmenter.scala 188:36:example.TestHarness.RocketConfig.fir@201686.4]
  wire  _T_215; // @[Fragmenter.scala 188:33:example.TestHarness.RocketConfig.fir@201687.4]
  reg [1:0] _T_217_0; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_8;
  reg [1:0] _T_217_1; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_9;
  reg [1:0] _T_217_2; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_10;
  reg [1:0] _T_217_3; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_11;
  reg [1:0] _T_217_4; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_12;
  reg [1:0] _T_217_5; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_13;
  reg [1:0] _T_217_6; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_14;
  reg [1:0] _T_217_7; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_15;
  reg [1:0] _T_217_8; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_16;
  reg [1:0] _T_217_9; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_17;
  reg [1:0] _T_217_10; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_18;
  reg [1:0] _T_217_11; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_19;
  reg [1:0] _T_217_12; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_20;
  reg [1:0] _T_217_13; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_21;
  reg [1:0] _T_217_14; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_22;
  reg [1:0] _T_217_15; // @[Fragmenter.scala 192:26:example.TestHarness.RocketConfig.fir@201707.4]
  reg [31:0] _RAND_23;
  wire [1:0] _GEN_13; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_14; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_15; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_16; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_17; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_18; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_19; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_20; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_21; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_22; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_23; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_24; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_25; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_26; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [1:0] _GEN_27; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  wire [15:0] _T_220; // @[OneHot.scala 65:12:example.TestHarness.RocketConfig.fir@201711.4]
  wire  _T_222; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201713.4]
  wire  _T_223; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201714.4]
  wire  _T_224; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201715.4]
  wire  _T_225; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201716.4]
  wire  _T_226; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201717.4]
  wire  _T_227; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201718.4]
  wire  _T_228; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201719.4]
  wire  _T_229; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201720.4]
  wire  _T_230; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201721.4]
  wire  _T_231; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201722.4]
  wire  _T_232; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201723.4]
  wire  _T_233; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201724.4]
  wire  _T_234; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201725.4]
  wire  _T_235; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201726.4]
  wire  _T_236; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201727.4]
  wire  _T_237; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201728.4]
  wire  _T_238; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201729.4]
  wire  _T_239; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201730.4]
  wire [1:0] _T_240; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201732.6]
  wire  _T_243; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201737.4]
  wire [1:0] _T_244; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201739.6]
  wire  _T_247; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201744.4]
  wire [1:0] _T_248; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201746.6]
  wire  _T_251; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201751.4]
  wire [1:0] _T_252; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201753.6]
  wire  _T_255; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201758.4]
  wire [1:0] _T_256; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201760.6]
  wire  _T_259; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201765.4]
  wire [1:0] _T_260; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201767.6]
  wire  _T_263; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201772.4]
  wire [1:0] _T_264; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201774.6]
  wire  _T_267; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201779.4]
  wire [1:0] _T_268; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201781.6]
  wire  _T_271; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201786.4]
  wire [1:0] _T_272; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201788.6]
  wire  _T_275; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201793.4]
  wire [1:0] _T_276; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201795.6]
  wire  _T_279; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201800.4]
  wire [1:0] _T_280; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201802.6]
  wire  _T_283; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201807.4]
  wire [1:0] _T_284; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201809.6]
  wire  _T_287; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201814.4]
  wire [1:0] _T_288; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201816.6]
  wire  _T_291; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201821.4]
  wire [1:0] _T_292; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201823.6]
  wire  _T_295; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201828.4]
  wire [1:0] _T_296; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201830.6]
  wire  _T_299; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201835.4]
  wire [1:0] _T_300; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201837.6]
  Queue_43_inTestHarness Queue ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201340.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_id(Queue_io_enq_bits_id),
    .io_enq_bits_addr(Queue_io_enq_bits_addr),
    .io_enq_bits_len(Queue_io_enq_bits_len),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_burst(Queue_io_enq_bits_burst),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_id(Queue_io_deq_bits_id),
    .io_deq_bits_addr(Queue_io_deq_bits_addr),
    .io_deq_bits_len(Queue_io_deq_bits_len),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_burst(Queue_io_deq_bits_burst)
  );
  Queue_43_inTestHarness Queue_1 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201468.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_id(Queue_1_io_enq_bits_id),
    .io_enq_bits_addr(Queue_1_io_enq_bits_addr),
    .io_enq_bits_len(Queue_1_io_enq_bits_len),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_burst(Queue_1_io_enq_bits_burst),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_id(Queue_1_io_deq_bits_id),
    .io_deq_bits_addr(Queue_1_io_deq_bits_addr),
    .io_deq_bits_len(Queue_1_io_deq_bits_len),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_burst(Queue_1_io_deq_bits_burst)
  );
  Queue_6_inTestHarness Queue_2 ( // @[Decoupled.scala 287:21:example.TestHarness.RocketConfig.fir@201596.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_data(Queue_2_io_enq_bits_data),
    .io_enq_bits_strb(Queue_2_io_enq_bits_strb),
    .io_enq_bits_last(Queue_2_io_enq_bits_last),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_data(Queue_2_io_deq_bits_data),
    .io_deq_bits_strb(Queue_2_io_deq_bits_strb),
    .io_deq_bits_last(Queue_2_io_deq_bits_last)
  );
  assign _T_2_bits_len = Queue_io_deq_bits_len; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201361.4]
  assign _T_7 = _T_4 ? _T_6 : _T_2_bits_len; // @[Fragmenter.scala 62:23:example.TestHarness.RocketConfig.fir@201371.4]
  assign _T_2_bits_addr = Queue_io_deq_bits_addr; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201362.4]
  assign _T_8 = _T_4 ? _T_5 : _T_2_bits_addr; // @[Fragmenter.scala 63:23:example.TestHarness.RocketConfig.fir@201372.4]
  assign _T_2_bits_burst = Queue_io_deq_bits_burst; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201359.4]
  assign _T_50 = _T_2_bits_burst == 2'h0; // @[Fragmenter.scala 90:34:example.TestHarness.RocketConfig.fir@201414.4]
  assign _T_2_bits_size = Queue_io_deq_bits_size; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201360.4]
  assign _T_59 = 16'h1 << _T_2_bits_size; // @[Fragmenter.scala 98:38:example.TestHarness.RocketConfig.fir@201423.4]
  assign _GEN_48 = {{15'd0}, _T_59}; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201424.4]
  assign _T_61 = _T_8 + _GEN_48; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201425.4]
  assign _T_62 = {_T_2_bits_len,8'hff}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@201426.4]
  assign _GEN_49 = {{7'd0}, _T_62}; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201427.4]
  assign _T_63 = _GEN_49 << _T_2_bits_size; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201427.4]
  assign _T_64 = _T_63[22:8]; // @[Bundles.scala 29:30:example.TestHarness.RocketConfig.fir@201428.4]
  assign _T_66 = _T_2_bits_burst == 2'h2; // @[Fragmenter.scala 101:28:example.TestHarness.RocketConfig.fir@201432.4]
  assign _GEN_50 = {{16'd0}, _T_64}; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201434.6]
  assign _T_67 = _T_61 & _GEN_50; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201434.6]
  assign _T_68 = ~ _T_2_bits_addr; // @[Fragmenter.scala 102:49:example.TestHarness.RocketConfig.fir@201435.6]
  assign _T_69 = _T_68 | _GEN_50; // @[Fragmenter.scala 102:62:example.TestHarness.RocketConfig.fir@201436.6]
  assign _T_70 = ~ _T_69; // @[Fragmenter.scala 102:47:example.TestHarness.RocketConfig.fir@201437.6]
  assign _T_71 = _T_67 | _T_70; // @[Fragmenter.scala 102:45:example.TestHarness.RocketConfig.fir@201438.6]
  assign _T_73 = 8'h0 == _T_7; // @[Fragmenter.scala 108:27:example.TestHarness.RocketConfig.fir@201445.4]
  assign _T_75 = ~ _T_8; // @[Fragmenter.scala 120:28:example.TestHarness.RocketConfig.fir@201451.4]
  assign _T_77 = 10'h7 << _T_2_bits_size; // @[package.scala 189:77:example.TestHarness.RocketConfig.fir@201453.4]
  assign _T_78 = _T_77[2:0]; // @[package.scala 189:82:example.TestHarness.RocketConfig.fir@201454.4]
  assign _T_79 = ~ _T_78; // @[package.scala 189:46:example.TestHarness.RocketConfig.fir@201455.4]
  assign _GEN_52 = {{28'd0}, _T_79}; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201456.4]
  assign _T_80 = _T_75 | _GEN_52; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201456.4]
  assign _T_2_valid = Queue_io_deq_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201354.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201364.4]
  assign _T_82 = auto_out_ar_ready & _T_2_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201459.4]
  assign _T_83 = _T_73 == 1'h0; // @[Fragmenter.scala 123:19:example.TestHarness.RocketConfig.fir@201461.6]
  assign _GEN_53 = {{1'd0}, _T_7}; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201464.6]
  assign _T_85 = _GEN_53 - 9'h1; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201465.6]
  assign _GEN_4 = _T_82 ? _T_85 : {{1'd0}, _T_6}; // @[Fragmenter.scala 122:27:example.TestHarness.RocketConfig.fir@201460.4]
  assign _T_86_bits_len = Queue_1_io_deq_bits_len; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201489.4]
  assign _T_91 = _T_88 ? _T_90 : _T_86_bits_len; // @[Fragmenter.scala 62:23:example.TestHarness.RocketConfig.fir@201499.4]
  assign _T_86_bits_addr = Queue_1_io_deq_bits_addr; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201490.4]
  assign _T_92 = _T_88 ? _T_89 : _T_86_bits_addr; // @[Fragmenter.scala 63:23:example.TestHarness.RocketConfig.fir@201500.4]
  assign _T_86_bits_burst = Queue_1_io_deq_bits_burst; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201487.4]
  assign _T_134 = _T_86_bits_burst == 2'h0; // @[Fragmenter.scala 90:34:example.TestHarness.RocketConfig.fir@201542.4]
  assign _T_86_bits_size = Queue_1_io_deq_bits_size; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201488.4]
  assign _T_143 = 16'h1 << _T_86_bits_size; // @[Fragmenter.scala 98:38:example.TestHarness.RocketConfig.fir@201551.4]
  assign _GEN_58 = {{15'd0}, _T_143}; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201552.4]
  assign _T_145 = _T_92 + _GEN_58; // @[Fragmenter.scala 98:29:example.TestHarness.RocketConfig.fir@201553.4]
  assign _T_146 = {_T_86_bits_len,8'hff}; // @[Cat.scala 29:58:example.TestHarness.RocketConfig.fir@201554.4]
  assign _GEN_59 = {{7'd0}, _T_146}; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201555.4]
  assign _T_147 = _GEN_59 << _T_86_bits_size; // @[Bundles.scala 29:21:example.TestHarness.RocketConfig.fir@201555.4]
  assign _T_148 = _T_147[22:8]; // @[Bundles.scala 29:30:example.TestHarness.RocketConfig.fir@201556.4]
  assign _T_150 = _T_86_bits_burst == 2'h2; // @[Fragmenter.scala 101:28:example.TestHarness.RocketConfig.fir@201560.4]
  assign _GEN_60 = {{16'd0}, _T_148}; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201562.6]
  assign _T_151 = _T_145 & _GEN_60; // @[Fragmenter.scala 102:33:example.TestHarness.RocketConfig.fir@201562.6]
  assign _T_152 = ~ _T_86_bits_addr; // @[Fragmenter.scala 102:49:example.TestHarness.RocketConfig.fir@201563.6]
  assign _T_153 = _T_152 | _GEN_60; // @[Fragmenter.scala 102:62:example.TestHarness.RocketConfig.fir@201564.6]
  assign _T_154 = ~ _T_153; // @[Fragmenter.scala 102:47:example.TestHarness.RocketConfig.fir@201565.6]
  assign _T_155 = _T_151 | _T_154; // @[Fragmenter.scala 102:45:example.TestHarness.RocketConfig.fir@201566.6]
  assign _T_157 = 8'h0 == _T_91; // @[Fragmenter.scala 108:27:example.TestHarness.RocketConfig.fir@201573.4]
  assign _T_183 = _T_182 == 9'h0; // @[Fragmenter.scala 163:30:example.TestHarness.RocketConfig.fir@201637.4]
  assign _T_178 = _T_183 | _T_171; // @[Fragmenter.scala 156:52:example.TestHarness.RocketConfig.fir@201628.4]
  assign _T_179 = auto_out_aw_ready & _T_178; // @[Fragmenter.scala 156:35:example.TestHarness.RocketConfig.fir@201629.4]
  assign _T_159 = ~ _T_92; // @[Fragmenter.scala 120:28:example.TestHarness.RocketConfig.fir@201579.4]
  assign _T_161 = 10'h7 << _T_86_bits_size; // @[package.scala 189:77:example.TestHarness.RocketConfig.fir@201581.4]
  assign _T_162 = _T_161[2:0]; // @[package.scala 189:82:example.TestHarness.RocketConfig.fir@201582.4]
  assign _T_163 = ~ _T_162; // @[package.scala 189:46:example.TestHarness.RocketConfig.fir@201583.4]
  assign _GEN_62 = {{28'd0}, _T_163}; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201584.4]
  assign _T_164 = _T_159 | _GEN_62; // @[Fragmenter.scala 120:34:example.TestHarness.RocketConfig.fir@201584.4]
  assign _T_86_valid = Queue_1_io_deq_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201482.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201492.4]
  assign _T_166 = _T_179 & _T_86_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201587.4]
  assign _T_167 = _T_157 == 1'h0; // @[Fragmenter.scala 123:19:example.TestHarness.RocketConfig.fir@201589.6]
  assign _GEN_63 = {{1'd0}, _T_91}; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201592.6]
  assign _T_169 = _GEN_63 - 9'h1; // @[Fragmenter.scala 125:25:example.TestHarness.RocketConfig.fir@201593.6]
  assign _GEN_9 = _T_166 ? _T_169 : {{1'd0}, _T_90}; // @[Fragmenter.scala 122:27:example.TestHarness.RocketConfig.fir@201588.4]
  assign _T_180 = _T_171 == 1'h0; // @[Fragmenter.scala 157:38:example.TestHarness.RocketConfig.fir@201631.4]
  assign _T_181 = _T_86_valid & _T_180; // @[Fragmenter.scala 157:35:example.TestHarness.RocketConfig.fir@201632.4]
  assign _T_174 = _T_181 & _T_183; // @[Fragmenter.scala 151:26:example.TestHarness.RocketConfig.fir@201617.4]
  assign _GEN_10 = _T_174 | _T_171; // @[Fragmenter.scala 151:43:example.TestHarness.RocketConfig.fir@201618.4]
  assign _T_177 = _T_86_valid & _T_178; // @[Fragmenter.scala 155:35:example.TestHarness.RocketConfig.fir@201626.4]
  assign _T_175 = auto_out_aw_ready & _T_177; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201621.4]
  assign _T_184 = _T_181 ? 9'h1 : 9'h0; // @[Fragmenter.scala 164:35:example.TestHarness.RocketConfig.fir@201638.4]
  assign _T_185 = _T_183 ? _T_184 : _T_182; // @[Fragmenter.scala 164:23:example.TestHarness.RocketConfig.fir@201639.4]
  assign _T_186 = _T_185 == 9'h1; // @[Fragmenter.scala 165:27:example.TestHarness.RocketConfig.fir@201640.4]
  assign _T_170_valid = Queue_2_io_deq_valid; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201604.4 Decoupled.scala 310:15:example.TestHarness.RocketConfig.fir@201608.4]
  assign _T_197 = _T_183 == 1'h0; // @[Fragmenter.scala 171:37:example.TestHarness.RocketConfig.fir@201657.4]
  assign _T_198 = _T_197 | _T_181; // @[Fragmenter.scala 171:51:example.TestHarness.RocketConfig.fir@201658.4]
  assign _T_199 = _T_170_valid & _T_198; // @[Fragmenter.scala 171:33:example.TestHarness.RocketConfig.fir@201659.4]
  assign _T_187 = auto_out_w_ready & _T_199; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201641.4]
  assign _GEN_64 = {{8'd0}, _T_187}; // @[Fragmenter.scala 166:27:example.TestHarness.RocketConfig.fir@201642.4]
  assign _T_189 = _T_185 - _GEN_64; // @[Fragmenter.scala 166:27:example.TestHarness.RocketConfig.fir@201643.4]
  assign _T_191 = _T_187 == 1'h0; // @[Fragmenter.scala 167:15:example.TestHarness.RocketConfig.fir@201646.4]
  assign _T_192 = _T_185 != 9'h0; // @[Fragmenter.scala 167:39:example.TestHarness.RocketConfig.fir@201647.4]
  assign _T_193 = _T_191 | _T_192; // @[Fragmenter.scala 167:29:example.TestHarness.RocketConfig.fir@201648.4]
  assign _T_195 = _T_193 | reset; // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201650.4]
  assign _T_196 = _T_195 == 1'h0; // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201651.4]
  assign _T_203 = _T_199 == 1'h0; // @[Fragmenter.scala 176:15:example.TestHarness.RocketConfig.fir@201667.4]
  assign _T_170_bits_last = Queue_2_io_deq_bits_last; // @[Decoupled.scala 308:19:example.TestHarness.RocketConfig.fir@201604.4 Decoupled.scala 309:14:example.TestHarness.RocketConfig.fir@201605.4]
  assign _T_204 = _T_170_bits_last == 1'h0; // @[Fragmenter.scala 176:31:example.TestHarness.RocketConfig.fir@201668.4]
  assign _T_205 = _T_203 | _T_204; // @[Fragmenter.scala 176:28:example.TestHarness.RocketConfig.fir@201669.4]
  assign _T_206 = _T_205 | _T_186; // @[Fragmenter.scala 176:47:example.TestHarness.RocketConfig.fir@201670.4]
  assign _T_208 = _T_206 | reset; // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201672.4]
  assign _T_209 = _T_208 == 1'h0; // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201673.4]
  assign _T_214 = auto_out_b_bits_user == 1'h0; // @[Fragmenter.scala 188:36:example.TestHarness.RocketConfig.fir@201686.4]
  assign _T_215 = auto_in_b_ready | _T_214; // @[Fragmenter.scala 188:33:example.TestHarness.RocketConfig.fir@201687.4]
  assign _GEN_13 = 4'h1 == auto_out_b_bits_id ? _T_217_1 : _T_217_0; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_14 = 4'h2 == auto_out_b_bits_id ? _T_217_2 : _GEN_13; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_15 = 4'h3 == auto_out_b_bits_id ? _T_217_3 : _GEN_14; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_16 = 4'h4 == auto_out_b_bits_id ? _T_217_4 : _GEN_15; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_17 = 4'h5 == auto_out_b_bits_id ? _T_217_5 : _GEN_16; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_18 = 4'h6 == auto_out_b_bits_id ? _T_217_6 : _GEN_17; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_19 = 4'h7 == auto_out_b_bits_id ? _T_217_7 : _GEN_18; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_20 = 4'h8 == auto_out_b_bits_id ? _T_217_8 : _GEN_19; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_21 = 4'h9 == auto_out_b_bits_id ? _T_217_9 : _GEN_20; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_22 = 4'ha == auto_out_b_bits_id ? _T_217_10 : _GEN_21; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_23 = 4'hb == auto_out_b_bits_id ? _T_217_11 : _GEN_22; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_24 = 4'hc == auto_out_b_bits_id ? _T_217_12 : _GEN_23; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_25 = 4'hd == auto_out_b_bits_id ? _T_217_13 : _GEN_24; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_26 = 4'he == auto_out_b_bits_id ? _T_217_14 : _GEN_25; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _GEN_27 = 4'hf == auto_out_b_bits_id ? _T_217_15 : _GEN_26; // @[Fragmenter.scala 193:41:example.TestHarness.RocketConfig.fir@201708.4]
  assign _T_220 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12:example.TestHarness.RocketConfig.fir@201711.4]
  assign _T_222 = _T_220[0]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201713.4]
  assign _T_223 = _T_220[1]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201714.4]
  assign _T_224 = _T_220[2]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201715.4]
  assign _T_225 = _T_220[3]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201716.4]
  assign _T_226 = _T_220[4]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201717.4]
  assign _T_227 = _T_220[5]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201718.4]
  assign _T_228 = _T_220[6]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201719.4]
  assign _T_229 = _T_220[7]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201720.4]
  assign _T_230 = _T_220[8]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201721.4]
  assign _T_231 = _T_220[9]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201722.4]
  assign _T_232 = _T_220[10]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201723.4]
  assign _T_233 = _T_220[11]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201724.4]
  assign _T_234 = _T_220[12]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201725.4]
  assign _T_235 = _T_220[13]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201726.4]
  assign _T_236 = _T_220[14]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201727.4]
  assign _T_237 = _T_220[15]; // @[Fragmenter.scala 194:63:example.TestHarness.RocketConfig.fir@201728.4]
  assign _T_238 = _T_215 & auto_out_b_valid; // @[Decoupled.scala 40:37:example.TestHarness.RocketConfig.fir@201729.4]
  assign _T_239 = _T_222 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201730.4]
  assign _T_240 = _T_217_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201732.6]
  assign _T_243 = _T_223 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201737.4]
  assign _T_244 = _T_217_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201739.6]
  assign _T_247 = _T_224 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201744.4]
  assign _T_248 = _T_217_2 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201746.6]
  assign _T_251 = _T_225 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201751.4]
  assign _T_252 = _T_217_3 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201753.6]
  assign _T_255 = _T_226 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201758.4]
  assign _T_256 = _T_217_4 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201760.6]
  assign _T_259 = _T_227 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201765.4]
  assign _T_260 = _T_217_5 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201767.6]
  assign _T_263 = _T_228 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201772.4]
  assign _T_264 = _T_217_6 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201774.6]
  assign _T_267 = _T_229 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201779.4]
  assign _T_268 = _T_217_7 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201781.6]
  assign _T_271 = _T_230 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201786.4]
  assign _T_272 = _T_217_8 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201788.6]
  assign _T_275 = _T_231 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201793.4]
  assign _T_276 = _T_217_9 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201795.6]
  assign _T_279 = _T_232 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201800.4]
  assign _T_280 = _T_217_10 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201802.6]
  assign _T_283 = _T_233 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201807.4]
  assign _T_284 = _T_217_11 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201809.6]
  assign _T_287 = _T_234 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201814.4]
  assign _T_288 = _T_217_12 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201816.6]
  assign _T_291 = _T_235 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201821.4]
  assign _T_292 = _T_217_13 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201823.6]
  assign _T_295 = _T_236 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201828.4]
  assign _T_296 = _T_217_14 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201830.6]
  assign _T_299 = _T_237 & _T_238; // @[Fragmenter.scala 195:19:example.TestHarness.RocketConfig.fir@201835.4]
  assign _T_300 = _T_217_15 | auto_out_b_bits_resp; // @[Fragmenter.scala 195:70:example.TestHarness.RocketConfig.fir@201837.6]
  assign auto_in_aw_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_w_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_27; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_ar_ready = Queue_io_enq_ready; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_user; // @[LazyModule.scala 173:31:example.TestHarness.RocketConfig.fir@201339.4]
  assign auto_out_aw_valid = _T_86_valid & _T_178; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_aw_bits_id = Queue_1_io_deq_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_aw_bits_addr = ~ _T_164; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_aw_bits_user = 8'h0 == _T_91; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_w_valid = _T_170_valid & _T_198; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_w_bits_data = Queue_2_io_deq_bits_data; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_w_bits_strb = Queue_2_io_deq_bits_strb; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_b_ready = auto_in_b_ready | _T_214; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_ar_valid = Queue_io_deq_valid; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_ar_bits_id = Queue_io_deq_bits_id; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_ar_bits_addr = ~ _T_80; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_ar_bits_user = 8'h0 == _T_7; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 173:49:example.TestHarness.RocketConfig.fir@201338.4]
  assign Queue_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201341.4]
  assign Queue_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201342.4]
  assign Queue_io_enq_valid = auto_in_ar_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201343.4]
  assign Queue_io_enq_bits_id = auto_in_ar_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201352.4]
  assign Queue_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201351.4]
  assign Queue_io_enq_bits_len = auto_in_ar_bits_len; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201350.4]
  assign Queue_io_enq_bits_size = auto_in_ar_bits_size; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201349.4]
  assign Queue_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201348.4]
  assign Queue_io_deq_ready = auto_out_ar_ready & _T_73; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201365.4]
  assign Queue_1_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201469.4]
  assign Queue_1_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201470.4]
  assign Queue_1_io_enq_valid = auto_in_aw_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201471.4]
  assign Queue_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201480.4]
  assign Queue_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201479.4]
  assign Queue_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201478.4]
  assign Queue_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201477.4]
  assign Queue_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201476.4]
  assign Queue_1_io_deq_ready = _T_179 & _T_157; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201493.4]
  assign Queue_2_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201597.4]
  assign Queue_2_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201598.4]
  assign Queue_2_io_enq_valid = auto_in_w_valid; // @[Decoupled.scala 288:22:example.TestHarness.RocketConfig.fir@201599.4]
  assign Queue_2_io_enq_bits_data = auto_in_w_bits_data; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201602.4]
  assign Queue_2_io_enq_bits_strb = auto_in_w_bits_strb; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201601.4]
  assign Queue_2_io_enq_bits_last = auto_in_w_bits_last; // @[Decoupled.scala 289:21:example.TestHarness.RocketConfig.fir@201600.4]
  assign Queue_2_io_deq_ready = auto_out_w_ready & _T_198; // @[Decoupled.scala 311:15:example.TestHarness.RocketConfig.fir@201609.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_4 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_5 = _RAND_1[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_88 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_89 = _RAND_4[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_90 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_182 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_171 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_217_0 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_217_1 = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_217_2 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_217_3 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_217_4 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_217_5 = _RAND_13[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_217_6 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_217_7 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_217_8 = _RAND_16[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_217_9 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_217_10 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_217_11 = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_217_12 = _RAND_20[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_217_13 = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_217_14 = _RAND_22[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_217_15 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_4 <= 1'h0;
    end else begin
      if (_T_82) begin
        _T_4 <= _T_83;
      end
    end
    if (_T_82) begin
      if (_T_50) begin
        _T_5 <= _T_2_bits_addr;
      end else begin
        if (_T_66) begin
          _T_5 <= _T_71;
        end else begin
          _T_5 <= _T_61;
        end
      end
    end
    _T_6 <= _GEN_4[7:0];
    if (reset) begin
      _T_88 <= 1'h0;
    end else begin
      if (_T_166) begin
        _T_88 <= _T_167;
      end
    end
    if (_T_166) begin
      if (_T_134) begin
        _T_89 <= _T_86_bits_addr;
      end else begin
        if (_T_150) begin
          _T_89 <= _T_155;
        end else begin
          _T_89 <= _T_145;
        end
      end
    end
    _T_90 <= _GEN_9[7:0];
    if (reset) begin
      _T_182 <= 9'h0;
    end else begin
      _T_182 <= _T_189;
    end
    if (reset) begin
      _T_171 <= 1'h0;
    end else begin
      if (_T_175) begin
        _T_171 <= 1'h0;
      end else begin
        _T_171 <= _GEN_10;
      end
    end
    if (reset) begin
      _T_217_0 <= 2'h0;
    end else begin
      if (_T_239) begin
        if (auto_out_b_bits_user) begin
          _T_217_0 <= 2'h0;
        end else begin
          _T_217_0 <= _T_240;
        end
      end
    end
    if (reset) begin
      _T_217_1 <= 2'h0;
    end else begin
      if (_T_243) begin
        if (auto_out_b_bits_user) begin
          _T_217_1 <= 2'h0;
        end else begin
          _T_217_1 <= _T_244;
        end
      end
    end
    if (reset) begin
      _T_217_2 <= 2'h0;
    end else begin
      if (_T_247) begin
        if (auto_out_b_bits_user) begin
          _T_217_2 <= 2'h0;
        end else begin
          _T_217_2 <= _T_248;
        end
      end
    end
    if (reset) begin
      _T_217_3 <= 2'h0;
    end else begin
      if (_T_251) begin
        if (auto_out_b_bits_user) begin
          _T_217_3 <= 2'h0;
        end else begin
          _T_217_3 <= _T_252;
        end
      end
    end
    if (reset) begin
      _T_217_4 <= 2'h0;
    end else begin
      if (_T_255) begin
        if (auto_out_b_bits_user) begin
          _T_217_4 <= 2'h0;
        end else begin
          _T_217_4 <= _T_256;
        end
      end
    end
    if (reset) begin
      _T_217_5 <= 2'h0;
    end else begin
      if (_T_259) begin
        if (auto_out_b_bits_user) begin
          _T_217_5 <= 2'h0;
        end else begin
          _T_217_5 <= _T_260;
        end
      end
    end
    if (reset) begin
      _T_217_6 <= 2'h0;
    end else begin
      if (_T_263) begin
        if (auto_out_b_bits_user) begin
          _T_217_6 <= 2'h0;
        end else begin
          _T_217_6 <= _T_264;
        end
      end
    end
    if (reset) begin
      _T_217_7 <= 2'h0;
    end else begin
      if (_T_267) begin
        if (auto_out_b_bits_user) begin
          _T_217_7 <= 2'h0;
        end else begin
          _T_217_7 <= _T_268;
        end
      end
    end
    if (reset) begin
      _T_217_8 <= 2'h0;
    end else begin
      if (_T_271) begin
        if (auto_out_b_bits_user) begin
          _T_217_8 <= 2'h0;
        end else begin
          _T_217_8 <= _T_272;
        end
      end
    end
    if (reset) begin
      _T_217_9 <= 2'h0;
    end else begin
      if (_T_275) begin
        if (auto_out_b_bits_user) begin
          _T_217_9 <= 2'h0;
        end else begin
          _T_217_9 <= _T_276;
        end
      end
    end
    if (reset) begin
      _T_217_10 <= 2'h0;
    end else begin
      if (_T_279) begin
        if (auto_out_b_bits_user) begin
          _T_217_10 <= 2'h0;
        end else begin
          _T_217_10 <= _T_280;
        end
      end
    end
    if (reset) begin
      _T_217_11 <= 2'h0;
    end else begin
      if (_T_283) begin
        if (auto_out_b_bits_user) begin
          _T_217_11 <= 2'h0;
        end else begin
          _T_217_11 <= _T_284;
        end
      end
    end
    if (reset) begin
      _T_217_12 <= 2'h0;
    end else begin
      if (_T_287) begin
        if (auto_out_b_bits_user) begin
          _T_217_12 <= 2'h0;
        end else begin
          _T_217_12 <= _T_288;
        end
      end
    end
    if (reset) begin
      _T_217_13 <= 2'h0;
    end else begin
      if (_T_291) begin
        if (auto_out_b_bits_user) begin
          _T_217_13 <= 2'h0;
        end else begin
          _T_217_13 <= _T_292;
        end
      end
    end
    if (reset) begin
      _T_217_14 <= 2'h0;
    end else begin
      if (_T_295) begin
        if (auto_out_b_bits_user) begin
          _T_217_14 <= 2'h0;
        end else begin
          _T_217_14 <= _T_296;
        end
      end
    end
    if (reset) begin
      _T_217_15 <= 2'h0;
    end else begin
      if (_T_299) begin
        if (auto_out_b_bits_user) begin
          _T_217_15 <= 2'h0;
        end else begin
          _T_217_15 <= _T_300;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_196) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:167 assert (!out.w.fire() || w_todo =/= UInt(0)) // underflow impossible\n"); // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201653.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_196) begin
          $fatal; // @[Fragmenter.scala 167:14:example.TestHarness.RocketConfig.fir@201654.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_209) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Fragmenter.scala:176 assert (!out.w.valid || !in_w.bits.last || w_last)\n"); // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201675.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_209) begin
          $fatal; // @[Fragmenter.scala 176:14:example.TestHarness.RocketConfig.fir@201676.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module SimAXIMem_inTestHarness( // @[:example.TestHarness.RocketConfig.fir@201842.2]
  input         clock, // @[:example.TestHarness.RocketConfig.fir@201843.4]
  input         reset, // @[:example.TestHarness.RocketConfig.fir@201844.4]
  output        io_axi4_0_aw_ready, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_aw_valid, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [3:0]  io_axi4_0_aw_bits_id, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [30:0] io_axi4_0_aw_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [7:0]  io_axi4_0_aw_bits_len, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [2:0]  io_axi4_0_aw_bits_size, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [1:0]  io_axi4_0_aw_bits_burst, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output        io_axi4_0_w_ready, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_w_valid, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [63:0] io_axi4_0_w_bits_data, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [7:0]  io_axi4_0_w_bits_strb, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_w_bits_last, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_b_ready, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output        io_axi4_0_b_valid, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output [3:0]  io_axi4_0_b_bits_id, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output [1:0]  io_axi4_0_b_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output        io_axi4_0_ar_ready, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_ar_valid, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [3:0]  io_axi4_0_ar_bits_id, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [30:0] io_axi4_0_ar_bits_addr, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [7:0]  io_axi4_0_ar_bits_len, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [2:0]  io_axi4_0_ar_bits_size, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input  [1:0]  io_axi4_0_ar_bits_burst, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  input         io_axi4_0_r_ready, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output        io_axi4_0_r_valid, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output [3:0]  io_axi4_0_r_bits_id, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output [63:0] io_axi4_0_r_bits_data, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output [1:0]  io_axi4_0_r_bits_resp, // @[:example.TestHarness.RocketConfig.fir@201846.4]
  output        io_axi4_0_r_bits_last // @[:example.TestHarness.RocketConfig.fir@201846.4]
);
  wire  srams_clock; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_reset; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_aw_ready; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_aw_valid; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [3:0] srams_auto_in_aw_bits_id; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [30:0] srams_auto_in_aw_bits_addr; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_aw_bits_user; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_w_ready; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_w_valid; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [63:0] srams_auto_in_w_bits_data; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [7:0] srams_auto_in_w_bits_strb; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_b_ready; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_b_valid; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [3:0] srams_auto_in_b_bits_id; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [1:0] srams_auto_in_b_bits_resp; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_b_bits_user; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_ar_ready; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_ar_valid; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [3:0] srams_auto_in_ar_bits_id; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [30:0] srams_auto_in_ar_bits_addr; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_ar_bits_user; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_r_ready; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_r_valid; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [3:0] srams_auto_in_r_bits_id; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [63:0] srams_auto_in_r_bits_data; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire [1:0] srams_auto_in_r_bits_resp; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  srams_auto_in_r_bits_user; // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
  wire  axi4xbar_clock; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_reset; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_aw_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_aw_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_in_aw_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [30:0] axi4xbar_auto_in_aw_bits_addr; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_in_aw_bits_len; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [2:0] axi4xbar_auto_in_aw_bits_size; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_in_aw_bits_burst; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_w_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_w_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [63:0] axi4xbar_auto_in_w_bits_data; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_in_w_bits_strb; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_w_bits_last; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_b_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_b_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_in_b_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_in_b_bits_resp; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_ar_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_ar_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_in_ar_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [30:0] axi4xbar_auto_in_ar_bits_addr; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_in_ar_bits_len; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [2:0] axi4xbar_auto_in_ar_bits_size; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_in_ar_bits_burst; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_r_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_r_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_in_r_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [63:0] axi4xbar_auto_in_r_bits_data; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_in_r_bits_resp; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_in_r_bits_last; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_aw_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_aw_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_out_aw_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [30:0] axi4xbar_auto_out_aw_bits_addr; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_out_aw_bits_len; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [2:0] axi4xbar_auto_out_aw_bits_size; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_out_aw_bits_burst; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_w_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_w_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [63:0] axi4xbar_auto_out_w_bits_data; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_out_w_bits_strb; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_w_bits_last; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_b_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_b_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_out_b_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_out_b_bits_resp; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_ar_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_ar_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_out_ar_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [30:0] axi4xbar_auto_out_ar_bits_addr; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [7:0] axi4xbar_auto_out_ar_bits_len; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [2:0] axi4xbar_auto_out_ar_bits_size; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_out_ar_bits_burst; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_r_ready; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_r_valid; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [3:0] axi4xbar_auto_out_r_bits_id; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [63:0] axi4xbar_auto_out_r_bits_data; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire [1:0] axi4xbar_auto_out_r_bits_resp; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4xbar_auto_out_r_bits_last; // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
  wire  axi4buf_clock; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_reset; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_aw_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_aw_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_in_aw_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [30:0] axi4buf_auto_in_aw_bits_addr; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_aw_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_w_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_w_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [63:0] axi4buf_auto_in_w_bits_data; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [7:0] axi4buf_auto_in_w_bits_strb; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_b_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_b_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_in_b_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [1:0] axi4buf_auto_in_b_bits_resp; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_b_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_ar_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_ar_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_in_ar_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [30:0] axi4buf_auto_in_ar_bits_addr; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_ar_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_r_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_r_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_in_r_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [63:0] axi4buf_auto_in_r_bits_data; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [1:0] axi4buf_auto_in_r_bits_resp; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_r_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_in_r_bits_last; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_aw_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_aw_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_out_aw_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [30:0] axi4buf_auto_out_aw_bits_addr; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_aw_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_w_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_w_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [63:0] axi4buf_auto_out_w_bits_data; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [7:0] axi4buf_auto_out_w_bits_strb; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_b_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_b_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_out_b_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [1:0] axi4buf_auto_out_b_bits_resp; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_b_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_ar_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_ar_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_out_ar_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [30:0] axi4buf_auto_out_ar_bits_addr; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_ar_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_r_ready; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_r_valid; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [3:0] axi4buf_auto_out_r_bits_id; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [63:0] axi4buf_auto_out_r_bits_data; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire [1:0] axi4buf_auto_out_r_bits_resp; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4buf_auto_out_r_bits_user; // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
  wire  axi4frag_clock; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_reset; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [30:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [63:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [7:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [30:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [63:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [30:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_aw_bits_user; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [63:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [7:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_b_bits_user; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [30:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_ar_bits_user; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [3:0] axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [63:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_r_bits_user; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
  AXI4RAM_inTestHarness srams ( // @[Ports.scala 221:69:example.TestHarness.RocketConfig.fir@201852.4]
    .clock(srams_clock),
    .reset(srams_reset),
    .auto_in_aw_ready(srams_auto_in_aw_ready),
    .auto_in_aw_valid(srams_auto_in_aw_valid),
    .auto_in_aw_bits_id(srams_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(srams_auto_in_aw_bits_addr),
    .auto_in_aw_bits_user(srams_auto_in_aw_bits_user),
    .auto_in_w_ready(srams_auto_in_w_ready),
    .auto_in_w_valid(srams_auto_in_w_valid),
    .auto_in_w_bits_data(srams_auto_in_w_bits_data),
    .auto_in_w_bits_strb(srams_auto_in_w_bits_strb),
    .auto_in_b_ready(srams_auto_in_b_ready),
    .auto_in_b_valid(srams_auto_in_b_valid),
    .auto_in_b_bits_id(srams_auto_in_b_bits_id),
    .auto_in_b_bits_resp(srams_auto_in_b_bits_resp),
    .auto_in_b_bits_user(srams_auto_in_b_bits_user),
    .auto_in_ar_ready(srams_auto_in_ar_ready),
    .auto_in_ar_valid(srams_auto_in_ar_valid),
    .auto_in_ar_bits_id(srams_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(srams_auto_in_ar_bits_addr),
    .auto_in_ar_bits_user(srams_auto_in_ar_bits_user),
    .auto_in_r_ready(srams_auto_in_r_ready),
    .auto_in_r_valid(srams_auto_in_r_valid),
    .auto_in_r_bits_id(srams_auto_in_r_bits_id),
    .auto_in_r_bits_data(srams_auto_in_r_bits_data),
    .auto_in_r_bits_resp(srams_auto_in_r_bits_resp),
    .auto_in_r_bits_user(srams_auto_in_r_bits_user)
  );
  AXI4Xbar_inTestHarness axi4xbar ( // @[Xbar.scala 211:30:example.TestHarness.RocketConfig.fir@201858.4]
    .clock(axi4xbar_clock),
    .reset(axi4xbar_reset),
    .auto_in_aw_ready(axi4xbar_auto_in_aw_ready),
    .auto_in_aw_valid(axi4xbar_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4xbar_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4xbar_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4xbar_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4xbar_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4xbar_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4xbar_auto_in_w_ready),
    .auto_in_w_valid(axi4xbar_auto_in_w_valid),
    .auto_in_w_bits_data(axi4xbar_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4xbar_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4xbar_auto_in_w_bits_last),
    .auto_in_b_ready(axi4xbar_auto_in_b_ready),
    .auto_in_b_valid(axi4xbar_auto_in_b_valid),
    .auto_in_b_bits_id(axi4xbar_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4xbar_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4xbar_auto_in_ar_ready),
    .auto_in_ar_valid(axi4xbar_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4xbar_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4xbar_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4xbar_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4xbar_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4xbar_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4xbar_auto_in_r_ready),
    .auto_in_r_valid(axi4xbar_auto_in_r_valid),
    .auto_in_r_bits_id(axi4xbar_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4xbar_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4xbar_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4xbar_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4xbar_auto_out_aw_ready),
    .auto_out_aw_valid(axi4xbar_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4xbar_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4xbar_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4xbar_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4xbar_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4xbar_auto_out_aw_bits_burst),
    .auto_out_w_ready(axi4xbar_auto_out_w_ready),
    .auto_out_w_valid(axi4xbar_auto_out_w_valid),
    .auto_out_w_bits_data(axi4xbar_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4xbar_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4xbar_auto_out_w_bits_last),
    .auto_out_b_ready(axi4xbar_auto_out_b_ready),
    .auto_out_b_valid(axi4xbar_auto_out_b_valid),
    .auto_out_b_bits_id(axi4xbar_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4xbar_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4xbar_auto_out_ar_ready),
    .auto_out_ar_valid(axi4xbar_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4xbar_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4xbar_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4xbar_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4xbar_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4xbar_auto_out_ar_bits_burst),
    .auto_out_r_ready(axi4xbar_auto_out_r_ready),
    .auto_out_r_valid(axi4xbar_auto_out_r_valid),
    .auto_out_r_bits_id(axi4xbar_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4xbar_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4xbar_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4xbar_auto_out_r_bits_last)
  );
  AXI4Buffer_inTestHarness axi4buf ( // @[Buffer.scala 58:29:example.TestHarness.RocketConfig.fir@201864.4]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_aw_ready(axi4buf_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_auto_in_aw_bits_addr),
    .auto_in_aw_bits_user(axi4buf_auto_in_aw_bits_user),
    .auto_in_w_ready(axi4buf_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_auto_in_w_bits_strb),
    .auto_in_b_ready(axi4buf_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_auto_in_b_bits_resp),
    .auto_in_b_bits_user(axi4buf_auto_in_b_bits_user),
    .auto_in_ar_ready(axi4buf_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_auto_in_ar_bits_addr),
    .auto_in_ar_bits_user(axi4buf_auto_in_ar_bits_user),
    .auto_in_r_ready(axi4buf_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_auto_in_r_bits_resp),
    .auto_in_r_bits_user(axi4buf_auto_in_r_bits_user),
    .auto_in_r_bits_last(axi4buf_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_auto_out_aw_bits_addr),
    .auto_out_aw_bits_user(axi4buf_auto_out_aw_bits_user),
    .auto_out_w_ready(axi4buf_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4buf_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_auto_out_b_bits_resp),
    .auto_out_b_bits_user(axi4buf_auto_out_b_bits_user),
    .auto_out_ar_ready(axi4buf_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_auto_out_ar_bits_addr),
    .auto_out_ar_bits_user(axi4buf_auto_out_ar_bits_user),
    .auto_out_r_ready(axi4buf_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_auto_out_r_bits_resp),
    .auto_out_r_bits_user(axi4buf_auto_out_r_bits_user)
  );
  AXI4Fragmenter_inTestHarness axi4frag ( // @[Fragmenter.scala 205:30:example.TestHarness.RocketConfig.fir@201870.4]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
    .auto_out_aw_bits_user(axi4frag_auto_out_aw_bits_user),
    .auto_out_w_ready(axi4frag_auto_out_w_ready),
    .auto_out_w_valid(axi4frag_auto_out_w_valid),
    .auto_out_w_bits_data(axi4frag_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4frag_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4frag_auto_out_b_ready),
    .auto_out_b_valid(axi4frag_auto_out_b_valid),
    .auto_out_b_bits_id(axi4frag_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4frag_auto_out_b_bits_resp),
    .auto_out_b_bits_user(axi4frag_auto_out_b_bits_user),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_user(axi4frag_auto_out_ar_bits_user),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_user(axi4frag_auto_out_r_bits_user),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  assign io_axi4_0_aw_ready = axi4xbar_auto_in_aw_ready; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_w_ready = axi4xbar_auto_in_w_ready; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_b_valid = axi4xbar_auto_in_b_valid; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_ar_ready = axi4xbar_auto_in_ar_ready; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_r_valid = axi4xbar_auto_in_r_valid; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign io_axi4_0_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[Ports.scala 228:71:example.TestHarness.RocketConfig.fir@201882.4]
  assign srams_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201856.4]
  assign srams_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201857.4]
  assign srams_auto_in_aw_valid = axi4buf_auto_out_aw_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_aw_bits_id = axi4buf_auto_out_aw_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_aw_bits_addr = axi4buf_auto_out_aw_bits_addr; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_aw_bits_user = axi4buf_auto_out_aw_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_w_valid = axi4buf_auto_out_w_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_w_bits_data = axi4buf_auto_out_w_bits_data; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_w_bits_strb = axi4buf_auto_out_w_bits_strb; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_b_ready = axi4buf_auto_out_b_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_ar_valid = axi4buf_auto_out_ar_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_ar_bits_id = axi4buf_auto_out_ar_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_ar_bits_addr = axi4buf_auto_out_ar_bits_addr; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_ar_bits_user = axi4buf_auto_out_ar_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign srams_auto_in_r_ready = axi4buf_auto_out_r_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4xbar_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201862.4]
  assign axi4xbar_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201863.4]
  assign axi4xbar_auto_in_aw_valid = io_axi4_0_aw_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_aw_bits_id = io_axi4_0_aw_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_aw_bits_addr = io_axi4_0_aw_bits_addr; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_aw_bits_len = io_axi4_0_aw_bits_len; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_aw_bits_size = io_axi4_0_aw_bits_size; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_aw_bits_burst = io_axi4_0_aw_bits_burst; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_w_valid = io_axi4_0_w_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_w_bits_data = io_axi4_0_w_bits_data; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_w_bits_strb = io_axi4_0_w_bits_strb; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_w_bits_last = io_axi4_0_w_bits_last; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_b_ready = io_axi4_0_b_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_valid = io_axi4_0_ar_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_bits_id = io_axi4_0_ar_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_bits_addr = io_axi4_0_ar_bits_addr; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_bits_len = io_axi4_0_ar_bits_len; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_bits_size = io_axi4_0_ar_bits_size; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_ar_bits_burst = io_axi4_0_ar_bits_burst; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_in_r_ready = io_axi4_0_r_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201878.4]
  assign axi4xbar_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4xbar_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4buf_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201868.4]
  assign axi4buf_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201869.4]
  assign axi4buf_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_aw_bits_user = axi4frag_auto_out_aw_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_ar_bits_user = axi4frag_auto_out_ar_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4buf_auto_out_aw_ready = srams_auto_in_aw_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_w_ready = srams_auto_in_w_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_b_valid = srams_auto_in_b_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_b_bits_id = srams_auto_in_b_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_b_bits_resp = srams_auto_in_b_bits_resp; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_b_bits_user = srams_auto_in_b_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_ar_ready = srams_auto_in_ar_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_r_valid = srams_auto_in_r_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_r_bits_id = srams_auto_in_r_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_r_bits_data = srams_auto_in_r_bits_data; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_r_bits_resp = srams_auto_in_r_bits_resp; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4buf_auto_out_r_bits_user = srams_auto_in_r_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201880.4]
  assign axi4frag_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201874.4]
  assign axi4frag_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201875.4]
  assign axi4frag_auto_in_aw_valid = axi4xbar_auto_out_aw_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_aw_bits_id = axi4xbar_auto_out_aw_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_aw_bits_addr = axi4xbar_auto_out_aw_bits_addr; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_aw_bits_len = axi4xbar_auto_out_aw_bits_len; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_aw_bits_size = axi4xbar_auto_out_aw_bits_size; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_aw_bits_burst = axi4xbar_auto_out_aw_bits_burst; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_w_valid = axi4xbar_auto_out_w_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_w_bits_data = axi4xbar_auto_out_w_bits_data; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_w_bits_strb = axi4xbar_auto_out_w_bits_strb; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_w_bits_last = axi4xbar_auto_out_w_bits_last; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_b_ready = axi4xbar_auto_out_b_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_valid = axi4xbar_auto_out_ar_valid; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_bits_id = axi4xbar_auto_out_ar_bits_id; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_bits_addr = axi4xbar_auto_out_ar_bits_addr; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_bits_len = axi4xbar_auto_out_ar_bits_len; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_bits_size = axi4xbar_auto_out_ar_bits_size; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_ar_bits_burst = axi4xbar_auto_out_ar_bits_burst; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_in_r_ready = axi4xbar_auto_out_r_ready; // @[LazyModule.scala 167:57:example.TestHarness.RocketConfig.fir@201879.4]
  assign axi4frag_auto_out_aw_ready = axi4buf_auto_in_aw_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_w_ready = axi4buf_auto_in_w_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_b_valid = axi4buf_auto_in_b_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_b_bits_id = axi4buf_auto_in_b_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_b_bits_resp = axi4buf_auto_in_b_bits_resp; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_b_bits_user = axi4buf_auto_in_b_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_ar_ready = axi4buf_auto_in_ar_ready; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_valid = axi4buf_auto_in_r_valid; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_bits_id = axi4buf_auto_in_r_bits_id; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_bits_data = axi4buf_auto_in_r_bits_data; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_bits_resp = axi4buf_auto_in_r_bits_resp; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_bits_user = axi4buf_auto_in_r_bits_user; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
  assign axi4frag_auto_out_r_bits_last = axi4buf_auto_in_r_bits_last; // @[LazyModule.scala 167:31:example.TestHarness.RocketConfig.fir@201881.4]
endmodule
// module TestHarness( // @[:example.TestHarness.RocketConfig.fir@201884.2]
//   input   clock, // @[:example.TestHarness.RocketConfig.fir@201885.4]
//   input   reset, // @[:example.TestHarness.RocketConfig.fir@201886.4]
//   output  io_success // @[:example.TestHarness.RocketConfig.fir@201887.4]
// );
//   wire  top_clock; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_reset; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmi_req_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmi_req_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [6:0] top_debug_clockeddmi_dmi_req_bits_addr; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_debug_clockeddmi_dmi_req_bits_data; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_debug_clockeddmi_dmi_req_bits_op; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmi_resp_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmi_resp_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_debug_clockeddmi_dmi_resp_bits_data; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_debug_clockeddmi_dmi_resp_bits_resp; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmiClock; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_clockeddmi_dmiReset; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_ndreset; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_debug_dmactive; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_reset_vector; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_interrupts; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_aw_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_aw_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_aw_bits_id; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_mem_axi4_0_aw_bits_addr; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [7:0] top_mem_axi4_0_aw_bits_len; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [2:0] top_mem_axi4_0_aw_bits_size; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_mem_axi4_0_aw_bits_burst; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_aw_bits_lock; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_aw_bits_cache; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [2:0] top_mem_axi4_0_aw_bits_prot; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_aw_bits_qos; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_w_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_w_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [63:0] top_mem_axi4_0_w_bits_data; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [7:0] top_mem_axi4_0_w_bits_strb; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_w_bits_last; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_b_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_b_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_b_bits_id; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_mem_axi4_0_b_bits_resp; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_ar_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_ar_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_ar_bits_id; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_mem_axi4_0_ar_bits_addr; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [7:0] top_mem_axi4_0_ar_bits_len; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [2:0] top_mem_axi4_0_ar_bits_size; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_mem_axi4_0_ar_bits_burst; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_ar_bits_lock; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_ar_bits_cache; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [2:0] top_mem_axi4_0_ar_bits_prot; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_ar_bits_qos; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_r_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_r_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [3:0] top_mem_axi4_0_r_bits_id; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [63:0] top_mem_axi4_0_r_bits_data; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [1:0] top_mem_axi4_0_r_bits_resp; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_mem_axi4_0_r_bits_last; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_uart_0_txd; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_uart_0_rxd; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_serial_in_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_serial_in_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_serial_in_bits; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_serial_out_ready; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  top_serial_out_valid; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire [31:0] top_serial_out_bits; // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//   wire  SimSerial_clock; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_reset; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_serial_in_ready; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_serial_in_valid; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire [31:0] SimSerial_serial_in_bits; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_serial_out_ready; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_serial_out_valid; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire [31:0] SimSerial_serial_out_bits; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  SimSerial_exit; // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//   wire  UARTAdapter_clock; // @[UARTAdapter.scala 164:28:example.TestHarness.RocketConfig.fir@201921.4]
//   wire  UARTAdapter_reset; // @[UARTAdapter.scala 164:28:example.TestHarness.RocketConfig.fir@201921.4]
//   wire  UARTAdapter_io_uart_txd; // @[UARTAdapter.scala 164:28:example.TestHarness.RocketConfig.fir@201921.4]
//   wire  UARTAdapter_io_uart_rxd; // @[UARTAdapter.scala 164:28:example.TestHarness.RocketConfig.fir@201921.4]
//   wire  mem_clock; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_reset; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_aw_ready; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_aw_valid; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [3:0] mem_io_axi4_0_aw_bits_id; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [30:0] mem_io_axi4_0_aw_bits_addr; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [7:0] mem_io_axi4_0_aw_bits_len; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [2:0] mem_io_axi4_0_aw_bits_size; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [1:0] mem_io_axi4_0_aw_bits_burst; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_w_ready; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_w_valid; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [63:0] mem_io_axi4_0_w_bits_data; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [7:0] mem_io_axi4_0_w_bits_strb; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_w_bits_last; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_b_ready; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_b_valid; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [3:0] mem_io_axi4_0_b_bits_id; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [1:0] mem_io_axi4_0_b_bits_resp; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_ar_ready; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_ar_valid; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [3:0] mem_io_axi4_0_ar_bits_id; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [30:0] mem_io_axi4_0_ar_bits_addr; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [7:0] mem_io_axi4_0_ar_bits_len; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [2:0] mem_io_axi4_0_ar_bits_size; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [1:0] mem_io_axi4_0_ar_bits_burst; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_r_ready; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_r_valid; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [3:0] mem_io_axi4_0_r_bits_id; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [63:0] mem_io_axi4_0_r_bits_data; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire [1:0] mem_io_axi4_0_r_bits_resp; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   wire  mem_io_axi4_0_r_bits_last; // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//   Top top ( // @[TestHarness.scala 24:21:example.TestHarness.RocketConfig.fir@201890.4]
//     .clock(top_clock),
//     .reset(top_reset),
//     .debug_clockeddmi_dmi_req_ready(top_debug_clockeddmi_dmi_req_ready),
//     .debug_clockeddmi_dmi_req_valid(top_debug_clockeddmi_dmi_req_valid),
//     .debug_clockeddmi_dmi_req_bits_addr(top_debug_clockeddmi_dmi_req_bits_addr),
//     .debug_clockeddmi_dmi_req_bits_data(top_debug_clockeddmi_dmi_req_bits_data),
//     .debug_clockeddmi_dmi_req_bits_op(top_debug_clockeddmi_dmi_req_bits_op),
//     .debug_clockeddmi_dmi_resp_ready(top_debug_clockeddmi_dmi_resp_ready),
//     .debug_clockeddmi_dmi_resp_valid(top_debug_clockeddmi_dmi_resp_valid),
//     .debug_clockeddmi_dmi_resp_bits_data(top_debug_clockeddmi_dmi_resp_bits_data),
//     .debug_clockeddmi_dmi_resp_bits_resp(top_debug_clockeddmi_dmi_resp_bits_resp),
//     .debug_clockeddmi_dmiClock(top_debug_clockeddmi_dmiClock),
//     .debug_clockeddmi_dmiReset(top_debug_clockeddmi_dmiReset),
//     .debug_ndreset(top_debug_ndreset),
//     .debug_dmactive(top_debug_dmactive),
//     .reset_vector(top_reset_vector),
//     .interrupts(top_interrupts),
//     .mem_axi4_0_aw_ready(top_mem_axi4_0_aw_ready),
//     .mem_axi4_0_aw_valid(top_mem_axi4_0_aw_valid),
//     .mem_axi4_0_aw_bits_id(top_mem_axi4_0_aw_bits_id),
//     .mem_axi4_0_aw_bits_addr(top_mem_axi4_0_aw_bits_addr),
//     .mem_axi4_0_aw_bits_len(top_mem_axi4_0_aw_bits_len),
//     .mem_axi4_0_aw_bits_size(top_mem_axi4_0_aw_bits_size),
//     .mem_axi4_0_aw_bits_burst(top_mem_axi4_0_aw_bits_burst),
//     .mem_axi4_0_aw_bits_lock(top_mem_axi4_0_aw_bits_lock),
//     .mem_axi4_0_aw_bits_cache(top_mem_axi4_0_aw_bits_cache),
//     .mem_axi4_0_aw_bits_prot(top_mem_axi4_0_aw_bits_prot),
//     .mem_axi4_0_aw_bits_qos(top_mem_axi4_0_aw_bits_qos),
//     .mem_axi4_0_w_ready(top_mem_axi4_0_w_ready),
//     .mem_axi4_0_w_valid(top_mem_axi4_0_w_valid),
//     .mem_axi4_0_w_bits_data(top_mem_axi4_0_w_bits_data),
//     .mem_axi4_0_w_bits_strb(top_mem_axi4_0_w_bits_strb),
//     .mem_axi4_0_w_bits_last(top_mem_axi4_0_w_bits_last),
//     .mem_axi4_0_b_ready(top_mem_axi4_0_b_ready),
//     .mem_axi4_0_b_valid(top_mem_axi4_0_b_valid),
//     .mem_axi4_0_b_bits_id(top_mem_axi4_0_b_bits_id),
//     .mem_axi4_0_b_bits_resp(top_mem_axi4_0_b_bits_resp),
//     .mem_axi4_0_ar_ready(top_mem_axi4_0_ar_ready),
//     .mem_axi4_0_ar_valid(top_mem_axi4_0_ar_valid),
//     .mem_axi4_0_ar_bits_id(top_mem_axi4_0_ar_bits_id),
//     .mem_axi4_0_ar_bits_addr(top_mem_axi4_0_ar_bits_addr),
//     .mem_axi4_0_ar_bits_len(top_mem_axi4_0_ar_bits_len),
//     .mem_axi4_0_ar_bits_size(top_mem_axi4_0_ar_bits_size),
//     .mem_axi4_0_ar_bits_burst(top_mem_axi4_0_ar_bits_burst),
//     .mem_axi4_0_ar_bits_lock(top_mem_axi4_0_ar_bits_lock),
//     .mem_axi4_0_ar_bits_cache(top_mem_axi4_0_ar_bits_cache),
//     .mem_axi4_0_ar_bits_prot(top_mem_axi4_0_ar_bits_prot),
//     .mem_axi4_0_ar_bits_qos(top_mem_axi4_0_ar_bits_qos),
//     .mem_axi4_0_r_ready(top_mem_axi4_0_r_ready),
//     .mem_axi4_0_r_valid(top_mem_axi4_0_r_valid),
//     .mem_axi4_0_r_bits_id(top_mem_axi4_0_r_bits_id),
//     .mem_axi4_0_r_bits_data(top_mem_axi4_0_r_bits_data),
//     .mem_axi4_0_r_bits_resp(top_mem_axi4_0_r_bits_resp),
//     .mem_axi4_0_r_bits_last(top_mem_axi4_0_r_bits_last),
//     .uart_0_txd(top_uart_0_txd),
//     .uart_0_rxd(top_uart_0_rxd),
//     .serial_in_ready(top_serial_in_ready),
//     .serial_in_valid(top_serial_in_valid),
//     .serial_in_bits(top_serial_in_bits),
//     .serial_out_ready(top_serial_out_ready),
//     .serial_out_valid(top_serial_out_valid),
//     .serial_out_bits(top_serial_out_bits)
//   );
//   SimSerial SimSerial ( // @[SerialAdapter.scala 224:21:example.TestHarness.RocketConfig.fir@201907.4]
//     .clock(SimSerial_clock),
//     .reset(SimSerial_reset),
//     .serial_in_ready(SimSerial_serial_in_ready),
//     .serial_in_valid(SimSerial_serial_in_valid),
//     .serial_in_bits(SimSerial_serial_in_bits),
//     .serial_out_ready(SimSerial_serial_out_ready),
//     .serial_out_valid(SimSerial_serial_out_valid),
//     .serial_out_bits(SimSerial_serial_out_bits),
//     .exit(SimSerial_exit)
//   );
//   UARTAdapter_inTestHarness UARTAdapter ( // @[UARTAdapter.scala 164:28:example.TestHarness.RocketConfig.fir@201921.4]
//     .clock(UARTAdapter_clock),
//     .reset(UARTAdapter_reset),
//     .io_uart_txd(UARTAdapter_io_uart_txd),
//     .io_uart_rxd(UARTAdapter_io_uart_rxd)
//   );
//   SimAXIMem_inTestHarness mem ( // @[Ports.scala 76:15:example.TestHarness.RocketConfig.fir@201926.4]
//     .clock(mem_clock),
//     .reset(mem_reset),
//     .io_axi4_0_aw_ready(mem_io_axi4_0_aw_ready),
//     .io_axi4_0_aw_valid(mem_io_axi4_0_aw_valid),
//     .io_axi4_0_aw_bits_id(mem_io_axi4_0_aw_bits_id),
//     .io_axi4_0_aw_bits_addr(mem_io_axi4_0_aw_bits_addr),
//     .io_axi4_0_aw_bits_len(mem_io_axi4_0_aw_bits_len),
//     .io_axi4_0_aw_bits_size(mem_io_axi4_0_aw_bits_size),
//     .io_axi4_0_aw_bits_burst(mem_io_axi4_0_aw_bits_burst),
//     .io_axi4_0_w_ready(mem_io_axi4_0_w_ready),
//     .io_axi4_0_w_valid(mem_io_axi4_0_w_valid),
//     .io_axi4_0_w_bits_data(mem_io_axi4_0_w_bits_data),
//     .io_axi4_0_w_bits_strb(mem_io_axi4_0_w_bits_strb),
//     .io_axi4_0_w_bits_last(mem_io_axi4_0_w_bits_last),
//     .io_axi4_0_b_ready(mem_io_axi4_0_b_ready),
//     .io_axi4_0_b_valid(mem_io_axi4_0_b_valid),
//     .io_axi4_0_b_bits_id(mem_io_axi4_0_b_bits_id),
//     .io_axi4_0_b_bits_resp(mem_io_axi4_0_b_bits_resp),
//     .io_axi4_0_ar_ready(mem_io_axi4_0_ar_ready),
//     .io_axi4_0_ar_valid(mem_io_axi4_0_ar_valid),
//     .io_axi4_0_ar_bits_id(mem_io_axi4_0_ar_bits_id),
//     .io_axi4_0_ar_bits_addr(mem_io_axi4_0_ar_bits_addr),
//     .io_axi4_0_ar_bits_len(mem_io_axi4_0_ar_bits_len),
//     .io_axi4_0_ar_bits_size(mem_io_axi4_0_ar_bits_size),
//     .io_axi4_0_ar_bits_burst(mem_io_axi4_0_ar_bits_burst),
//     .io_axi4_0_r_ready(mem_io_axi4_0_r_ready),
//     .io_axi4_0_r_valid(mem_io_axi4_0_r_valid),
//     .io_axi4_0_r_bits_id(mem_io_axi4_0_r_bits_id),
//     .io_axi4_0_r_bits_data(mem_io_axi4_0_r_bits_data),
//     .io_axi4_0_r_bits_resp(mem_io_axi4_0_r_bits_resp),
//     .io_axi4_0_r_bits_last(mem_io_axi4_0_r_bits_last)
//   );
//   assign io_success = SimSerial_exit; // @[ConfigMixins.scala 94:13:example.TestHarness.RocketConfig.fir@201920.4]
//   assign top_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201891.4]
//   assign top_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201892.4]
//   assign top_debug_clockeddmi_dmi_req_valid = 1'h0;
//   assign top_debug_clockeddmi_dmi_req_bits_addr = 7'h0;
//   assign top_debug_clockeddmi_dmi_req_bits_data = 32'h0;
//   assign top_debug_clockeddmi_dmi_req_bits_op = 2'h0;
//   assign top_debug_clockeddmi_dmi_resp_ready = 1'h0;
//   assign top_debug_clockeddmi_dmiClock = 1'h0;
//   assign top_debug_clockeddmi_dmiReset = 1'h0;
//   assign top_reset_vector = 32'h0;
//   assign top_interrupts = 2'h0; // @[InterruptBus.scala 68:16:example.TestHarness.RocketConfig.fir@201934.4]
//   assign top_mem_axi4_0_aw_ready = mem_io_axi4_0_aw_ready; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_w_ready = mem_io_axi4_0_w_ready; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_b_valid = mem_io_axi4_0_b_valid; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_b_bits_id = mem_io_axi4_0_b_bits_id; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_b_bits_resp = mem_io_axi4_0_b_bits_resp; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_ar_ready = mem_io_axi4_0_ar_ready; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_r_valid = mem_io_axi4_0_r_valid; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_r_bits_id = mem_io_axi4_0_r_bits_id; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_r_bits_data = mem_io_axi4_0_r_bits_data; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_r_bits_resp = mem_io_axi4_0_r_bits_resp; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_mem_axi4_0_r_bits_last = mem_io_axi4_0_r_bits_last; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign top_uart_0_rxd = UARTAdapter_io_uart_rxd; // @[UARTAdapter.scala 166:18:example.TestHarness.RocketConfig.fir@201925.4]
//   assign top_serial_in_valid = SimSerial_serial_in_valid; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201918.4]
//   assign top_serial_in_bits = SimSerial_serial_in_bits; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201917.4]
//   assign top_serial_out_ready = SimSerial_serial_out_ready; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201916.4]
//   assign SimSerial_clock = top_clock; // @[SerialAdapter.scala 225:18:example.TestHarness.RocketConfig.fir@201912.4]
//   assign SimSerial_reset = top_reset; // @[SerialAdapter.scala 226:18:example.TestHarness.RocketConfig.fir@201913.4]
//   assign SimSerial_serial_in_ready = top_serial_in_ready; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201919.4]
//   assign SimSerial_serial_out_valid = top_serial_out_valid; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201915.4]
//   assign SimSerial_serial_out_bits = top_serial_out_bits; // @[SerialAdapter.scala 227:19:example.TestHarness.RocketConfig.fir@201914.4]
//   assign UARTAdapter_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201922.4]
//   assign UARTAdapter_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201923.4]
//   assign UARTAdapter_io_uart_txd = top_uart_0_txd; // @[UARTAdapter.scala 165:28:example.TestHarness.RocketConfig.fir@201924.4]
//   assign mem_clock = clock; // @[:example.TestHarness.RocketConfig.fir@201931.4]
//   assign mem_reset = reset; // @[:example.TestHarness.RocketConfig.fir@201932.4]
//   assign mem_io_axi4_0_aw_valid = top_mem_axi4_0_aw_valid; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_aw_bits_id = top_mem_axi4_0_aw_bits_id; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_aw_bits_addr = top_mem_axi4_0_aw_bits_addr[30:0]; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_aw_bits_len = top_mem_axi4_0_aw_bits_len; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_aw_bits_size = top_mem_axi4_0_aw_bits_size; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_aw_bits_burst = top_mem_axi4_0_aw_bits_burst; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_w_valid = top_mem_axi4_0_w_valid; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_w_bits_data = top_mem_axi4_0_w_bits_data; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_w_bits_strb = top_mem_axi4_0_w_bits_strb; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_w_bits_last = top_mem_axi4_0_w_bits_last; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_b_ready = top_mem_axi4_0_b_ready; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_valid = top_mem_axi4_0_ar_valid; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_bits_id = top_mem_axi4_0_ar_bits_id; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_bits_addr = top_mem_axi4_0_ar_bits_addr[30:0]; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_bits_len = top_mem_axi4_0_ar_bits_len; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_bits_size = top_mem_axi4_0_ar_bits_size; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_ar_bits_burst = top_mem_axi4_0_ar_bits_burst; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
//   assign mem_io_axi4_0_r_ready = top_mem_axi4_0_r_ready; // @[Ports.scala 76:41:example.TestHarness.RocketConfig.fir@201933.4]
// endmodule
module mem_inTestHarness(
  input  [27:0] R0_addr,
  input         R0_en,
  input         R0_clk,
  output [7:0]  R0_data_0,
  output [7:0]  R0_data_1,
  output [7:0]  R0_data_2,
  output [7:0]  R0_data_3,
  output [7:0]  R0_data_4,
  output [7:0]  R0_data_5,
  output [7:0]  R0_data_6,
  output [7:0]  R0_data_7,
  input  [27:0] W0_addr,
  input         W0_en,
  input         W0_clk,
  input  [7:0]  W0_data_0,
  input  [7:0]  W0_data_1,
  input  [7:0]  W0_data_2,
  input  [7:0]  W0_data_3,
  input  [7:0]  W0_data_4,
  input  [7:0]  W0_data_5,
  input  [7:0]  W0_data_6,
  input  [7:0]  W0_data_7,
  input         W0_mask_0,
  input         W0_mask_1,
  input         W0_mask_2,
  input         W0_mask_3,
  input         W0_mask_4,
  input         W0_mask_5,
  input         W0_mask_6,
  input         W0_mask_7
);
  wire [27:0] mem_ext_R0_addr;
  wire  mem_ext_R0_en;
  wire  mem_ext_R0_clk;
  wire [63:0] mem_ext_R0_data;
  wire [27:0] mem_ext_W0_addr;
  wire  mem_ext_W0_en;
  wire  mem_ext_W0_clk;
  wire [63:0] mem_ext_W0_data;
  wire [7:0] mem_ext_W0_mask;
  wire [7:0] _GEN_0;
  wire [7:0] _GEN_1;
  wire [7:0] _GEN_2;
  wire [7:0] _GEN_3;
  wire [7:0] _GEN_4;
  wire [7:0] _GEN_5;
  wire [7:0] _GEN_6;
  wire [7:0] _GEN_7;
  wire [7:0] _GEN_8;
  wire [7:0] _GEN_9;
  wire [7:0] _GEN_10;
  wire [7:0] _GEN_11;
  wire [7:0] _GEN_14;
  wire [7:0] _GEN_15;
  wire [7:0] _GEN_16;
  wire [7:0] _GEN_17;
  wire [31:0] _GEN_20;
  wire [31:0] _GEN_21;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire  _GEN_28;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire [3:0] _GEN_34;
  wire [3:0] _GEN_35;
  mem_ext mem_ext (
    .R0_addr(mem_ext_R0_addr),
    .R0_en(mem_ext_R0_en),
    .R0_clk(mem_ext_R0_clk),
    .R0_data(mem_ext_R0_data),
    .W0_addr(mem_ext_W0_addr),
    .W0_en(mem_ext_W0_en),
    .W0_clk(mem_ext_W0_clk),
    .W0_data(mem_ext_W0_data),
    .W0_mask(mem_ext_W0_mask)
  );
  assign mem_ext_R0_clk = R0_clk;
  assign mem_ext_R0_en = R0_en;
  assign mem_ext_R0_addr = R0_addr;
  assign _GEN_0 = mem_ext_R0_data[7:0];
  assign R0_data_0 = $unsigned(_GEN_0);
  assign _GEN_1 = mem_ext_R0_data[15:8];
  assign R0_data_1 = $unsigned(_GEN_1);
  assign _GEN_2 = mem_ext_R0_data[23:16];
  assign R0_data_2 = $unsigned(_GEN_2);
  assign _GEN_3 = mem_ext_R0_data[31:24];
  assign R0_data_3 = $unsigned(_GEN_3);
  assign _GEN_4 = mem_ext_R0_data[39:32];
  assign R0_data_4 = $unsigned(_GEN_4);
  assign _GEN_5 = mem_ext_R0_data[47:40];
  assign R0_data_5 = $unsigned(_GEN_5);
  assign _GEN_6 = mem_ext_R0_data[55:48];
  assign R0_data_6 = $unsigned(_GEN_6);
  assign _GEN_7 = mem_ext_R0_data[63:56];
  assign R0_data_7 = $unsigned(_GEN_7);
  assign mem_ext_W0_clk = W0_clk;
  assign mem_ext_W0_en = W0_en;
  assign mem_ext_W0_addr = W0_addr;
  assign _GEN_8 = $unsigned(W0_data_7);
  assign _GEN_9 = $unsigned(W0_data_6);
  assign _GEN_10 = $unsigned(W0_data_5);
  assign _GEN_11 = $unsigned(W0_data_4);
  assign _GEN_14 = $unsigned(W0_data_3);
  assign _GEN_15 = $unsigned(W0_data_2);
  assign _GEN_16 = $unsigned(W0_data_1);
  assign _GEN_17 = $unsigned(W0_data_0);
  assign _GEN_20 = {_GEN_8,_GEN_9,_GEN_10,_GEN_11};
  assign _GEN_21 = {_GEN_14,_GEN_15,_GEN_16,_GEN_17};
  assign mem_ext_W0_data = {_GEN_20,_GEN_21};
  assign _GEN_22 = $unsigned(W0_mask_7);
  assign _GEN_23 = $unsigned(W0_mask_6);
  assign _GEN_24 = $unsigned(W0_mask_5);
  assign _GEN_25 = $unsigned(W0_mask_4);
  assign _GEN_28 = $unsigned(W0_mask_3);
  assign _GEN_29 = $unsigned(W0_mask_2);
  assign _GEN_30 = $unsigned(W0_mask_1);
  assign _GEN_31 = $unsigned(W0_mask_0);
  assign _GEN_34 = {_GEN_22,_GEN_23,_GEN_24,_GEN_25};
  assign _GEN_35 = {_GEN_28,_GEN_29,_GEN_30,_GEN_31};
  assign mem_ext_W0_mask = {_GEN_34,_GEN_35};
endmodule
