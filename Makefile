VTbuild_DIR := $(CURDIR)/VT-Tool
MyUtils_DIR := $(CURDIR)/Utils-Tool

PROJECT_NAME := blink

# Supported Boards: ULX3S, IceSugar_pro
BOARD := ULX3S

# Need to define variables cause they are different from default values
PROJECT_FPGA_TOP := $(PROJECT_NAME)
PROJECT_LPF := $(PROJECT_NAME)_$(BOARD).lpf

include $(MyUtils_DIR)/utils.mk


