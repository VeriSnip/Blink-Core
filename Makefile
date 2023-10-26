VTbuild_DIR ?= /home/pantunes/Documents/playground/MyVT-Tool
MyUtils_DIR ?= /home/pantunes/Documents/playground/MyUtils-Tool

PROJECT_NAME ?= blink

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  build          to create a directory with the built rtl code."

build: clean-all
	python $(VTbuild_DIR)/VTbuild.py $(PROJECT_NAME)

clean-all: board-clean
	python $(VTbuild_DIR)/VTbuild.py --clean all

.PHONY: build help clean-all

include $(MyUtils_DIR)/utils.mk


