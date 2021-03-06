HDL_SOURCE += \
	$(BP_ME_TB_COMMON_PATH)/bp_mem.v

HDL_PARAMS=-pvalue+num_lce_p=1 -pvalue+num_cce_p=1 \
           -pvalue+addr_width_p=22 -pvalue+lce_assoc_p=8 -pvalue+lce_sets_p=64 \
           -pvalue+block_size_in_bytes_p=64 -pvalue+num_inst_ram_els_p=256 \
					 -pvalue+mem_els_p=512 -pvalue+boot_rom_width_p=512 -pvalue+boot_rom_els_p=512

# use the instruction rom in the rom folder instead of the default
HDL_SOURCE += $(CCE_ROM_PATH)/demo-v2-mesi/bp_cce_inst_rom_demo-v2-mesi_lce1_wg64_assoc8.v

TOP_MODULE = bp_me_top
