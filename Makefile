MyUtils_DIR := $(CURDIR)/Utils-Tool

PROJECT_NAME := blink

# Supported Boards: ULX3S, IceSugar_pro
BOARD := IceSugar_pro

# Need to define variables cause they are different from default values
PROJECT_FPGA_TOP := $(PROJECT_NAME)
PROJECT_LPF := $(PROJECT_NAME)_$(BOARD).lpf

shell:
	nix-shell $(MyUtils_DIR)/shell.nix

include $(MyUtils_DIR)/utils.mk


