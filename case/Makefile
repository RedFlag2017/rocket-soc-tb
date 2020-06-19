# RISCV environment variable must be set

TEST := test_demo

COMMON_DIR  = ./common
INCLUDE_DIR = ./include
MAKE_DIR    =./

CC     =$(RISCV)/bin/riscv64-unknown-elf-gcc
OBJCOPY=$(RISCV)/bin/riscv64-unknown-elf-objcopy
OBJDUMP=$(RISCV)/bin/riscv64-unknown-elf-objdump
#CFLAGS=-march=rv64imac -mcmodel=medany -O0 -std=gnu11 -Wall -nostartfiles 
CFLAGS=-march=rv64g -mcmodel=medany -O0 -std=gnu11 -Wall -nostartfiles 
CFLAGS+= -fno-common -g -DENTROPY=0 -mabi=lp64d -DNONSMP_HART=0  
CFLAGS+= -I $(INCLUDE_DIR) -I $(INCLUDE_DIR)/devices -I. -I $(COMMON_DIR) 
#LFLAGS=-static -nostdlib -L ./linker -T memboot.elf.lds
LFLAGS=-static   -L ./linker -T memboot.elf.lds
ELF2HEX=elf2hex



RAM_WIDTH = 8
#RAM_DEPTH = 268435456  #### This is real RAM Depth    ;RAM(0x8000_0000~0xFFFF_FFFF)
RAM_DEPTH  = 16777216      #### This is not real RAM Depth;RAM(0x8000_0000~0x8800_0000) Use this To make hex generation fast
RAM_BASE  = 2147483648






elf  := $(MAKE_DIR)/$(TEST).elf
bin  := $(MAKE_DIR)/$(TEST).bin
dump := $(MAKE_DIR)/$(TEST).dump
hex  := $(MAKE_DIR)/$(TEST).hex     


all: clean elf bin hex dump
.PHONY: all


$(elf):  $(COMMON_DIR)/head.S $(COMMON_DIR)/kprintf.c $(TEST).c 
	$(CC) $(CFLAGS)    $(LFLAGS) -o $@ $(COMMON_DIR)/head.S $(TEST).c $(COMMON_DIR)/kprintf.c 

.PHONY: elf
elf: $(elf)


$(bin): $(elf)
	$(OBJCOPY) -O binary $< $@

.PHONY: bin
bin: $(bin)




.PHONY: dump
dump: $(dump)	

$(dump): $(elf)
	$(OBJDUMP) -d $< > $@  
	               	


.PHONY: hex
hex: $(hex)

$(hex): $(elf)
	$(ELF2HEX) $(RAM_WIDTH) $(RAM_DEPTH) $< $(RAM_BASE) > $@
	



.PHONY: clean
clean::
	rm -rf *.hex *.dump *.elf *.bin
