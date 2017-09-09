TOP=$(CURDIR)
OUTPUT_DIR?=/opt/devkit/build
BR_DIR?=/opt/buildroot

export BR2_EXTERNAL=$(CURDIR)/prototype

all:
	@make -C $(BR_DIR) O=$(OUTPUT_DIR)

%_defconfig:
	@make -C $(BR_DIR) O=$(OUTPUT_DIR) $@

%:
	@make -C $(BR_DIR) O=$(OUTPUT_DIR) $@

nconfig:
	@make -C $(BR_DIR) O=$(OUTPUT_DIR) nconfig

