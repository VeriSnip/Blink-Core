VTbuild_DIR := $(CURDIR)/MyVT-Tool
MyUtils_DIR := $(CURDIR)/MyUtils-Tool

PROJECT_NAME := blink

# Need to define variables cause they are different from default values
PROJECT_FPGA_TOP := $(PROJECT_NAME)
PROJECT_LPF := $(PROJECT_NAME).lpf

include $(MyUtils_DIR)/utils.mk


