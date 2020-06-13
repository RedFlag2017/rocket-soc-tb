bootrom_img = bootrom.rv64.img bootrom.rv32.img
bootrom_hex = bootrom.rv64.hex bootrom.rv32.hex
bootrom_dump = bootrom.rv64.dump bootrom.rv32.dump
bootrom_elf32 = bootrom.rv32.elf
bootrom_elf64 = bootrom.rv64.elf 

ROM_WIDTH = 8
ROM_DEPTH = 4096
ROM_BASE  = 65536


GCC=riscv64-unknown-elf-gcc
CFLAGS_RV64=-mabi=lp64 -march=rv64ima
CFLAGS_RV32=-mabi=ilp32 -march=rv32ima
OBJCOPY=riscv64-unknown-elf-objcopy
OBJDUMP=riscv64-unknown-elf-objdump
ELF2HEX=elf2hex
#Usage: elf2hex <width> <depth> <elf_file> [base]
all:  elf32 elf64 dump hex img

img: $(bootrom_img)

hex: $(bootrom_hex)

dump: $(bootrom_dump)

elf32: $(bootrom_elf32)
elf64: $(bootrom_elf64)

%.img: %.elf
	$(OBJCOPY) -O binary --change-addresses=-0x10000 $< $@

%.hex: %.elf
	$(ELF2HEX) $(ROM_WIDTH) $(ROM_DEPTH) $< $(ROM_BASE) > $@

%.rv32.elf: %.S linker.ld
	$(GCC) $(CFLAGS_RV32) -Tlinker.ld $< -nostdlib -static -o $@

%.rv64.elf: %.S linker.ld
	$(GCC) $(CFLAGS_RV64) -Tlinker.ld $< -nostdlib -static -o $@

%.dump: %.elf
	$(OBJDUMP) -d $< > $@

clean:
	rm -f *.elf *.dump *.img *.hex
