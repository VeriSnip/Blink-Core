VTbuild_DIR ?= $(CURDIR)/MyVT-Tool
MyUtils_DIR ?= $(CURDIR)/MyUtils-Tool

PROJECT_NAME ?= blink

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  build          to create a directory with the built rtl code."

hardware-build:
	python $(VTbuild_DIR)/VTbuild.py $(PROJECT_NAME)

clean-all: board-clean
	python $(VTbuild_DIR)/VTbuild.py --clean all

.PHONY: build help clean-all

include $(MyUtils_DIR)/utils.mk


