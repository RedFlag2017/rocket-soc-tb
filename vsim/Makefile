#########################################################################################
# vcs makefile
#########################################################################################
CASE_NAME := test_demo

BOOT_ROM_HEX_FILE   = ../bootrom/bootrom.rv64.hex
OUT_SRAM_HEX_FILE = ../case/${CASE_NAME}.hex

verbosity = UVM_HIGH
uvm_ver = uvm-1.2


#########################################################################################
# general path variables
#########################################################################################
base_dir=$(abspath .)
sim_dir=$(abspath .)
src_dir=$(abspath ../src)
svtb_dir=$(abspath ../svtb)

sim_common_files           ?= $(svtb_dir)/sim_files.common.f

#########################################################################################
# include shared variables
#########################################################################################
include $(base_dir)/variables.mk

#########################################################################################
# name of simulator (used to generate *.f arguments file)
#########################################################################################
sim_name = vcs

#########################################################################################
# vcs simulator types and rules
#########################################################################################
sim_prefix = simv
sim = $(sim_dir)/$(sim_prefix)-$(MODEL_PACKAGE)-$(CONFIG)
sim_debug = $(sim_dir)/$(sim_prefix)-$(MODEL_PACKAGE)-$(CONFIG)-debug

PERMISSIVE_ON=+permissive
PERMISSIVE_OFF=+permissive-off

WAVEFORM_FLAG=+vcdplusfile=$(sim_out_name).vpd

.PHONY: default debug

default: $(sim_debug)



#########################################################################################
# vcs binary and arguments
#########################################################################################
VCS = vcs -full64 -cpp g++-4.8 -cc gcc-4.8 -LDFLAGS -Wl,-no-as-needed



VCS_NONCC_OPTS = \
	+lint=all,noVCDE,noONGS,noUI \
	-error=PCWM-L \
	-timescale=1ns/10ps \
	-quiet \
	-q \
	+rad \
	+v2k \
	+vcs+lic+wait \
	+notimingcheck \
	+vc+list \
	+define+PRINTF_COND=0 \
	+define+STOP_COND=!$(TB).reset \
	$(svtb_dir)/define.sv \
	-f $(sim_common_files) \
	-sverilog \
	+incdir+$(src_dir) \
	+incdir+$(svtb_dir) \
	+define+CLOCK_PERIOD=1.0 \
	$(sim_vsrcs) \
	-lca -debug_access+all -kdb  \
	-ntb_opts ${uvm_ver} \
	+libext+.v

VCS_OPTS = -notice -line  $(VCS_NONCC_OPTS)


SIM_FLAGS = +BOOT_ROM_HEX_FILE=${BOOT_ROM_HEX_FILE} \
		    +OUT_SRAM_HEX_FILE=${OUT_SRAM_HEX_FILE} \
		    +UVM_TESTNAME=${CASE_NAME}
            

#########################################################################################
# vcs simulator rules
#########################################################################################


$(sim_debug) : $(sim_vsrcs) $(sim_common_files)
	rm -rf csrc && $(VCS) $(VCS_OPTS) -o $@ \
	-debug_pp



run:$(sim_debug)
	$(sim_debug) -l $(sim_debug).log $(PERMISSIVE_ON) +max-cycles=$(timeout_cycles) $(SIM_FLAGS) $(VERBOSE_FLAGS) +fsdbfile=$(sim_debug)_$(CASE_NAME).fsdb $(PERMISSIVE_OFF) 

wave:
	verdi -dbdir $(sim_debug).daidir -ssf $(sim_debug)_$(CASE_NAME).fsdb &

#########################################################################################
# general cleanup rule
#########################################################################################
.PHONY: clean
clean:
	rm -rf simv* csrc* *.tmp *.vpd *.key log *.h temp *.log .vcs* *.txt DVE* *.hvp urg* .inter.vpd.uvm .restart* .synopsys* novas.* *.dat *.fsdb verdi*
	rm -rf nWaveLog
