###                                         ###
### Specific Options for MultiRom Building  ###
###                                         ###

# MultiROM Recovery Version
MR_REC_VERSION := $(shell date -u +%Y%m%d)
BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)-00

# MultiROM
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/lge/802/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_MUL := 1.5
MR_DPI_FONT := 340
ifneq ($(filter f320 lgl22,$(TARGET_DEVICE)),)
MR_FSTAB := device/lge/g2-common/twrp/twrp.g2.has_sd.fstab
else
MR_FSTAB := device/lge/g2-common/twrp/twrp.g2.no_sd.fstab
endif
MR_USE_MROM_FSTAB := true
MR_KEXEC_MEM_MIN := 0x04000000
MR_KEXEC_DTB := true
MR_RD_ADDR := 0x05200000
MR_DEVICE_HOOKS := device/lge/d802/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
MR_DEFAULT_BRIGHTNESS := 80
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/lge/d851/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
