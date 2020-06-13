#########################################################################################
# makefile variables shared across multiple makefiles
#########################################################################################

#########################################################################################
# variables to invoke the generator
# descriptions:
#   SBT_PROJECT = the SBT project that you should find the classes/packages in
#   MODEL = the top level module of the project in Chisel (normally the harness)
#   VLOG_MODEL = the top level module of the project in Firrtl/Verilog (normally the harness)
#   MODEL_PACKAGE = the scala package to find the MODEL in
#   CONFIG = the configuration class to give the parameters for the project
#   CONFIG_PACKAGE = the scala package to find the CONFIG class
#   GENERATOR_PACKAGE = the scala package to find the Generator class in
#   TB = wrapper over the TestHarness needed to simulate in a verilog simulator
#   TOP = top level module of the project (normally the module instantiated by the harness)
#
# project specific:
# 	SUB_PROJECT = use the specific subproject default variables
#########################################################################################

#########################################################################################
# subproject overrides
# description:
#   - make it so that you only change 1 param to change most or all of them!
#   - mainly intended for quick developer setup for common flags
#########################################################################################
SUB_PROJECT ?= example

ifeq ($(SUB_PROJECT),example)
	SBT_PROJECT       ?= example
	MODEL             ?= TestHarness
	VLOG_MODEL        ?= TestHarness
	MODEL_PACKAGE     ?= $(SBT_PROJECT)
	CONFIG            ?= RocketConfig
	CONFIG_PACKAGE    ?= $(SBT_PROJECT)
	GENERATOR_PACKAGE ?= $(SBT_PROJECT)
	TB                ?= TestDriver
	TOP               ?= Top
endif





#########################################################################################
# names of various files needed to compile and run things
#########################################################################################
long_name = $(MODEL_PACKAGE).$(MODEL).$(CONFIG)

# match the long_name to what the specific generator will output
ifeq ($(GENERATOR_PACKAGE),freechips.rocketchip.system)
	long_name=$(CONFIG_PACKAGE).$(CONFIG)
endif
ifeq ($(GENERATOR_PACKAGE),hwacha)
	long_name=$(MODEL_PACKAGE).$(CONFIG)
endif


TOP_FILE       ?= $(build_dir)/$(long_name).top.v
TOP_SMEMS_FILE ?= $(build_dir)/$(long_name).top.mems.v

HARNESS_FILE       ?= $(build_dir)/$(long_name).harness.v
HARNESS_SMEMS_FILE ?= $(build_dir)/$(long_name).harness.mems.v

# files that contain lists of files needed for VCS or Verilator simulation
#sim_files                  ?= $(build_dir)/sim_files.f
# single file that contains all files needed for VCS or Verilator simulation (unique and without .h's)
#sim_common_files           ?= $(build_dir)/sim_files.common.f




#########################################################################################
# helper variables to run binaries
#########################################################################################
BINARY ?=
SIM_FLAGS ?=
VERBOSE_FLAGS ?= +verbose
sim_out_name = $(subst $() $(),_,$(notdir $(basename $(BINARY))).$(long_name))

#########################################################################################
# build output directory for compilation
#########################################################################################
#build_dir=$(gen_dir)/$(long_name)
build_dir=$(abspath ../src)


#########################################################################################
# sources needed to run simulators
#########################################################################################
sim_vsrcs = \
	$(TOP_FILE) \
	$(HARNESS_FILE) \
	$(TOP_SMEMS_FILE) \
	$(HARNESS_SMEMS_FILE)

#########################################################################################
# assembly/benchmark variables
#########################################################################################
#timeout_cycles = 10000000
timeout_cycles = 1000000

