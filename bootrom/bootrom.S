#define DRAM_BASE 0x80000000

.section .text.start, "ax", @progbits
.globl _start
_start:
	auipc t0,0x7fff0
	jr    t0
