// See LICENSE for license details.
#include <stdint.h>

#include <platform.h>

#include "common.h"

#define DEBUG
#include "kprintf.h"




int main(void)
{

  
  REG32(uart, UART_REG_TXCTRL) = UART_TXEN;

  kprintf("Hello RISC-V!");
  
	if (1){
		kprintf("PASS");
	}
	else{
		kprintf("FAIL");
	}

	return 0;
}
